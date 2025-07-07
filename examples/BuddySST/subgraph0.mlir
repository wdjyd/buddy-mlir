module {
  func.func @subgraph0(%arg0: tensor<30x1x28x28xf32>, %arg1: tensor<6x1x5x5xf32>, %arg2: tensor<6xf32>) -> tensor<30x6x24x24xf32> {
    %0 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<30x1x28x28xf32>, tensor<4xi32>) -> tensor<30x28x28x1xf32>
    %2 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = tosa.transpose %arg1, %2 : (tensor<6x1x5x5xf32>, tensor<4xi32>) -> tensor<6x5x5x1xf32>
    %4 = tosa.conv2d %1, %3, %arg2 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<30x28x28x1xf32>, tensor<6x5x5x1xf32>, tensor<6xf32>) -> tensor<30x24x24x6xf32>
    %5 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %6 = tosa.transpose %4, %5 : (tensor<30x24x24x6xf32>, tensor<4xi32>) -> tensor<30x6x24x24xf32>
    return %6 : tensor<30x6x24x24xf32>
  }
}

