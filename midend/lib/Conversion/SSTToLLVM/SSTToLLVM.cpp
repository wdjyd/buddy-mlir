#include "mlir/Conversion/ArithToLLVM/ArithToLLVM.h"
#include "mlir/Conversion/AsyncToLLVM/AsyncToLLVM.h"
#include "mlir/Conversion/ControlFlowToLLVM/ControlFlowToLLVM.h"
#include "mlir/Conversion/FuncToLLVM/ConvertFuncToLLVM.h"
#include "mlir/Conversion/FuncToLLVM/ConvertFuncToLLVMPass.h"
#include "mlir/Conversion/LLVMCommon/ConversionTarget.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Conversion/MemRefToLLVM/MemRefToLLVM.h"
#include "mlir/Conversion/VectorToLLVM/ConvertVectorToLLVM.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/Attributes.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Transforms/DialectConversion.h"

#include "llvm/ADT/STLExtras.h"
#include "llvm/Support/Error.h"
#include "llvm/Support/FormatVariadic.h"

#include "SST/SST.h"

namespace mlir {
#include "mlir/Conversion/Passes.h.inc"
} // namespace mlir

using namespace mlir;


namespace {

class LowerSSTToLLVMPass
    : public PassWrapper<LowerSSTToLLVMPass, OperationPass<ModuleOp>> {
public:
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(LowerSSTToLLVMPass)
  LowerSSTToLLVMPass() = default;
  LowerSSTToLLVMPass(const LowerSSTToLLVMPass &) {}

  StringRef getArgument() const final { return "lower-sst-to-llvm"; }
  StringRef getDescription() const final { return "Lower SST Dialect to LLVM."; }

  // Run the dialect converter on the module.
  void runOnOperation() override;

};

struct FunctionCallBuilder {
  FunctionCallBuilder(StringRef functionName, Type returnType,
                      ArrayRef<Type> argumentTypes)
      : functionName(functionName),
        functionType(LLVM::LLVMFunctionType::get(returnType, argumentTypes)) {}
  LLVM::CallOp create(Location loc, OpBuilder &builder,
                      ArrayRef<Value> arguments) const;

  StringRef functionName;
  LLVM::LLVMFunctionType functionType;
};

template <typename OpTy>
class ConvertOpToSSTCallPattern : public ConvertOpToLLVMPattern<OpTy> {
public:
  explicit ConvertOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToLLVMPattern<OpTy>(typeConverter) {}

protected:
  Value getNumElements(ConversionPatternRewriter &rewriter, Location loc,
                       MemRefType type, MemRefDescriptor desc) const {
    return type.hasStaticShape()
               ? ConvertToLLVMPattern::createIndexConstant(
                     rewriter, loc, type.getNumElements())
               // For identity maps (verified by caller), the number of
               // elements is stride[0] * size[0].
               : rewriter.create<LLVM::MulOp>(loc,
                                              desc.stride(rewriter, loc, 0),
                                              desc.size(rewriter, loc, 0));
  }

  MLIRContext *context = &this->getTypeConverter()->getContext();

  Type llvmVoidType = LLVM::LLVMVoidType::get(context);
  // Type llvmPointerType =
  //     LLVM::LLVMPointerType::get(IntegerType::get(context, 8));
  LLVM::LLVMPointerType llvmPointerType =
    this->getTypeConverter()->getPointerType(IntegerType::get(context, 8));
  Type llvmPointerPointerType = LLVM::LLVMPointerType::get(llvmPointerType);
  Type llvmInt1Type = IntegerType::get(context, 1);
  Type llvmInt8Type = IntegerType::get(context, 8);
  Type llvmInt32Type = IntegerType::get(context, 32);
  Type llvmInt64Type = IntegerType::get(context, 64);
  Type llvmFloat32Type = Float32Type::get(context);
  Type llvmIntPtrType = IntegerType::get(
      context, this->getTypeConverter()->getPointerBitwidth(0));

