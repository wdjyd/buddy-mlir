module {
  func.func @subgraph2(%arg0: tensor<1x16x8x8xf32>, %arg1: tensor<120x256xf32>, %arg2: tensor<120xf32>, %arg3: tensor<84x120xf32>, %arg4: tensor<84xf32>, %arg5: tensor<10x84xf32>, %arg6: tensor<10xf32>) -> tensor<1x10xf32> {
    %0 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<1x16x8x8xf32>, tensor<4xi32>) -> tensor<1x8x8x16xf32>
    %2 = tosa.max_pool2d %1 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x8x8x16xf32>) -> tensor<1x4x4x16xf32>
    %3 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %4 = tosa.transpose %2, %3 : (tensor<1x4x4x16xf32>, tensor<4xi32>) -> tensor<1x16x4x4xf32>
    %5 = tosa.reshape %4 {new_shape = array<i64: 1, 256>} : (tensor<1x16x4x4xf32>) -> tensor<1x256xf32>
    %6 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %7 = tosa.transpose %arg1, %6 : (tensor<120x256xf32>, tensor<2xi32>) -> tensor<256x120xf32>
    %8 = tosa.reshape %5 {new_shape = array<i64: 1, 1, 256>} : (tensor<1x256xf32>) -> tensor<1x1x256xf32>
    %9 = tosa.reshape %7 {new_shape = array<i64: 1, 256, 120>} : (tensor<256x120xf32>) -> tensor<1x256x120xf32>
    %10 = tosa.matmul %8, %9 : (tensor<1x1x256xf32>, tensor<1x256x120xf32>) -> tensor<1x1x120xf32>
    %11 = tosa.reshape %10 {new_shape = array<i64: 1, 120>} : (tensor<1x1x120xf32>) -> tensor<1x120xf32>
    %12 = tosa.reshape %arg2 {new_shape = array<i64: 1, 120>} : (tensor<120xf32>) -> tensor<1x120xf32>
    %13 = tosa.add %12, %11 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %14 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x120xf32>}> : () -> tensor<1x120xf32>
    %15 = tosa.maximum %13, %14 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %16 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %17 = tosa.transpose %arg3, %16 : (tensor<84x120xf32>, tensor<2xi32>) -> tensor<120x84xf32>
    %18 = tosa.reshape %15 {new_shape = array<i64: 1, 1, 120>} : (tensor<1x120xf32>) -> tensor<1x1x120xf32>
    %19 = tosa.reshape %17 {new_shape = array<i64: 1, 120, 84>} : (tensor<120x84xf32>) -> tensor<1x120x84xf32>
    %20 = tosa.matmul %18, %19 : (tensor<1x1x120xf32>, tensor<1x120x84xf32>) -> tensor<1x1x84xf32>
    %21 = tosa.reshape %20 {new_shape = array<i64: 1, 84>} : (tensor<1x1x84xf32>) -> tensor<1x84xf32>
    %22 = tosa.reshape %arg4 {new_shape = array<i64: 1, 84>} : (tensor<84xf32>) -> tensor<1x84xf32>
    %23 = tosa.add %22, %21 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %24 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x84xf32>}> : () -> tensor<1x84xf32>
    %25 = tosa.maximum %23, %24 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %26 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %27 = tosa.transpose %arg5, %26 : (tensor<10x84xf32>, tensor<2xi32>) -> tensor<84x10xf32>
    %28 = tosa.reshape %25 {new_shape = array<i64: 1, 1, 84>} : (tensor<1x84xf32>) -> tensor<1x1x84xf32>
    %29 = tosa.reshape %27 {new_shape = array<i64: 1, 84, 10>} : (tensor<84x10xf32>) -> tensor<1x84x10xf32>
    %30 = tosa.matmul %28, %29 : (tensor<1x1x84xf32>, tensor<1x84x10xf32>) -> tensor<1x1x10xf32>
    %31 = tosa.reshape %30 {new_shape = array<i64: 1, 10>} : (tensor<1x1x10xf32>) -> tensor<1x10xf32>
    %32 = tosa.reshape %arg6 {new_shape = array<i64: 1, 10>} : (tensor<10xf32>) -> tensor<1x10xf32>
    %33 = tosa.add %32, %31 : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
    return %33 : tensor<1x10xf32>
  }
}

