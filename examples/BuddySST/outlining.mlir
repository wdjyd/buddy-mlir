module attributes {gpu.container_module} {
  func.func @main() {
    %c32 = arith.constant 32 : index
    %alloc = memref.alloc() : memref<4x32xi32>
    %alloc_0 = memref.alloc() : memref<1x4x32xf32>
    %memref = gpu.alloc  () : memref<4x32xi32>
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    gpu.launch_func  @CUDA_kernel_0::@CUDA_kernel_0 blocks in (%c4, %c1, %c1) threads in (%c32, %c1, %c1)  args(%c1_i32 : i32, %memref : memref<4x32xi32>)
    gpu.memcpy  %alloc, %memref : memref<4x32xi32>, memref<4x32xi32>
    %cast = memref.cast %alloc : memref<4x32xi32> to memref<*xi32>
    call @printMemrefI32(%cast) : (memref<*xi32>) -> ()
    gpu.launch_func  @CUDA_kernel_1::@CUDA_kernel_1 blocks in (%c4, %c1, %c1) threads in (%c32, %c1, %c1)  args(%c2_i32 : i32, %memref : memref<4x32xi32>)
    gpu.memcpy  %alloc, %memref : memref<4x32xi32>, memref<4x32xi32>
    call @printMemrefI32(%cast) : (memref<*xi32>) -> ()
    gpu.dealloc  %memref : memref<4x32xi32>
    return
  }
  gpu.module @CUDA_kernel_0 {
    gpu.func @CUDA_kernel_0(%arg0: i32, %arg1: memref<4x32xi32>) kernel attributes {gpu.known_block_size = array<i32: 32, 1, 1>, gpu.known_grid_size = array<i32: 4, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = gpu.thread_id  x
      %4 = gpu.thread_id  y
      %5 = gpu.thread_id  z
      %6 = gpu.grid_dim  x
      %7 = gpu.grid_dim  y
      %8 = gpu.grid_dim  z
      %9 = gpu.block_dim  x
      %10 = gpu.block_dim  y
      %11 = gpu.block_dim  z
      cf.br ^bb1
    ^bb1:  // pred: ^bb0
      %cst = arith.constant 1.000000e+00 : f32
      memref.store %arg0, %arg1[%0, %3] : memref<4x32xi32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_1 {
    gpu.func @CUDA_kernel_1(%arg0: i32, %arg1: memref<4x32xi32>) kernel attributes {gpu.known_block_size = array<i32: 32, 1, 1>, gpu.known_grid_size = array<i32: 4, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = gpu.thread_id  x
      %4 = gpu.thread_id  y
      %5 = gpu.thread_id  z
      %6 = gpu.grid_dim  x
      %7 = gpu.grid_dim  y
      %8 = gpu.grid_dim  z
      %9 = gpu.block_dim  x
      %10 = gpu.block_dim  y
      %11 = gpu.block_dim  z
      cf.br ^bb1
    ^bb1:  // pred: ^bb0
      memref.store %arg0, %arg1[%0, %3] : memref<4x32xi32>
      gpu.return
    }
  }
  func.func private @printMemrefI32(memref<*xi32>)
}

