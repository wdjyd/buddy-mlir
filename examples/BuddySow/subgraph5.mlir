module {
  func.func @subgraph5(%arg0: tensor<1x84xf32>, %arg1: tensor<10x84xf32>) -> (tensor<1x84xf32>, tensor<84x10xf32>) {
    %0 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x84xf32>}> : () -> tensor<1x84xf32>
    %1 = tosa.maximum %arg0, %0 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    %2 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %3 = tosa.transpose %arg1, %2 : (tensor<10x84xf32>, tensor<2xi32>) -> tensor<84x10xf32>
    return %1, %3 : tensor<1x84xf32>, tensor<84x10xf32>
  }
}

