module attributes {gpu.container_module} {
  func.func @forward(%arg0: memref<4x32xf32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 3.140000e+00 : f32
    %mem = "sst.malloc"() : () -> memref<4x32xf32>
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %0 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%0, %c1_1) : (index, index) -> ()
    "sst.config_call"(%c32, %c1, %c1, %c4, %c1, %c1, %c0_0) : (index, index, index, index, index, index, index) -> ()
    %c0_2 = arith.constant 0 : index
    "sst.setup_arg"(%cst, %c0_2) : (f32, index) -> ()
    %c8 = arith.constant 8 : index
    "sst.setup_arg"(%mem, %c8) : (memref<4x32xf32>, index) -> ()
    "sst.launch"(%c1_1) : (index) -> ()
    %true = arith.constant true
    "sst.memcpy"(%arg0, %mem, %true) : (memref<4x32xf32>, memref<4x32xf32>, i1) -> ()
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
}

