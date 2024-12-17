module {
  func.func @subgraph6(%arg0: tensor<1x120xf32>, %arg1: tensor<84x120xf32>, %arg2: tensor<84xf32>) -> tensor<1x84xf32> {
    %0 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1x120xf32>}> : () -> tensor<1x120xf32>
    %1 = tosa.maximum %arg0, %0 : (tensor<1x120xf32>, tensor<1x120xf32>) -> tensor<1x120xf32>
    %2 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %3 = tosa.transpose %arg1, %2 : (tensor<84x120xf32>, tensor<2xi32>) -> tensor<120x84xf32>
    %4 = tosa.reshape %1 {new_shape = array<i64: 1, 1, 120>} : (tensor<1x120xf32>) -> tensor<1x1x120xf32>
    %5 = tosa.reshape %3 {new_shape = array<i64: 1, 120, 84>} : (tensor<120x84xf32>) -> tensor<1x120x84xf32>
    %6 = tosa.matmul %4, %5 : (tensor<1x1x120xf32>, tensor<1x120x84xf32>) -> tensor<1x1x84xf32>
    %7 = tosa.reshape %6 {new_shape = array<i64: 1, 84>} : (tensor<1x1x84xf32>) -> tensor<1x84xf32>
    %8 = tosa.reshape %arg2 {new_shape = array<i64: 1, 84>} : (tensor<84xf32>) -> tensor<1x84xf32>
    %9 = tosa.add %8, %7 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    return %9 : tensor<1x84xf32>
  }
}

