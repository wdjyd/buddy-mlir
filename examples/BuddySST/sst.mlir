module {
  func.func @forward(%alloc: memref<4x32xi32>) {
    %c32 = arith.constant 32 : index
    // %alloc = memref.alloc() : memref<4x32xi32>
    // %alloc_0 = memref.alloc() : memref<1x4x32xf32>
    %memref = "sst.malloc"() : () -> memref<4x32xi32>
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c0_1 = arith.constant 0 : index
    %c0_2 = arith.constant 0 : index
    %0 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%0, %c0_2) : (index, index) -> ()
    "sst.config_call"(%c32, %c1, %c1, %c4, %c1, %c1, %c0_1) : (index, index, index, index, index, index, index) -> ()
    %c0_3 = arith.constant 0 : index
    "sst.setup_arg"(%c1_i32, %c0_3) : (i32, index) -> ()
    %c8 = arith.constant 8 : index
    "sst.setup_arg"(%memref, %c8) : (memref<4x32xi32>, index) -> ()
    "sst.launch"(%c0_2) : (index) -> ()
    %false = arith.constant false    
    %true = arith.constant true
    "sst.memcpy"(%alloc, %memref, %true) : (memref<4x32xi32>, memref<4x32xi32>, i1) -> ()
    // gpu.memcpy  %alloc, %memref : memref<4x32xi32>, memref<4x32xi32>
    // %cast = memref.cast %alloc : memref<4x32xi32> to memref<*xi32>
    // // call @printMemrefI32(%cast) : (memref<*xi32>) -> ()
    // %c0_4 = arith.constant 0 : index
    // %c1_5 = arith.constant 1 : index
    // %1 = "sst.reg_fatbin"() : () -> index
    // "sst.reg_func"(%1, %c1_5) : (index, index) -> ()
    // "sst.config_call"(%c32, %c1, %c1, %c4, %c1, %c1, %c0_4) : (index, index, index, index, index, index, index) -> ()
    // %c0_6 = arith.constant 0 : index
    // "sst.setup_arg"(%c2_i32, %c0_6) : (i32, index) -> ()
    // %c8_7 = arith.constant 8 : index
    // "sst.setup_arg"(%memref, %c8_7) : (memref<4x32xi32>, index) -> ()
    // "sst.launch"(%c1_5) : (index) -> ()

    // "sst.memcpy"(%alloc, %memref, %true) : (memref<4x32xi32>, memref<4x32xi32>, i1) -> ()
    // gpu.memcpy  %alloc, %memref : memref<4x32xi32>, memref<4x32xi32>
    // call @printMemrefI32(%cast) : (memref<*xi32>) -> ()
    return
  }
  // func.func private @printMemrefI32(memref<*xi32>)
}

