module {
  func.func @subgraph1_8(%arg0: tensor<84xf32>, %arg1: tensor<1x120xf32>, %arg2: tensor<120x84xf32>) -> tensor<1x84xf32> {
    %0 = tosa.reshape %arg1 {new_shape = array<i64: 1, 1, 120>} : (tensor<1x120xf32>) -> tensor<1x1x120xf32>
    %1 = tosa.reshape %arg2 {new_shape = array<i64: 1, 120, 84>} : (tensor<120x84xf32>) -> tensor<1x120x84xf32>
    %2 = tosa.matmul %0, %1 : (tensor<1x1x120xf32>, tensor<1x120x84xf32>) -> tensor<1x1x84xf32>
    %3 = tosa.reshape %2 {new_shape = array<i64: 1, 84>} : (tensor<1x1x84xf32>) -> tensor<1x84xf32>
    %4 = tosa.reshape %arg0 {new_shape = array<i64: 1, 84>} : (tensor<84xf32>) -> tensor<1x84xf32>
    %5 = tosa.add %4, %3 : (tensor<1x84xf32>, tensor<1x84xf32>) -> tensor<1x84xf32>
    return %5 : tensor<1x84xf32>
  }
}

