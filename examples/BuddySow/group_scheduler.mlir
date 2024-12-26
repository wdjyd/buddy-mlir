module {
  func.func @group_scheduler(%arg0: memref<44426xf32>, %arg1: memref<3x1x28x28xf32>, %arg2: memref<3x10xf32>) {
    %0 = "sst.get_cpuid"() : () -> index
    %c0 = arith.constant 0 : index
    %1 = arith.cmpi eq, %0, %c0 : index
    scf.if %1 {
      %subview = memref.subview %arg1[0, 0, 0, 0] [1, 1, 28, 28] [1, 1, 1, 1] : memref<3x1x28x28xf32> to memref<1x1x28x28xf32, strided<[784, 784, 28, 1]>>
      %alloc = memref.alloc() : memref<1x1x28x28xf32>
      memref.copy %subview, %alloc : memref<1x1x28x28xf32, strided<[784, 784, 28, 1]>> to memref<1x1x28x28xf32>
      %4 = func.call @forward(%arg0, %alloc) : (memref<44426xf32>, memref<1x1x28x28xf32>) -> memref<1x10xf32>
      %subview_0 = memref.subview %arg2[0, 0] [1, 10] [1, 1] : memref<3x10xf32> to memref<1x10xf32, strided<[10, 1]>>
      memref.copy %4, %subview_0 : memref<1x10xf32> to memref<1x10xf32, strided<[10, 1]>>
    }
    %c1 = arith.constant 1 : index
    %2 = arith.cmpi eq, %0, %c1 : index
    scf.if %2 {
      %subview = memref.subview %arg1[1, 0, 0, 0] [1, 1, 28, 28] [1, 1, 1, 1] : memref<3x1x28x28xf32> to memref<1x1x28x28xf32, strided<[784, 784, 28, 1], offset: 784>>
      %alloc = memref.alloc() : memref<1x1x28x28xf32>
      memref.copy %subview, %alloc : memref<1x1x28x28xf32, strided<[784, 784, 28, 1], offset: 784>> to memref<1x1x28x28xf32>
      %4 = func.call @forward(%arg0, %alloc) : (memref<44426xf32>, memref<1x1x28x28xf32>) -> memref<1x10xf32>
      %subview_0 = memref.subview %arg2[1, 0] [1, 10] [1, 1] : memref<3x10xf32> to memref<1x10xf32, strided<[10, 1], offset: 10>>
      memref.copy %4, %subview_0 : memref<1x10xf32> to memref<1x10xf32, strided<[10, 1], offset: 10>>
    }
    %c2 = arith.constant 2 : index
    %3 = arith.cmpi eq, %0, %c2 : index
    scf.if %3 {
      %subview = memref.subview %arg1[2, 0, 0, 0] [1, 1, 28, 28] [1, 1, 1, 1] : memref<3x1x28x28xf32> to memref<1x1x28x28xf32, strided<[784, 784, 28, 1], offset: 1568>>
      %alloc = memref.alloc() : memref<1x1x28x28xf32>
      memref.copy %subview, %alloc : memref<1x1x28x28xf32, strided<[784, 784, 28, 1], offset: 1568>> to memref<1x1x28x28xf32>
      %4 = func.call @forward(%arg0, %alloc) : (memref<44426xf32>, memref<1x1x28x28xf32>) -> memref<1x10xf32>
      %subview_0 = memref.subview %arg2[2, 0] [1, 10] [1, 1] : memref<3x10xf32> to memref<1x10xf32, strided<[10, 1], offset: 20>>
      memref.copy %4, %subview_0 : memref<1x10xf32> to memref<1x10xf32, strided<[10, 1], offset: 20>>
    }
    return
  }
  func.func private @forward(memref<44426xf32>, memref<1x1x28x28xf32>) -> memref<1x10xf32>
}

