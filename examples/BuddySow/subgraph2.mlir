module {
  func.func @subgraph2(%arg0: tensor<120x256xf32>, %arg1: tensor<120xf32>, %arg2: tensor<30x256xf32>, %arg3: tensor<84x120xf32>, %arg4: tensor<84xf32>, %arg5: tensor<10x84xf32>, %arg6: tensor<10xf32>) -> tensor<30x10xf32> {
    %0 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = tosa.transpose %arg0, %0 : (tensor<120x256xf32>, tensor<2xi32>) -> tensor<256x120xf32>
    %2 = tosa.reshape %arg2 {new_shape = array<i64: 1, 30, 256>} : (tensor<30x256xf32>) -> tensor<1x30x256xf32>
    %3 = tosa.reshape %1 {new_shape = array<i64: 1, 256, 120>} : (tensor<256x120xf32>) -> tensor<1x256x120xf32>
    %4 = tosa.matmul %2, %3 : (tensor<1x30x256xf32>, tensor<1x256x120xf32>) -> tensor<1x30x120xf32>
    %5 = tosa.reshape %4 {new_shape = array<i64: 30, 120>} : (tensor<1x30x120xf32>) -> tensor<30x120xf32>
    %6 = tosa.reshape %arg1 {new_shape = array<i64: 1, 120>} : (tensor<120xf32>) -> tensor<1x120xf32>
    %7 = tosa.add %6, %5 : (tensor<1x120xf32>, tensor<30x120xf32>) -> tensor<30x120xf32>
    %8 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<30x120xf32>}> : () -> tensor<30x120xf32>
    %9 = tosa.maximum %7, %8 : (tensor<30x120xf32>, tensor<30x120xf32>) -> tensor<30x120xf32>
    %10 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %11 = tosa.transpose %arg3, %10 : (tensor<84x120xf32>, tensor<2xi32>) -> tensor<120x84xf32>
    %12 = tosa.reshape %9 {new_shape = array<i64: 1, 30, 120>} : (tensor<30x120xf32>) -> tensor<1x30x120xf32>
    %13 = tosa.reshape %11 {new_shape = array<i64: 1, 120, 84>} : (tensor<120x84xf32>) -> tensor<1x120x84xf32>
    %14 = tosa.matmul %12, %13 : (tensor<1x30x120xf32>, tensor<1x120x84xf32>) -> tensor<1x30x84xf32>
    %15 = tosa.reshape %14 {new_shape = array<i64: 30, 84>} : (tensor<1x30x84xf32>) -> tensor<30x84xf32>
    %16 = tosa.reshape %arg4 {new_shape = array<i64: 1, 84>} : (tensor<84xf32>) -> tensor<1x84xf32>
    %17 = tosa.add %16, %15 : (tensor<1x84xf32>, tensor<30x84xf32>) -> tensor<30x84xf32>
    %18 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<30x84xf32>}> : () -> tensor<30x84xf32>
    %19 = tosa.maximum %17, %18 : (tensor<30x84xf32>, tensor<30x84xf32>) -> tensor<30x84xf32>
    %20 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %21 = tosa.transpose %arg5, %20 : (tensor<10x84xf32>, tensor<2xi32>) -> tensor<84x10xf32>
    %22 = tosa.reshape %19 {new_shape = array<i64: 1, 30, 84>} : (tensor<30x84xf32>) -> tensor<1x30x84xf32>
    %23 = tosa.reshape %21 {new_shape = array<i64: 1, 84, 10>} : (tensor<84x10xf32>) -> tensor<1x84x10xf32>
    %24 = tosa.matmul %22, %23 : (tensor<1x30x84xf32>, tensor<1x84x10xf32>) -> tensor<1x30x10xf32>
    %25 = tosa.reshape %24 {new_shape = array<i64: 30, 10>} : (tensor<1x30x10xf32>) -> tensor<30x10xf32>
    %26 = tosa.reshape %arg6 {new_shape = array<i64: 1, 10>} : (tensor<10xf32>) -> tensor<1x10xf32>
    %27 = tosa.add %26, %25 : (tensor<1x10xf32>, tensor<30x10xf32>) -> tensor<30x10xf32>
    return %27 : tensor<30x10xf32>
  }
}

