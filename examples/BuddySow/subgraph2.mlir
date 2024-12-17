module {
  func.func @subgraph2(%arg0: tensor<10xf32>, %arg1: tensor<1x84xf32>, %arg2: tensor<84x10xf32>) -> tensor<1x10xf32> {
    %0 = tosa.reshape %arg1 {new_shape = array<i64: 1, 1, 84>} : (tensor<1x84xf32>) -> tensor<1x1x84xf32>
    %1 = tosa.reshape %arg2 {new_shape = array<i64: 1, 84, 10>} : (tensor<84x10xf32>) -> tensor<1x84x10xf32>
    %2 = tosa.matmul %0, %1 : (tensor<1x1x84xf32>, tensor<1x84x10xf32>) -> tensor<1x1x10xf32>
    %3 = tosa.reshape %2 {new_shape = array<i64: 1, 10>} : (tensor<1x1x10xf32>) -> tensor<1x10xf32>
    %4 = tosa.reshape %arg0 {new_shape = array<i64: 1, 10>} : (tensor<10xf32>) -> tensor<1x10xf32>
    %5 = tosa.add %4, %3 : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
    return %5 : tensor<1x10xf32>
  }
}

