module {
  func.func @subgraph1_5(%arg0: tensor<120xf32>, %arg1: tensor<1x256xf32>, %arg2: tensor<256x120xf32>) -> tensor<1x120xf32> {
    %0 = tosa.reshape %arg1 {new_shape = array<i64: 1, 1, 256>} : (tensor<1x256xf32>) -> tensor<1x1x256xf32>
    %1 = tosa.reshape %arg2 {new_shape = array<i64: 1, 256, 120>} : (tensor<256x120xf32>) -> tensor<1x256x120xf32>
    %2 = tosa.matmul %0, %1 : (tensor<1x1x256xf32>, tensor<1x256x120xf32>) -> tensor<1x1x120xf32>
    %3 = tosa.reshape %2 {new_shape = array<i64: 1, 120>} : (tensor<1x1x120xf32>) -> tensor<1x120xf32>
    %4 = tosa.reshape %arg0 {new_shape = array<i64: 1, 120>} : (tensor<120xf32>) -> tensor<1x120xf32>
    %5 = tosa.add %4, %3 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    return %5 : tensor<1x120xf32>
  }
}

