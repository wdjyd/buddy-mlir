#map = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 + d1 * s0 + s1)>
#map2 = affine_map<(d0, d1)[s0, s1] -> (d0 + (d1 * s0) * 2 + s1 * 2)>
module attributes {gpu.container_module} {
  memref.global "private" constant @__constant_1x84xf32 : memref<1x84xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x120xf32 : memref<1x120xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_2xi32 : memref<2xi32> = dense<[1, 0]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32_0 : memref<4xi32> = dense<[0, 3, 1, 2]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32 : memref<4xi32> = dense<[0, 2, 3, 1]> {alignment = 64 : i64}
  func.func @subgraph0(%arg0: memref<1x1x28x28xf32>, %arg1: memref<6x1x5x5xf32>, %arg2: memref<6xf32>, %arg3: memref<16x6x5x5xf32>, %arg4: memref<16xf32>, %arg5: memref<120x256xf32>, %arg6: memref<120xf32>, %arg7: memref<84x120xf32>, %arg8: memref<84xf32>, %arg9: memref<10x84xf32>, %arg10: memref<10xf32>) -> memref<1x10xf32> {
    %memref = gpu.alloc  () : memref<1x1x28x28xf32>
    gpu.memcpy  %memref, %arg0 : memref<1x1x28x28xf32>, memref<1x1x28x28xf32>
    %memref_0 = gpu.alloc  () : memref<6x1x5x5xf32>
    gpu.memcpy  %memref_0, %arg1 : memref<6x1x5x5xf32>, memref<6x1x5x5xf32>
    %memref_1 = gpu.alloc  () : memref<6xf32>
    gpu.memcpy  %memref_1, %arg2 : memref<6xf32>, memref<6xf32>
    %memref_2 = gpu.alloc  () : memref<16x6x5x5xf32>
    gpu.memcpy  %memref_2, %arg3 : memref<16x6x5x5xf32>, memref<16x6x5x5xf32>
    %memref_3 = gpu.alloc  () : memref<16xf32>
    gpu.memcpy  %memref_3, %arg4 : memref<16xf32>, memref<16xf32>
    %memref_4 = gpu.alloc  () : memref<120x256xf32>
    gpu.memcpy  %memref_4, %arg5 : memref<120x256xf32>, memref<120x256xf32>
    %memref_5 = gpu.alloc  () : memref<120xf32>
    gpu.memcpy  %memref_5, %arg6 : memref<120xf32>, memref<120xf32>
    %memref_6 = gpu.alloc  () : memref<84x120xf32>
    gpu.memcpy  %memref_6, %arg7 : memref<84x120xf32>, memref<84x120xf32>
    %memref_7 = gpu.alloc  () : memref<84xf32>
    gpu.memcpy  %memref_7, %arg8 : memref<84xf32>, memref<84xf32>
    %memref_8 = gpu.alloc  () : memref<10x84xf32>
    gpu.memcpy  %memref_8, %arg9 : memref<10x84xf32>, memref<10x84xf32>
    %memref_9 = gpu.alloc  () : memref<10xf32>
    gpu.memcpy  %memref_9, %arg10 : memref<10xf32>, memref<10xf32>
    %c10 = arith.constant 10 : index
    %c84 = arith.constant 84 : index
    %c120 = arith.constant 120 : index
    %c256 = arith.constant 256 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c12 = arith.constant 12 : index
    %c24 = arith.constant 24 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_10 = arith.constant 0.000000e+00 : f32
    %memref_11 = gpu.alloc  () : memref<1x28x28x1xf32>
    gpu.launch_func  @CUDA_kernel_1::@CUDA_kernel_1 blocks in (%c28, %c28, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref : memref<1x1x28x28xf32>, %memref_11 : memref<1x28x28x1xf32>)
    %memref_12 = gpu.alloc  () : memref<6x5x5x1xf32>
    gpu.launch_func  @CUDA_kernel_2::@CUDA_kernel_2 blocks in (%c6, %c5, %c5) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_0 : memref<6x1x5x5xf32>, %memref_12 : memref<6x5x5x1xf32>)
    %memref_13 = gpu.alloc  () : memref<1x24x24x6xf32>
    gpu.launch_func  @CUDA_kernel_3::@CUDA_kernel_3 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %memref_13 : memref<1x24x24x6xf32>)
    %memref_14 = gpu.alloc  () : memref<1x24x24x6xf32>
    gpu.launch_func  @CUDA_kernel_4::@CUDA_kernel_4 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_11 : memref<1x28x28x1xf32>, %memref_12 : memref<6x5x5x1xf32>, %memref_13 : memref<1x24x24x6xf32>, %c5 : index)
    gpu.launch_func  @CUDA_kernel_5::@CUDA_kernel_5 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_1 : memref<6xf32>, %memref_13 : memref<1x24x24x6xf32>, %memref_14 : memref<1x24x24x6xf32>)
    %memref_15 = gpu.alloc  () : memref<1x6x24x24xf32>
    gpu.launch_func  @CUDA_kernel_6::@CUDA_kernel_6 blocks in (%c6, %c24, %c24) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_14 : memref<1x24x24x6xf32>, %memref_15 : memref<1x6x24x24xf32>)
    %0 = memref.get_global @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32>
    %memref_16 = gpu.alloc  () : memref<1x6x24x24xf32>
    gpu.memcpy  %memref_16, %0 : memref<1x6x24x24xf32>, memref<1x6x24x24xf32>
    %memref_17 = gpu.alloc  () : memref<1x6x24x24xf32>
    gpu.launch_func  @CUDA_kernel_7::@CUDA_kernel_7 blocks in (%c6, %c24, %c24) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_15 : memref<1x6x24x24xf32>, %memref_16 : memref<1x6x24x24xf32>, %memref_17 : memref<1x6x24x24xf32>)
    %memref_18 = gpu.alloc  () : memref<1x24x24x6xf32>
    gpu.launch_func  @CUDA_kernel_8::@CUDA_kernel_8 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_17 : memref<1x6x24x24xf32>, %memref_18 : memref<1x24x24x6xf32>)
    %memref_19 = gpu.alloc  () : memref<1x12x12x6xf32>
    gpu.launch_func  @CUDA_kernel_9::@CUDA_kernel_9 blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst : f32, %memref_19 : memref<1x12x12x6xf32>)
    gpu.launch_func  @CUDA_kernel_10::@CUDA_kernel_10 blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_18 : memref<1x24x24x6xf32>, %memref_19 : memref<1x12x12x6xf32>, %c2 : index)
    %memref_20 = gpu.alloc  () : memref<1x6x12x12xf32>
    gpu.launch_func  @CUDA_kernel_11::@CUDA_kernel_11 blocks in (%c6, %c12, %c12) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_19 : memref<1x12x12x6xf32>, %memref_20 : memref<1x6x12x12xf32>)
    %memref_21 = gpu.alloc  () : memref<1x12x12x6xf32>
    gpu.launch_func  @CUDA_kernel_12::@CUDA_kernel_12 blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_20 : memref<1x6x12x12xf32>, %memref_21 : memref<1x12x12x6xf32>)
    %memref_22 = gpu.alloc  () : memref<16x5x5x6xf32>
    gpu.launch_func  @CUDA_kernel_13::@CUDA_kernel_13 blocks in (%c16, %c5, %c5) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_2 : memref<16x6x5x5xf32>, %memref_22 : memref<16x5x5x6xf32>, %c6 : index)
    %memref_23 = gpu.alloc  () : memref<1x8x8x16xf32>
    gpu.launch_func  @CUDA_kernel_14::@CUDA_kernel_14 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %memref_23 : memref<1x8x8x16xf32>)
    %memref_24 = gpu.alloc  () : memref<1x8x8x16xf32>
    gpu.launch_func  @CUDA_kernel_15::@CUDA_kernel_15 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_21 : memref<1x12x12x6xf32>, %memref_22 : memref<16x5x5x6xf32>, %memref_23 : memref<1x8x8x16xf32>, %c6 : index, %c5 : index)
    gpu.launch_func  @CUDA_kernel_16::@CUDA_kernel_16 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_3 : memref<16xf32>, %memref_23 : memref<1x8x8x16xf32>, %memref_24 : memref<1x8x8x16xf32>)
    %memref_25 = gpu.alloc  () : memref<1x16x8x8xf32>
    gpu.launch_func  @CUDA_kernel_17::@CUDA_kernel_17 blocks in (%c16, %c8, %c8) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_24 : memref<1x8x8x16xf32>, %memref_25 : memref<1x16x8x8xf32>)
    %1 = memref.get_global @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32>
    %memref_26 = gpu.alloc  () : memref<1x16x8x8xf32>
    gpu.memcpy  %memref_26, %1 : memref<1x16x8x8xf32>, memref<1x16x8x8xf32>
    %memref_27 = gpu.alloc  () : memref<1x16x8x8xf32>
    gpu.launch_func  @CUDA_kernel_18::@CUDA_kernel_18 blocks in (%c16, %c8, %c8) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_25 : memref<1x16x8x8xf32>, %memref_26 : memref<1x16x8x8xf32>, %memref_27 : memref<1x16x8x8xf32>)
    %memref_28 = gpu.alloc  () : memref<1x8x8x16xf32>
    gpu.launch_func  @CUDA_kernel_19::@CUDA_kernel_19 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_27 : memref<1x16x8x8xf32>, %memref_28 : memref<1x8x8x16xf32>)
    %memref_29 = gpu.alloc  () : memref<1x4x4x16xf32>
    gpu.launch_func  @CUDA_kernel_20::@CUDA_kernel_20 blocks in (%c4, %c4, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst : f32, %memref_29 : memref<1x4x4x16xf32>)
    gpu.launch_func  @CUDA_kernel_21::@CUDA_kernel_21 blocks in (%c4, %c4, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_28 : memref<1x8x8x16xf32>, %memref_29 : memref<1x4x4x16xf32>, %c2 : index)
    %memref_30 = gpu.alloc  () : memref<1x16x4x4xf32>
    gpu.launch_func  @CUDA_kernel_22::@CUDA_kernel_22 blocks in (%c16, %c4, %c4) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_29 : memref<1x4x4x16xf32>, %memref_30 : memref<1x16x4x4xf32>)
    %memref_31 = gpu.alloc  () : memref<256x120xf32>
    gpu.launch_func  @CUDA_kernel_23::@CUDA_kernel_23 blocks in (%c256, %c120, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_4 : memref<120x256xf32>, %memref_31 : memref<256x120xf32>)
    %collapse_shape = memref.collapse_shape %memref_30 [[0], [1, 2, 3]] : memref<1x16x4x4xf32> into memref<1x256xf32>
    %expand_shape = memref.expand_shape %collapse_shape [[0, 1], [2]] : memref<1x256xf32> into memref<1x1x256xf32>
    %expand_shape_32 = memref.expand_shape %memref_31 [[0, 1], [2]] : memref<256x120xf32> into memref<1x256x120xf32>
    %memref_33 = gpu.alloc  () : memref<1x1x120xf32>
    gpu.launch_func  @CUDA_kernel_24::@CUDA_kernel_24 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %memref_33 : memref<1x1x120xf32>)
    gpu.launch_func  @CUDA_kernel_25::@CUDA_kernel_25 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape : memref<1x1x256xf32>, %expand_shape_32 : memref<1x256x120xf32>, %memref_33 : memref<1x1x120xf32>, %c256 : index)
    %collapse_shape_34 = memref.collapse_shape %memref_33 [[0, 1], [2]] : memref<1x1x120xf32> into memref<1x120xf32>
    %expand_shape_35 = memref.expand_shape %memref_5 [[0, 1]] : memref<120xf32> into memref<1x120xf32>
    %memref_36 = gpu.alloc  () : memref<1x120xf32>
    gpu.launch_func  @CUDA_kernel_26::@CUDA_kernel_26 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_35 : memref<1x120xf32>, %collapse_shape_34 : memref<1x120xf32>, %memref_36 : memref<1x120xf32>)
    %2 = memref.get_global @__constant_1x120xf32 : memref<1x120xf32>
    %memref_37 = gpu.alloc  () : memref<1x120xf32>
    gpu.memcpy  %memref_37, %2 : memref<1x120xf32>, memref<1x120xf32>
    %memref_38 = gpu.alloc  () : memref<1x120xf32>
    gpu.launch_func  @CUDA_kernel_27::@CUDA_kernel_27 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_36 : memref<1x120xf32>, %memref_37 : memref<1x120xf32>, %memref_38 : memref<1x120xf32>)
    %memref_39 = gpu.alloc  () : memref<120x84xf32>
    gpu.launch_func  @CUDA_kernel_28::@CUDA_kernel_28 blocks in (%c120, %c84, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_6 : memref<84x120xf32>, %memref_39 : memref<120x84xf32>)
    %expand_shape_40 = memref.expand_shape %memref_38 [[0, 1], [2]] : memref<1x120xf32> into memref<1x1x120xf32>
    %expand_shape_41 = memref.expand_shape %memref_39 [[0, 1], [2]] : memref<120x84xf32> into memref<1x120x84xf32>
    %memref_42 = gpu.alloc  () : memref<1x1x84xf32>
    gpu.launch_func  @CUDA_kernel_29::@CUDA_kernel_29 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %memref_42 : memref<1x1x84xf32>)
    gpu.launch_func  @CUDA_kernel_30::@CUDA_kernel_30 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_40 : memref<1x1x120xf32>, %expand_shape_41 : memref<1x120x84xf32>, %memref_42 : memref<1x1x84xf32>, %c120 : index)
    %collapse_shape_43 = memref.collapse_shape %memref_42 [[0, 1], [2]] : memref<1x1x84xf32> into memref<1x84xf32>
    %expand_shape_44 = memref.expand_shape %memref_7 [[0, 1]] : memref<84xf32> into memref<1x84xf32>
    %memref_45 = gpu.alloc  () : memref<1x84xf32>
    gpu.launch_func  @CUDA_kernel_31::@CUDA_kernel_31 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_44 : memref<1x84xf32>, %collapse_shape_43 : memref<1x84xf32>, %memref_45 : memref<1x84xf32>)
    %3 = memref.get_global @__constant_1x84xf32 : memref<1x84xf32>
    %memref_46 = gpu.alloc  () : memref<1x84xf32>
    gpu.memcpy  %memref_46, %3 : memref<1x84xf32>, memref<1x84xf32>
    %memref_47 = gpu.alloc  () : memref<1x84xf32>
    gpu.launch_func  @CUDA_kernel_32::@CUDA_kernel_32 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_45 : memref<1x84xf32>, %memref_46 : memref<1x84xf32>, %memref_47 : memref<1x84xf32>)
    %memref_48 = gpu.alloc  () : memref<84x10xf32>
    gpu.launch_func  @CUDA_kernel_33::@CUDA_kernel_33 blocks in (%c84, %c10, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %memref_8 : memref<10x84xf32>, %memref_48 : memref<84x10xf32>)
    %expand_shape_49 = memref.expand_shape %memref_47 [[0, 1], [2]] : memref<1x84xf32> into memref<1x1x84xf32>
    %expand_shape_50 = memref.expand_shape %memref_48 [[0, 1], [2]] : memref<84x10xf32> into memref<1x84x10xf32>
    %memref_51 = gpu.alloc  () : memref<1x1x10xf32>
    gpu.launch_func  @CUDA_kernel_34::@CUDA_kernel_34 blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %memref_51 : memref<1x1x10xf32>)
    gpu.launch_func  @CUDA_kernel_35::@CUDA_kernel_35 blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_49 : memref<1x1x84xf32>, %expand_shape_50 : memref<1x84x10xf32>, %memref_51 : memref<1x1x10xf32>, %c84 : index)
    %collapse_shape_52 = memref.collapse_shape %memref_51 [[0, 1], [2]] : memref<1x1x10xf32> into memref<1x10xf32>
    %expand_shape_53 = memref.expand_shape %memref_9 [[0, 1]] : memref<10xf32> into memref<1x10xf32>
    %memref_54 = gpu.alloc  () : memref<1x10xf32>
    gpu.launch_func  @CUDA_kernel_36::@CUDA_kernel_36 blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_53 : memref<1x10xf32>, %collapse_shape_52 : memref<1x10xf32>, %memref_54 : memref<1x10xf32>)
    %alloc = memref.alloc() : memref<1x10xf32>
    gpu.memcpy  %alloc, %memref_54 : memref<1x10xf32>, memref<1x10xf32>
    gpu.dealloc  %memref_46 : memref<1x84xf32>
    gpu.dealloc  %memref_9 : memref<10xf32>
    return %alloc : memref<1x10xf32>
  }
  gpu.module @CUDA_kernel_1 {
    gpu.func @CUDA_kernel_1(%arg0: index, %arg1: index, %arg2: memref<1x1x28x28xf32>, %arg3: memref<1x28x28x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%arg1, %arg1, %2, %3] : memref<1x1x28x28xf32>
      memref.store %4, %arg3[%arg1, %2, %3, %arg1] : memref<1x28x28x1xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_2 {
    gpu.func @CUDA_kernel_2(%arg0: index, %arg1: index, %arg2: memref<6x1x5x5xf32>, %arg3: memref<6x5x5x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @CUDA_kernel_3 {
    gpu.func @CUDA_kernel_3(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @CUDA_kernel_4 {
    gpu.func @CUDA_kernel_4(%arg0: index, %arg1: index, %arg2: memref<1x28x28x1xf32>, %arg3: memref<6x5x5x1xf32>, %arg4: memref<1x24x24x6xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @CUDA_kernel_5 {
    gpu.func @CUDA_kernel_5(%arg0: index, %arg1: index, %arg2: memref<6xf32>, %arg3: memref<1x24x24x6xf32>, %arg4: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @CUDA_kernel_6 {
    gpu.func @CUDA_kernel_6(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @CUDA_kernel_7 {
    gpu.func @CUDA_kernel_7(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x6x24x24xf32>, %arg4: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      %8 = arith.maxnumf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_8 {
    gpu.func @CUDA_kernel_8(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %5, %3, %4] : memref<1x6x24x24xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_9 {
    gpu.func @CUDA_kernel_9(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x12x12x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_10 {
    gpu.func @CUDA_kernel_10(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x12x12x6xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        scf.for %arg6 = %arg1 to %arg4 step %arg0 {
          %6 = affine.apply #map2(%arg5, %0)[%arg0, %arg1]
          %7 = affine.apply #map2(%arg6, %1)[%arg0, %arg1]
          %8 = memref.load %arg2[%arg1, %6, %7, %5] : memref<1x24x24x6xf32>
          %9 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
          %10 = arith.maxnumf %9, %8 : f32
          memref.store %10, %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_11 {
    gpu.func @CUDA_kernel_11(%arg0: index, %arg1: index, %arg2: memref<1x12x12x6xf32>, %arg3: memref<1x6x12x12xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %4, %5, %3] : memref<1x12x12x6xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x6x12x12xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_12 {
    gpu.func @CUDA_kernel_12(%arg0: index, %arg1: index, %arg2: memref<1x6x12x12xf32>, %arg3: memref<1x12x12x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %5, %3, %4] : memref<1x6x12x12xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_13 {
    gpu.func @CUDA_kernel_13(%arg0: index, %arg1: index, %arg2: memref<16x6x5x5xf32>, %arg3: memref<16x5x5x6xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        %6 = memref.load %arg2[%3, %arg5, %4, %5] : memref<16x6x5x5xf32>
        memref.store %6, %arg3[%3, %4, %5, %arg5] : memref<16x5x5x6xf32>
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_14 {
    gpu.func @CUDA_kernel_14(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_15 {
    gpu.func @CUDA_kernel_15(%arg0: index, %arg1: index, %arg2: memref<1x12x12x6xf32>, %arg3: memref<16x5x5x6xf32>, %arg4: memref<1x8x8x16xf32>, %arg5: index, %arg6: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg7 = %arg1 to %arg6 step %arg0 {
        scf.for %arg8 = %arg1 to %arg6 step %arg0 {
          scf.for %arg9 = %arg1 to %arg5 step %arg0 {
            %6 = affine.apply #map1(%arg7, %0)[%arg0, %arg1]
            %7 = affine.apply #map1(%arg8, %1)[%arg0, %arg1]
            %8 = memref.load %arg2[%arg1, %6, %7, %arg9] : memref<1x12x12x6xf32>
            %9 = memref.load %arg3[%5, %arg7, %arg8, %arg9] : memref<16x5x5x6xf32>
            %10 = memref.load %arg4[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
            %11 = arith.mulf %8, %9 : f32
            %12 = arith.addf %10, %11 : f32
            memref.store %12, %arg4[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
          }
        }
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_16 {
    gpu.func @CUDA_kernel_16(%arg0: index, %arg1: index, %arg2: memref<16xf32>, %arg3: memref<1x8x8x16xf32>, %arg4: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%5] : memref<16xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
      %8 = arith.addf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_17 {
    gpu.func @CUDA_kernel_17(%arg0: index, %arg1: index, %arg2: memref<1x8x8x16xf32>, %arg3: memref<1x16x8x8xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %4, %5, %3] : memref<1x8x8x16xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x16x8x8xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_18 {
    gpu.func @CUDA_kernel_18(%arg0: index, %arg1: index, %arg2: memref<1x16x8x8xf32>, %arg3: memref<1x16x8x8xf32>, %arg4: memref<1x16x8x8xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %3, %4, %5] : memref<1x16x8x8xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x16x8x8xf32>
      %8 = arith.maxnumf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x16x8x8xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_19 {
    gpu.func @CUDA_kernel_19(%arg0: index, %arg1: index, %arg2: memref<1x16x8x8xf32>, %arg3: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %5, %3, %4] : memref<1x16x8x8xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_20 {
    gpu.func @CUDA_kernel_20(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x4x4x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %3, %4, %5] : memref<1x4x4x16xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_21 {
    gpu.func @CUDA_kernel_21(%arg0: index, %arg1: index, %arg2: memref<1x8x8x16xf32>, %arg3: memref<1x4x4x16xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        scf.for %arg6 = %arg1 to %arg4 step %arg0 {
          %6 = affine.apply #map2(%arg5, %0)[%arg0, %arg1]
          %7 = affine.apply #map2(%arg6, %1)[%arg0, %arg1]
          %8 = memref.load %arg2[%arg1, %6, %7, %5] : memref<1x8x8x16xf32>
          %9 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x4x4x16xf32>
          %10 = arith.maxnumf %9, %8 : f32
          memref.store %10, %arg3[%arg1, %3, %4, %5] : memref<1x4x4x16xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_22 {
    gpu.func @CUDA_kernel_22(%arg0: index, %arg1: index, %arg2: memref<1x4x4x16xf32>, %arg3: memref<1x16x4x4xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %4, %5, %3] : memref<1x4x4x16xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x16x4x4xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_23 {
    gpu.func @CUDA_kernel_23(%arg0: index, %arg1: index, %arg2: memref<120x256xf32>, %arg3: memref<256x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%3, %2] : memref<120x256xf32>
      memref.store %4, %arg3[%2, %3] : memref<256x120xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_24 {
    gpu.func @CUDA_kernel_24(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %1] : memref<1x1x120xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_25 {
    gpu.func @CUDA_kernel_25(%arg0: index, %arg1: index, %arg2: memref<1x1x256xf32>, %arg3: memref<1x256x120xf32>, %arg4: memref<1x1x120xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        %2 = memref.load %arg2[%arg1, %arg1, %arg6] : memref<1x1x256xf32>
        %3 = memref.load %arg3[%arg1, %arg6, %1] : memref<1x256x120xf32>
        %4 = memref.load %arg4[%arg1, %arg1, %1] : memref<1x1x120xf32>
        %5 = arith.mulf %2, %3 : f32
        %6 = arith.addf %4, %5 : f32
        memref.store %6, %arg4[%arg1, %arg1, %1] : memref<1x1x120xf32>
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_26 {
    gpu.func @CUDA_kernel_26(%arg0: index, %arg1: index, %arg2: memref<1x120xf32>, %arg3: memref<1x120xf32>, %arg4: memref<1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x120xf32>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x120xf32>
      %4 = arith.addf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x120xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_27 {
    gpu.func @CUDA_kernel_27(%arg0: index, %arg1: index, %arg2: memref<1x120xf32>, %arg3: memref<1x120xf32>, %arg4: memref<1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x120xf32>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x120xf32>
      %4 = arith.maxnumf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x120xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_28 {
    gpu.func @CUDA_kernel_28(%arg0: index, %arg1: index, %arg2: memref<84x120xf32>, %arg3: memref<120x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%3, %2] : memref<84x120xf32>
      memref.store %4, %arg3[%2, %3] : memref<120x84xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_29 {
    gpu.func @CUDA_kernel_29(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %1] : memref<1x1x84xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_30 {
    gpu.func @CUDA_kernel_30(%arg0: index, %arg1: index, %arg2: memref<1x1x120xf32>, %arg3: memref<1x120x84xf32>, %arg4: memref<1x1x84xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        %2 = memref.load %arg2[%arg1, %arg1, %arg6] : memref<1x1x120xf32>
        %3 = memref.load %arg3[%arg1, %arg6, %1] : memref<1x120x84xf32>
        %4 = memref.load %arg4[%arg1, %arg1, %1] : memref<1x1x84xf32>
        %5 = arith.mulf %2, %3 : f32
        %6 = arith.addf %4, %5 : f32
        memref.store %6, %arg4[%arg1, %arg1, %1] : memref<1x1x84xf32>
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_31 {
    gpu.func @CUDA_kernel_31(%arg0: index, %arg1: index, %arg2: memref<1x84xf32>, %arg3: memref<1x84xf32>, %arg4: memref<1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x84xf32>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x84xf32>
      %4 = arith.addf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x84xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_32 {
    gpu.func @CUDA_kernel_32(%arg0: index, %arg1: index, %arg2: memref<1x84xf32>, %arg3: memref<1x84xf32>, %arg4: memref<1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x84xf32>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x84xf32>
      %4 = arith.maxnumf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x84xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_33 {
    gpu.func @CUDA_kernel_33(%arg0: index, %arg1: index, %arg2: memref<10x84xf32>, %arg3: memref<84x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%3, %2] : memref<10x84xf32>
      memref.store %4, %arg3[%2, %3] : memref<84x10xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_34 {
    gpu.func @CUDA_kernel_34(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %1] : memref<1x1x10xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_35 {
    gpu.func @CUDA_kernel_35(%arg0: index, %arg1: index, %arg2: memref<1x1x84xf32>, %arg3: memref<1x84x10xf32>, %arg4: memref<1x1x10xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        %2 = memref.load %arg2[%arg1, %arg1, %arg6] : memref<1x1x84xf32>
        %3 = memref.load %arg3[%arg1, %arg6, %1] : memref<1x84x10xf32>
        %4 = memref.load %arg4[%arg1, %arg1, %1] : memref<1x1x10xf32>
        %5 = arith.mulf %2, %3 : f32
        %6 = arith.addf %4, %5 : f32
        memref.store %6, %arg4[%arg1, %arg1, %1] : memref<1x1x10xf32>
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_36 {
    gpu.func @CUDA_kernel_36(%arg0: index, %arg1: index, %arg2: memref<1x10xf32>, %arg3: memref<1x10xf32>, %arg4: memref<1x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x10xf32>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x10xf32>
      %4 = arith.addf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x10xf32>
      gpu.return
    }
  }
}

