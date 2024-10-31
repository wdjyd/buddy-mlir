#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"

#include "SST/SST.h"

#include <iostream>
#include <cassert>  
#include <string>
#include <regex>

namespace mlir {
#include "mlir/Conversion/Passes.h.inc"
} // namespace mlir


using namespace mlir;

//===----------------------------------------------------------------------===//
// Operation conversion
//===----------------------------------------------------------------------===//

namespace {

class ConvertingGPULaunchFuncToSST : public OpRewritePattern<gpu::LaunchFuncOp> {
public:
  using OpRewritePattern<gpu::LaunchFuncOp>::OpRewritePattern;
  
  LogicalResult matchAndRewrite(gpu::LaunchFuncOp op,
                                PatternRewriter &rewriter) const override {
    auto loc = op.getLoc();
    auto gridSizeX = op.getGridSizeX();
    auto gridSizeY = op.getGridSizeY();
    auto gridSizeZ = op.getGridSizeZ();
    auto blockSizeX = op.getBlockSizeX();
    auto blockSizeY = op.getBlockSizeY();
    auto blockSizeZ = op.getBlockSizeZ();
    auto kernelOperands = op.getKernelOperands();
    auto kernelName = op.getKernelName();

    Value c0 = rewriter.create<arith::ConstantIndexOp>(loc, 0);

    // get kernel id
    
    std::string kernelNameStr = kernelName.getValue().str();
    std::regex regex(".*_kernel_(\\d+)$");  
    std::smatch match;
    Value kernelId;
    if (std::regex_match(kernelNameStr, match, regex) && match.size() == 2) {
        kernelId = rewriter.create<arith::ConstantIndexOp>(loc, std::stoi(match[1]));  
    } else {
        return failure();
    }
    
    Value handle = rewriter.create<sst::RegisterFatbinOp>(loc, /*type=*/rewriter.getIndexType());
    rewriter.create<sst::RegisterFuncOp>(loc, /*handle=*/handle, /*hostFunc=*/kernelId);
    // sst configure kernel
    rewriter.create<sst::ConfigureCallOp>(loc, /*bx=*/blockSizeX, /*by=*/blockSizeY, /*bz=*/blockSizeZ, 
                            /*gx=*/gridSizeX, /*gy=*/gridSizeY, /*gz=*/gridSizeZ, /*sharedMem=*/c0);

    // sst kernel function argument
    int arg_offset = 0;
    for (auto it = kernelOperands.begin(); it != kernelOperands.end(); ++it) {
      Value arg = *it;                
      auto argType = arg.getType();
      Value offset = rewriter.create<arith::ConstantIndexOp>(loc, arg_offset);
      rewriter.create<sst::SetupArgumentOp>(loc, /*arg=*/arg, /*arg_offset=*/offset);   
      if (argType == rewriter.getIndexType() || argType == rewriter.getI64Type() || argType == rewriter.getI32Type()) {     // int type
          arg_offset += 8;
      } else if (argType == rewriter.getF32Type()) {
          arg_offset += 8;
      } else if (argType.isa<MemRefType>()) {   // memref type
          arg_offset += 8 * (3 + 2 * (argType.dyn_cast<MemRefType>()).getShape().size());
      } else {
          return failure();
      } 
    }

    // sst launch kernel
    rewriter.create<sst::LaunchOp>(loc, /*kernelId=*/kernelId);
    rewriter.eraseOp(op);
    return success();
  }

};
} // namespace

void populateConvertingGPUToSSTPatterns(RewritePatternSet &patterns) {
  patterns.add<ConvertingGPULaunchFuncToSST>(patterns.getContext());
}

namespace {
class ConvertGPUToSSTPass : public PassWrapper<ConvertGPUToSSTPass, OperationPass<ModuleOp>> {
public:
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(ConvertGPUToSSTPass)
  ConvertGPUToSSTPass() = default;
  ConvertGPUToSSTPass(const ConvertGPUToSSTPass &) {}

  StringRef getArgument() const final { return "convert-gpu-to-sst"; }
  StringRef getDescription() const final { return "Convert GPU LaunchFunc op to SST ops."; }

  void runOnOperation() override;

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<arith::ArithDialect,
                    sst::SSTDialect,
                    gpu::GPUDialect,
                    func::FuncDialect
                  >();
  }
};
} // end anonymous namespace.

void ConvertGPUToSSTPass::runOnOperation() {
  MLIRContext *context = &getContext();
  ModuleOp module = getOperation();

  ConversionTarget target(*context);
  target.addLegalDialect<
    arith::ArithDialect,
    sst::SSTDialect,
    func::FuncDialect
  >();
  target.addLegalOp<
    ModuleOp,
    func::FuncOp,
    func::ReturnOp
  >();

  RewritePatternSet patterns(context);

  populateConvertingGPUToSSTPatterns(patterns);
  if (failed(applyPartialConversion(module, target, std::move(patterns))))
    signalPassFailure();
}

void registerConvertGPUToSSTPass() { PassRegistration<ConvertGPUToSSTPass>(); }
