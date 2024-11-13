#map = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 + d1 * s0 + s1)>
#map2 = affine_map<(d0, d1)[s0, s1] -> (d0 + (d1 * s0) * 2 + s1 * 2)>
module attributes {gpu.container_module} {
  memref.global "private" constant @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32_0 : memref<4xi32> = dense<[0, 3, 1, 2]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32 : memref<4xi32> = dense<[0, 2, 3, 1]> {alignment = 64 : i64}
  func.func @subgraph0(%arg0: memref<1x1x28x28xf32>, %arg1: memref<6x1x5x5xf32>, %arg2: memref<6xf32>) -> memref<1x6x12x12xf32> {
    %0 = "sst.malloc"() : () -> memref<1x1x28x28xf32>
    %false = arith.constant false
    "sst.memcpy"(%0, %arg0, %false) : (memref<1x1x28x28xf32>, memref<1x1x28x28xf32>, i1) -> ()
    %1 = "sst.malloc"() : () -> memref<6x1x5x5xf32>
    %false_0 = arith.constant false
    "sst.memcpy"(%1, %arg1, %false_0) : (memref<6x1x5x5xf32>, memref<6x1x5x5xf32>, i1) -> ()
    %2 = "sst.malloc"() : () -> memref<6xf32>
    %false_1 = arith.constant false
    "sst.memcpy"(%2, %arg2, %false_1) : (memref<6xf32>, memref<6xf32>, i1) -> ()
    %c12 = arith.constant 12 : index
    %c6 = arith.constant 6 : index
    %c24 = arith.constant 24 : index
    %c5 = arith.constant 5 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %3 = "sst.malloc"() : () -> memref<1x28x28x1xf32>
    %c0_3 = arith.constant 0 : index
    %c1_4 = arith.constant 1 : index
    %4 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%4, %c1_4) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c28, %c28, %c1, %c0_3) : (index, index, index, index, index, index, index) -> ()
    %c0_5 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_5) : (index, index) -> ()
    %c8 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8) : (index, index) -> ()
    %c16 = arith.constant 16 : index
    "sst.setup_arg"(%0, %c16) : (memref<1x1x28x28xf32>, index) -> ()
    %c104 = arith.constant 104 : index
    "sst.setup_arg"(%3, %c104) : (memref<1x28x28x1xf32>, index) -> ()
    "sst.launch"(%c1_4) : (index) -> ()
    %5 = "sst.malloc"() : () -> memref<6x5x5x1xf32>
    %c0_6 = arith.constant 0 : index
    %c2_7 = arith.constant 2 : index
    %6 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%6, %c2_7) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c5, %c5, %c0_6) : (index, index, index, index, index, index, index) -> ()
    %c0_8 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_8) : (index, index) -> ()
    %c8_9 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_9) : (index, index) -> ()
    %c16_10 = arith.constant 16 : index
    "sst.setup_arg"(%1, %c16_10) : (memref<6x1x5x5xf32>, index) -> ()
    %c104_11 = arith.constant 104 : index
    "sst.setup_arg"(%5, %c104_11) : (memref<6x5x5x1xf32>, index) -> ()
    "sst.launch"(%c2_7) : (index) -> ()
    %7 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    %c0_12 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %8 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%8, %c3) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_12) : (index, index, index, index, index, index, index) -> ()
    %c0_13 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_13) : (index, index) -> ()
    %c8_14 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_14) : (index, index) -> ()
    %c16_15 = arith.constant 16 : index
    "sst.setup_arg"(%cst_2, %c16_15) : (f32, index) -> ()
    %c24_16 = arith.constant 24 : index
    "sst.setup_arg"(%7, %c24_16) : (memref<1x24x24x6xf32>, index) -> ()
    "sst.launch"(%c3) : (index) -> ()
    %9 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    %c0_17 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %10 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%10, %c4) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_17) : (index, index, index, index, index, index, index) -> ()
    %c0_18 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_18) : (index, index) -> ()
    %c8_19 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_19) : (index, index) -> ()
    %c16_20 = arith.constant 16 : index
    "sst.setup_arg"(%3, %c16_20) : (memref<1x28x28x1xf32>, index) -> ()
    %c104_21 = arith.constant 104 : index
    "sst.setup_arg"(%5, %c104_21) : (memref<6x5x5x1xf32>, index) -> ()
    %c192 = arith.constant 192 : index
    "sst.setup_arg"(%7, %c192) : (memref<1x24x24x6xf32>, index) -> ()
    %c280 = arith.constant 280 : index
    "sst.setup_arg"(%c5, %c280) : (index, index) -> ()
    "sst.launch"(%c4) : (index) -> ()
    %c0_22 = arith.constant 0 : index
    %c5_23 = arith.constant 5 : index
    %11 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%11, %c5_23) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_22) : (index, index, index, index, index, index, index) -> ()
    %c0_24 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_24) : (index, index) -> ()
    %c8_25 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_25) : (index, index) -> ()
    %c16_26 = arith.constant 16 : index
    "sst.setup_arg"(%2, %c16_26) : (memref<6xf32>, index) -> ()
    %c56 = arith.constant 56 : index
    "sst.setup_arg"(%7, %c56) : (memref<1x24x24x6xf32>, index) -> ()
    %c144 = arith.constant 144 : index
    "sst.setup_arg"(%9, %c144) : (memref<1x24x24x6xf32>, index) -> ()
    "sst.launch"(%c5_23) : (index) -> ()
    %12 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    %c0_27 = arith.constant 0 : index
    %c6_28 = arith.constant 6 : index
    %13 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%13, %c6_28) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c24, %c24, %c0_27) : (index, index, index, index, index, index, index) -> ()
    %c0_29 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_29) : (index, index) -> ()
    %c8_30 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_30) : (index, index) -> ()
    %c16_31 = arith.constant 16 : index
    "sst.setup_arg"(%9, %c16_31) : (memref<1x24x24x6xf32>, index) -> ()
    %c104_32 = arith.constant 104 : index
    "sst.setup_arg"(%12, %c104_32) : (memref<1x6x24x24xf32>, index) -> ()
    "sst.launch"(%c6_28) : (index) -> ()
    %14 = memref.get_global @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32>
    %15 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    %false_33 = arith.constant false
    "sst.memcpy"(%15, %14, %false_33) : (memref<1x6x24x24xf32>, memref<1x6x24x24xf32>, i1) -> ()
    %16 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    %c0_34 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %17 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%17, %c7) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c24, %c24, %c0_34) : (index, index, index, index, index, index, index) -> ()
    %c0_35 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_35) : (index, index) -> ()
    %c8_36 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_36) : (index, index) -> ()
    %c16_37 = arith.constant 16 : index
    "sst.setup_arg"(%12, %c16_37) : (memref<1x6x24x24xf32>, index) -> ()
    %c104_38 = arith.constant 104 : index
    "sst.setup_arg"(%15, %c104_38) : (memref<1x6x24x24xf32>, index) -> ()
    %c192_39 = arith.constant 192 : index
    "sst.setup_arg"(%16, %c192_39) : (memref<1x6x24x24xf32>, index) -> ()
    "sst.launch"(%c7) : (index) -> ()
    %18 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    %c0_40 = arith.constant 0 : index
    %c8_41 = arith.constant 8 : index
    %19 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%19, %c8_41) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_40) : (index, index, index, index, index, index, index) -> ()
    %c0_42 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_42) : (index, index) -> ()
    %c8_43 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_43) : (index, index) -> ()
    %c16_44 = arith.constant 16 : index
    "sst.setup_arg"(%16, %c16_44) : (memref<1x6x24x24xf32>, index) -> ()
    %c104_45 = arith.constant 104 : index
    "sst.setup_arg"(%18, %c104_45) : (memref<1x24x24x6xf32>, index) -> ()
    "sst.launch"(%c8_41) : (index) -> ()
    %20 = "sst.malloc"() : () -> memref<1x12x12x6xf32>
    %c0_46 = arith.constant 0 : index
    %c9 = arith.constant 9 : index
    %21 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%21, %c9) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c12, %c12, %c6, %c0_46) : (index, index, index, index, index, index, index) -> ()
    %c0_47 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_47) : (index, index) -> ()
    %c8_48 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_48) : (index, index) -> ()
    %c16_49 = arith.constant 16 : index
    "sst.setup_arg"(%cst, %c16_49) : (f32, index) -> ()
    %c24_50 = arith.constant 24 : index
    "sst.setup_arg"(%20, %c24_50) : (memref<1x12x12x6xf32>, index) -> ()
    "sst.launch"(%c9) : (index) -> ()
    %c0_51 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %22 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%22, %c10) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c12, %c12, %c6, %c0_51) : (index, index, index, index, index, index, index) -> ()
    %c0_52 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_52) : (index, index) -> ()
    %c8_53 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_53) : (index, index) -> ()
    %c16_54 = arith.constant 16 : index
    "sst.setup_arg"(%18, %c16_54) : (memref<1x24x24x6xf32>, index) -> ()
    %c104_55 = arith.constant 104 : index
    "sst.setup_arg"(%20, %c104_55) : (memref<1x12x12x6xf32>, index) -> ()
    %c192_56 = arith.constant 192 : index
    "sst.setup_arg"(%c2, %c192_56) : (index, index) -> ()
    "sst.launch"(%c10) : (index) -> ()
    %23 = "sst.malloc"() : () -> memref<1x6x12x12xf32>
    %c0_57 = arith.constant 0 : index
    %c11 = arith.constant 11 : index
    %24 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%24, %c11) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c12, %c12, %c0_57) : (index, index, index, index, index, index, index) -> ()
    %c0_58 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_58) : (index, index) -> ()
    %c8_59 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_59) : (index, index) -> ()
    %c16_60 = arith.constant 16 : index
    "sst.setup_arg"(%20, %c16_60) : (memref<1x12x12x6xf32>, index) -> ()
    %c104_61 = arith.constant 104 : index
    "sst.setup_arg"(%23, %c104_61) : (memref<1x6x12x12xf32>, index) -> ()
    "sst.launch"(%c11) : (index) -> ()
    %alloc = memref.alloc() : memref<1x6x12x12xf32>
    %true = arith.constant true
    "sst.memcpy"(%alloc, %23, %true) : (memref<1x6x12x12xf32>, memref<1x6x12x12xf32>, i1) -> ()
    return %alloc : memref<1x6x12x12xf32>
  }
  gpu.module @CUDA_kernel_1 {
    gpu.func @CUDA_kernel_1(%arg0: index, %arg1: index, %arg2: memref<1x1x28x28xf32>, %arg3: memref<1x28x28x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = affine.apply #map(%0)[%arg0, %arg1]
      %3 = affine.apply #map(%1)[%arg0, %arg1]
      %4 = memref.load %arg2[%arg1, %arg1, %2, %3] : memref<1x1x28x28xf32>
      memref.store %4, %arg3[%arg1, %2, %3, %arg1] : memref<1x28x28x1xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_2 {
    gpu.func @CUDA_kernel_2(%arg0: index, %arg1: index, %arg2: memref<6x1x5x5xf32>, %arg3: memref<6x5x5x1xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%3, %arg1, %4, %5] : memref<6x1x5x5xf32>
      memref.store %6, %arg3[%3, %4, %5, %arg1] : memref<6x5x5x1xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_3 {
    gpu.func @CUDA_kernel_3(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_4 {
    gpu.func @CUDA_kernel_4(%arg0: index, %arg1: index, %arg2: memref<1x28x28x1xf32>, %arg3: memref<6x5x5x1xf32>, %arg4: memref<1x24x24x6xf32>, %arg5: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        scf.for %arg7 = %arg1 to %arg5 step %arg0 {
          %6 = affine.apply #map1(%arg6, %0)[%arg0, %arg1]
          %7 = affine.apply #map1(%arg7, %1)[%arg0, %arg1]
          %8 = memref.load %arg2[%arg1, %6, %7, %arg1] : memref<1x28x28x1xf32>
          %9 = memref.load %arg3[%5, %arg6, %arg7, %arg1] : memref<6x5x5x1xf32>
          %10 = memref.load %arg4[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
          %11 = arith.mulf %8, %9 : f32
          %12 = arith.addf %10, %11 : f32
          memref.store %12, %arg4[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_5 {
    gpu.func @CUDA_kernel_5(%arg0: index, %arg1: index, %arg2: memref<6xf32>, %arg3: memref<1x24x24x6xf32>, %arg4: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%5] : memref<6xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      %8 = arith.addf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_6 {
    gpu.func @CUDA_kernel_6(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %4, %5, %3] : memref<1x24x24x6xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_7 {
    gpu.func @CUDA_kernel_7(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x6x24x24xf32>, %arg4: memref<1x6x24x24xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      %7 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      %8 = arith.maxnumf %6, %7 : f32
      memref.store %8, %arg4[%arg1, %3, %4, %5] : memref<1x6x24x24xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_8 {
    gpu.func @CUDA_kernel_8(%arg0: index, %arg1: index, %arg2: memref<1x6x24x24xf32>, %arg3: memref<1x24x24x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %5, %3, %4] : memref<1x6x24x24xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x24x24x6xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_9 {
    gpu.func @CUDA_kernel_9(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<1x12x12x6xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      memref.store %arg2, %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_10 {
    gpu.func @CUDA_kernel_10(%arg0: index, %arg1: index, %arg2: memref<1x24x24x6xf32>, %arg3: memref<1x12x12x6xf32>, %arg4: index) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      scf.for %arg5 = %arg1 to %arg4 step %arg0 {
        scf.for %arg6 = %arg1 to %arg4 step %arg0 {
          %6 = affine.apply #map2(%arg5, %0)[%arg0, %arg1]
          %7 = affine.apply #map2(%arg6, %1)[%arg0, %arg1]
          %8 = memref.load %arg2[%arg1, %6, %7, %5] : memref<1x24x24x6xf32>
          %9 = memref.load %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
          %10 = arith.maxnumf %9, %8 : f32
          memref.store %10, %arg3[%arg1, %3, %4, %5] : memref<1x12x12x6xf32>
        }
      }
      gpu.return
    }
  }
  gpu.module @CUDA_kernel_11 {
    gpu.func @CUDA_kernel_11(%arg0: index, %arg1: index, %arg2: memref<1x12x12x6xf32>, %arg3: memref<1x6x12x12xf32>) kernel attributes {gpu.known_block_size = array<i32: 1, 1, 1>} {
      %0 = gpu.block_id  x
      %1 = gpu.block_id  y
      %2 = gpu.block_id  z
      %3 = affine.apply #map(%0)[%arg0, %arg1]
      %4 = affine.apply #map(%1)[%arg0, %arg1]
      %5 = affine.apply #map(%2)[%arg0, %arg1]
      %6 = memref.load %arg2[%arg1, %4, %5, %3] : memref<1x12x12x6xf32>
      memref.store %6, %arg3[%arg1, %3, %4, %5] : memref<1x6x12x12xf32>
      gpu.return
    }
  }
}

