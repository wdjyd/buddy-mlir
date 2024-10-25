#map = affine_map<(d0)[s0, s1] -> ((d0 - s0) ceildiv s1)>
#map1 = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0, d1) -> (d0 * 2 + d1)>
module {
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
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %0, %arg9 = %1, %arg10 = %c1_14) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_14, %arg12 = %c1_14, %arg13 = %c1_14) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = memref.load %arg1[%c0, %c0, %86, %87] : memref<1x1x28x28xf32>
      memref.store %88, %alloc[%c0, %86, %87, %c0] : memref<1x28x28x1xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_15 = memref.alloc() {alignment = 64 : i64} : memref<6x5x5x1xf32>
    %c1_16 = arith.constant 1 : index
    %2 = affine.apply #map(%c6)[%c0, %c1]
    %3 = affine.apply #map(%c5)[%c0, %c1]
    %4 = affine.apply #map(%c5)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %2, %arg9 = %3, %arg10 = %4) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_16, %arg12 = %c1_16, %arg13 = %c1_16) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %expand_shape[%86, %c0, %87, %88] : memref<6x1x5x5xf32>
      memref.store %89, %alloc_15[%86, %87, %88, %c0] : memref<6x5x5x1xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_17 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %c1_18 = arith.constant 1 : index
    %5 = affine.apply #map(%c24)[%c0, %c1]
    %6 = affine.apply #map(%c24)[%c0, %c1]
    %7 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %5, %arg9 = %6, %arg10 = %7) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_18, %arg12 = %c1_18, %arg13 = %c1_18) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      memref.store %cst_0, %alloc_17[%c0, %86, %87, %88] : memref<1x24x24x6xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_19 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %c1_20 = arith.constant 1 : index
    %8 = affine.apply #map(%c24)[%c0, %c1]
    %9 = affine.apply #map(%c24)[%c0, %c1]
    %10 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %8, %arg9 = %9, %arg10 = %10) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_20, %arg12 = %c1_20, %arg13 = %c1_20) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      scf.for %arg14 = %c0 to %c5 step %c1 {
        scf.for %arg15 = %c0 to %c5 step %c1 {
          %89 = affine.apply #map2(%86, %arg14)
          %90 = affine.apply #map2(%87, %arg15)
          %91 = memref.load %alloc[%c0, %89, %90, %c0] : memref<1x28x28x1xf32>
          %92 = memref.load %alloc_15[%88, %arg14, %arg15, %c0] : memref<6x5x5x1xf32>
          %93 = memref.load %alloc_17[%c0, %86, %87, %88] : memref<1x24x24x6xf32>
          %94 = arith.mulf %91, %92 : f32
          %95 = arith.addf %93, %94 : f32
          memref.store %95, %alloc_17[%c0, %86, %87, %88] : memref<1x24x24x6xf32>
        }
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %c1_21 = arith.constant 1 : index
    %11 = affine.apply #map(%c24)[%c0, %c1]
    %12 = affine.apply #map(%c24)[%c0, %c1]
    %13 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %11, %arg9 = %12, %arg10 = %13) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_21, %arg12 = %c1_21, %arg13 = %c1_21) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %subview_1[%88] : memref<6xf32, strided<[1], offset: 150>>
      %90 = memref.load %alloc_17[%c0, %86, %87, %88] : memref<1x24x24x6xf32>
      %91 = arith.addf %89, %90 : f32
      memref.store %91, %alloc_19[%c0, %86, %87, %88] : memref<1x24x24x6xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_22 = memref.alloc() {alignment = 64 : i64} : memref<1x6x24x24xf32>
    %c1_23 = arith.constant 1 : index
    %14 = affine.apply #map(%c6)[%c0, %c1]
    %15 = affine.apply #map(%c24)[%c0, %c1]
    %16 = affine.apply #map(%c24)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %14, %arg9 = %15, %arg10 = %16) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_23, %arg12 = %c1_23, %arg13 = %c1_23) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_19[%c0, %87, %88, %86] : memref<1x24x24x6xf32>
      memref.store %89, %alloc_22[%c0, %86, %87, %88] : memref<1x6x24x24xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %17 = memref.get_global @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32>
    %alloc_24 = memref.alloc() {alignment = 64 : i64} : memref<1x6x24x24xf32>
    %c1_25 = arith.constant 1 : index
    %18 = affine.apply #map(%c6)[%c0, %c1]
    %19 = affine.apply #map(%c24)[%c0, %c1]
    %20 = affine.apply #map(%c24)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %18, %arg9 = %19, %arg10 = %20) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_25, %arg12 = %c1_25, %arg13 = %c1_25) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_22[%c0, %86, %87, %88] : memref<1x6x24x24xf32>
      %90 = memref.load %17[%c0, %86, %87, %88] : memref<1x6x24x24xf32>
      %91 = arith.maximumf %89, %90 : f32
      memref.store %91, %alloc_24[%c0, %86, %87, %88] : memref<1x6x24x24xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1x24x24x6xf32>
    %c1_27 = arith.constant 1 : index
    %21 = affine.apply #map(%c24)[%c0, %c1]
    %22 = affine.apply #map(%c24)[%c0, %c1]
    %23 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %21, %arg9 = %22, %arg10 = %23) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_27, %arg12 = %c1_27, %arg13 = %c1_27) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_24[%c0, %88, %86, %87] : memref<1x6x24x24xf32>
      memref.store %89, %alloc_26[%c0, %86, %87, %88] : memref<1x24x24x6xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1x12x12x6xf32>
    %c1_29 = arith.constant 1 : index
    %24 = affine.apply #map(%c12)[%c0, %c1]
    %25 = affine.apply #map(%c12)[%c0, %c1]
    %26 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %24, %arg9 = %25, %arg10 = %26) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_29, %arg12 = %c1_29, %arg13 = %c1_29) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      memref.store %cst, %alloc_28[%c0, %86, %87, %88] : memref<1x12x12x6xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %c1_30 = arith.constant 1 : index
    %27 = affine.apply #map(%c12)[%c0, %c1]
    %28 = affine.apply #map(%c12)[%c0, %c1]
    %29 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %27, %arg9 = %28, %arg10 = %29) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_30, %arg12 = %c1_30, %arg13 = %c1_30) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      scf.for %arg14 = %c0 to %c2 step %c1 {
        scf.for %arg15 = %c0 to %c2 step %c1 {
          %89 = affine.apply #map3(%86, %arg14)
          %90 = affine.apply #map3(%87, %arg15)
          %91 = memref.load %alloc_26[%c0, %89, %90, %88] : memref<1x24x24x6xf32>
          %92 = memref.load %alloc_28[%c0, %86, %87, %88] : memref<1x12x12x6xf32>
          %93 = arith.maximumf %92, %91 : f32
          memref.store %93, %alloc_28[%c0, %86, %87, %88] : memref<1x12x12x6xf32>
        }
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_31 = memref.alloc() {alignment = 64 : i64} : memref<1x6x12x12xf32>
    %c1_32 = arith.constant 1 : index
    %30 = affine.apply #map(%c6)[%c0, %c1]
    %31 = affine.apply #map(%c12)[%c0, %c1]
    %32 = affine.apply #map(%c12)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %30, %arg9 = %31, %arg10 = %32) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_32, %arg12 = %c1_32, %arg13 = %c1_32) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_28[%c0, %87, %88, %86] : memref<1x12x12x6xf32>
      memref.store %89, %alloc_31[%c0, %86, %87, %88] : memref<1x6x12x12xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_33 = memref.alloc() {alignment = 64 : i64} : memref<1x12x12x6xf32>
    %c1_34 = arith.constant 1 : index
    %33 = affine.apply #map(%c12)[%c0, %c1]
    %34 = affine.apply #map(%c12)[%c0, %c1]
    %35 = affine.apply #map(%c6)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %33, %arg9 = %34, %arg10 = %35) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_34, %arg12 = %c1_34, %arg13 = %c1_34) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_31[%c0, %88, %86, %87] : memref<1x6x12x12xf32>
      memref.store %89, %alloc_33[%c0, %86, %87, %88] : memref<1x12x12x6xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_35 = memref.alloc() {alignment = 64 : i64} : memref<16x5x5x6xf32>
    %c1_36 = arith.constant 1 : index
    %36 = affine.apply #map(%c16)[%c0, %c1]
    %37 = affine.apply #map(%c5)[%c0, %c1]
    %38 = affine.apply #map(%c5)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %36, %arg9 = %37, %arg10 = %38) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_36, %arg12 = %c1_36, %arg13 = %c1_36) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      scf.for %arg14 = %c0 to %c6 step %c1 {
        %89 = memref.load %expand_shape_3[%86, %arg14, %87, %88] : memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>
        memref.store %89, %alloc_35[%86, %87, %88, %arg14] : memref<16x5x5x6xf32>
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_37 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %c1_38 = arith.constant 1 : index
    %39 = affine.apply #map(%c8)[%c0, %c1]
    %40 = affine.apply #map(%c8)[%c0, %c1]
    %41 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %39, %arg9 = %40, %arg10 = %41) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_38, %arg12 = %c1_38, %arg13 = %c1_38) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      memref.store %cst_0, %alloc_37[%c0, %86, %87, %88] : memref<1x8x8x16xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %c1_40 = arith.constant 1 : index
    %42 = affine.apply #map(%c8)[%c0, %c1]
    %43 = affine.apply #map(%c8)[%c0, %c1]
    %44 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %42, %arg9 = %43, %arg10 = %44) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_40, %arg12 = %c1_40, %arg13 = %c1_40) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      scf.for %arg14 = %c0 to %c5 step %c1 {
        scf.for %arg15 = %c0 to %c5 step %c1 {
          scf.for %arg16 = %c0 to %c6 step %c1 {
            %89 = affine.apply #map2(%86, %arg14)
            %90 = affine.apply #map2(%87, %arg15)
            %91 = memref.load %alloc_33[%c0, %89, %90, %arg16] : memref<1x12x12x6xf32>
            %92 = memref.load %alloc_35[%88, %arg14, %arg15, %arg16] : memref<16x5x5x6xf32>
            %93 = memref.load %alloc_37[%c0, %86, %87, %88] : memref<1x8x8x16xf32>
            %94 = arith.mulf %91, %92 : f32
            %95 = arith.addf %93, %94 : f32
            memref.store %95, %alloc_37[%c0, %86, %87, %88] : memref<1x8x8x16xf32>
          }
        }
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %c1_41 = arith.constant 1 : index
    %45 = affine.apply #map(%c8)[%c0, %c1]
    %46 = affine.apply #map(%c8)[%c0, %c1]
    %47 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %45, %arg9 = %46, %arg10 = %47) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_41, %arg12 = %c1_41, %arg13 = %c1_41) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %subview_4[%88] : memref<16xf32, strided<[1], offset: 2556>>
      %90 = memref.load %alloc_37[%c0, %86, %87, %88] : memref<1x8x8x16xf32>
      %91 = arith.addf %89, %90 : f32
      memref.store %91, %alloc_39[%c0, %86, %87, %88] : memref<1x8x8x16xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_42 = memref.alloc() {alignment = 64 : i64} : memref<1x16x8x8xf32>
    %c1_43 = arith.constant 1 : index
    %48 = affine.apply #map(%c16)[%c0, %c1]
    %49 = affine.apply #map(%c8)[%c0, %c1]
    %50 = affine.apply #map(%c8)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %48, %arg9 = %49, %arg10 = %50) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_43, %arg12 = %c1_43, %arg13 = %c1_43) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_39[%c0, %87, %88, %86] : memref<1x8x8x16xf32>
      memref.store %89, %alloc_42[%c0, %86, %87, %88] : memref<1x16x8x8xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %51 = memref.get_global @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32>
    %alloc_44 = memref.alloc() {alignment = 64 : i64} : memref<1x16x8x8xf32>
    %c1_45 = arith.constant 1 : index
    %52 = affine.apply #map(%c16)[%c0, %c1]
    %53 = affine.apply #map(%c8)[%c0, %c1]
    %54 = affine.apply #map(%c8)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %52, %arg9 = %53, %arg10 = %54) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_45, %arg12 = %c1_45, %arg13 = %c1_45) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_42[%c0, %86, %87, %88] : memref<1x16x8x8xf32>
      %90 = memref.load %51[%c0, %86, %87, %88] : memref<1x16x8x8xf32>
      %91 = arith.maximumf %89, %90 : f32
      memref.store %91, %alloc_44[%c0, %86, %87, %88] : memref<1x16x8x8xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1x8x8x16xf32>
    %c1_47 = arith.constant 1 : index
    %55 = affine.apply #map(%c8)[%c0, %c1]
    %56 = affine.apply #map(%c8)[%c0, %c1]
    %57 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %55, %arg9 = %56, %arg10 = %57) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_47, %arg12 = %c1_47, %arg13 = %c1_47) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_44[%c0, %88, %86, %87] : memref<1x16x8x8xf32>
      memref.store %89, %alloc_46[%c0, %86, %87, %88] : memref<1x8x8x16xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_48 = memref.alloc() {alignment = 64 : i64} : memref<1x4x4x16xf32>
    %c1_49 = arith.constant 1 : index
    %58 = affine.apply #map(%c4)[%c0, %c1]
    %59 = affine.apply #map(%c4)[%c0, %c1]
    %60 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %58, %arg9 = %59, %arg10 = %60) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_49, %arg12 = %c1_49, %arg13 = %c1_49) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      memref.store %cst, %alloc_48[%c0, %86, %87, %88] : memref<1x4x4x16xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %c1_50 = arith.constant 1 : index
    %61 = affine.apply #map(%c4)[%c0, %c1]
    %62 = affine.apply #map(%c4)[%c0, %c1]
    %63 = affine.apply #map(%c16)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %61, %arg9 = %62, %arg10 = %63) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_50, %arg12 = %c1_50, %arg13 = %c1_50) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      scf.for %arg14 = %c0 to %c2 step %c1 {
        scf.for %arg15 = %c0 to %c2 step %c1 {
          %89 = affine.apply #map3(%86, %arg14)
          %90 = affine.apply #map3(%87, %arg15)
          %91 = memref.load %alloc_46[%c0, %89, %90, %88] : memref<1x8x8x16xf32>
          %92 = memref.load %alloc_48[%c0, %86, %87, %88] : memref<1x4x4x16xf32>
          %93 = arith.maximumf %92, %91 : f32
          memref.store %93, %alloc_48[%c0, %86, %87, %88] : memref<1x4x4x16xf32>
        }
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_51 = memref.alloc() {alignment = 64 : i64} : memref<1x16x4x4xf32>
    %c1_52 = arith.constant 1 : index
    %64 = affine.apply #map(%c16)[%c0, %c1]
    %65 = affine.apply #map(%c4)[%c0, %c1]
    %66 = affine.apply #map(%c4)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %64, %arg9 = %65, %arg10 = %66) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_52, %arg12 = %c1_52, %arg13 = %c1_52) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = affine.apply #map1(%arg4)[%c1, %c0]
      %89 = memref.load %alloc_48[%c0, %87, %88, %86] : memref<1x4x4x16xf32>
      memref.store %89, %alloc_51[%c0, %86, %87, %88] : memref<1x16x4x4xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_53 = memref.alloc() {alignment = 64 : i64} : memref<256x120xf32>
    %c1_54 = arith.constant 1 : index
    %67 = affine.apply #map(%c256)[%c0, %c1]
    %68 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %67, %arg9 = %68, %arg10 = %c1_54) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_54, %arg12 = %c1_54, %arg13 = %c1_54) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = memref.load %expand_shape_6[%87, %86] : memref<120x256xf32, strided<[256, 1], offset: 2572>>
      memref.store %88, %alloc_53[%86, %87] : memref<256x120xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %collapse_shape = memref.collapse_shape %alloc_51 [[0], [1, 2, 3]] : memref<1x16x4x4xf32> into memref<1x256xf32>
    %expand_shape_55 = memref.expand_shape %collapse_shape [[0, 1], [2]] : memref<1x256xf32> into memref<1x1x256xf32>
    %expand_shape_56 = memref.expand_shape %alloc_53 [[0, 1], [2]] : memref<256x120xf32> into memref<1x256x120xf32>
    %alloc_57 = memref.alloc() {alignment = 64 : i64} : memref<1x1x120xf32>
    %c1_58 = arith.constant 1 : index
    %69 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %69, %arg9 = %c1_58, %arg10 = %c1_58) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_58, %arg12 = %c1_58, %arg13 = %c1_58) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      memref.store %cst_0, %alloc_57[%c0, %c0, %86] : memref<1x1x120xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %c1_59 = arith.constant 1 : index
    %70 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %70, %arg9 = %c1_59, %arg10 = %c1_59) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_59, %arg12 = %c1_59, %arg13 = %c1_59) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      scf.for %arg14 = %c0 to %c256 step %c1 {
        %87 = memref.load %expand_shape_55[%c0, %c0, %arg14] : memref<1x1x256xf32>
        %88 = memref.load %expand_shape_56[%c0, %arg14, %86] : memref<1x256x120xf32>
        %89 = memref.load %alloc_57[%c0, %c0, %86] : memref<1x1x120xf32>
        %90 = arith.mulf %87, %88 : f32
        %91 = arith.addf %89, %90 : f32
        memref.store %91, %alloc_57[%c0, %c0, %86] : memref<1x1x120xf32>
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %collapse_shape_60 = memref.collapse_shape %alloc_57 [[0, 1], [2]] : memref<1x1x120xf32> into memref<1x120xf32>
    %expand_shape_61 = memref.expand_shape %subview_7 [[0, 1]] : memref<120xf32, strided<[1], offset: 33292>> into memref<1x120xf32, strided<[120, 1], offset: 33292>>
    %alloc_62 = memref.alloc() {alignment = 64 : i64} : memref<1x120xf32>
    %c1_63 = arith.constant 1 : index
    %71 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %71, %arg9 = %c1_63, %arg10 = %c1_63) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_63, %arg12 = %c1_63, %arg13 = %c1_63) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = memref.load %expand_shape_61[%c0, %86] : memref<1x120xf32, strided<[120, 1], offset: 33292>>
      %88 = memref.load %collapse_shape_60[%c0, %86] : memref<1x120xf32>
      %89 = arith.addf %87, %88 : f32
      memref.store %89, %alloc_62[%c0, %86] : memref<1x120xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %72 = memref.get_global @__constant_1x120xf32 : memref<1x120xf32>
    %alloc_64 = memref.alloc() {alignment = 64 : i64} : memref<1x120xf32>
    %c1_65 = arith.constant 1 : index
    %73 = affine.apply #map(%c120)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %73, %arg9 = %c1_65, %arg10 = %c1_65) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_65, %arg12 = %c1_65, %arg13 = %c1_65) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = memref.load %alloc_62[%c0, %86] : memref<1x120xf32>
      %88 = memref.load %72[%c0, %86] : memref<1x120xf32>
      %89 = arith.maximumf %87, %88 : f32
      memref.store %89, %alloc_64[%c0, %86] : memref<1x120xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_66 = memref.alloc() {alignment = 64 : i64} : memref<120x84xf32>
    %c1_67 = arith.constant 1 : index
    %74 = affine.apply #map(%c120)[%c0, %c1]
    %75 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %74, %arg9 = %75, %arg10 = %c1_67) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_67, %arg12 = %c1_67, %arg13 = %c1_67) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = memref.load %expand_shape_9[%87, %86] : memref<84x120xf32, strided<[120, 1], offset: 33412>>
      memref.store %88, %alloc_66[%86, %87] : memref<120x84xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %expand_shape_68 = memref.expand_shape %alloc_64 [[0, 1], [2]] : memref<1x120xf32> into memref<1x1x120xf32>
    %expand_shape_69 = memref.expand_shape %alloc_66 [[0, 1], [2]] : memref<120x84xf32> into memref<1x120x84xf32>
    %alloc_70 = memref.alloc() {alignment = 64 : i64} : memref<1x1x84xf32>
    %c1_71 = arith.constant 1 : index
    %76 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %76, %arg9 = %c1_71, %arg10 = %c1_71) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_71, %arg12 = %c1_71, %arg13 = %c1_71) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      memref.store %cst_0, %alloc_70[%c0, %c0, %86] : memref<1x1x84xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %c1_72 = arith.constant 1 : index
    %77 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %77, %arg9 = %c1_72, %arg10 = %c1_72) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_72, %arg12 = %c1_72, %arg13 = %c1_72) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      scf.for %arg14 = %c0 to %c120 step %c1 {
        %87 = memref.load %expand_shape_68[%c0, %c0, %arg14] : memref<1x1x120xf32>
        %88 = memref.load %expand_shape_69[%c0, %arg14, %86] : memref<1x120x84xf32>
        %89 = memref.load %alloc_70[%c0, %c0, %86] : memref<1x1x84xf32>
        %90 = arith.mulf %87, %88 : f32
        %91 = arith.addf %89, %90 : f32
        memref.store %91, %alloc_70[%c0, %c0, %86] : memref<1x1x84xf32>
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %collapse_shape_73 = memref.collapse_shape %alloc_70 [[0, 1], [2]] : memref<1x1x84xf32> into memref<1x84xf32>
    %expand_shape_74 = memref.expand_shape %subview_10 [[0, 1]] : memref<84xf32, strided<[1], offset: 43492>> into memref<1x84xf32, strided<[84, 1], offset: 43492>>
    %alloc_75 = memref.alloc() {alignment = 64 : i64} : memref<1x84xf32>
    %c1_76 = arith.constant 1 : index
    %78 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %78, %arg9 = %c1_76, %arg10 = %c1_76) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_76, %arg12 = %c1_76, %arg13 = %c1_76) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = memref.load %expand_shape_74[%c0, %86] : memref<1x84xf32, strided<[84, 1], offset: 43492>>
      %88 = memref.load %collapse_shape_73[%c0, %86] : memref<1x84xf32>
      %89 = arith.addf %87, %88 : f32
      memref.store %89, %alloc_75[%c0, %86] : memref<1x84xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %79 = memref.get_global @__constant_1x84xf32 : memref<1x84xf32>
    %alloc_77 = memref.alloc() {alignment = 64 : i64} : memref<1x84xf32>
    %c1_78 = arith.constant 1 : index
    %80 = affine.apply #map(%c84)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %80, %arg9 = %c1_78, %arg10 = %c1_78) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_78, %arg12 = %c1_78, %arg13 = %c1_78) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = memref.load %alloc_75[%c0, %86] : memref<1x84xf32>
      %88 = memref.load %79[%c0, %86] : memref<1x84xf32>
      %89 = arith.maximumf %87, %88 : f32
      memref.store %89, %alloc_77[%c0, %86] : memref<1x84xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %alloc_79 = memref.alloc() {alignment = 64 : i64} : memref<84x10xf32>
    %c1_80 = arith.constant 1 : index
    %81 = affine.apply #map(%c84)[%c0, %c1]
    %82 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %81, %arg9 = %82, %arg10 = %c1_80) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_80, %arg12 = %c1_80, %arg13 = %c1_80) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = affine.apply #map1(%arg3)[%c1, %c0]
      %88 = memref.load %expand_shape_12[%87, %86] : memref<10x84xf32, strided<[84, 1], offset: 43576>>
      memref.store %88, %alloc_79[%86, %87] : memref<84x10xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %expand_shape_81 = memref.expand_shape %alloc_77 [[0, 1], [2]] : memref<1x84xf32> into memref<1x1x84xf32>
    %expand_shape_82 = memref.expand_shape %alloc_79 [[0, 1], [2]] : memref<84x10xf32> into memref<1x84x10xf32>
    %alloc_83 = memref.alloc() {alignment = 64 : i64} : memref<1x1x10xf32>
    %c1_84 = arith.constant 1 : index
    %83 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %83, %arg9 = %c1_84, %arg10 = %c1_84) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_84, %arg12 = %c1_84, %arg13 = %c1_84) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      memref.store %cst_0, %alloc_83[%c0, %c0, %86] : memref<1x1x10xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    %c1_85 = arith.constant 1 : index
    %84 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %84, %arg9 = %c1_85, %arg10 = %c1_85) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_85, %arg12 = %c1_85, %arg13 = %c1_85) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      scf.for %arg14 = %c0 to %c84 step %c1 {
        %87 = memref.load %expand_shape_81[%c0, %c0, %arg14] : memref<1x1x84xf32>
        %88 = memref.load %expand_shape_82[%c0, %arg14, %86] : memref<1x84x10xf32>
        %89 = memref.load %alloc_83[%c0, %c0, %86] : memref<1x1x10xf32>
        %90 = arith.mulf %87, %88 : f32
        %91 = arith.addf %89, %90 : f32
        memref.store %91, %alloc_83[%c0, %c0, %86] : memref<1x1x10xf32>
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %collapse_shape_86 = memref.collapse_shape %alloc_83 [[0, 1], [2]] : memref<1x1x10xf32> into memref<1x10xf32>
    %expand_shape_87 = memref.expand_shape %subview_13 [[0, 1]] : memref<10xf32, strided<[1], offset: 44416>> into memref<1x10xf32, strided<[10, 1], offset: 44416>>
    %alloc_88 = memref.alloc() {alignment = 64 : i64} : memref<1x10xf32>
    %c1_89 = arith.constant 1 : index
    %85 = affine.apply #map(%c10)[%c0, %c1]
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %85, %arg9 = %c1_89, %arg10 = %c1_89) threads(%arg5, %arg6, %arg7) in (%arg11 = %c1_89, %arg12 = %c1_89, %arg13 = %c1_89) {
      %86 = affine.apply #map1(%arg2)[%c1, %c0]
      %87 = memref.load %expand_shape_87[%c0, %86] : memref<1x10xf32, strided<[10, 1], offset: 44416>>
      %88 = memref.load %collapse_shape_86[%c0, %86] : memref<1x10xf32>
      %89 = arith.addf %87, %88 : f32
      memref.store %89, %alloc_88[%c0, %86] : memref<1x10xf32>
      gpu.terminator
    } {SCFToGPU_visited}
    return %alloc_88 : memref<1x10xf32>
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

