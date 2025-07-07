module {
  func.func @subgraph3_4(%arg0: tensor<120x256xf32>) -> tensor<256x120xf32> {
    %0 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<120x256xf32>, tensor<2xi32>) -> tensor<256x120xf32>
    return %1 : tensor<256x120xf32>
  }
}

