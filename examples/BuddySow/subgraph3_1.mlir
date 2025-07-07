module {
  func.func @subgraph3_1(%arg0: tensor<1x6x12x12xf32>, %arg1: tensor<16x6x5x5xf32>, %arg2: tensor<16xf32>) -> tensor<1x16x8x8xf32> {
    %0 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<1x6x12x12xf32>, tensor<4xi32>) -> tensor<1x12x12x6xf32>
    %2 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = tosa.transpose %arg1, %2 : (tensor<16x6x5x5xf32>, tensor<4xi32>) -> tensor<16x5x5x6xf32>
    %4 = tosa.conv2d %1, %3, %arg2 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x6xf32>, tensor<16x5x5x6xf32>, tensor<16xf32>) -> tensor<1x8x8x16xf32>
    %5 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %6 = tosa.transpose %4, %5 : (tensor<1x8x8x16xf32>, tensor<4xi32>) -> tensor<1x16x8x8xf32>
    return %6 : tensor<1x16x8x8xf32>
  }
}

