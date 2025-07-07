#map = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 + d1 * s0 + s1)>
module attributes {gpu.container_module} {
  memref.global "private" constant @__constant_4xi32_0 : memref<4xi32> = dense<[0, 3, 1, 2]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32 : memref<4xi32> = dense<[0, 2, 3, 1]> {alignment = 64 : i64}
  func.func @subgraph0_0(%arg0: memref<1x1x28x28xf32>, %arg1: memref<6x1x5x5xf32>, %arg2: memref<6xf32>) -> memref<1x6x24x24xf32> {
    %c24 = arith.constant 24 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<1x28x28x1xf32>
    gpu.launch_func  @"CUDA_kernel_\00_1"::@"CUDA_kernel_\00_1" blocks in (%c28, %c28, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %arg0 : memref<1x1x28x28xf32>, %alloc : memref<1x28x28x1xf32>)
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<6x5x5x1xf32>
    gpu.launch_func  @"CUDA_kernel_\00_2"::@"CUDA_kernel_\00_2" blocks in (%c6, %c5, %c5) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %arg1 : memref<6x1x5x5xf32>, %alloc_0 : memref<6x5x5x1xf32>)
    %alloc_1 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    gpu.launch_func  @"CUDA_kernel_\00_3"::@"CUDA_kernel_\00_3" blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst : f32, %alloc_1 : memref<1x24x24x6xf32>)
    %alloc_2 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    gpu.launch_func  @"CUDA_kernel_\00_4"::@"CUDA_kernel_\00_4" blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc : memref<1x28x28x1xf32>, %alloc_0 : memref<6x5x5x1xf32>, %alloc_1 : memref<1x24x24x6xf32>, %c5 : index)
    gpu.launch_func  @"CUDA_kernel_\00_5"::@"CUDA_kernel_\00_5" blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %arg2 : memref<6xf32>, %alloc_1 : memref<1x24x24x6xf32>, %alloc_2 : memref<1x24x24x6xf32>)
    %alloc_3 = memref.alloc() {alignment = 64 : i64} : memref<1x6x24x24xf32>
    gpu.launch_func  @"CUDA_kernel_\00_6"::@"CUDA_kernel_\00_6" blocks in (%c6, %c24, %c24) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_2 : memref<1x24x24x6xf32>, %alloc_3 : memref<1x6x24x24xf32>)
    return %alloc_3 : memref<1x6x24x24xf32>
  }
  gpu.module @"CUDA_kernel_\00_1" {
    gpu.func @"CUDA_kernel_\00_1"(%arg0: index, %arg1: index, %arg2: memref<1x1x28x28xf32>, %arg3: memref<1x28x28x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%arg1, %arg1, %2, %3] : memref<1x1x28x28xf32>
      memref.store %4, %arg3[%arg1, %2, %3, %arg1] : memref<1x28x28x1xf32>
      gpu.return
    }
  }
  gpu.module @"CUDA_kernel_\00_2" {
    gpu.func @"CUDA_kernel_\00_2"(%arg0: index, %arg1: index, %arg2: memref<6x1x5x5xf32>, %arg3: memref<6x5x5x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%3, %arg1, %4, %5] : memref<6x1x5x5xf32>
      memref.store %6, %arg3[%3, %4, %5, %arg1] : memref<6x5x5x1xf32>
      gpu.return
    }
  }
  gpu.module @"CUDA_kernel_\00_3" {
    gpu.func @"CUDA_kernel_\00_3"(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @"CUDA_kernel_\00_4" {
    gpu.func @"CUDA_kernel_\00_4"(%arg0: index, %arg1: index, %arg2: memref<1x28x28x1xf32>, %arg3: memref<6x5x5x1xf32>, %arg4: memref<1x24x24x6xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        scf.for %arg7 = %arg1 to %arg5 step %arg0 {
          %6 = affine.apply #map1(%arg6, %0)[%arg0, %arg1]
          %7 = affine.apply #map1(%arg7, %1)[%arg0, %arg1]
          %8 = memref.load %arg2[%arg1, %6, %7, %arg1] : memref<1x28x28x1xf32>
          %9 = memref.load %arg3[%5, %arg6, %arg7, %arg1] : memref<6x5x5x1xf32>
          %10 = memref.load %arg4[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
          %11 = arith.mulf %8, %9 : f32
          %12 = arith.addf %10, %11 : f32
          memref.store %12, %arg4[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @"CUDA_kernel_\00_5" {
    gpu.func @"CUDA_kernel_\00_5"(%arg0: index, %arg1: index, %arg2: memref<6xf32>, %arg3: memref<1x24x24x6xf32>, %arg4: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%5] : memref<6xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      %8 = arith.addf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @"CUDA_kernel_\00_6" {
    gpu.func @"CUDA_kernel_\00_6"(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %4, %5, %3] : memref<1x24x24x6xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      gpu.return
    }
  }
}

