
set(ONE_SHOT_BUFFERIZE_OPTION "bufferize-function-boundaries=1 function-boundary-type-conversion=identity-layout-map")
    
add_custom_command(
    OUTPUT subgraph0.o
    COMMAND ${BUDDY_BINARY_DIR}/buddy-opt ${BUDDY_EXAMPLES_DIR}/BuddySow/subgraph0.mlir 
                -pass-pipeline "builtin.module(func.func(tosa-to-linalg-named, tosa-to-linalg, tosa-to-tensor, tosa-to-arith))" |
            ${BUDDY_BINARY_DIR}/buddy-opt
            -one-shot-bufferize=${ONE_SHOT_BUFFERIZE_OPTION}
            -convert-linalg-to-parallel-loops
            -canonicalize
            -gpu-map-parallel-loops
            -convert-parallel-loops-to-gpu
            -gpu-kernel-outlining
            -canonicalize
            -cse |
            ${BUDDY_BINARY_DIR}/buddy-opt -convert-maximumf-to-maxnumf -convert-memcpy-to-sst -convert-gpu-to-sst |
            ${BUDDY_BINARY_DIR}/buddy-opt -llvm-request-c-wrappers --gpu-to-llvm -lower-sst-to-llvm -expand-strided-metadata -finalize-memref-to-llvm  -reconcile-unrealized-casts |
            ${LLVM_MLIR_BINARY_DIR}/mlir-translate -mlir-to-llvmir |
            ${LLVM_MLIR_BINARY_DIR}/llvm-as |
            ${LLVM_MLIR_BINARY_DIR}/llc -filetype=obj  -relocation-model=pic -O0 -o ${BUDDY_BINARY_DIR}/../examples/BuddySow/subgraph0.o
    DEPENDS ${BUDDY_EXAMPLES_DIR}/BuddySow/subgraph0.mlir
    COMMENT "Building subgraph0.o"
    VERBATIM)
    
add_custom_command(
    OUTPUT subgraph1.o
    COMMAND ${BUDDY_BINARY_DIR}/buddy-opt ${BUDDY_EXAMPLES_DIR}/BuddySow/subgraph1.mlir 
                -pass-pipeline "builtin.module(func.func(tosa-to-linalg-named, tosa-to-linalg, tosa-to-tensor, tosa-to-arith))" |
            ${BUDDY_BINARY_DIR}/buddy-opt
            -one-shot-bufferize=${ONE_SHOT_BUFFERIZE_OPTION}
            -convert-linalg-to-parallel-loops
            -canonicalize
            -gpu-map-parallel-loops
            -convert-parallel-loops-to-gpu
            -gpu-kernel-outlining
            -canonicalize
            -cse |
            ${BUDDY_BINARY_DIR}/buddy-opt -convert-maximumf-to-maxnumf -convert-memcpy-to-sst -convert-gpu-to-sst |
            ${BUDDY_BINARY_DIR}/buddy-opt -llvm-request-c-wrappers --gpu-to-llvm -lower-sst-to-llvm -expand-strided-metadata -finalize-memref-to-llvm  -reconcile-unrealized-casts |
            ${LLVM_MLIR_BINARY_DIR}/mlir-translate -mlir-to-llvmir |
            ${LLVM_MLIR_BINARY_DIR}/llvm-as |
            ${LLVM_MLIR_BINARY_DIR}/llc -filetype=obj  -relocation-model=pic -O0 -o ${BUDDY_BINARY_DIR}/../examples/BuddySow/subgraph1.o
    DEPENDS ${BUDDY_EXAMPLES_DIR}/BuddySow/subgraph1.mlir
    COMMENT "Building subgraph1.o"
    VERBATIM)
    
