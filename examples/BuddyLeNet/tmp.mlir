#map = affine_map<(d0)[s0, s1] -> ((d0 - s0) ceildiv s1)>
#map1 = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0, d1) -> (d0 * 2 + d1)>
module attributes {gpu.container_module} {
  memref.global "private" constant @__constant_1x1x28x28xf32 : memref<1x1x28x28xf32> = dense<2.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_44426xf32 : memref<44426xf32> = dense<1.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x84xf32 : memref<1x84xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x120xf32 : memref<1x120xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_2xi32 : memref<2xi32> = dense<[1, 0]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32_0 : memref<4xi32> = dense<[0, 3, 1, 2]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32 : memref<4xi32> = dense<[0, 2, 3, 1]> {alignment = 64 : i64}
  func.func private @printMemrefF32(memref<*xf32>)
  func.func @forward(%arg0: memref<44426xf32>, %arg1: memref<1x1x28x28xf32>) -> memref<1x10xf32> {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c28 = arith.constant 28 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c24 = arith.constant 24 : index
    %c12 = arith.constant 12 : index
    %c2 = arith.constant 2 : index
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c4 = arith.constant 4 : index
    %c256 = arith.constant 256 : index
    %c120 = arith.constant 120 : index
    %c84 = arith.constant 84 : index
    %c10 = arith.constant 10 : index
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %subview = memref.subview %arg0[0] [150] [1] : memref<44426xf32> to memref<150xf32, strided<[1]>>
    %expand_shape = memref.expand_shape %subview [[0, 1, 2, 3]] : memref<150xf32, strided<[1]>> into memref<6x1x5x5xf32>
    %subview_1 = memref.subview %arg0[150] [6] [1] : memref<44426xf32> to memref<6xf32, strided<[1], offset: 150>>
    %subview_2 = memref.subview %arg0[156] [2400] [1] : memref<44426xf32> to memref<2400xf32, strided<[1], offset: 156>>
    %expand_shape_3 = memref.expand_shape %subview_2 [[0, 1, 2, 3]] : memref<2400xf32, strided<[1], offset: 156>> into memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>
    %subview_4 = memref.subview %arg0[2556] [16] [1] : memref<44426xf32> to memref<16xf32, strided<[1], offset: 2556>>
    %subview_5 = memref.subview %arg0[2572] [30720] [1] : memref<44426xf32> to memref<30720xf32, strided<[1], offset: 2572>>
    %expand_shape_6 = memref.expand_shape %subview_5 [[0, 1]] : memref<30720xf32, strided<[1], offset: 2572>> into memref<120x256xf32, strided<[256, 1], offset: 2572>>
    %subview_7 = memref.subview %arg0[33292] [120] [1] : memref<44426xf32> to memref<120xf32, strided<[1], offset: 33292>>
    %subview_8 = memref.subview %arg0[33412] [10080] [1] : memref<44426xf32> to memref<10080xf32, strided<[1], offset: 33412>>
    %expand_shape_9 = memref.expand_shape %subview_8 [[0, 1]] : memref<10080xf32, strided<[1], offset: 33412>> into memref<84x120xf32, strided<[120, 1], offset: 33412>>
    %subview_10 = memref.subview %arg0[43492] [84] [1] : memref<44426xf32> to memref<84xf32, strided<[1], offset: 43492>>
    %subview_11 = memref.subview %arg0[43576] [840] [1] : memref<44426xf32> to memref<840xf32, strided<[1], offset: 43576>>
    %expand_shape_12 = memref.expand_shape %subview_11 [[0, 1]] : memref<840xf32, strided<[1], offset: 43576>> into memref<10x84xf32, strided<[84, 1], offset: 43576>>
    %subview_13 = memref.subview %arg0[44416] [10] [1] : memref<44426xf32> to memref<10xf32, strided<[1], offset: 44416>>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<1x28x28x1xf32>
    %c1_14 = arith.constant 1 : index
    %0 = affine.apply #map(%c28)[%c0, %c1]
    %1 = affine.apply #map(%c28)[%c0, %c1]
    gpu.launch_func  @forward_kernel_0::@forward_kernel_0 blocks in (%0, %1, %c1_14) threads in (%c1_14, %c1_14, %c1_14)  args(%c1 : index, %c0 : index, %arg1 : memref<1x1x28x28xf32>, %alloc : memref<1x28x28x1xf32>)
    %alloc_15 = memref.alloc() {alignment = 64 : i64} : memref<6x5x5x1xf32>
    %c1_16 = arith.constant 1 : index
    %2 = affine.apply #map(%c6)[%c0, %c1]
    %3 = affine.apply #map(%c5)[%c0, %c1]
    %4 = affine.apply #map(%c5)[%c0, %c1]
    gpu.launch_func  @forward_kernel_1::@forward_kernel_1 blocks in (%2, %3, %4) threads in (%c1_16, %c1_16, %c1_16)  args(%c1 : index, %c0 : index, %expand_shape : memref<6x1x5x5xf32>, %alloc_15 : memref<6x5x5x1xf32>)
    %alloc_17 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %c1_18 = arith.constant 1 : index
    %5 = affine.apply #map(%c24)[%c0, %c1]
    %6 = affine.apply #map(%c24)[%c0, %c1]
    %7 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch_func  @forward_kernel_2::@forward_kernel_2 blocks in (%5, %6, %7) threads in (%c1_18, %c1_18, %c1_18)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_17 : memref<1x24x24x6xf32>)
    %alloc_19 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %c1_20 = arith.constant 1 : index
    %8 = affine.apply #map(%c24)[%c0, %c1]
    %9 = affine.apply #map(%c24)[%c0, %c1]
    %10 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch_func  @forward_kernel_3::@forward_kernel_3 blocks in (%8, %9, %10) threads in (%c1_20, %c1_20, %c1_20)  args(%c1 : index, %c0 : index, %alloc : memref<1x28x28x1xf32>, %alloc_15 : memref<6x5x5x1xf32>, %alloc_17 : memref<1x24x24x6xf32>, %c5 : index)
    %c1_21 = arith.constant 1 : index
    %11 = affine.apply #map(%c24)[%c0, %c1]
    %12 = affine.apply #map(%c24)[%c0, %c1]
    %13 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch_func  @forward_kernel_4::@forward_kernel_4 blocks in (%11, %12, %13) threads in (%c1_21, %c1_21, %c1_21)  args(%c1 : index, %c0 : index, %subview_1 : memref<6xf32, strided<[1], offset: 150>>, %alloc_17 : memref<1x24x24x6xf32>, %alloc_19 : memref<1x24x24x6xf32>)
    %alloc_22 = memref.alloc() {alignment = 64 : i64} : memref<1x6x24x24xf32>
    %c1_23 = arith.constant 1 : index
    %14 = affine.apply #map(%c6)[%c0, %c1]
    %15 = affine.apply #map(%c24)[%c0, %c1]
    %16 = affine.apply #map(%c24)[%c0, %c1]
    gpu.launch_func  @forward_kernel_5::@forward_kernel_5 blocks in (%14, %15, %16) threads in (%c1_23, %c1_23, %c1_23)  args(%c1 : index, %c0 : index, %alloc_19 : memref<1x24x24x6xf32>, %alloc_22 : memref<1x6x24x24xf32>)
    %17 = memref.get_global @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32>
    %alloc_24 = memref.alloc() {alignment = 64 : i64} : memref<1x6x24x24xf32>
    %c1_25 = arith.constant 1 : index
    %18 = affine.apply #map(%c6)[%c0, %c1]
    %19 = affine.apply #map(%c24)[%c0, %c1]
    %20 = affine.apply #map(%c24)[%c0, %c1]
    gpu.launch_func  @forward_kernel_6::@forward_kernel_6 blocks in (%18, %19, %20) threads in (%c1_25, %c1_25, %c1_25)  args(%c1 : index, %c0 : index, %alloc_22 : memref<1x6x24x24xf32>, %17 : memref<1x6x24x24xf32>, %alloc_24 : memref<1x6x24x24xf32>)
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %c1_27 = arith.constant 1 : index
    %21 = affine.apply #map(%c24)[%c0, %c1]
    %22 = affine.apply #map(%c24)[%c0, %c1]
    %23 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch_func  @forward_kernel_7::@forward_kernel_7 blocks in (%21, %22, %23) threads in (%c1_27, %c1_27, %c1_27)  args(%c1 : index, %c0 : index, %alloc_24 : memref<1x6x24x24xf32>, %alloc_26 : memref<1x24x24x6xf32>)
    %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1x12x12x6xf32>
    %c1_29 = arith.constant 1 : index
    %24 = affine.apply #map(%c12)[%c0, %c1]
    %25 = affine.apply #map(%c12)[%c0, %c1]
    %26 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch_func  @forward_kernel_8::@forward_kernel_8 blocks in (%24, %25, %26) threads in (%c1_29, %c1_29, %c1_29)  args(%c1 : index, %c0 : index, %cst : f32, %alloc_28 : memref<1x12x12x6xf32>)
    %c1_30 = arith.constant 1 : index
    %27 = affine.apply #map(%c12)[%c0, %c1]
    %28 = affine.apply #map(%c12)[%c0, %c1]
    %29 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch_func  @forward_kernel_9::@forward_kernel_9 blocks in (%27, %28, %29) threads in (%c1_30, %c1_30, %c1_30)  args(%c1 : index, %c0 : index, %alloc_26 : memref<1x24x24x6xf32>, %alloc_28 : memref<1x12x12x6xf32>, %c2 : index)
    %alloc_31 = memref.alloc() {alignment = 64 : i64} : memref<1x6x12x12xf32>
    %c1_32 = arith.constant 1 : index
    %30 = affine.apply #map(%c6)[%c0, %c1]
    %31 = affine.apply #map(%c12)[%c0, %c1]
    %32 = affine.apply #map(%c12)[%c0, %c1]
    gpu.launch_func  @forward_kernel_10::@forward_kernel_10 blocks in (%30, %31, %32) threads in (%c1_32, %c1_32, %c1_32)  args(%c1 : index, %c0 : index, %alloc_28 : memref<1x12x12x6xf32>, %alloc_31 : memref<1x6x12x12xf32>)
    %alloc_33 = memref.alloc() {alignment = 64 : i64} : memref<1x12x12x6xf32>
    %c1_34 = arith.constant 1 : index
    %33 = affine.apply #map(%c12)[%c0, %c1]
    %34 = affine.apply #map(%c12)[%c0, %c1]
    %35 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch_func  @forward_kernel_11::@forward_kernel_11 blocks in (%33, %34, %35) threads in (%c1_34, %c1_34, %c1_34)  args(%c1 : index, %c0 : index, %alloc_31 : memref<1x6x12x12xf32>, %alloc_33 : memref<1x12x12x6xf32>)
    %alloc_35 = memref.alloc() {alignment = 64 : i64} : memref<16x5x5x6xf32>
    %c1_36 = arith.constant 1 : index
    %36 = affine.apply #map(%c16)[%c0, %c1]
    %37 = affine.apply #map(%c5)[%c0, %c1]
    %38 = affine.apply #map(%c5)[%c0, %c1]
    gpu.launch_func  @forward_kernel_12::@forward_kernel_12 blocks in (%36, %37, %38) threads in (%c1_36, %c1_36, %c1_36)  args(%c1 : index, %c0 : index, %expand_shape_3 : memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>, %alloc_35 : memref<16x5x5x6xf32>, %c6 : index)
    %alloc_37 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %c1_38 = arith.constant 1 : index
    %39 = affine.apply #map(%c8)[%c0, %c1]
    %40 = affine.apply #map(%c8)[%c0, %c1]
    %41 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch_func  @forward_kernel_13::@forward_kernel_13 blocks in (%39, %40, %41) threads in (%c1_38, %c1_38, %c1_38)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_37 : memref<1x8x8x16xf32>)
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %c1_40 = arith.constant 1 : index
    %42 = affine.apply #map(%c8)[%c0, %c1]
    %43 = affine.apply #map(%c8)[%c0, %c1]
    %44 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch_func  @forward_kernel_14::@forward_kernel_14 blocks in (%42, %43, %44) threads in (%c1_40, %c1_40, %c1_40)  args(%c1 : index, %c0 : index, %alloc_33 : memref<1x12x12x6xf32>, %alloc_35 : memref<16x5x5x6xf32>, %alloc_37 : memref<1x8x8x16xf32>, %c6 : index, %c5 : index)
    %c1_41 = arith.constant 1 : index
    %45 = affine.apply #map(%c8)[%c0, %c1]
    %46 = affine.apply #map(%c8)[%c0, %c1]
    %47 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch_func  @forward_kernel_15::@forward_kernel_15 blocks in (%45, %46, %47) threads in (%c1_41, %c1_41, %c1_41)  args(%c1 : index, %c0 : index, %subview_4 : memref<16xf32, strided<[1], offset: 2556>>, %alloc_37 : memref<1x8x8x16xf32>, %alloc_39 : memref<1x8x8x16xf32>)
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1x16x8x8xf32>
    %c1_43 = arith.constant 1 : index
    %48 = affine.apply #map(%c16)[%c0, %c1]
    %49 = affine.apply #map(%c8)[%c0, %c1]
    %50 = affine.apply #map(%c8)[%c0, %c1]
    gpu.launch_func  @forward_kernel_16::@forward_kernel_16 blocks in (%48, %49, %50) threads in (%c1_43, %c1_43, %c1_43)  args(%c1 : index, %c0 : index, %alloc_39 : memref<1x8x8x16xf32>, %alloc_42 : memref<1x16x8x8xf32>)
    %51 = memref.get_global @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32>
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1x16x8x8xf32>
    %c1_45 = arith.constant 1 : index
    %52 = affine.apply #map(%c16)[%c0, %c1]
    %53 = affine.apply #map(%c8)[%c0, %c1]
    %54 = affine.apply #map(%c8)[%c0, %c1]
    gpu.launch_func  @forward_kernel_17::@forward_kernel_17 blocks in (%52, %53, %54) threads in (%c1_45, %c1_45, %c1_45)  args(%c1 : index, %c0 : index, %alloc_42 : memref<1x16x8x8xf32>, %51 : memref<1x16x8x8xf32>, %alloc_44 : memref<1x16x8x8xf32>)
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %c1_47 = arith.constant 1 : index
    %55 = affine.apply #map(%c8)[%c0, %c1]
    %56 = affine.apply #map(%c8)[%c0, %c1]
    %57 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch_func  @forward_kernel_18::@forward_kernel_18 blocks in (%55, %56, %57) threads in (%c1_47, %c1_47, %c1_47)  args(%c1 : index, %c0 : index, %alloc_44 : memref<1x16x8x8xf32>, %alloc_46 : memref<1x8x8x16xf32>)
    %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1x4x4x16xf32>
    %c1_49 = arith.constant 1 : index
    %58 = affine.apply #map(%c4)[%c0, %c1]
    %59 = affine.apply #map(%c4)[%c0, %c1]
    %60 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch_func  @forward_kernel_19::@forward_kernel_19 blocks in (%58, %59, %60) threads in (%c1_49, %c1_49, %c1_49)  args(%c1 : index, %c0 : index, %cst : f32, %alloc_48 : memref<1x4x4x16xf32>)
    %c1_50 = arith.constant 1 : index
    %61 = affine.apply #map(%c4)[%c0, %c1]
    %62 = affine.apply #map(%c4)[%c0, %c1]
    %63 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch_func  @forward_kernel_20::@forward_kernel_20 blocks in (%61, %62, %63) threads in (%c1_50, %c1_50, %c1_50)  args(%c1 : index, %c0 : index, %alloc_46 : memref<1x8x8x16xf32>, %alloc_48 : memref<1x4x4x16xf32>, %c2 : index)
    %alloc_51 = memref.alloc() {alignment = 64 : i64} : memref<1x16x4x4xf32>
    %c1_52 = arith.constant 1 : index
    %64 = affine.apply #map(%c16)[%c0, %c1]
    %65 = affine.apply #map(%c4)[%c0, %c1]
    %66 = affine.apply #map(%c4)[%c0, %c1]
    gpu.launch_func  @forward_kernel_21::@forward_kernel_21 blocks in (%64, %65, %66) threads in (%c1_52, %c1_52, %c1_52)  args(%c1 : index, %c0 : index, %alloc_48 : memref<1x4x4x16xf32>, %alloc_51 : memref<1x16x4x4xf32>)
    %alloc_53 = memref.alloc() {alignment = 64 : i64} : memref<256x120xf32>
    %c1_54 = arith.constant 1 : index
    %67 = affine.apply #map(%c256)[%c0, %c1]
    %68 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch_func  @forward_kernel_22::@forward_kernel_22 blocks in (%67, %68, %c1_54) threads in (%c1_54, %c1_54, %c1_54)  args(%c1 : index, %c0 : index, %expand_shape_6 : memref<120x256xf32, strided<[256, 1], offset: 2572>>, %alloc_53 : memref<256x120xf32>)
    %collapse_shape = memref.collapse_shape %alloc_51 [[0], [1, 2, 3]] : memref<1x16x4x4xf32> into memref<1x256xf32>
    %expand_shape_55 = memref.expand_shape %collapse_shape [[0, 1], [2]] : memref<1x256xf32> into memref<1x1x256xf32>
    %expand_shape_56 = memref.expand_shape %alloc_53 [[0, 1], [2]] : memref<256x120xf32> into memref<1x256x120xf32>
    %alloc_57 = memref.alloc() {alignment = 64 : i64} : memref<1x1x120xf32>
    %c1_58 = arith.constant 1 : index
    %69 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch_func  @forward_kernel_23::@forward_kernel_23 blocks in (%69, %c1_58, %c1_58) threads in (%c1_58, %c1_58, %c1_58)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_57 : memref<1x1x120xf32>)
    %c1_59 = arith.constant 1 : index
    %70 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch_func  @forward_kernel_24::@forward_kernel_24 blocks in (%70, %c1_59, %c1_59) threads in (%c1_59, %c1_59, %c1_59)  args(%c1 : index, %c0 : index, %expand_shape_55 : memref<1x1x256xf32>, %expand_shape_56 : memref<1x256x120xf32>, %alloc_57 : memref<1x1x120xf32>, %c256 : index)
    %collapse_shape_60 = memref.collapse_shape %alloc_57 [[0, 1], [2]] : memref<1x1x120xf32> into memref<1x120xf32>
    %expand_shape_61 = memref.expand_shape %subview_7 [[0, 1]] : memref<120xf32, strided<[1], offset: 33292>> into memref<1x120xf32, strided<[120, 1], offset: 33292>>
    %alloc_62 = memref.alloc() {alignment = 64 : i64} : memref<1x120xf32>
    %c1_63 = arith.constant 1 : index
    %71 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch_func  @forward_kernel_25::@forward_kernel_25 blocks in (%71, %c1_63, %c1_63) threads in (%c1_63, %c1_63, %c1_63)  args(%c1 : index, %c0 : index, %expand_shape_61 : memref<1x120xf32, strided<[120, 1], offset: 33292>>, %collapse_shape_60 : memref<1x120xf32>, %alloc_62 : memref<1x120xf32>)
    %72 = memref.get_global @__constant_1x120xf32 : memref<1x120xf32>
    %alloc_64 = memref.alloc() {alignment = 64 : i64} : memref<1x120xf32>
    %c1_65 = arith.constant 1 : index
    %73 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch_func  @forward_kernel_26::@forward_kernel_26 blocks in (%73, %c1_65, %c1_65) threads in (%c1_65, %c1_65, %c1_65)  args(%c1 : index, %c0 : index, %alloc_62 : memref<1x120xf32>, %72 : memref<1x120xf32>, %alloc_64 : memref<1x120xf32>)
    %alloc_66 = memref.alloc() {alignment = 64 : i64} : memref<120x84xf32>
    %c1_67 = arith.constant 1 : index
    %74 = affine.apply #map(%c120)[%c0, %c1]
    %75 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch_func  @forward_kernel_27::@forward_kernel_27 blocks in (%74, %75, %c1_67) threads in (%c1_67, %c1_67, %c1_67)  args(%c1 : index, %c0 : index, %expand_shape_9 : memref<84x120xf32, strided<[120, 1], offset: 33412>>, %alloc_66 : memref<120x84xf32>)
    %expand_shape_68 = memref.expand_shape %alloc_64 [[0, 1], [2]] : memref<1x120xf32> into memref<1x1x120xf32>
    %expand_shape_69 = memref.expand_shape %alloc_66 [[0, 1], [2]] : memref<120x84xf32> into memref<1x120x84xf32>
    %alloc_70 = memref.alloc() {alignment = 64 : i64} : memref<1x1x84xf32>
    %c1_71 = arith.constant 1 : index
    %76 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch_func  @forward_kernel_28::@forward_kernel_28 blocks in (%76, %c1_71, %c1_71) threads in (%c1_71, %c1_71, %c1_71)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_70 : memref<1x1x84xf32>)
    %c1_72 = arith.constant 1 : index
    %77 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch_func  @forward_kernel_29::@forward_kernel_29 blocks in (%77, %c1_72, %c1_72) threads in (%c1_72, %c1_72, %c1_72)  args(%c1 : index, %c0 : index, %expand_shape_68 : memref<1x1x120xf32>, %expand_shape_69 : memref<1x120x84xf32>, %alloc_70 : memref<1x1x84xf32>, %c120 : index)
    %collapse_shape_73 = memref.collapse_shape %alloc_70 [[0, 1], [2]] : memref<1x1x84xf32> into memref<1x84xf32>
    %expand_shape_74 = memref.expand_shape %subview_10 [[0, 1]] : memref<84xf32, strided<[1], offset: 43492>> into memref<1x84xf32, strided<[84, 1], offset: 43492>>
    %alloc_75 = memref.alloc() {alignment = 64 : i64} : memref<1x84xf32>
    %c1_76 = arith.constant 1 : index
    %78 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch_func  @forward_kernel_30::@forward_kernel_30 blocks in (%78, %c1_76, %c1_76) threads in (%c1_76, %c1_76, %c1_76)  args(%c1 : index, %c0 : index, %expand_shape_74 : memref<1x84xf32, strided<[84, 1], offset: 43492>>, %collapse_shape_73 : memref<1x84xf32>, %alloc_75 : memref<1x84xf32>)
    %79 = memref.get_global @__constant_1x84xf32 : memref<1x84xf32>
    %alloc_77 = memref.alloc() {alignment = 64 : i64} : memref<1x84xf32>
    %c1_78 = arith.constant 1 : index
    %80 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch_func  @forward_kernel_31::@forward_kernel_31 blocks in (%80, %c1_78, %c1_78) threads in (%c1_78, %c1_78, %c1_78)  args(%c1 : index, %c0 : index, %alloc_75 : memref<1x84xf32>, %79 : memref<1x84xf32>, %alloc_77 : memref<1x84xf32>)
    %alloc_79 = memref.alloc() {alignment = 64 : i64} : memref<84x10xf32>
    %c1_80 = arith.constant 1 : index
    %81 = affine.apply #map(%c84)[%c0, %c1]
    %82 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch_func  @forward_kernel_32::@forward_kernel_32 blocks in (%81, %82, %c1_80) threads in (%c1_80, %c1_80, %c1_80)  args(%c1 : index, %c0 : index, %expand_shape_12 : memref<10x84xf32, strided<[84, 1], offset: 43576>>, %alloc_79 : memref<84x10xf32>)
    %expand_shape_81 = memref.expand_shape %alloc_77 [[0, 1], [2]] : memref<1x84xf32> into memref<1x1x84xf32>
    %expand_shape_82 = memref.expand_shape %alloc_79 [[0, 1], [2]] : memref<84x10xf32> into memref<1x84x10xf32>
    %alloc_83 = memref.alloc() {alignment = 64 : i64} : memref<1x1x10xf32>
    %c1_84 = arith.constant 1 : index
    %83 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch_func  @forward_kernel_33::@forward_kernel_33 blocks in (%83, %c1_84, %c1_84) threads in (%c1_84, %c1_84, %c1_84)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_83 : memref<1x1x10xf32>)
    %c1_85 = arith.constant 1 : index
    %84 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch_func  @forward_kernel_34::@forward_kernel_34 blocks in (%84, %c1_85, %c1_85) threads in (%c1_85, %c1_85, %c1_85)  args(%c1 : index, %c0 : index, %expand_shape_81 : memref<1x1x84xf32>, %expand_shape_82 : memref<1x84x10xf32>, %alloc_83 : memref<1x1x10xf32>, %c84 : index)
    %collapse_shape_86 = memref.collapse_shape %alloc_83 [[0, 1], [2]] : memref<1x1x10xf32> into memref<1x10xf32>
    %expand_shape_87 = memref.expand_shape %subview_13 [[0, 1]] : memref<10xf32, strided<[1], offset: 44416>> into memref<1x10xf32, strided<[10, 1], offset: 44416>>
    %alloc_88 = memref.alloc() {alignment = 64 : i64} : memref<1x10xf32>
    %c1_89 = arith.constant 1 : index
    %85 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch_func  @forward_kernel_35::@forward_kernel_35 blocks in (%85, %c1_89, %c1_89) threads in (%c1_89, %c1_89, %c1_89)  args(%c1 : index, %c0 : index, %expand_shape_87 : memref<1x10xf32, strided<[10, 1], offset: 44416>>, %collapse_shape_86 : memref<1x10xf32>, %alloc_88 : memref<1x10xf32>)
    return %alloc_88 : memref<1x10xf32>
  }
  gpu.module @forward_kernel_0 {
    gpu.func @forward_kernel_0(%arg0: index, %arg1: index, %arg2: memref<1x1x28x28xf32>, %arg3: memref<1x28x28x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = memref.load %arg2[%arg1, %arg1, %12, %13] : memref<1x1x28x28xf32>
      memref.store %14, %arg3[%arg1, %12, %13, %arg1] : memref<1x28x28x1xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_1 {
    gpu.func @forward_kernel_1(%arg0: index, %arg1: index, %arg2: memref<6x1x5x5xf32>, %arg3: memref<6x5x5x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%12, %arg1, %13, %14] : memref<6x1x5x5xf32>
      memref.store %15, %arg3[%12, %13, %14, %arg1] : memref<6x5x5x1xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_2 {
    gpu.func @forward_kernel_2(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %12, %13, %14] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_3 {
    gpu.func @forward_kernel_3(%arg0: index, %arg1: index, %arg2: memref<1x28x28x1xf32>, %arg3: memref<6x5x5x1xf32>, %arg4: memref<1x24x24x6xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        scf.for %arg7 = %arg1 to %arg5 step %arg0 {
          %15 = affine.apply #map2(%12, %arg6)
          %16 = affine.apply #map2(%13, %arg7)
          %17 = memref.load %arg2[%arg1, %15, %16, %arg1] : memref<1x28x28x1xf32>
          %18 = memref.load %arg3[%14, %arg6, %arg7, %arg1] : memref<6x5x5x1xf32>
          %19 = memref.load %arg4[%arg1, %12, %13, %14] : memref<1x24x24x6xf32>
          %20 = arith.mulf %17, %18 : f32
          %21 = arith.addf %19, %20 : f32
          memref.store %21, %arg4[%arg1, %12, %13, %14] : memref<1x24x24x6xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_4 {
    gpu.func @forward_kernel_4(%arg0: index, %arg1: index, %arg2: memref<6xf32, strided<[1], offset: 150>>, %arg3: memref<1x24x24x6xf32>, %arg4: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%14] : memref<6xf32, strided<[1], offset: 150>>
      %16 = memref.load %arg3[%arg1, %12, %13, %14] : memref<1x24x24x6xf32>
      %17 = arith.addf %15, %16 : f32
      memref.store %17, %arg4[%arg1, %12, %13, %14] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_5 {
    gpu.func @forward_kernel_5(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %13, %14, %12] : memref<1x24x24x6xf32>
      memref.store %15, %arg3[%arg1, %12, %13, %14] : memref<1x6x24x24xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_6 {
    gpu.func @forward_kernel_6(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x6x24x24xf32>, %arg4: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %12, %13, %14] : memref<1x6x24x24xf32>
      %16 = memref.load %arg3[%arg1, %12, %13, %14] : memref<1x6x24x24xf32>
      %17 = arith.maximumf %15, %16 : f32
      memref.store %17, %arg4[%arg1, %12, %13, %14] : memref<1x6x24x24xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_7 {
    gpu.func @forward_kernel_7(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %14, %12, %13] : memref<1x6x24x24xf32>
      memref.store %15, %arg3[%arg1, %12, %13, %14] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_8 {
    gpu.func @forward_kernel_8(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x12x12x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %12, %13, %14] : memref<1x12x12x6xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_9 {
    gpu.func @forward_kernel_9(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x12x12x6xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        scf.for %arg6 = %arg1 to %arg4 step %arg0 {
          %15 = affine.apply #map3(%12, %arg5)
          %16 = affine.apply #map3(%13, %arg6)
          %17 = memref.load %arg2[%arg1, %15, %16, %14] : memref<1x24x24x6xf32>
          %18 = memref.load %arg3[%arg1, %12, %13, %14] : memref<1x12x12x6xf32>
          %19 = arith.maximumf %18, %17 : f32
          memref.store %19, %arg3[%arg1, %12, %13, %14] : memref<1x12x12x6xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_10 {
    gpu.func @forward_kernel_10(%arg0: index, %arg1: index, %arg2: memref<1x12x12x6xf32>, %arg3: memref<1x6x12x12xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %13, %14, %12] : memref<1x12x12x6xf32>
      memref.store %15, %arg3[%arg1, %12, %13, %14] : memref<1x6x12x12xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_11 {
    gpu.func @forward_kernel_11(%arg0: index, %arg1: index, %arg2: memref<1x6x12x12xf32>, %arg3: memref<1x12x12x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %14, %12, %13] : memref<1x6x12x12xf32>
      memref.store %15, %arg3[%arg1, %12, %13, %14] : memref<1x12x12x6xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_12 {
    gpu.func @forward_kernel_12(%arg0: index, %arg1: index, %arg2: memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>, %arg3: memref<16x5x5x6xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        %15 = memref.load %arg2[%12, %arg5, %13, %14] : memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>
        memref.store %15, %arg3[%12, %13, %14, %arg5] : memref<16x5x5x6xf32>
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_13 {
    gpu.func @forward_kernel_13(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %12, %13, %14] : memref<1x8x8x16xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_14 {
    gpu.func @forward_kernel_14(%arg0: index, %arg1: index, %arg2: memref<1x12x12x6xf32>, %arg3: memref<16x5x5x6xf32>, %arg4: memref<1x8x8x16xf32>, %arg5: index, %arg6: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      scf.for %arg7 = %arg1 to %arg6 step %arg0 {
        scf.for %arg8 = %arg1 to %arg6 step %arg0 {
          scf.for %arg9 = %arg1 to %arg5 step %arg0 {
            %15 = affine.apply #map2(%12, %arg7)
            %16 = affine.apply #map2(%13, %arg8)
            %17 = memref.load %arg2[%arg1, %15, %16, %arg9] : memref<1x12x12x6xf32>
            %18 = memref.load %arg3[%14, %arg7, %arg8, %arg9] : memref<16x5x5x6xf32>
            %19 = memref.load %arg4[%arg1, %12, %13, %14] : memref<1x8x8x16xf32>
            %20 = arith.mulf %17, %18 : f32
            %21 = arith.addf %19, %20 : f32
            memref.store %21, %arg4[%arg1, %12, %13, %14] : memref<1x8x8x16xf32>
          }
        }
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_15 {
    gpu.func @forward_kernel_15(%arg0: index, %arg1: index, %arg2: memref<16xf32, strided<[1], offset: 2556>>, %arg3: memref<1x8x8x16xf32>, %arg4: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%14] : memref<16xf32, strided<[1], offset: 2556>>
      %16 = memref.load %arg3[%arg1, %12, %13, %14] : memref<1x8x8x16xf32>
      %17 = arith.addf %15, %16 : f32
      memref.store %17, %arg4[%arg1, %12, %13, %14] : memref<1x8x8x16xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_16 {
    gpu.func @forward_kernel_16(%arg0: index, %arg1: index, %arg2: memref<1x8x8x16xf32>, %arg3: memref<1x16x8x8xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %13, %14, %12] : memref<1x8x8x16xf32>
      memref.store %15, %arg3[%arg1, %12, %13, %14] : memref<1x16x8x8xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_17 {
    gpu.func @forward_kernel_17(%arg0: index, %arg1: index, %arg2: memref<1x16x8x8xf32>, %arg3: memref<1x16x8x8xf32>, %arg4: memref<1x16x8x8xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %12, %13, %14] : memref<1x16x8x8xf32>
      %16 = memref.load %arg3[%arg1, %12, %13, %14] : memref<1x16x8x8xf32>
      %17 = arith.maximumf %15, %16 : f32
      memref.store %17, %arg4[%arg1, %12, %13, %14] : memref<1x16x8x8xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_18 {
    gpu.func @forward_kernel_18(%arg0: index, %arg1: index, %arg2: memref<1x16x8x8xf32>, %arg3: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %14, %12, %13] : memref<1x16x8x8xf32>
      memref.store %15, %arg3[%arg1, %12, %13, %14] : memref<1x8x8x16xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_19 {
    gpu.func @forward_kernel_19(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x4x4x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %12, %13, %14] : memref<1x4x4x16xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_20 {
    gpu.func @forward_kernel_20(%arg0: index, %arg1: index, %arg2: memref<1x8x8x16xf32>, %arg3: memref<1x4x4x16xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        scf.for %arg6 = %arg1 to %arg4 step %arg0 {
          %15 = affine.apply #map3(%12, %arg5)
          %16 = affine.apply #map3(%13, %arg6)
          %17 = memref.load %arg2[%arg1, %15, %16, %14] : memref<1x8x8x16xf32>
          %18 = memref.load %arg3[%arg1, %12, %13, %14] : memref<1x4x4x16xf32>
          %19 = arith.maximumf %18, %17 : f32
          memref.store %19, %arg3[%arg1, %12, %13, %14] : memref<1x4x4x16xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_21 {
    gpu.func @forward_kernel_21(%arg0: index, %arg1: index, %arg2: memref<1x4x4x16xf32>, %arg3: memref<1x16x4x4xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = affine.apply #map1(%2)[%arg0, %arg1]
      %15 = memref.load %arg2[%arg1, %13, %14, %12] : memref<1x4x4x16xf32>
      memref.store %15, %arg3[%arg1, %12, %13, %14] : memref<1x16x4x4xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_22 {
    gpu.func @forward_kernel_22(%arg0: index, %arg1: index, %arg2: memref<120x256xf32, strided<[256, 1], offset: 2572>>, %arg3: memref<256x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = memref.load %arg2[%13, %12] : memref<120x256xf32, strided<[256, 1], offset: 2572>>
      memref.store %14, %arg3[%12, %13] : memref<256x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_23 {
    gpu.func @forward_kernel_23(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %12] : memref<1x1x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_24 {
    gpu.func @forward_kernel_24(%arg0: index, %arg1: index, %arg2: memref<1x1x256xf32>, %arg3: memref<1x256x120xf32>, %arg4: memref<1x1x120xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        %13 = memref.load %arg2[%arg1, %arg1, %arg6] : memref<1x1x256xf32>
        %14 = memref.load %arg3[%arg1, %arg6, %12] : memref<1x256x120xf32>
        %15 = memref.load %arg4[%arg1, %arg1, %12] : memref<1x1x120xf32>
        %16 = arith.mulf %13, %14 : f32
        %17 = arith.addf %15, %16 : f32
        memref.store %17, %arg4[%arg1, %arg1, %12] : memref<1x1x120xf32>
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_25 {
    gpu.func @forward_kernel_25(%arg0: index, %arg1: index, %arg2: memref<1x120xf32, strided<[120, 1], offset: 33292>>, %arg3: memref<1x120xf32>, %arg4: memref<1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = memref.load %arg2[%arg1, %12] : memref<1x120xf32, strided<[120, 1], offset: 33292>>
      %14 = memref.load %arg3[%arg1, %12] : memref<1x120xf32>
      %15 = arith.addf %13, %14 : f32
      memref.store %15, %arg4[%arg1, %12] : memref<1x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_26 {
    gpu.func @forward_kernel_26(%arg0: index, %arg1: index, %arg2: memref<1x120xf32>, %arg3: memref<1x120xf32>, %arg4: memref<1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = memref.load %arg2[%arg1, %12] : memref<1x120xf32>
      %14 = memref.load %arg3[%arg1, %12] : memref<1x120xf32>
      %15 = arith.maximumf %13, %14 : f32
      memref.store %15, %arg4[%arg1, %12] : memref<1x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_27 {
    gpu.func @forward_kernel_27(%arg0: index, %arg1: index, %arg2: memref<84x120xf32, strided<[120, 1], offset: 33412>>, %arg3: memref<120x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = memref.load %arg2[%13, %12] : memref<84x120xf32, strided<[120, 1], offset: 33412>>
      memref.store %14, %arg3[%12, %13] : memref<120x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_28 {
    gpu.func @forward_kernel_28(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %12] : memref<1x1x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_29 {
    gpu.func @forward_kernel_29(%arg0: index, %arg1: index, %arg2: memref<1x1x120xf32>, %arg3: memref<1x120x84xf32>, %arg4: memref<1x1x84xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        %13 = memref.load %arg2[%arg1, %arg1, %arg6] : memref<1x1x120xf32>
        %14 = memref.load %arg3[%arg1, %arg6, %12] : memref<1x120x84xf32>
        %15 = memref.load %arg4[%arg1, %arg1, %12] : memref<1x1x84xf32>
        %16 = arith.mulf %13, %14 : f32
        %17 = arith.addf %15, %16 : f32
        memref.store %17, %arg4[%arg1, %arg1, %12] : memref<1x1x84xf32>
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_30 {
    gpu.func @forward_kernel_30(%arg0: index, %arg1: index, %arg2: memref<1x84xf32, strided<[84, 1], offset: 43492>>, %arg3: memref<1x84xf32>, %arg4: memref<1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = memref.load %arg2[%arg1, %12] : memref<1x84xf32, strided<[84, 1], offset: 43492>>
      %14 = memref.load %arg3[%arg1, %12] : memref<1x84xf32>
      %15 = arith.addf %13, %14 : f32
      memref.store %15, %arg4[%arg1, %12] : memref<1x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_31 {
    gpu.func @forward_kernel_31(%arg0: index, %arg1: index, %arg2: memref<1x84xf32>, %arg3: memref<1x84xf32>, %arg4: memref<1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = memref.load %arg2[%arg1, %12] : memref<1x84xf32>
      %14 = memref.load %arg3[%arg1, %12] : memref<1x84xf32>
      %15 = arith.maximumf %13, %14 : f32
      memref.store %15, %arg4[%arg1, %12] : memref<1x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_32 {
    gpu.func @forward_kernel_32(%arg0: index, %arg1: index, %arg2: memref<10x84xf32, strided<[84, 1], offset: 43576>>, %arg3: memref<84x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = affine.apply #map1(%1)[%arg0, %arg1]
      %14 = memref.load %arg2[%13, %12] : memref<10x84xf32, strided<[84, 1], offset: 43576>>
      memref.store %14, %arg3[%12, %13] : memref<84x10xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_33 {
    gpu.func @forward_kernel_33(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %12] : memref<1x1x10xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_34 {
    gpu.func @forward_kernel_34(%arg0: index, %arg1: index, %arg2: memref<1x1x84xf32>, %arg3: memref<1x84x10xf32>, %arg4: memref<1x1x10xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        %13 = memref.load %arg2[%arg1, %arg1, %arg6] : memref<1x1x84xf32>
        %14 = memref.load %arg3[%arg1, %arg6, %12] : memref<1x84x10xf32>
        %15 = memref.load %arg4[%arg1, %arg1, %12] : memref<1x1x10xf32>
        %16 = arith.mulf %13, %14 : f32
        %17 = arith.addf %15, %16 : f32
        memref.store %17, %arg4[%arg1, %arg1, %12] : memref<1x1x10xf32>
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_35 {
    gpu.func @forward_kernel_35(%arg0: index, %arg1: index, %arg2: memref<1x10xf32, strided<[10, 1], offset: 44416>>, %arg3: memref<1x10xf32>, %arg4: memref<1x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
      %12 = affine.apply #map1(%0)[%arg0, %arg1]
      %13 = memref.load %arg2[%arg1, %12] : memref<1x10xf32, strided<[10, 1], offset: 44416>>
      %14 = memref.load %arg3[%arg1, %12] : memref<1x10xf32>
      %15 = arith.addf %13, %14 : f32
      memref.store %15, %arg4[%arg1, %12] : memref<1x10xf32>
      gpu.return
    }
  }
  func.func @main() {
    %0 = memref.get_global @__constant_44426xf32 : memref<44426xf32>
    %1 = memref.get_global @__constant_1x1x28x28xf32 : memref<1x1x28x28xf32>
    %2 = call @forward(%0, %1) : (memref<44426xf32>, memref<1x1x28x28xf32>) -> memref<1x10xf32>
    %cast = memref.cast %2 : memref<1x10xf32> to memref<*xf32>
    call @printMemrefF32(%cast) : (memref<*xf32>) -> ()
    return
  }
}

