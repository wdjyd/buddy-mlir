module {
  func.func private @subgraph0(memref<1x1x28x28xf32>, memref<6x1x5x5xf32>, memref<6xf32>) -> memref<1x6x24x24xf32>
  func.func private @subgraph1(memref<1x6x24x24xf32>, memref<16x6x5x5xf32>, memref<16xf32>, memref<120x256xf32>, memref<120xf32>, memref<84x120xf32>, memref<84xf32>, memref<10x84xf32>, memref<10xf32>) -> memref<1x10xf32>
  func.func @forward(%arg0: memref<44426xf32>, %arg1: memref<1x1x28x28xf32>) -> memref<1x10xf32> {
    %subview = memref.subview %arg0[0] [150] [1] : memref<44426xf32> to memref<150xf32>
    %expand_shape = memref.expand_shape %subview [[0, 1, 2, 3]] : memref<150xf32> into memref<6x1x5x5xf32>
    %subview_0 = memref.subview %arg0[150] [6] [1] : memref<44426xf32> to memref<6xf32, strided<[1], offset: 150>>
    %subview_1 = memref.subview %arg0[156] [2400] [1] : memref<44426xf32> to memref<2400xf32, strided<[1], offset: 156>>
    %expand_shape_2 = memref.expand_shape %subview_1 [[0, 1, 2, 3]] : memref<2400xf32, strided<[1], offset: 156>> into memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>>
    %subview_3 = memref.subview %arg0[2556] [16] [1] : memref<44426xf32> to memref<16xf32, strided<[1], offset: 2556>>
    %subview_4 = memref.subview %arg0[2572] [30720] [1] : memref<44426xf32> to memref<30720xf32, strided<[1], offset: 2572>>
    %expand_shape_5 = memref.expand_shape %subview_4 [[0, 1]] : memref<30720xf32, strided<[1], offset: 2572>> into memref<120x256xf32, strided<[256, 1], offset: 2572>>
    %subview_6 = memref.subview %arg0[33292] [120] [1] : memref<44426xf32> to memref<120xf32, strided<[1], offset: 33292>>
    %subview_7 = memref.subview %arg0[33412] [10080] [1] : memref<44426xf32> to memref<10080xf32, strided<[1], offset: 33412>>
    %expand_shape_8 = memref.expand_shape %subview_7 [[0, 1]] : memref<10080xf32, strided<[1], offset: 33412>> into memref<84x120xf32, strided<[120, 1], offset: 33412>>
    %subview_9 = memref.subview %arg0[43492] [84] [1] : memref<44426xf32> to memref<84xf32, strided<[1], offset: 43492>>
    %subview_10 = memref.subview %arg0[43576] [840] [1] : memref<44426xf32> to memref<840xf32, strided<[1], offset: 43576>>
    %expand_shape_11 = memref.expand_shape %subview_10 [[0, 1]] : memref<840xf32, strided<[1], offset: 43576>> into memref<10x84xf32, strided<[84, 1], offset: 43576>>
    %subview_12 = memref.subview %arg0[44416] [10] [1] : memref<44426xf32> to memref<10xf32, strided<[1], offset: 44416>>
    %alloc = memref.alloc() : memref<1x1x28x28xf32>
    memref.copy %arg1, %alloc : memref<1x1x28x28xf32> to memref<1x1x28x28xf32>
    %alloc_13 = memref.alloc() : memref<6x1x5x5xf32>
    memref.copy %expand_shape, %alloc_13 : memref<6x1x5x5xf32> to memref<6x1x5x5xf32>
    %alloc_14 = memref.alloc() : memref<6xf32>
    memref.copy %subview_0, %alloc_14 : memref<6xf32, strided<[1], offset: 150>> to memref<6xf32>
    %0 = call @subgraph0(%alloc, %alloc_13, %alloc_14) : (memref<1x1x28x28xf32>, memref<6x1x5x5xf32>, memref<6xf32>) -> memref<1x6x24x24xf32>
    %alloc_15 = memref.alloc() : memref<1x6x24x24xf32>
    memref.copy %0, %alloc_15 : memref<1x6x24x24xf32> to memref<1x6x24x24xf32>
    %alloc_16 = memref.alloc() : memref<16x6x5x5xf32>
    memref.copy %expand_shape_2, %alloc_16 : memref<16x6x5x5xf32, strided<[150, 25, 5, 1], offset: 156>> to memref<16x6x5x5xf32>
    %alloc_17 = memref.alloc() : memref<16xf32>
    memref.copy %subview_3, %alloc_17 : memref<16xf32, strided<[1], offset: 2556>> to memref<16xf32>
    %alloc_18 = memref.alloc() : memref<120x256xf32>
    memref.copy %expand_shape_5, %alloc_18 : memref<120x256xf32, strided<[256, 1], offset: 2572>> to memref<120x256xf32>
    %alloc_19 = memref.alloc() : memref<120xf32>
    memref.copy %subview_6, %alloc_19 : memref<120xf32, strided<[1], offset: 33292>> to memref<120xf32>
    %alloc_20 = memref.alloc() : memref<84x120xf32>
    memref.copy %expand_shape_8, %alloc_20 : memref<84x120xf32, strided<[120, 1], offset: 33412>> to memref<84x120xf32>
    %alloc_21 = memref.alloc() : memref<84xf32>
    memref.copy %subview_9, %alloc_21 : memref<84xf32, strided<[1], offset: 43492>> to memref<84xf32>
    %alloc_22 = memref.alloc() : memref<10x84xf32>
    memref.copy %expand_shape_11, %alloc_22 : memref<10x84xf32, strided<[84, 1], offset: 43576>> to memref<10x84xf32>
    %alloc_23 = memref.alloc() : memref<10xf32>
    memref.copy %subview_12, %alloc_23 : memref<10xf32, strided<[1], offset: 44416>> to memref<10xf32>
    %1 = call @subgraph1(%alloc_15, %alloc_16, %alloc_17, %alloc_18, %alloc_19, %alloc_20, %alloc_21, %alloc_22, %alloc_23) : (memref<1x6x24x24xf32>, memref<16x6x5x5xf32>, memref<16xf32>, memref<120x256xf32>, memref<120xf32>, memref<84x120xf32>, memref<84xf32>, memref<10x84xf32>, memref<10xf32>) -> memref<1x10xf32>
    return %1 : memref<1x10xf32>
  }
}

