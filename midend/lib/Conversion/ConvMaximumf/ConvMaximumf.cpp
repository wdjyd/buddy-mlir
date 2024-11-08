#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Transforms/DialectConversion.h"
#include <iostream>
#include <cassert>  
#include <string>
#include <regex>
#include <cassert>

namespace mlir {
#include "mlir/Conversion/Passes.h.inc"
} // namespace mlir


using namespace mlir;

//===----------------------------------------------------------------------===//
// Operation conversion
//===----------------------------------------------------------------------===//

namespace {

class ConvertingArithMaximumfToMaxnumf : public OpRewritePattern<arith::MaximumFOp> {
public:
  using OpRewritePattern<arith::MaximumFOp>::OpRewritePattern;
  
  LogicalResult matchAndRewrite(arith::MaximumFOp op,
                                PatternRewriter &rewriter) const override {
    auto loc = op.getLoc();
    auto lhs = op.getLhs();
    auto rhs = op.getRhs();
    auto new_op = rewriter.create<arith::MaxNumFOp>(loc, lhs, rhs);
    rewriter.replaceOp(op, new_op);
    // assert(1==0);
    return success();
  }

};
} // namespace

void populateConvertingArithMaximumfPatterns(RewritePatternSet &patterns) {
  patterns.add<ConvertingArithMaximumfToMaxnumf>(patterns.getContext());
}

namespace {
class ConvertMaximumfToMaxnumfPass : public PassWrapper<ConvertMaximumfToMaxnumfPass, OperationPass<ModuleOp>> {
public:
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(ConvertMaximumfToMaxnumfPass)
  ConvertMaximumfToMaxnumfPass() = default;
  ConvertMaximumfToMaxnumfPass(const ConvertMaximumfToMaxnumfPass &) {}

  StringRef getArgument() const final { return "convert-maximumf-to-maxnumf"; }
  StringRef getDescription() const final { return "Converting Arith Maximumf op to Arith Maxnumf op."; }

  void runOnOperation() override;

  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<arith::ArithDialect,
                    func::FuncDialect
                  >();
  }
};
} // end anonymous namespace.

void ConvertMaximumfToMaxnumfPass::runOnOperation() {
  MLIRContext *context = &getContext();
  ModuleOp module = getOperation();

  ConversionTarget target(*context);
  target.addLegalDialect<
    func::FuncDialect
  >();
  target.addLegalOp<
    ModuleOp,
    arith::MaxNumFOp,
    func::FuncOp,
    func::ReturnOp
  >();

  RewritePatternSet patterns(context);

  populateConvertingArithMaximumfPatterns(patterns);
  if (failed(applyPartialConversion(module, target, std::move(patterns))))
    signalPassFailure();
}

void registerConvertMaximumfToMaxnumfPass() { PassRegistration<ConvertMaximumfToMaxnumfPass>(); }
