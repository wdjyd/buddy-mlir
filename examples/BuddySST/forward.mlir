// This file is from upstream MLIR integration test.
func.func @main() {
  %c32 = arith.constant 32 : index
  %mem0 = memref.alloc() : memref<4x32xi32>
  %mem1 = memref.alloc() : memref<1x4x32xf32>
  %gpu_mem0 = gpu.alloc () : memref<4x32xi32>
  // %gpu_mem1 = gpu.alloc () : memref<1x4x32xf32>

  %cst1 = arith.constant 1 : i32
  %cst2 = arith.constant 2 : i32

  // %cstf2 = arith.constant 2.0 : f32

  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c4 = arith.constant 4 : index

  gpu.launch blocks(%bx, %by, %bz) in (%grid_x = %c4, %grid_y = %c1, %grid_z = %c1)
             threads(%tx, %ty, %tz) in (%block_x = %c32, %block_y = %c1, %block_z = %c1) {
    %cstf1 = arith.constant 1.0 : f32
    memref.store %cst1, %gpu_mem0[%bx, %tx] : memref<4x32xi32>
    // memref.store %cstf1, %gpu_mem1[%c0, %bx, %tx] : memref<1x4x32xf32>
    gpu.terminator
  }

  gpu.memcpy %mem0, %gpu_mem0 : memref<4x32xi32>, memref<4x32xi32>
  %cast0 = memref.cast %mem0 : memref<4x32xi32> to memref<*xi32>
  call @printMemrefI32(%cast0) : (memref<*xi32>) -> ()

  gpu.launch blocks(%bx, %by, %bz) in (%grid_x = %c4, %grid_y = %c1, %grid_z = %c1)
             threads(%tx, %ty, %tz) in (%block_x = %c32, %block_y = %c1, %block_z = %c1) {
    memref.store %cst2, %gpu_mem0[%bx, %tx] : memref<4x32xi32>
    gpu.terminator
  }
  gpu.memcpy %mem0, %gpu_mem0 : memref<4x32xi32>, memref<4x32xi32>  
  
  // gpu.memcpy %mem1, %gpu_mem1 : memref<1x4x32xf32>, memref<1x4x32xf32>  
  call @printMemrefI32(%cast0) : (memref<*xi32>) -> ()
  gpu.dealloc %gpu_mem0 : memref<4x32xi32>
  return
}

func.func private @printMemrefI32(memref<*xi32>)
