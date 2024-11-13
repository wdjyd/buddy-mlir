module {
  func.func @subgraph1(%arg0: tensor<1x1x28x28xf32>, %arg1: tensor<6x1x5x5xf32>, %arg2: tensor<6xf32>, %arg3: tensor<16x6x5x5xf32>, %arg4: tensor<16xf32>, %arg5: tensor<120xf32>, %arg6: tensor<256x120xf32>, %arg7: tensor<84xf32>, %arg8: tensor<120x84xf32>, %arg9: tensor<10xf32>, %arg10: tensor<84x10xf32>) -> tensor<1x10xf32> {
    %0 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<1x1x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x1xf32>
    %2 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = tosa.transpose %arg1, %2 : (tensor<6x1x5x5xf32>, tensor<4xi32>) -> tensor<6x5x5x1xf32>
    %4 = tosa.conv2d %1, %3, %arg2 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x1xf32>, tensor<6x5x5x1xf32>, tensor<6xf32>) -> tensor<1x24x24x6xf32>
    %5 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %6 = tosa.transpose %4, %5 : (tensor<1x24x24x6xf32>, tensor<4xi32>) -> tensor<1x6x24x24xf32>
    %7 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x6x24x24xf32>}> : () -> tensor<1x6x24x24xf32>
    %8 = tosa.maximum %6, %7 : (tensor<1x6x24x24xf32>, tensor<1x6x24x24xf32>) -> tensor<1x6x24x24xf32>
    %9 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %10 = tosa.transpose %8, %9 : (tensor<1x6x24x24xf32>, tensor<4xi32>) -> tensor<1x24x24x6xf32>
    %11 = tosa.max_pool2d %10 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x24x24x6xf32>) -> tensor<1x12x12x6xf32>
    %12 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %13 = tosa.transpose %11, %12 : (tensor<1x12x12x6xf32>, tensor<4xi32>) -> tensor<1x6x12x12xf32>
    %14 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %15 = tosa.transpose %13, %14 : (tensor<1x6x12x12xf32>, tensor<4xi32>) -> tensor<1x12x12x6xf32>
    %16 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %17 = tosa.transpose %arg3, %16 : (tensor<16x6x5x5xf32>, tensor<4xi32>) -> tensor<16x5x5x6xf32>
    %18 = tosa.conv2d %15, %17, %arg4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x6xf32>, tensor<16x5x5x6xf32>, tensor<16xf32>) -> tensor<1x8x8x16xf32>
    %19 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %20 = tosa.transpose %18, %19 : (tensor<1x8x8x16xf32>, tensor<4xi32>) -> tensor<1x16x8x8xf32>
    %21 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x16x8x8xf32>}> : () -> tensor<1x16x8x8xf32>
    %22 = tosa.maximum %20, %21 : (tensor<1x16x8x8xf32>, tensor<1x16x8x8xf32>) -> tensor<1x16x8x8xf32>
    %23 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %24 = tosa.transpose %22, %23 : (tensor<1x16x8x8xf32>, tensor<4xi32>) -> tensor<1x8x8x16xf32>
    %25 = tosa.max_pool2d %24 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x8x8x16xf32>) -> tensor<1x4x4x16xf32>
    %26 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %27 = tosa.transpose %25, %26 : (tensor<1x4x4x16xf32>, tensor<4xi32>) -> tensor<1x16x4x4xf32>
    %28 = tosa.reshape %27 {new_shape = array<i64: 1, 256>} : (tensor<1x16x4x4xf32>) -> tensor<1x256xf32>
    %29 = tosa.reshape %28 {new_shape = array<i64: 1, 1, 256>} : (tensor<1x256xf32>) -> tensor<1x1x256xf32>
    %30 = tosa.reshape %arg6 {new_shape = array<i64: 1, 256, 120>} : (tensor<256x120xf32>) -> tensor<1x256x120xf32>
    %31 = tosa.matmul %29, %30 : (tensor<1x1x256xf32>, tensor<1x256x120xf32>) -> tensor<1x1x120xf32>
    %32 = tosa.reshape %31 {new_shape = array<i64: 1, 120>} : (tensor<1x1x120xf32>) -> tensor<1x120xf32>
    %33 = tosa.reshape %arg5 {new_shape = array<i64: 1, 120>} : (tensor<120xf32>) -> tensor<1x120xf32>
    %34 = tosa.add %33, %32 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %35 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x120xf32>}> : () -> tensor<1x120xf32>
    %36 = tosa.maximum %34, %35 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %37 = tosa.reshape %36 {new_shape = array<i64: 1, 1, 120>} : (tensor<1x120xf32>) -> tensor<1x1x120xf32>
    %38 = tosa.reshape %arg8 {new_shape = array<i64: 1, 120, 84>} : (tensor<120x84xf32>) -> tensor<1x120x84xf32>
    %39 = tosa.matmul %37, %38 : (tensor<1x1x120xf32>, tensor<1x120x84xf32>) -> tensor<1x1x84xf32>
    %40 = tosa.reshape %39 {new_shape = array<i64: 1, 84>} : (tensor<1x1x84xf32>) -> tensor<1x84xf32>
    %41 = tosa.reshape %arg7 {new_shape = array<i64: 1, 84>} : (tensor<84xf32>) -> tensor<1x84xf32>
    %42 = tosa.add %41, %40 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %43 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x84xf32>}> : () -> tensor<1x84xf32>
    %44 = tosa.maximum %42, %43 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %45 = tosa.reshape %44 {new_shape = array<i64: 1, 1, 84>} : (tensor<1x84xf32>) -> tensor<1x1x84xf32>
    %46 = tosa.reshape %arg10 {new_shape = array<i64: 1, 84, 10>} : (tensor<84x10xf32>) -> tensor<1x84x10xf32>
    %47 = tosa.matmul %45, %46 : (tensor<1x1x84xf32>, tensor<1x84x10xf32>) -> tensor<1x1x10xf32>
    %48 = tosa.reshape %47 {new_shape = array<i64: 1, 10>} : (tensor<1x1x10xf32>) -> tensor<1x10xf32>
    %49 = tosa.reshape %arg9 {new_shape = array<i64: 1, 10>} : (tensor<10xf32>) -> tensor<1x10xf32>
    %50 = tosa.add %49, %48 : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
    return %50 : tensor<1x10xf32>
  }
}

