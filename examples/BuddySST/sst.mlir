module attributes {gpu.container_module} {
  func.func @main() {
    %c32 = arith.constant 32 : index
    %alloc = memref.alloc() : memref<32xi32>
    %memref = "sst.malloc"() : () -> memref<32xi32>
    // %memref = gpu.alloc  () : memref<32xi32>
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %9 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%9, %c1) : (index, index) -> ()
    "sst.config_call"(%c32, %c1, %c1, %c1, %c1, %c1, %c0) : (index, index, index, index, index, index, index) -> ()
    "sst.setup_arg"(%c1_i32, %c0) : (i32, index) -> ()
    "sst.setup_arg"(%memref, %c8) : (memref<32xi32>, index) -> ()
    "sst.launch"(%c1) : (index) -> ()
    %false = arith.constant false
    "sst.memcpy"(%alloc, %memref, %false) : (memref<32xi32>, memref<32xi32>, i1) -> ()
    // gpu.memcpy  %alloc, %memref : memref<32xi32>, memref<32xi32>
    %cast = memref.cast %alloc : memref<32xi32> to memref<*xi32>
    call @printMemrefI32(%cast) : (memref<*xi32>) -> ()
    gpu.dealloc  %memref : memref<32xi32>
    return
  }
  func.func private @printMemrefI32(memref<*xi32>)
}

