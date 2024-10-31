#include "SST/SST.h"

using namespace mlir;

#include "SST/SSTDialect.cpp.inc"

#define GET_OP_CLASSES
#include "SST/SST.cpp.inc"

void sst::SSTDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "SST/SST.cpp.inc"
      >();
}
