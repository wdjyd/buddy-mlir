module {
  func.func @subgraph3_3(%arg0: tensor<1x16x4x4xf32>) -> tensor<1x256xf32> {
    %0 = tosa.reshape %arg0 {new_shape = array<i64: 1, 256>} : (tensor<1x16x4x4xf32>) -> tensor<1x256xf32>
    return %0 : tensor<1x256xf32>
  }
}

