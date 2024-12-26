module {
  func.func @group_scheduler(%arg0: memref<44426xf32>, %arg1: memref<90x1x28x28xf32>, %arg2: memref<90x10xf32>) {
    %0 = call @sstGetCpuId() : () -> index
    %c0 = arith.constant 0 : index
    %1 = arith.cmpi ult, %0, %c0 : index
    scf.if %1 {
      %subview = memref.subview %arg1[0, 0, 0, 0] [30, 1, 28, 28] [1, 1, 1, 1] : memref<90x1x28x28xf32> to memref<30x1x28x28xf32, strided<[784, 784, 28, 1]>>
      %alloc = memref.alloc() : memref<30x1x28x28xf32>
      memref.copy %subview, %alloc : memref<30x1x28x28xf32, strided<[784, 784, 28, 1]>> to memref<30x1x28x28xf32>
      %4 = func.call @forward(%arg0, %alloc) : (memref<44426xf32>, memref<30x1x28x28xf32>) -> memref<30x10xf32>
      %subview_0 = memref.subview %arg2[0, 0] [30, 10] [1, 1] : memref<90x10xf32> to memref<30x10xf32, strided<[10, 1]>>
      memref.copy %4, %subview_0 : memref<30x10xf32> to memref<30x10xf32, strided<[10, 1]>>
    }
    %c1 = arith.constant 1 : index
    %2 = arith.cmpi ult, %0, %c1 : index
    scf.if %2 {
      %subview = memref.subview %arg1[30, 0, 0, 0] [30, 1, 28, 28] [1, 1, 1, 1] : memref<90x1x28x28xf32> to memref<30x1x28x28xf32, strided<[784, 784, 28, 1], offset: 23520>>
      %alloc = memref.alloc() : memref<30x1x28x28xf32>
      memref.copy %subview, %alloc : memref<30x1x28x28xf32, strided<[784, 784, 28, 1], offset: 23520>> to memref<30x1x28x28xf32>
      %4 = func.call @forward(%arg0, %alloc) : (memref<44426xf32>, memref<30x1x28x28xf32>) -> memref<30x10xf32>
      %subview_0 = memref.subview %arg2[30, 0] [30, 10] [1, 1] : memref<90x10xf32> to memref<30x10xf32, strided<[10, 1], offset: 300>>
      memref.copy %4, %subview_0 : memref<30x10xf32> to memref<30x10xf32, strided<[10, 1], offset: 300>>
    }
    %c2 = arith.constant 2 : index
    %3 = arith.cmpi ult, %0, %c2 : index
    scf.if %3 {
      %subview = memref.subview %arg1[60, 0, 0, 0] [30, 1, 28, 28] [1, 1, 1, 1] : memref<90x1x28x28xf32> to memref<30x1x28x28xf32, strided<[784, 784, 28, 1], offset: 47040>>
      %alloc = memref.alloc() : memref<30x1x28x28xf32>
      memref.copy %subview, %alloc : memref<30x1x28x28xf32, strided<[784, 784, 28, 1], offset: 47040>> to memref<30x1x28x28xf32>
      %4 = func.call @forward(%arg0, %alloc) : (memref<44426xf32>, memref<30x1x28x28xf32>) -> memref<30x10xf32>
      %subview_0 = memref.subview %arg2[60, 0] [30, 10] [1, 1] : memref<90x10xf32> to memref<30x10xf32, strided<[10, 1], offset: 600>>
      memref.copy %4, %subview_0 : memref<30x10xf32> to memref<30x10xf32, strided<[10, 1], offset: 600>>
    }
    return
  }
  func.func private @sstGetCpuId() -> index
  func.func private @forward(memref<44426xf32>, memref<30x1x28x28xf32>) -> memref<30x10xf32>
}

