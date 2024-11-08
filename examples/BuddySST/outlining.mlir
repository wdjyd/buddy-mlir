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
    %0 = "sst.malloc"() : () -> memref<1x1x28x28xf32>
    %false = arith.constant false
    "sst.memcpy"(%0, %arg0, %false) : (memref<1x1x28x28xf32>, memref<1x1x28x28xf32>, i1) -> ()
    %1 = "sst.malloc"() : () -> memref<6x1x5x5xf32>
    %false_0 = arith.constant false
    "sst.memcpy"(%1, %arg1, %false_0) : (memref<6x1x5x5xf32>, memref<6x1x5x5xf32>, i1) -> ()
    %2 = "sst.malloc"() : () -> memref<6xf32>
    %false_1 = arith.constant false
    "sst.memcpy"(%2, %arg2, %false_1) : (memref<6xf32>, memref<6xf32>, i1) -> ()
    %3 = "sst.malloc"() : () -> memref<16x6x5x5xf32>
    %false_2 = arith.constant false
    "sst.memcpy"(%3, %arg3, %false_2) : (memref<16x6x5x5xf32>, memref<16x6x5x5xf32>, i1) -> ()
    %4 = "sst.malloc"() : () -> memref<16xf32>
    %false_3 = arith.constant false
    "sst.memcpy"(%4, %arg4, %false_3) : (memref<16xf32>, memref<16xf32>, i1) -> ()
    %5 = "sst.malloc"() : () -> memref<120x256xf32>
    %false_4 = arith.constant false
    "sst.memcpy"(%5, %arg5, %false_4) : (memref<120x256xf32>, memref<120x256xf32>, i1) -> ()
    %6 = "sst.malloc"() : () -> memref<120xf32>
    %false_5 = arith.constant false
    "sst.memcpy"(%6, %arg6, %false_5) : (memref<120xf32>, memref<120xf32>, i1) -> ()
    %7 = "sst.malloc"() : () -> memref<84x120xf32>
    %false_6 = arith.constant false
    "sst.memcpy"(%7, %arg7, %false_6) : (memref<84x120xf32>, memref<84x120xf32>, i1) -> ()
    %8 = "sst.malloc"() : () -> memref<84xf32>
    %false_7 = arith.constant false
    "sst.memcpy"(%8, %arg8, %false_7) : (memref<84xf32>, memref<84xf32>, i1) -> ()
    %9 = "sst.malloc"() : () -> memref<10x84xf32>
    %false_8 = arith.constant false
    "sst.memcpy"(%9, %arg9, %false_8) : (memref<10x84xf32>, memref<10x84xf32>, i1) -> ()
    %10 = "sst.malloc"() : () -> memref<10xf32>
    %false_9 = arith.constant false
    "sst.memcpy"(%10, %arg10, %false_9) : (memref<10xf32>, memref<10xf32>, i1) -> ()
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
    %11 = "sst.malloc"() : () -> memref<1x28x28x1xf32>
    gpu.launch_func  @CUDA_kernel_1::@CUDA_kernel_1 blocks in (%c28, %c28, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %0 : memref<1x1x28x28xf32>, %11 : memref<1x28x28x1xf32>)
    %12 = "sst.malloc"() : () -> memref<6x5x5x1xf32>
    gpu.launch_func  @CUDA_kernel_2::@CUDA_kernel_2 blocks in (%c6, %c5, %c5) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %1 : memref<6x1x5x5xf32>, %12 : memref<6x5x5x1xf32>)
    %13 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    gpu.launch_func  @CUDA_kernel_3::@CUDA_kernel_3 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %13 : memref<1x24x24x6xf32>)
    %14 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    gpu.launch_func  @CUDA_kernel_4::@CUDA_kernel_4 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %11 : memref<1x28x28x1xf32>, %12 : memref<6x5x5x1xf32>, %13 : memref<1x24x24x6xf32>, %c5 : index)
    gpu.launch_func  @CUDA_kernel_5::@CUDA_kernel_5 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %2 : memref<6xf32>, %13 : memref<1x24x24x6xf32>, %14 : memref<1x24x24x6xf32>)
    %15 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    gpu.launch_func  @CUDA_kernel_6::@CUDA_kernel_6 blocks in (%c6, %c24, %c24) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %14 : memref<1x24x24x6xf32>, %15 : memref<1x6x24x24xf32>)
    %16 = memref.get_global @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32>
    %17 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    %false_11 = arith.constant false
    "sst.memcpy"(%17, %16, %false_11) : (memref<1x6x24x24xf32>, memref<1x6x24x24xf32>, i1) -> ()
    %18 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    gpu.launch_func  @CUDA_kernel_7::@CUDA_kernel_7 blocks in (%c6, %c24, %c24) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %15 : memref<1x6x24x24xf32>, %17 : memref<1x6x24x24xf32>, %18 : memref<1x6x24x24xf32>)
    %19 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    gpu.launch_func  @CUDA_kernel_8::@CUDA_kernel_8 blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %18 : memref<1x6x24x24xf32>, %19 : memref<1x24x24x6xf32>)
    %20 = "sst.malloc"() : () -> memref<1x12x12x6xf32>
    gpu.launch_func  @CUDA_kernel_9::@CUDA_kernel_9 blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst : f32, %20 : memref<1x12x12x6xf32>)
    gpu.launch_func  @CUDA_kernel_10::@CUDA_kernel_10 blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %19 : memref<1x24x24x6xf32>, %20 : memref<1x12x12x6xf32>, %c2 : index)
    %21 = "sst.malloc"() : () -> memref<1x6x12x12xf32>
    gpu.launch_func  @CUDA_kernel_11::@CUDA_kernel_11 blocks in (%c6, %c12, %c12) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %20 : memref<1x12x12x6xf32>, %21 : memref<1x6x12x12xf32>)
    %22 = "sst.malloc"() : () -> memref<1x12x12x6xf32>
    gpu.launch_func  @CUDA_kernel_12::@CUDA_kernel_12 blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %21 : memref<1x6x12x12xf32>, %22 : memref<1x12x12x6xf32>)
    %23 = "sst.malloc"() : () -> memref<16x5x5x6xf32>
    gpu.launch_func  @CUDA_kernel_13::@CUDA_kernel_13 blocks in (%c16, %c5, %c5) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %3 : memref<16x6x5x5xf32>, %23 : memref<16x5x5x6xf32>, %c6 : index)
    %24 = "sst.malloc"() : () -> memref<1x8x8x16xf32>
    gpu.launch_func  @CUDA_kernel_14::@CUDA_kernel_14 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %24 : memref<1x8x8x16xf32>)
    %25 = "sst.malloc"() : () -> memref<1x8x8x16xf32>
    gpu.launch_func  @CUDA_kernel_15::@CUDA_kernel_15 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %22 : memref<1x12x12x6xf32>, %23 : memref<16x5x5x6xf32>, %24 : memref<1x8x8x16xf32>, %c6 : index, %c5 : index)
    gpu.launch_func  @CUDA_kernel_16::@CUDA_kernel_16 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %4 : memref<16xf32>, %24 : memref<1x8x8x16xf32>, %25 : memref<1x8x8x16xf32>)
    %26 = "sst.malloc"() : () -> memref<1x16x8x8xf32>
    gpu.launch_func  @CUDA_kernel_17::@CUDA_kernel_17 blocks in (%c16, %c8, %c8) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %25 : memref<1x8x8x16xf32>, %26 : memref<1x16x8x8xf32>)
    %27 = memref.get_global @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32>
    %28 = "sst.malloc"() : () -> memref<1x16x8x8xf32>
    %false_12 = arith.constant false
    "sst.memcpy"(%28, %27, %false_12) : (memref<1x16x8x8xf32>, memref<1x16x8x8xf32>, i1) -> ()
    %29 = "sst.malloc"() : () -> memref<1x16x8x8xf32>
    gpu.launch_func  @CUDA_kernel_18::@CUDA_kernel_18 blocks in (%c16, %c8, %c8) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %26 : memref<1x16x8x8xf32>, %28 : memref<1x16x8x8xf32>, %29 : memref<1x16x8x8xf32>)
    %30 = "sst.malloc"() : () -> memref<1x8x8x16xf32>
    gpu.launch_func  @CUDA_kernel_19::@CUDA_kernel_19 blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %29 : memref<1x16x8x8xf32>, %30 : memref<1x8x8x16xf32>)
    %31 = "sst.malloc"() : () -> memref<1x4x4x16xf32>
    gpu.launch_func  @CUDA_kernel_20::@CUDA_kernel_20 blocks in (%c4, %c4, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst : f32, %31 : memref<1x4x4x16xf32>)
    gpu.launch_func  @CUDA_kernel_21::@CUDA_kernel_21 blocks in (%c4, %c4, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %30 : memref<1x8x8x16xf32>, %31 : memref<1x4x4x16xf32>, %c2 : index)
    %32 = "sst.malloc"() : () -> memref<1x16x4x4xf32>
    gpu.launch_func  @CUDA_kernel_22::@CUDA_kernel_22 blocks in (%c16, %c4, %c4) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %31 : memref<1x4x4x16xf32>, %32 : memref<1x16x4x4xf32>)
    %33 = "sst.malloc"() : () -> memref<256x120xf32>
    gpu.launch_func  @CUDA_kernel_23::@CUDA_kernel_23 blocks in (%c256, %c120, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %5 : memref<120x256xf32>, %33 : memref<256x120xf32>)
    %collapse_shape = memref.collapse_shape %32 [[0], [1, 2, 3]] : memref<1x16x4x4xf32> into memref<1x256xf32>
    %expand_shape = memref.expand_shape %collapse_shape [[0, 1], [2]] : memref<1x256xf32> into memref<1x1x256xf32>
    %expand_shape_13 = memref.expand_shape %33 [[0, 1], [2]] : memref<256x120xf32> into memref<1x256x120xf32>
    %34 = "sst.malloc"() : () -> memref<1x1x120xf32>
    gpu.launch_func  @CUDA_kernel_24::@CUDA_kernel_24 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %34 : memref<1x1x120xf32>)
    gpu.launch_func  @CUDA_kernel_25::@CUDA_kernel_25 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape : memref<1x1x256xf32>, %expand_shape_13 : memref<1x256x120xf32>, %34 : memref<1x1x120xf32>, %c256 : index)
    %collapse_shape_14 = memref.collapse_shape %34 [[0, 1], [2]] : memref<1x1x120xf32> into memref<1x120xf32>
    %expand_shape_15 = memref.expand_shape %6 [[0, 1]] : memref<120xf32> into memref<1x120xf32>
    %35 = "sst.malloc"() : () -> memref<1x120xf32>
    gpu.launch_func  @CUDA_kernel_26::@CUDA_kernel_26 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_15 : memref<1x120xf32>, %collapse_shape_14 : memref<1x120xf32>, %35 : memref<1x120xf32>)
    %36 = memref.get_global @__constant_1x120xf32 : memref<1x120xf32>
    %37 = "sst.malloc"() : () -> memref<1x120xf32>
    %false_16 = arith.constant false
    "sst.memcpy"(%37, %36, %false_16) : (memref<1x120xf32>, memref<1x120xf32>, i1) -> ()
    %38 = "sst.malloc"() : () -> memref<1x120xf32>
    gpu.launch_func  @CUDA_kernel_27::@CUDA_kernel_27 blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %35 : memref<1x120xf32>, %37 : memref<1x120xf32>, %38 : memref<1x120xf32>)
    %39 = "sst.malloc"() : () -> memref<120x84xf32>
    gpu.launch_func  @CUDA_kernel_28::@CUDA_kernel_28 blocks in (%c120, %c84, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %7 : memref<84x120xf32>, %39 : memref<120x84xf32>)
    %expand_shape_17 = memref.expand_shape %38 [[0, 1], [2]] : memref<1x120xf32> into memref<1x1x120xf32>
    %expand_shape_18 = memref.expand_shape %39 [[0, 1], [2]] : memref<120x84xf32> into memref<1x120x84xf32>
    %40 = "sst.malloc"() : () -> memref<1x1x84xf32>
    gpu.launch_func  @CUDA_kernel_29::@CUDA_kernel_29 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %40 : memref<1x1x84xf32>)
    gpu.launch_func  @CUDA_kernel_30::@CUDA_kernel_30 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_17 : memref<1x1x120xf32>, %expand_shape_18 : memref<1x120x84xf32>, %40 : memref<1x1x84xf32>, %c120 : index)
    %collapse_shape_19 = memref.collapse_shape %40 [[0, 1], [2]] : memref<1x1x84xf32> into memref<1x84xf32>
    %expand_shape_20 = memref.expand_shape %8 [[0, 1]] : memref<84xf32> into memref<1x84xf32>
    %41 = "sst.malloc"() : () -> memref<1x84xf32>
    gpu.launch_func  @CUDA_kernel_31::@CUDA_kernel_31 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_20 : memref<1x84xf32>, %collapse_shape_19 : memref<1x84xf32>, %41 : memref<1x84xf32>)
    %42 = memref.get_global @__constant_1x84xf32 : memref<1x84xf32>
    %43 = "sst.malloc"() : () -> memref<1x84xf32>
    %false_21 = arith.constant false
    "sst.memcpy"(%43, %42, %false_21) : (memref<1x84xf32>, memref<1x84xf32>, i1) -> ()
    %44 = "sst.malloc"() : () -> memref<1x84xf32>
    gpu.launch_func  @CUDA_kernel_32::@CUDA_kernel_32 blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %41 : memref<1x84xf32>, %43 : memref<1x84xf32>, %44 : memref<1x84xf32>)
    %45 = "sst.malloc"() : () -> memref<84x10xf32>
    gpu.launch_func  @CUDA_kernel_33::@CUDA_kernel_33 blocks in (%c84, %c10, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %9 : memref<10x84xf32>, %45 : memref<84x10xf32>)
    %expand_shape_22 = memref.expand_shape %44 [[0, 1], [2]] : memref<1x84xf32> into memref<1x1x84xf32>
    %expand_shape_23 = memref.expand_shape %45 [[0, 1], [2]] : memref<84x10xf32> into memref<1x84x10xf32>
    %46 = "sst.malloc"() : () -> memref<1x1x10xf32>
    gpu.launch_func  @CUDA_kernel_34::@CUDA_kernel_34 blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_10 : f32, %46 : memref<1x1x10xf32>)
    gpu.launch_func  @CUDA_kernel_35::@CUDA_kernel_35 blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_22 : memref<1x1x84xf32>, %expand_shape_23 : memref<1x84x10xf32>, %46 : memref<1x1x10xf32>, %c84 : index)
    %collapse_shape_24 = memref.collapse_shape %46 [[0, 1], [2]] : memref<1x1x10xf32> into memref<1x10xf32>
    %expand_shape_25 = memref.expand_shape %10 [[0, 1]] : memref<10xf32> into memref<1x10xf32>
    %47 = "sst.malloc"() : () -> memref<1x10xf32>
    gpu.launch_func  @CUDA_kernel_36::@CUDA_kernel_36 blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_25 : memref<1x10xf32>, %collapse_shape_24 : memref<1x10xf32>, %47 : memref<1x10xf32>)
    %alloc = memref.alloc() : memref<1x10xf32>
    %true = arith.constant true
    "sst.memcpy"(%alloc, %47, %true) : (memref<1x10xf32>, memref<1x10xf32>, i1) -> ()
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

