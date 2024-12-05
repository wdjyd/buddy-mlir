module {
  func.func @subgraph1(%arg0: tensor<1x6x24x24xf32>, %arg1: tensor<16x6x5x5xf32>, %arg2: tensor<16xf32>, %arg3: tensor<120x256xf32>, %arg4: tensor<120xf32>, %arg5: tensor<84x120xf32>, %arg6: tensor<84xf32>, %arg7: tensor<10x84xf32>, %arg8: tensor<10xf32>) -> tensor<1x10xf32> {
    %0 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x6x24x24xf32>}> : () -> tensor<1x6x24x24xf32>
    %1 = tosa.maximum %arg0, %0 : (tensor<1x6x24x24xf32>, tensor<1x6x24x24xf32>) -> tensor<1x6x24x24xf32>
    %2 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = tosa.transpose %1, %2 : (tensor<1x6x24x24xf32>, tensor<4xi32>) -> tensor<1x24x24x6xf32>
    %4 = tosa.max_pool2d %3 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x24x24x6xf32>) -> tensor<1x12x12x6xf32>
    %5 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %6 = tosa.transpose %4, %5 : (tensor<1x12x12x6xf32>, tensor<4xi32>) -> tensor<1x6x12x12xf32>
    %7 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %8 = tosa.transpose %6, %7 : (tensor<1x6x12x12xf32>, tensor<4xi32>) -> tensor<1x12x12x6xf32>
    %9 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %10 = tosa.transpose %arg1, %9 : (tensor<16x6x5x5xf32>, tensor<4xi32>) -> tensor<16x5x5x6xf32>
    %11 = tosa.conv2d %8, %10, %arg2 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x6xf32>, tensor<16x5x5x6xf32>, tensor<16xf32>) -> tensor<1x8x8x16xf32>
    %12 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %13 = tosa.transpose %11, %12 : (tensor<1x8x8x16xf32>, tensor<4xi32>) -> tensor<1x16x8x8xf32>
    %14 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x16x8x8xf32>}> : () -> tensor<1x16x8x8xf32>
    %15 = tosa.maximum %13, %14 : (tensor<1x16x8x8xf32>, tensor<1x16x8x8xf32>) -> tensor<1x16x8x8xf32>
    %16 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %17 = tosa.transpose %15, %16 : (tensor<1x16x8x8xf32>, tensor<4xi32>) -> tensor<1x8x8x16xf32>
    %18 = tosa.max_pool2d %17 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x8x8x16xf32>) -> tensor<1x4x4x16xf32>
    %19 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %20 = tosa.transpose %18, %19 : (tensor<1x4x4x16xf32>, tensor<4xi32>) -> tensor<1x16x4x4xf32>
    %21 = tosa.reshape %20 {new_shape = array<i64: 1, 256>} : (tensor<1x16x4x4xf32>) -> tensor<1x256xf32>
    %22 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %23 = tosa.transpose %arg3, %22 : (tensor<120x256xf32>, tensor<2xi32>) -> tensor<256x120xf32>
    %24 = tosa.reshape %21 {new_shape = array<i64: 1, 1, 256>} : (tensor<1x256xf32>) -> tensor<1x1x256xf32>
    %25 = tosa.reshape %23 {new_shape = array<i64: 1, 256, 120>} : (tensor<256x120xf32>) -> tensor<1x256x120xf32>
    %26 = tosa.matmul %24, %25 : (tensor<1x1x256xf32>, tensor<1x256x120xf32>) -> tensor<1x1x120xf32>
    %27 = tosa.reshape %26 {new_shape = array<i64: 1, 120>} : (tensor<1x1x120xf32>) -> tensor<1x120xf32>
    %28 = tosa.reshape %arg4 {new_shape = array<i64: 1, 120>} : (tensor<120xf32>) -> tensor<1x120xf32>
    %29 = tosa.add %28, %27 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %30 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x120xf32>}> : () -> tensor<1x120xf32>
    %31 = tosa.maximum %29, %30 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %32 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %33 = tosa.transpose %arg5, %32 : (tensor<84x120xf32>, tensor<2xi32>) -> tensor<120x84xf32>
    %34 = tosa.reshape %31 {new_shape = array<i64: 1, 1, 120>} : (tensor<1x120xf32>) -> tensor<1x1x120xf32>
    %35 = tosa.reshape %33 {new_shape = array<i64: 1, 120, 84>} : (tensor<120x84xf32>) -> tensor<1x120x84xf32>
    %36 = tosa.matmul %34, %35 : (tensor<1x1x120xf32>, tensor<1x120x84xf32>) -> tensor<1x1x84xf32>
    %37 = tosa.reshape %36 {new_shape = array<i64: 1, 84>} : (tensor<1x1x84xf32>) -> tensor<1x84xf32>
    %38 = tosa.reshape %arg6 {new_shape = array<i64: 1, 84>} : (tensor<84xf32>) -> tensor<1x84xf32>
    %39 = tosa.add %38, %37 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %40 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x84xf32>}> : () -> tensor<1x84xf32>
    %41 = tosa.maximum %39, %40 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %42 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %43 = tosa.transpose %arg7, %42 : (tensor<10x84xf32>, tensor<2xi32>) -> tensor<84x10xf32>
    %44 = tosa.reshape %41 {new_shape = array<i64: 1, 1, 84>} : (tensor<1x84xf32>) -> tensor<1x1x84xf32>
    %45 = tosa.reshape %43 {new_shape = array<i64: 1, 84, 10>} : (tensor<84x10xf32>) -> tensor<1x84x10xf32>
    %46 = tosa.matmul %44, %45 : (tensor<1x1x84xf32>, tensor<1x84x10xf32>) -> tensor<1x1x10xf32>
    %47 = tosa.reshape %46 {new_shape = array<i64: 1, 10>} : (tensor<1x1x10xf32>) -> tensor<1x10xf32>
    %48 = tosa.reshape %arg8 {new_shape = array<i64: 1, 10>} : (tensor<10xf32>) -> tensor<1x10xf32>
    %49 = tosa.add %48, %47 : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
    return %49 : tensor<1x10xf32>
  }
}

