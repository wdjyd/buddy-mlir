#ifndef MLIR_DIALECT_SST_SSTDIALECT_H_
#define MLIR_DIALECT_SST_SSTDIALECT_H_

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"

#include "SST/SSTDialect.h.inc"

#define GET_OP_CLASSES
#include "SST/SST.h.inc"

#endif // MLIR_DIALECT_SST_SSTDIALECT_H_
