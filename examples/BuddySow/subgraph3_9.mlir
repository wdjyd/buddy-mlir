module {
  func.func @subgraph3_9(%arg0: tensor<10x84xf32>) -> tensor<84x10xf32> {
    %0 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<10x84xf32>, tensor<2xi32>) -> tensor<84x10xf32>
    return %1 : tensor<84x10xf32>
  }
}