  FunctionCallBuilder RegisterFatBinCallBuilder = {
      "__sstcudaRegisterFatBinary",
      llvmIntPtrType /* unsigned int fatbin_handle */,
      {llvmIntPtrType /* unsigned int funcId */,
       llvmIntPtrType /* unsigned int opId */}};
  FunctionCallBuilder RegisterFuncCallBuilder = {
      "__sstcudaRegisterFunction",
      llvmVoidType,
      {llvmIntPtrType /* uint64_t fatCubinHandle */,
       llvmIntPtrType /* uint64_t opId */,
       llvmIntPtrType /* uint64_t hostFun */}};
  FunctionCallBuilder ConfigureCallBuilder = {
      "sstcudaConfigureCall",
      llvmVoidType,
      {llvmIntPtrType /* unsigned int blockX */,
       llvmIntPtrType /* unsigned int blockY */,
       llvmIntPtrType /* unsigned int blockZ */,
       llvmIntPtrType /* unsigned int gridX */,
       llvmIntPtrType /* unsigned int gridY */,
       llvmIntPtrType /* unsigned int gridZ */,
       llvmIntPtrType /* uint64_t sharedMem */}};
  FunctionCallBuilder SetDeviceBuilder = {
      "sstcudaSetDevice",
      llvmVoidType,
      {llvmIntPtrType /* uint64_t device */}};
  FunctionCallBuilder LaunchCallBuilder = {
      "sstcudaLaunch",
      llvmVoidType,
      {llvmIntPtrType /* uint64_t func */}};
  FunctionCallBuilder MallocCallBuilder = {
      "sstcudaMalloc",
      llvmPointerType,
      {llvmIntPtrType /* uint64_t size */}};
  FunctionCallBuilder MemcpyCallBuilder = {
      "sstcudaMemcpy",
      llvmVoidType,
      {llvmPointerType /* uint64_t dst */,
       llvmPointerType /* uint64_t src */,
       llvmInt64Type /* uint64_t count */,
       llvmInt1Type /* MemcpyKind 0:HtoD 1:DtoH */}};
  FunctionCallBuilder setupIntArgBuilder = {
      "sstSetupIntArgument",
      llvmVoidType,
      {llvmInt64Type /* uint64_t integer */,
       llvmInt64Type /* uint64_t offset */}};
  FunctionCallBuilder setupInt8ArgBuilder = {
      "sstSetupInt8Argument",
      llvmVoidType,
      {llvmInt8Type /* uint8_t integer */,
       llvmInt64Type /* uint64_t offset */}};
  FunctionCallBuilder setupInt32ArgBuilder = {
      "sstSetupInt32Argument",
      llvmVoidType,
      {llvmInt32Type /* uint32_t integer */,
       llvmInt64Type /* uint64_t offset */}};
  FunctionCallBuilder setupFloat32ArgBuilder = {
      "sstSetupFloat32Argument",
      llvmVoidType,
      {llvmFloat32Type /* float32 data */,
       llvmInt64Type /* uint64_t offset */}};
  FunctionCallBuilder setupMemrefRankOneArgBuilder = {
      "sstSetupMemrefRankOneArgument",
      llvmVoidType,
      {llvmPointerType /* intptr_t* allocated */,
       llvmPointerType /* intptr_t* aligned */,
       llvmIntPtrType /* intptr_t offset */,
       llvmIntPtrType /* intptr_t sizes of 0 */,
       llvmIntPtrType /* intptr_t strides of 0 */,
       llvmInt64Type /* uint64_t offset */
       }};
  FunctionCallBuilder setupMemrefRankTwoArgBuilder = {
      "sstSetupMemrefRankTwoArgument",
      llvmVoidType,
      {llvmPointerType /* intptr_t* allocated */,
       llvmPointerType /* intptr_t* aligned */,
       llvmIntPtrType /* intptr_t offset */,
       llvmIntPtrType /* intptr_t sizes of 0 */,
       llvmIntPtrType /* intptr_t sizes of 1 */,
       llvmIntPtrType /* intptr_t strides of 0 */,
       llvmIntPtrType /* intptr_t strides of 1 */,
       llvmInt64Type /* uint64_t offset */
       }};
  FunctionCallBuilder setupMemrefRankThreeArgBuilder = {
      "sstSetupMemrefRankThreeArgument",
      llvmVoidType,
      {llvmPointerType /* intptr_t* allocated */,
       llvmPointerType /* intptr_t* aligned */,
       llvmIntPtrType /* intptr_t offset */,
       llvmIntPtrType /* intptr_t sizes of 0 */,
       llvmIntPtrType /* intptr_t sizes of 1 */,
       llvmIntPtrType /* intptr_t sizes of 2 */,
       llvmIntPtrType /* intptr_t strides of 0 */,
       llvmIntPtrType /* intptr_t strides of 1 */,
       llvmIntPtrType /* intptr_t strides of 2 */,
       llvmInt64Type /* uint64_t offset */
       }};
  FunctionCallBuilder setupMemrefRankFourArgBuilder = {
      "sstSetupMemrefRankFourArgument",
      llvmVoidType,
      {llvmPointerType /* intptr_t* allocated */,
       llvmPointerType /* intptr_t* aligned */,
       llvmIntPtrType /* intptr_t offset */,
       llvmIntPtrType /* intptr_t sizes of 0 */,
       llvmIntPtrType /* intptr_t sizes of 1 */,
       llvmIntPtrType /* intptr_t sizes of 2 */,
       llvmIntPtrType /* intptr_t sizes of 3 */,
       llvmIntPtrType /* intptr_t strides of 0 */,
       llvmIntPtrType /* intptr_t strides of 1 */,
       llvmIntPtrType /* intptr_t strides of 2 */,
       llvmIntPtrType /* intptr_t strides of 3 */,
       llvmInt64Type /* uint64_t offset */
       }};
  FunctionCallBuilder getCpuIdBuilder = {
      "sstGetCpuId",
      llvmInt64Type,
      {}};
  FunctionCallBuilder msgSendBuilder = {
      "sstMsgSend",
      llvmVoidType,
      {llvmIntPtrType /* int src */,
       llvmIntPtrType /* int dst */,
       llvmPointerType /* void *buf_p */,
       llvmIntPtrType /* int count */
       }};
  FunctionCallBuilder msgRecvBuilder = {
      "sstMsgRecv",
      llvmVoidType,
      {llvmIntPtrType /* int src */,
       llvmIntPtrType /* int dst */,
       llvmPointerType /* void *buf_p */,
       llvmIntPtrType /* int count */
       }};
};

class ConvertRegisterFatbinOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::RegisterFatbinOp> {
public:
  ConvertRegisterFatbinOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::RegisterFatbinOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::RegisterFatbinOp registerFatbinOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertRegisterFuncOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::RegisterFuncOp> {
public:
  ConvertRegisterFuncOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::RegisterFuncOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::RegisterFuncOp registerFuncOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertConfigureCallOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::ConfigureCallOp> {
public:
  ConvertConfigureCallOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::ConfigureCallOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::ConfigureCallOp configureCallOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertLaunchOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::LaunchOp> {
public:
  ConvertLaunchOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::LaunchOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::LaunchOp launchOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertSetDeviceOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::SetDeviceOp> {
public:
  ConvertSetDeviceOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::SetDeviceOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::SetDeviceOp setDeviceOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertMallocOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::MallocOp> {
public:
  ConvertMallocOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::MallocOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::MallocOp mallocOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertMemcpyOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::MemcpyOp> {
public:
  ConvertMemcpyOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::MemcpyOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::MemcpyOp memcpyOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertSetupArgumentOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::SetupArgumentOp> {
public:
  ConvertSetupArgumentOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::SetupArgumentOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::SetupArgumentOp setupArgOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertGetCpuIdOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::GetCpuIdOp> {
public:
  ConvertGetCpuIdOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::GetCpuIdOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::GetCpuIdOp setupArgOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertMsgSendOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::MsgSendOp> {
public:
  ConvertMsgSendOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::MsgSendOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::MsgSendOp msgSendOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

class ConvertMsgRecvOpToSSTCallPattern
    : public ConvertOpToSSTCallPattern<sst::MsgRecvOp> {
public:
  ConvertMsgRecvOpToSSTCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToSSTCallPattern<sst::MsgRecvOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(sst::MsgRecvOp msgRecvOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;
};

} // namespace

void populateSSTToLLVMPatterns(LLVMTypeConverter &converter,
                                               RewritePatternSet &patterns) {
  patterns.add<ConvertRegisterFatbinOpToSSTCallPattern,
               ConvertRegisterFuncOpToSSTCallPattern,
               ConvertConfigureCallOpToSSTCallPattern,
               ConvertLaunchOpToSSTCallPattern,
               ConvertSetDeviceOpToSSTCallPattern,
               ConvertMallocOpToSSTCallPattern,
               ConvertMemcpyOpToSSTCallPattern,
               ConvertSetupArgumentOpToSSTCallPattern,
               ConvertGetCpuIdOpToSSTCallPattern,
               ConvertMsgSendOpToSSTCallPattern,
               ConvertMsgRecvOpToSSTCallPattern>(converter);
}



void LowerSSTToLLVMPass::runOnOperation() {
  LLVMTypeConverter converter(&getContext());
  RewritePatternSet patterns(&getContext());
  LLVMConversionTarget target(getContext());

  mlir::arith::populateArithToLLVMConversionPatterns(converter, patterns);
  mlir::cf::populateControlFlowToLLVMConversionPatterns(converter, patterns);
  populateFinalizeMemRefToLLVMConversionPatterns(converter, patterns);
  populateFuncToLLVMConversionPatterns(converter, patterns);
  populateAsyncStructuralTypeConversionsAndLegality(converter, patterns,
                                                    target);
  populateSSTToLLVMPatterns(converter, patterns);

  if (failed(
          applyPartialConversion(getOperation(), target, std::move(patterns))))
    signalPassFailure();
}

LLVM::CallOp FunctionCallBuilder::create(Location loc, OpBuilder &builder,
                                         ArrayRef<Value> arguments) const {
  auto module = builder.getBlock()->getParent()->getParentOfType<ModuleOp>();
  auto function = [&] {
    if (auto function = module.lookupSymbol<LLVM::LLVMFuncOp>(functionName))
      return function;
    return OpBuilder::atBlockEnd(module.getBody())
        .create<LLVM::LLVMFuncOp>(loc, functionName, functionType);
  }();
  return builder.create<LLVM::CallOp>(loc, function, arguments);
}

// Returns whether all operands are of LLVM type.
static LogicalResult areAllLLVMTypes(Operation *op, ValueRange operands,
                                     ConversionPatternRewriter &rewriter) {
  if (!llvm::all_of(operands, [](Value value) {
        return LLVM::isCompatibleType(value.getType());
      }))
    return rewriter.notifyMatchFailure(
        op, "Cannot convert if operands aren't of LLVM type.");
  return success();
}

LogicalResult ConvertRegisterFatbinOpToSSTCallPattern::matchAndRewrite(
    sst::RegisterFatbinOp registerFatbinOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  // if (failed(areAllLLVMTypes(registerFatbinOp, adaptor.getOperands(), rewriter)) ||
  //     failed(isAsyncWithOneDependency(rewriter, registerFatbinOp)))
  //   return failure();

  Location loc = registerFatbinOp.getLoc();
  Value Fatbin = RegisterFatBinCallBuilder.create(loc, rewriter, {adaptor.getFatbin(), adaptor.getOid()}).getResult();

  rewriter.replaceOp(registerFatbinOp, Fatbin);
  return success();
}

LogicalResult ConvertRegisterFuncOpToSSTCallPattern::matchAndRewrite(
    sst::RegisterFuncOp registerFuncOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  // if (failed(areAllLLVMTypes(registerFatbinOp, adaptor.getOperands(), rewriter)) ||
  //     failed(isAsyncWithOneDependency(rewriter, registerFatbinOp)))
  //   return failure();

  Location loc = registerFuncOp.getLoc();
  RegisterFuncCallBuilder.create(loc, rewriter, {adaptor.getHandle(), adaptor.getOid(), adaptor.getHostFunc()});

  rewriter.eraseOp(registerFuncOp);
  return success();
}

LogicalResult ConvertConfigureCallOpToSSTCallPattern::matchAndRewrite(
    sst::ConfigureCallOp configureCallOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  // if (failed(areAllLLVMTypes(registerFatbinOp, adaptor.getOperands(), rewriter)) ||
  //     failed(isAsyncWithOneDependency(rewriter, registerFatbinOp)))
  //   return failure();

  Location loc = configureCallOp.getLoc();
  ConfigureCallBuilder.create(loc, rewriter, {adaptor.getBx(), adaptor.getBy(), adaptor.getBz(),
                                              adaptor.getGx(), adaptor.getGy(), adaptor.getGz(), 
                                              adaptor.getSharedMem()});

  rewriter.eraseOp(configureCallOp);
  return success();
}

LogicalResult ConvertLaunchOpToSSTCallPattern::matchAndRewrite(
    sst::LaunchOp launchOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  // if (failed(areAllLLVMTypes(registerFatbinOp, adaptor.getOperands(), rewriter)) ||
  //     failed(isAsyncWithOneDependency(rewriter, registerFatbinOp)))
  //   return failure();

  Location loc = launchOp.getLoc();
  LaunchCallBuilder.create(loc, rewriter, {adaptor.getFuncId()});

  rewriter.eraseOp(launchOp);
  return success();
}

LogicalResult ConvertSetDeviceOpToSSTCallPattern::matchAndRewrite(
    sst::SetDeviceOp setDeviceOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  // if (failed(areAllLLVMTypes(registerFatbinOp, adaptor.getOperands(), rewriter)) ||
  //     failed(isAsyncWithOneDependency(rewriter, registerFatbinOp)))
  //   return failure();

  Location loc = setDeviceOp.getLoc();
  SetDeviceBuilder.create(loc, rewriter, {adaptor.getDeviceId()});

  rewriter.eraseOp(setDeviceOp);
  return success();
}

LogicalResult ConvertMallocOpToSSTCallPattern::matchAndRewrite(
    sst::MallocOp mallocOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  // if (failed(areAllLLVMTypes(registerFatbinOp, adaptor.getOperands(), rewriter)) ||
  //     failed(isAsyncWithOneDependency(rewriter, registerFatbinOp)))
  //   return failure();

  Location loc = mallocOp.getLoc();
  MemRefType memRefType = mallocOp.getType();

  SmallVector<Value, 4> shape;
  SmallVector<Value, 4> strides;
  Value sizeBytes;
  int64_t total_size = 1;

  // Calculate the size of malloced memref
  for (int64_t size : memRefType.getShape()) {
    total_size *= size;
  }

  Value size = rewriter.create<LLVM::ConstantOp>(loc, llvmInt32Type, total_size);

  Type elementType = typeConverter->convertType(memRefType.getElementType());
  Type elementPtrType = getElementPtrType(memRefType);
  Value nullPtr = rewriter.create<LLVM::ZeroOp>(loc, elementPtrType);
  Value gepPtr = rewriter.create<LLVM::GEPOp>(loc, elementPtrType, elementType, nullPtr, size);
  sizeBytes = rewriter.create<LLVM::PtrToIntOp>(loc, getIndexType(), gepPtr);

  // Allocate the underlying buffer and store a pointer to it in the MemRef
  // descriptor.
  Value allocatedPtr = 
      MallocCallBuilder.create(loc, rewriter, {sizeBytes}).getResult();
  allocatedPtr =
      rewriter.create<LLVM::BitcastOp>(loc, elementPtrType, allocatedPtr);

  // No alignment.
  Value alignedPtr = allocatedPtr;

  // Create the MemRef descriptor.
  auto memRefDescriptor = this->createMemRefDescriptor(
      loc, memRefType, allocatedPtr, alignedPtr, shape, strides, rewriter);

  rewriter.replaceOp(mallocOp, {memRefDescriptor});
  return success();
}

LogicalResult ConvertMemcpyOpToSSTCallPattern::matchAndRewrite(
    sst::MemcpyOp memcpyOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  // if (failed(areAllLLVMTypes(registerFatbinOp, adaptor.getOperands(), rewriter)) ||
  //     failed(isAsyncWithOneDependency(rewriter, registerFatbinOp)))
  //   return failure();

  Location loc = memcpyOp.getLoc();

  MemRefDescriptor srcDesc(adaptor.getSrc());

  auto src = rewriter.create<LLVM::BitcastOp>(
      loc, llvmPointerType, srcDesc.alignedPtr(rewriter, loc));
  auto dst = rewriter.create<LLVM::BitcastOp>(
      loc, llvmPointerType, MemRefDescriptor(adaptor.getDst()).alignedPtr(rewriter, loc));

  auto memRefType = cast<MemRefType>(memcpyOp.getSrc().getType());
  Value numElements = getNumElements(rewriter, loc, memRefType, srcDesc);
  Type elementPtrType = getElementPtrType(memRefType);
  Value nullPtr = rewriter.create<LLVM::ZeroOp>(loc, elementPtrType);
  Value gepPtr = rewriter.create<LLVM::GEPOp>(
      loc, elementPtrType,
      typeConverter->convertType(memRefType.getElementType()), nullPtr,
      numElements);
  auto sizeBytes =
      rewriter.create<LLVM::PtrToIntOp>(loc, getIndexType(), gepPtr);

  MemcpyCallBuilder.create(loc, rewriter, {dst,
                                           src,
                                           sizeBytes,
                                           adaptor.getCopyDirection()});
  rewriter.eraseOp(memcpyOp);
  return success();
}

LogicalResult ConvertSetupArgumentOpToSSTCallPattern::matchAndRewrite(
    sst::SetupArgumentOp setupArgOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  auto loc = setupArgOp.getLoc();
  auto *op = setupArgOp.getOperation();
  
  
  // get argument type
  auto argType = setupArgOp.getArg().getType();
  if (argType.isa<IndexType>() || argType == rewriter.getI64Type()) {     // int type
    setupIntArgBuilder.create(loc, rewriter, {adaptor.getArg(), adaptor.getOffset()});
    rewriter.eraseOp(setupArgOp);
    return success();
  } else if (argType == rewriter.getI32Type()) {
    setupInt32ArgBuilder.create(loc, rewriter, {adaptor.getArg(), adaptor.getOffset()});
    rewriter.eraseOp(setupArgOp);
    return success();
  } else if (argType == rewriter.getI8Type()) {
    setupInt8ArgBuilder.create(loc, rewriter, {adaptor.getArg(), adaptor.getOffset()});
    rewriter.eraseOp(setupArgOp);
    return success();
  } else if (argType == rewriter.getF32Type()) {
    setupFloat32ArgBuilder.create(loc, rewriter, {adaptor.getArg(), adaptor.getOffset()});
    rewriter.eraseOp(setupArgOp);
    return success();
  } else if (argType.isa<MemRefType>()) {   // memref type
    auto arguments = getTypeConverter()->promoteOperands(
    loc, op->getOperands(), adaptor.getOperands(), rewriter);

    int rank = (argType.dyn_cast<MemRefType>()).getShape().size();
    if (rank == 1) {
      setupMemrefRankOneArgBuilder.create(loc, rewriter, arguments);
    } else if (rank == 2) {
      setupMemrefRankTwoArgBuilder.create(loc, rewriter, arguments);
    } else if (rank == 3) {
      setupMemrefRankThreeArgBuilder.create(loc, rewriter, arguments);
    } else if (rank == 4) {
      setupMemrefRankFourArgBuilder.create(loc, rewriter, arguments);
    } else {
      return failure();
    }
    
    rewriter.eraseOp(setupArgOp);
    return success();
  } 

  // other types are not supported
  return failure();
}

LogicalResult ConvertGetCpuIdOpToSSTCallPattern::matchAndRewrite(
    sst::GetCpuIdOp getCpuIdOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  auto loc = getCpuIdOp.getLoc();
  auto *op = getCpuIdOp.getOperation();
  
  auto cpuId = getCpuIdBuilder.create(loc, rewriter, {}).getResult();
  rewriter.replaceOp(getCpuIdOp, cpuId);
  return success();
}

LogicalResult ConvertMsgSendOpToSSTCallPattern::matchAndRewrite(
    sst::MsgSendOp msgSendOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  auto loc = msgSendOp.getLoc();
  auto *op = msgSendOp.getOperation();
  
  auto buffer = rewriter.create<LLVM::BitcastOp>(
    loc, llvmPointerType,
    MemRefDescriptor(adaptor.getBuffer()).alignedPtr(rewriter, loc));
  
  msgSendBuilder.create(loc, rewriter, {adaptor.getDst(),
                                        adaptor.getSrc(),
                                        buffer,
                                        adaptor.getSize()});
  
  rewriter.eraseOp(msgSendOp);
  return success();
}

LogicalResult ConvertMsgRecvOpToSSTCallPattern::matchAndRewrite(
    sst::MsgRecvOp msgRecvOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  auto loc = msgRecvOp.getLoc();
  auto *op = msgRecvOp.getOperation();
  
  auto buffer = rewriter.create<LLVM::BitcastOp>(
    loc, llvmPointerType,
    MemRefDescriptor(adaptor.getBuffer()).alignedPtr(rewriter, loc));
  
  msgRecvBuilder.create(loc, rewriter, {adaptor.getDst(),
                                        adaptor.getSrc(),
                                        buffer,
                                        adaptor.getSize()});
  
  rewriter.eraseOp(msgRecvOp);
  return success();
}

void registerLowerSSTToLLVMPass() { PassRegistration<LowerSSTToLLVMPass>(); }


std::unique_ptr<Pass> createSSTToLLVMPass() {
  return std::make_unique<LowerSSTToLLVMPass>();
}
