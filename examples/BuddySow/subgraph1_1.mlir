module {
  func.func @subgraph1_1(%arg0: tensor<1x120xf32>) -> tensor<1x120xf32> {
    %0 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x120xf32>}> : () -> tensor<1x120xf32>
    %1 = tosa.maximum %arg0, %0 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    return %1 : tensor<1x120xf32>
  }
}

