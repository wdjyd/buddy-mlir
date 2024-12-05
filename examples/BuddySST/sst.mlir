module attributes {gpu.container_module} {
  func.func @forward(%arg0: memref<4x32xf32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 3.140000e+00 : f32
    %cst_0 = arith.constant 6.500000e+00 : f32
    %memref = "sst.malloc"() : () -> memref<4x32xf32>
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    %c1_3 = arith.constant 1 : index
    %0 = "sst.reg_fatbin"(%c0) : (index) -> index
    "sst.reg_func"(%0, %c1_2) : (index, index) -> ()
    "sst.config_call"(%c32, %c1, %c1, %c4, %c1, %c1, %c0_1) : (index, index, index, index, index, index, index) -> ()
    %c0_4 = arith.constant 0 : index
    "sst.setup_arg"(%cst, %c0_4) : (f32, index) -> ()
    %c8 = arith.constant 8 : index
    "sst.setup_arg"(%memref, %c8) : (memref<4x32xf32>, index) -> ()
    "sst.launch"(%c1_2) : (index) -> ()
    %c0_5 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_6 = arith.constant 1 : index
    %1 = "sst.reg_fatbin"(%c1_6) : (index) -> index
    "sst.reg_func"(%1, %c2) : (index, index) -> ()
    "sst.config_call"(%c32, %c1, %c1, %c4, %c1, %c1, %c0_5) : (index, index, index, index, index, index, index) -> ()
    %c0_7 = arith.constant 0 : index
    "sst.setup_arg"(%memref, %c0_7) : (memref<4x32xf32>, index) -> ()
    %c56 = arith.constant 56 : index
    "sst.setup_arg"(%cst_0, %c56) : (f32, index) -> ()
    %c60 = arith.constant 60 : index
    "sst.setup_arg"(%cst, %c60) : (f32, index) -> ()
    %c64 = arith.constant 64 : index
    "sst.setup_arg"(%c0, %c64) : (index, index) -> ()
    "sst.launch"(%c2) : (index) -> ()
    %true = arith.constant true
    "sst.memcpy"(%arg0, %memref, %true) : (memref<4x32xf32>, memref<4x32xf32>, i1) -> ()
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

