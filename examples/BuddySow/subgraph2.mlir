module {
  func.func @subgraph2(%arg0: tensor<1x6x24x24xf32>, %arg1: tensor<16x6x5x5xf32>, %arg2: tensor<16xf32>, %arg3: tensor<120x256xf32>, %arg4: tensor<120xf32>, %arg5: tensor<84x120xf32>, %arg6: tensor<84xf32>, %arg7: tensor<10x84xf32>, %arg8: tensor<10xf32>) -> tensor<1x10xf32> {
    %0 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<1x6x24x24xf32>, tensor<4xi32>) -> tensor<1x24x24x6xf32>
    %2 = tosa.max_pool2d %1 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x24x24x6xf32>) -> tensor<1x12x12x6xf32>
    %3 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %4 = tosa.transpose %2, %3 : (tensor<1x12x12x6xf32>, tensor<4xi32>) -> tensor<1x6x12x12xf32>
    %5 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %6 = tosa.transpose %4, %5 : (tensor<1x6x12x12xf32>, tensor<4xi32>) -> tensor<1x12x12x6xf32>
    %7 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %8 = tosa.transpose %arg1, %7 : (tensor<16x6x5x5xf32>, tensor<4xi32>) -> tensor<16x5x5x6xf32>
    %9 = tosa.conv2d %6, %8, %arg2 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x6xf32>, tensor<16x5x5x6xf32>, tensor<16xf32>) -> tensor<1x8x8x16xf32>
    %10 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %11 = tosa.transpose %9, %10 : (tensor<1x8x8x16xf32>, tensor<4xi32>) -> tensor<1x16x8x8xf32>
    %12 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x16x8x8xf32>}> : () -> tensor<1x16x8x8xf32>
    %13 = tosa.maximum %11, %12 : (tensor<1x16x8x8xf32>, tensor<1x16x8x8xf32>) -> tensor<1x16x8x8xf32>
    %14 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %15 = tosa.transpose %13, %14 : (tensor<1x16x8x8xf32>, tensor<4xi32>) -> tensor<1x8x8x16xf32>
    %16 = tosa.max_pool2d %15 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x8x8x16xf32>) -> tensor<1x4x4x16xf32>
    %17 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %18 = tosa.transpose %16, %17 : (tensor<1x4x4x16xf32>, tensor<4xi32>) -> tensor<1x16x4x4xf32>
    %19 = tosa.reshape %18 {new_shape = array<i64: 1, 256>} : (tensor<1x16x4x4xf32>) -> tensor<1x256xf32>
    %20 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %21 = tosa.transpose %arg3, %20 : (tensor<120x256xf32>, tensor<2xi32>) -> tensor<256x120xf32>
    %22 = tosa.reshape %19 {new_shape = array<i64: 1, 1, 256>} : (tensor<1x256xf32>) -> tensor<1x1x256xf32>
    %23 = tosa.reshape %21 {new_shape = array<i64: 1, 256, 120>} : (tensor<256x120xf32>) -> tensor<1x256x120xf32>
    %24 = tosa.matmul %22, %23 : (tensor<1x1x256xf32>, tensor<1x256x120xf32>) -> tensor<1x1x120xf32>
    %25 = tosa.reshape %24 {new_shape = array<i64: 1, 120>} : (tensor<1x1x120xf32>) -> tensor<1x120xf32>
    %26 = tosa.reshape %arg4 {new_shape = array<i64: 1, 120>} : (tensor<120xf32>) -> tensor<1x120xf32>
    %27 = tosa.add %26, %25 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %28 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x120xf32>}> : () -> tensor<1x120xf32>
    %29 = tosa.maximum %27, %28 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %30 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %31 = tosa.transpose %arg5, %30 : (tensor<84x120xf32>, tensor<2xi32>) -> tensor<120x84xf32>
    %32 = tosa.reshape %29 {new_shape = array<i64: 1, 1, 120>} : (tensor<1x120xf32>) -> tensor<1x1x120xf32>
    %33 = tosa.reshape %31 {new_shape = array<i64: 1, 120, 84>} : (tensor<120x84xf32>) -> tensor<1x120x84xf32>
    %34 = tosa.matmul %32, %33 : (tensor<1x1x120xf32>, tensor<1x120x84xf32>) -> tensor<1x1x84xf32>
    %35 = tosa.reshape %34 {new_shape = array<i64: 1, 84>} : (tensor<1x1x84xf32>) -> tensor<1x84xf32>
    %36 = tosa.reshape %arg6 {new_shape = array<i64: 1, 84>} : (tensor<84xf32>) -> tensor<1x84xf32>
    %37 = tosa.add %36, %35 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %38 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x84xf32>}> : () -> tensor<1x84xf32>
    %39 = tosa.maximum %37, %38 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %40 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %41 = tosa.transpose %arg7, %40 : (tensor<10x84xf32>, tensor<2xi32>) -> tensor<84x10xf32>
    %42 = tosa.reshape %39 {new_shape = array<i64: 1, 1, 84>} : (tensor<1x84xf32>) -> tensor<1x1x84xf32>
    %43 = tosa.reshape %41 {new_shape = array<i64: 1, 84, 10>} : (tensor<84x10xf32>) -> tensor<1x84x10xf32>
    %44 = tosa.matmul %42, %43 : (tensor<1x1x84xf32>, tensor<1x84x10xf32>) -> tensor<1x1x10xf32>
    %45 = tosa.reshape %44 {new_shape = array<i64: 1, 10>} : (tensor<1x1x10xf32>) -> tensor<1x10xf32>
    %46 = tosa.reshape %arg8 {new_shape = array<i64: 1, 10>} : (tensor<10xf32>) -> tensor<1x10xf32>
    %47 = tosa.add %46, %45 : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
    return %47 : tensor<1x10xf32>
  }
}

