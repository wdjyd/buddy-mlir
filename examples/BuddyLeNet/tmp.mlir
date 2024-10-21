#map = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 + d1 * s0 + s1)>
#map2 = affine_map<(d0, d1)[s0, s1] -> (d0 + (d1 * s0) * 2 + s1 * 2)>
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
    %0 = gpu.wait async
    %1 = gpu.launch_func async [%0] @forward_kernel::@forward_kernel blocks in (%c28, %c28, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %arg1 : memref<1x1x28x28xf32>, %alloc : memref<1x28x28x1xf32>)
    gpu.wait [%1]
    %alloc_14 = memref.alloc() {alignment = 64 : i64} : memref<6x5x5x1xf32>
    %2 = gpu.wait async
    %3 = gpu.launch_func async [%2] @forward_kernel_0::@forward_kernel blocks in (%c6, %c5, %c5) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape : memref<6x1x5x5xf32>, %alloc_14 : memref<6x5x5x1xf32>)
    gpu.wait [%3]
    %alloc_15 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %4 = gpu.wait async
    %5 = gpu.launch_func async [%4] @forward_kernel_1::@forward_kernel blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_15 : memref<1x24x24x6xf32>)
    gpu.wait [%5]
    %alloc_16 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %6 = gpu.wait async
    %7 = gpu.launch_func async [%6] @forward_kernel_2::@forward_kernel blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc : memref<1x28x28x1xf32>, %alloc_14 : memref<6x5x5x1xf32>, %alloc_15 : memref<1x24x24x6xf32>, %c5 : index)
    %8 = gpu.launch_func async [%7] @forward_kernel_3::@forward_kernel blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %subview_1 : memref<6xf32, strided<[1], offset: 150>>, %alloc_15 : memref<1x24x24x6xf32>, %alloc_16 : memref<1x24x24x6xf32>)
    gpu.wait [%8]
    %alloc_17 = memref.alloc() {alignment = 64 : i64} : memref<1x6x24x24xf32>
    %9 = gpu.wait async
    %10 = gpu.launch_func async [%9] @forward_kernel_4::@forward_kernel blocks in (%c6, %c24, %c24) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_16 : memref<1x24x24x6xf32>, %alloc_17 : memref<1x6x24x24xf32>)
    %11 = memref.get_global @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32>
    gpu.wait [%10]
    %alloc_18 = memref.alloc() {alignment = 64 : i64} : memref<1x6x24x24xf32>
    %12 = gpu.wait async
    %13 = gpu.launch_func async [%12] @forward_kernel_5::@forward_kernel blocks in (%c6, %c24, %c24) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_17 : memref<1x6x24x24xf32>, %11 : memref<1x6x24x24xf32>, %alloc_18 : memref<1x6x24x24xf32>)
    gpu.wait [%13]
    %alloc_19 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %14 = gpu.wait async
    %15 = gpu.launch_func async [%14] @forward_kernel_6::@forward_kernel blocks in (%c24, %c24, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_18 : memref<1x6x24x24xf32>, %alloc_19 : memref<1x24x24x6xf32>)
    gpu.wait [%15]
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1x12x12x6xf32>
    %16 = gpu.wait async
    %17 = gpu.launch_func async [%16] @forward_kernel_7::@forward_kernel blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst : f32, %alloc_20 : memref<1x12x12x6xf32>)
    %18 = gpu.launch_func async [%17] @forward_kernel_8::@forward_kernel blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_19 : memref<1x24x24x6xf32>, %alloc_20 : memref<1x12x12x6xf32>, %c2 : index)
    gpu.wait [%18]
    %alloc_21 = memref.alloc() {alignment = 64 : i64} : memref<1x6x12x12xf32>
    %19 = gpu.wait async
    %20 = gpu.launch_func async [%19] @forward_kernel_9::@forward_kernel blocks in (%c6, %c12, %c12) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_20 : memref<1x12x12x6xf32>, %alloc_21 : memref<1x6x12x12xf32>)
    gpu.wait [%20]
    %alloc_22 = memref.alloc() {alignment = 64 : i64} : memref<1x12x12x6xf32>
    %21 = gpu.wait async
    %22 = gpu.launch_func async [%21] @forward_kernel_10::@forward_kernel blocks in (%c12, %c12, %c6) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_21 : memref<1x6x12x12xf32>, %alloc_22 : memref<1x12x12x6xf32>)
    gpu.wait [%22]
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<16x5x5x6xf32>
    %23 = gpu.wait async
    %24 = gpu.launch_func async [%23] @forward_kernel_11::@forward_kernel blocks in (%c16, %c5, %c5) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_3 : memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>, %alloc_23 : memref<16x5x5x6xf32>, %c6 : index)
    gpu.wait [%24]
    %alloc_24 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %25 = gpu.wait async
    %26 = gpu.launch_func async [%25] @forward_kernel_12::@forward_kernel blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_24 : memref<1x8x8x16xf32>)
    gpu.wait [%26]
    %alloc_25 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %27 = gpu.wait async
    %28 = gpu.launch_func async [%27] @forward_kernel_13::@forward_kernel blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_22 : memref<1x12x12x6xf32>, %alloc_23 : memref<16x5x5x6xf32>, %alloc_24 : memref<1x8x8x16xf32>, %c6 : index, %c5 : index)
    %29 = gpu.launch_func async [%28] @forward_kernel_14::@forward_kernel blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %subview_4 : memref<16xf32, strided<[1], offset: 2556>>, %alloc_24 : memref<1x8x8x16xf32>, %alloc_25 : memref<1x8x8x16xf32>)
    gpu.wait [%29]
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1x16x8x8xf32>
    %30 = gpu.wait async
    %31 = gpu.launch_func async [%30] @forward_kernel_15::@forward_kernel blocks in (%c16, %c8, %c8) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_25 : memref<1x8x8x16xf32>, %alloc_26 : memref<1x16x8x8xf32>)
    %32 = memref.get_global @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32>
    gpu.wait [%31]
    %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1x16x8x8xf32>
    %33 = gpu.wait async
    %34 = gpu.launch_func async [%33] @forward_kernel_16::@forward_kernel blocks in (%c16, %c8, %c8) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_26 : memref<1x16x8x8xf32>, %32 : memref<1x16x8x8xf32>, %alloc_27 : memref<1x16x8x8xf32>)
    gpu.wait [%34]
    %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %35 = gpu.wait async
    %36 = gpu.launch_func async [%35] @forward_kernel_17::@forward_kernel blocks in (%c8, %c8, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_27 : memref<1x16x8x8xf32>, %alloc_28 : memref<1x8x8x16xf32>)
    gpu.wait [%36]
    %alloc_29 = memref.alloc() {alignment = 64 : i64} : memref<1x4x4x16xf32>
    %37 = gpu.wait async
    %38 = gpu.launch_func async [%37] @forward_kernel_18::@forward_kernel blocks in (%c4, %c4, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst : f32, %alloc_29 : memref<1x4x4x16xf32>)
    %39 = gpu.launch_func async [%38] @forward_kernel_19::@forward_kernel blocks in (%c4, %c4, %c16) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_28 : memref<1x8x8x16xf32>, %alloc_29 : memref<1x4x4x16xf32>, %c2 : index)
    gpu.wait [%39]
    %alloc_30 = memref.alloc() {alignment = 64 : i64} : memref<1x16x4x4xf32>
    %40 = gpu.wait async
    %41 = gpu.launch_func async [%40] @forward_kernel_20::@forward_kernel blocks in (%c16, %c4, %c4) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_29 : memref<1x4x4x16xf32>, %alloc_30 : memref<1x16x4x4xf32>)
    gpu.wait [%41]
    %alloc_31 = memref.alloc() {alignment = 64 : i64} : memref<256x120xf32>
    %42 = gpu.wait async
    %43 = gpu.launch_func async [%42] @forward_kernel_21::@forward_kernel blocks in (%c256, %c120, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_6 : memref<120x256xf32, strided<[256, 1], offset: 2572>>, %alloc_31 : memref<256x120xf32>)
    %collapse_shape = memref.collapse_shape %alloc_30 [[0], [1, 2, 3]] : memref<1x16x4x4xf32> into memref<1x256xf32>
    %expand_shape_32 = memref.expand_shape %collapse_shape [[0, 1], [2]] : memref<1x256xf32> into memref<1x1x256xf32>
    %expand_shape_33 = memref.expand_shape %alloc_31 [[0, 1], [2]] : memref<256x120xf32> into memref<1x256x120xf32>
    gpu.wait [%43]
    %alloc_34 = memref.alloc() {alignment = 64 : i64} : memref<1x1x120xf32>
    %44 = gpu.wait async
    %45 = gpu.launch_func async [%44] @forward_kernel_22::@forward_kernel blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_34 : memref<1x1x120xf32>)
    %46 = gpu.launch_func async [%45] @forward_kernel_23::@forward_kernel blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_32 : memref<1x1x256xf32>, %expand_shape_33 : memref<1x256x120xf32>, %alloc_34 : memref<1x1x120xf32>, %c256 : index)
    %collapse_shape_35 = memref.collapse_shape %alloc_34 [[0, 1], [2]] : memref<1x1x120xf32> into memref<1x120xf32>
    %expand_shape_36 = memref.expand_shape %subview_7 [[0, 1]] : memref<120xf32, strided<[1], offset: 33292>> into memref<1x120xf32, strided<[120, 1], offset: 33292>>
    gpu.wait [%46]
    %alloc_37 = memref.alloc() {alignment = 64 : i64} : memref<1x120xf32>
    %47 = gpu.wait async
    %48 = gpu.launch_func async [%47] @forward_kernel_24::@forward_kernel blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_36 : memref<1x120xf32, strided<[120, 1], offset: 33292>>, %collapse_shape_35 : memref<1x120xf32>, %alloc_37 : memref<1x120xf32>)
    %49 = memref.get_global @__constant_1x120xf32 : memref<1x120xf32>
    gpu.wait [%48]
    %alloc_38 = memref.alloc() {alignment = 64 : i64} : memref<1x120xf32>
    %50 = gpu.wait async
    %51 = gpu.launch_func async [%50] @forward_kernel_25::@forward_kernel blocks in (%c120, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_37 : memref<1x120xf32>, %49 : memref<1x120xf32>, %alloc_38 : memref<1x120xf32>)
    gpu.wait [%51]
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<120x84xf32>
    %52 = gpu.wait async
    %53 = gpu.launch_func async [%52] @forward_kernel_26::@forward_kernel blocks in (%c120, %c84, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_9 : memref<84x120xf32, strided<[120, 1], offset: 33412>>, %alloc_39 : memref<120x84xf32>)
    %expand_shape_40 = memref.expand_shape %alloc_38 [[0, 1], [2]] : memref<1x120xf32> into memref<1x1x120xf32>
    %expand_shape_41 = memref.expand_shape %alloc_39 [[0, 1], [2]] : memref<120x84xf32> into memref<1x120x84xf32>
    gpu.wait [%53]
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1x1x84xf32>
    %54 = gpu.wait async
    %55 = gpu.launch_func async [%54] @forward_kernel_27::@forward_kernel blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_42 : memref<1x1x84xf32>)
    %56 = gpu.launch_func async [%55] @forward_kernel_28::@forward_kernel blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_40 : memref<1x1x120xf32>, %expand_shape_41 : memref<1x120x84xf32>, %alloc_42 : memref<1x1x84xf32>, %c120 : index)
    %collapse_shape_43 = memref.collapse_shape %alloc_42 [[0, 1], [2]] : memref<1x1x84xf32> into memref<1x84xf32>
    %expand_shape_44 = memref.expand_shape %subview_10 [[0, 1]] : memref<84xf32, strided<[1], offset: 43492>> into memref<1x84xf32, strided<[84, 1], offset: 43492>>
    gpu.wait [%56]
    %alloc_45 = memref.alloc() {alignment = 64 : i64} : memref<1x84xf32>
    %57 = gpu.wait async
    %58 = gpu.launch_func async [%57] @forward_kernel_29::@forward_kernel blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_44 : memref<1x84xf32, strided<[84, 1], offset: 43492>>, %collapse_shape_43 : memref<1x84xf32>, %alloc_45 : memref<1x84xf32>)
    %59 = memref.get_global @__constant_1x84xf32 : memref<1x84xf32>
    gpu.wait [%58]
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1x84xf32>
    %60 = gpu.wait async
    %61 = gpu.launch_func async [%60] @forward_kernel_30::@forward_kernel blocks in (%c84, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %alloc_45 : memref<1x84xf32>, %59 : memref<1x84xf32>, %alloc_46 : memref<1x84xf32>)
    gpu.wait [%61]
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<84x10xf32>
    %62 = gpu.wait async
    %63 = gpu.launch_func async [%62] @forward_kernel_31::@forward_kernel blocks in (%c84, %c10, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_12 : memref<10x84xf32, strided<[84, 1], offset: 43576>>, %alloc_47 : memref<84x10xf32>)
    %expand_shape_48 = memref.expand_shape %alloc_46 [[0, 1], [2]] : memref<1x84xf32> into memref<1x1x84xf32>
    %expand_shape_49 = memref.expand_shape %alloc_47 [[0, 1], [2]] : memref<84x10xf32> into memref<1x84x10xf32>
    gpu.wait [%63]
    %alloc_50 = memref.alloc() {alignment = 64 : i64} : memref<1x1x10xf32>
    %64 = gpu.wait async
    %65 = gpu.launch_func async [%64] @forward_kernel_32::@forward_kernel blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %cst_0 : f32, %alloc_50 : memref<1x1x10xf32>)
    %66 = gpu.launch_func async [%65] @forward_kernel_33::@forward_kernel blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_48 : memref<1x1x84xf32>, %expand_shape_49 : memref<1x84x10xf32>, %alloc_50 : memref<1x1x10xf32>, %c84 : index)
    %collapse_shape_51 = memref.collapse_shape %alloc_50 [[0, 1], [2]] : memref<1x1x10xf32> into memref<1x10xf32>
    %expand_shape_52 = memref.expand_shape %subview_13 [[0, 1]] : memref<10xf32, strided<[1], offset: 44416>> into memref<1x10xf32, strided<[10, 1], offset: 44416>>
    gpu.wait [%66]
    %alloc_53 = memref.alloc() {alignment = 64 : i64} : memref<1x10xf32>
    %67 = gpu.wait async
    %68 = gpu.launch_func async [%67] @forward_kernel_34::@forward_kernel blocks in (%c10, %c1, %c1) threads in (%c1, %c1, %c1)  args(%c1 : index, %c0 : index, %expand_shape_52 : memref<1x10xf32, strided<[10, 1], offset: 44416>>, %collapse_shape_51 : memref<1x10xf32>, %alloc_53 : memref<1x10xf32>)
    gpu.wait [%68]
    return %alloc_53 : memref<1x10xf32>
  }
  gpu.module @forward_kernel {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x1x28x28xf32>, %arg3: memref<1x28x28x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%arg1, %arg1, %2, %3] : memref<1x1x28x28xf32>
      memref.store %4, %arg3[%arg1, %2, %3, %arg1] : memref<1x28x28x1xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_0 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<6x1x5x5xf32>, %arg3: memref<6x5x5x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_1 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_2 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x28x28x1xf32>, %arg3: memref<6x5x5x1xf32>, %arg4: memref<1x24x24x6xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_3 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<6xf32, strided<[1], offset: 150>>, %arg3: memref<1x24x24x6xf32>, %arg4: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%5] : memref<6xf32, strided<[1], offset: 150>>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      %8 = arith.addf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_4 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_5 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x6x24x24xf32>, %arg4: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      %8 = arith.maximumf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_6 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_7 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x12x12x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_8 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x12x12x6xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
          %10 = arith.maximumf %9, %8 : f32
          memref.store %10, %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_9 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x12x12x6xf32>, %arg3: memref<1x6x12x12xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_10 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x6x12x12xf32>, %arg3: memref<1x12x12x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_11 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>, %arg3: memref<16x5x5x6xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        %6 = memref.load %arg2[%3, %arg5, %4, %5] : memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>
        memref.store %6, %arg3[%3, %4, %5, %arg5] : memref<16x5x5x6xf32>
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_12 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_13 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x12x12x6xf32>, %arg3: memref<16x5x5x6xf32>, %arg4: memref<1x8x8x16xf32>, %arg5: index, %arg6: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_14 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<16xf32, strided<[1], offset: 2556>>, %arg3: memref<1x8x8x16xf32>, %arg4: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%5] : memref<16xf32, strided<[1], offset: 2556>>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
      %8 = arith.addf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x8x8x16xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_15 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x8x8x16xf32>, %arg3: memref<1x16x8x8xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_16 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x16x8x8xf32>, %arg3: memref<1x16x8x8xf32>, %arg4: memref<1x16x8x8xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %3, %4, %5] : memref<1x16x8x8xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x16x8x8xf32>
      %8 = arith.maximumf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x16x8x8xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_17 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x16x8x8xf32>, %arg3: memref<1x8x8x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_18 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x4x4x16xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_19 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x8x8x16xf32>, %arg3: memref<1x4x4x16xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
          %10 = arith.maximumf %9, %8 : f32
          memref.store %10, %arg3[%arg1, %3, %4, %5] : memref<1x4x4x16xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @forward_kernel_20 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x4x4x16xf32>, %arg3: memref<1x16x4x4xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_21 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<120x256xf32, strided<[256, 1], offset: 2572>>, %arg3: memref<256x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%3, %2] : memref<120x256xf32, strided<[256, 1], offset: 2572>>
      memref.store %4, %arg3[%2, %3] : memref<256x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_22 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %1] : memref<1x1x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_23 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x1x256xf32>, %arg3: memref<1x256x120xf32>, %arg4: memref<1x1x120xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_24 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x120xf32, strided<[120, 1], offset: 33292>>, %arg3: memref<1x120xf32>, %arg4: memref<1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x120xf32, strided<[120, 1], offset: 33292>>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x120xf32>
      %4 = arith.addf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_25 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x120xf32>, %arg3: memref<1x120xf32>, %arg4: memref<1x120xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x120xf32>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x120xf32>
      %4 = arith.maximumf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x120xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_26 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<84x120xf32, strided<[120, 1], offset: 33412>>, %arg3: memref<120x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%3, %2] : memref<84x120xf32, strided<[120, 1], offset: 33412>>
      memref.store %4, %arg3[%2, %3] : memref<120x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_27 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %1] : memref<1x1x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_28 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x1x120xf32>, %arg3: memref<1x120x84xf32>, %arg4: memref<1x1x84xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_29 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x84xf32, strided<[84, 1], offset: 43492>>, %arg3: memref<1x84xf32>, %arg4: memref<1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x84xf32, strided<[84, 1], offset: 43492>>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x84xf32>
      %4 = arith.addf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_30 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x84xf32>, %arg3: memref<1x84xf32>, %arg4: memref<1x84xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x84xf32>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x84xf32>
      %4 = arith.maximumf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x84xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_31 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<10x84xf32, strided<[84, 1], offset: 43576>>, %arg3: memref<84x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%3, %2] : memref<10x84xf32, strided<[84, 1], offset: 43576>>
      memref.store %4, %arg3[%2, %3] : memref<84x10xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_32 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x1x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %arg1, %1] : memref<1x1x10xf32>
      gpu.return
    }
  }
  gpu.module @forward_kernel_33 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x1x84xf32>, %arg3: memref<1x84x10xf32>, %arg4: memref<1x1x10xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
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
  gpu.module @forward_kernel_34 {
    gpu.func @forward_kernel(%arg0: index, %arg1: index, %arg2: memref<1x10xf32, strided<[10, 1], offset: 44416>>, %arg3: memref<1x10xf32>, %arg4: memref<1x10xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = affine.apply #map(%0)[%arg0, %arg1]
      %2 = memref.load %arg2[%arg1, %1] : memref<1x10xf32, strided<[10, 1], offset: 44416>>
      %3 = memref.load %arg3[%arg1, %1] : memref<1x10xf32>
      %4 = arith.addf %2, %3 : f32
      memref.store %4, %arg4[%arg1, %1] : memref<1x10xf32>
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

