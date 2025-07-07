module {
  func.func @subgraph1_2(%arg0: tensor<1x16x8x8xf32>) -> tensor<1x16x4x4xf32> {
    %0 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<1x16x8x8xf32>, tensor<4xi32>) -> tensor<1x8x8x16xf32>
    %2 = tosa.max_pool2d %1 {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x8x8x16xf32>) -> tensor<1x4x4x16xf32>
    %3 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %4 = tosa.transpose %2, %3 : (tensor<1x4x4x16xf32>, tensor<4xi32>) -> tensor<1x16x4x4xf32>
    return %4 : tensor<1x16x4x4xf32>
  }
}

