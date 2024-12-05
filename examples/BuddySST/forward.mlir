
module attributes {gpu.container_module} {
  func.func @main(%cstf : f32) {
    %mem = memref.alloc() : memref<128xf32>
    %c0 = arith.constant 0: index
    %c1 = arith.constant 1: index
    %c4 = arith.constant 4: index
    %c8 = arith.constant 8: index
    %c16 = arith.constant 16: index
    %c32 = arith.constant 32: index
    %c128 = arith.constant 128: index
    // %cstf = arith.constant 2.32: f32
    scf.for %i = %c0 to %c128 step %c1 {
      memref.store %cstf, %mem[%i] : memref<128xf32> 
    }
    scf.for %i = %c0 to %c128 step %c16 {
      %vec = vector.load %mem[%i] : memref<128xf32>, vector<16xf32>
      %res = arith.addf %vec, %vec : vector<16xf32>
      vector.store %res, %mem[%i] : memref<128xf32>, vector<16xf32>
    }
    // %gpu_mem = gpu.alloc() : memref<128xf32>  
    // gpu.memcpy %gpu_mem, %mem : memref<128xf32>, memref<128xf32>
    // gpu.launch blocks(%arg4, %arg5, %arg6) in (%arg10 = %c1, %arg11 = %c1, %arg12 = %c1) threads(%arg7, %arg8, %arg9) in (%arg13 = %c32, %arg14 = %c1, %arg15 = %c1) {
    //   %vid = arith.muli %arg7, %c4 : index
    //   %vec = vector.load %gpu_mem[%vid] : memref<128xf32>, vector<4xf32>
    //   %res = arith.addf %vec, %vec : vector<4xf32>
    //   vector.store %res, %gpu_mem[%vid] : memref<128xf32>, vector<4xf32>
    //   gpu.terminator
    // }
    // gpu.memcpy %mem, %gpu_mem : memref<128xf32>, memref<128xf32>
    %mem_cast = memref.cast %mem : memref<128xf32> to memref<*xf32>
    call @printMemrefF32(%mem_cast) : (memref<*xf32>) -> ()
    func.return

  }
  func.func private @printMemrefF32(%ptr : memref<*xf32>) 
}

