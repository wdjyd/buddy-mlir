add_mlir_library(wafer_sst_runtime
  SHARED
  SSTRuntimeWrappers.cpp
)

set_target_properties(wafer_sst_runtime PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib COMPILE_FLAGS "-fPIC -shared -O0" POSITION_INDEPENDENT_CODE ON)
