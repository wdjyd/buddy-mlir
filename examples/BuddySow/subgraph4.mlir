module {
  func.func @subgraph4(%arg0: tensor<120x256xf32>, %arg1: tensor<120xf32>, %arg2: tensor<1x256xf32>) -> tensor<1x120xf32> {
    %0 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<120x256xf32>, tensor<2xi32>) -> tensor<256x120xf32>
    %2 = tosa.reshape %arg2 {new_shape = array<i64: 1, 1, 256>} : (tensor<1x256xf32>) -> tensor<1x1x256xf32>
    %3 = tosa.reshape %1 {new_shape = array<i64: 1, 256, 120>} : (tensor<256x120xf32>) -> tensor<1x256x120xf32>
    %4 = tosa.matmul %2, %3 : (tensor<1x1x256xf32>, tensor<1x256x120xf32>) -> tensor<1x1x120xf32>
    %5 = tosa.reshape %4 {new_shape = array<i64: 1, 120>} : (tensor<1x1x120xf32>) -> tensor<1x120xf32>
    %6 = tosa.reshape %arg1 {new_shape = array<i64: 1, 120>} : (tensor<120xf32>) -> tensor<1x120xf32>
    %7 = tosa.add %6, %5 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    return %7 : tensor<1x120xf32>
  }
}

