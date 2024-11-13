module attributes {gpu.container_module} {
  func.func @forward(%arg0: memref<4x32xf32>, %arg1: memref<4x32xf32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 3.140000e+00 : f32
    %cst_0 = arith.constant 6.500000e+00 : f32
    %memref = gpu.alloc  () : memref<4x32xf32>
    %memref_1 = gpu.alloc  () : memref<4x32xf32>
    gpu.launch_func  @CUDA_kernel_1::@CUDA_kernel_1 blocks in (%c4, %c1, %c1) threads in (%c32, %c1, %c1)  args(%cst : f32, %memref : memref<4x32xf32>)
    gpu.launch_func  @CUDA_kernel_2::@CUDA_kernel_2 blocks in (%c4, %c1, %c1) threads in (%c32, %c1, %c1)  args(%memref : memref<4x32xf32>, %cst_0 : f32, %cst : f32, %c0 : index)
    gpu.memcpy  %arg0, %memref : memref<4x32xf32>, memref<4x32xf32>
    gpu.memcpy  %arg1, %memref_1 : memref<4x32xf32>, memref<4x32xf32>
    return
  }
  gpu.module @CUDA_kernel_1 {
    gpu.func @CUDA_kernel_1(%arg0: f32, %arg1: memref<4x32xf32>) kernel attributes {gpu.known_block_size = array<i32: 32, 1, 1>, gpu.known_grid_size = array<i32: 4, 1, 1>} {
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
      memref.store %arg0, %arg1[%0, %3] : memref<4x32xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_2 {
    gpu.func @CUDA_kernel_2(%arg0: memref<4x32xf32>, %arg1: f32, %arg2: f32, %arg3: index) kernel attributes {gpu.known_block_size = array<i32: 32, 1, 1>, gpu.known_grid_size = array<i32: 4, 1, 1>} {
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
      %12 = memref.load %arg0[%0, %3] : memref<4x32xf32>
      %13 = arith.mulf %12, %arg1 : f32
      %14 = arith.addf %13, %arg2 : f32
      memref.store %14, %arg0[%arg3, %3] : memref<4x32xf32>
      gpu.return
    }
  }
}