add_custom_command(
    OUTPUT subgraph2.o
    COMMAND ${LLVM_MLIR_BINARY_DIR}/mlir-opt ${BUDDY_EXAMPLES_DIR}/BuddySow/subgraph2.mlir 
                -pass-pipeline "builtin.module(func.func(tosa-to-linalg-named, tosa-to-linalg, tosa-to-tensor, tosa-to-arith))" |
            ${BUDDY_BINARY_DIR}/buddy-opt
                -eliminate-empty-tensors
                -convert-tensor-to-linalg 
                -linalg-bufferize
                -convert-linalg-to-affine-loops
                -lower-affine
                -func-bufferize
                -arith-bufferize
                -tensor-bufferize
                -buffer-deallocation
                -finalizing-bufferize
                -convert-vector-to-scf
                -expand-strided-metadata
                -convert-vector-to-llvm
                -convert-arith-to-llvm
                -finalize-memref-to-llvm
                -convert-scf-to-cf
                -llvm-request-c-wrappers
                -convert-arith-to-llvm
                -convert-func-to-llvm
                -reconcile-unrealized-casts | 
            ${LLVM_MLIR_BINARY_DIR}/mlir-translate -mlir-to-llvmir |
            ${LLVM_MLIR_BINARY_DIR}/llvm-as |
            ${LLVM_MLIR_BINARY_DIR}/llc -filetype=obj  -relocation-model=pic -O0 -o ${BUDDY_BINARY_DIR}/../examples/BuddySow/subgraph2.o
    DEPENDS ${BUDDY_EXAMPLES_DIR}/BuddySow/subgraph2.mlir
    COMMENT "Building subgraph2.o"
    VERBATIM)
    
add_custom_command(
    OUTPUT forward.o
    COMMAND ${LLVM_MLIR_BINARY_DIR}/mlir-opt ${BUDDY_EXAMPLES_DIR}/BuddySow/forward.mlir 
                -pass-pipeline "builtin.module(func.func(tosa-to-linalg-named, tosa-to-linalg, tosa-to-tensor, tosa-to-arith))" | 
            ${LLVM_MLIR_BINARY_DIR}/mlir-opt 
                -pass-pipeline "builtin.module(func.func(buffer-deallocation-simplification, convert-linalg-to-loops), eliminate-empty-tensors, func.func(llvm-request-c-wrappers),convert-math-to-llvm, convert-math-to-libm, convert-scf-to-cf,  convert-arith-to-llvm, expand-strided-metadata, finalize-memref-to-llvm, convert-func-to-llvm, reconcile-unrealized-casts)" |
            ${LLVM_MLIR_BINARY_DIR}/mlir-translate -mlir-to-llvmir |
            ${LLVM_MLIR_BINARY_DIR}/llvm-as |
            ${LLVM_MLIR_BINARY_DIR}/llc -filetype=obj  -relocation-model=pic -O0 -o ${BUDDY_BINARY_DIR}/../examples/BuddySow/forward.o
    DEPENDS ${BUDDY_EXAMPLES_DIR}/BuddySow/forward.mlir
    COMMENT "Building forward.o"
    VERBATIM)

add_custom_command(
    OUTPUT lenet.o
    COMMAND ${BUDDY_BINARY_DIR}/buddy-opt ${BUDDY_EXAMPLES_DIR}/BuddySow/lenet.mlir 
    -pass-pipeline "builtin.module(func.func(buffer-deallocation-simplification, convert-linalg-to-loops), eliminate-empty-tensors, func.func(llvm-request-c-wrappers), convert-math-to-llvm, convert-math-to-libm, convert-scf-to-cf, convert-arith-to-llvm, expand-strided-metadata, finalize-memref-to-llvm, convert-func-to-llvm, lower-sst-to-llvm, reconcile-unrealized-casts)" |
            ${LLVM_MLIR_BINARY_DIR}/mlir-translate -mlir-to-llvmir |
            ${LLVM_MLIR_BINARY_DIR}/llvm-as |
            ${LLVM_MLIR_BINARY_DIR}/llc -filetype=obj  -relocation-model=pic -O0 -o ${BUDDY_BINARY_DIR}/../examples/BuddySow/lenet.o
    DEPENDS ${BUDDY_EXAMPLES_DIR}/BuddySow/lenet.mlir
    COMMENT "Building lenet.o"
    VERBATIM)

add_library(WAFER_LENET STATIC subgraph0.o subgraph1.o subgraph2.o forward.o lenet.o)
SET_TARGET_PROPERTIES(WAFER_LENET PROPERTIES LINKER_LANGUAGE C)
add_executable(buddy-sow-run buddy-sow-main.cpp)
target_link_directories(buddy-sow-run PRIVATE ${LLVM_MLIR_LIBRARY_DIR})
set(BUDDY_LENET_LIBS WAFER_LENET mlir_c_runner_utils wafer_sst_runtime ${OpenCV_LIBS})
target_link_libraries(buddy-sow-run ${BUDDY_LENET_LIBS})
    
