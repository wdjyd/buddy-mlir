#map = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 + d1 * s0 + s1)>
#map2 = affine_map<(d0, d1)[s0, s1] -> (d0 + (d1 * s0) * 2 + s1 * 2)>
module {
  memref.global "private" constant @__constant_1x84xf32 : memref<1x84xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x120xf32 : memref<1x120xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_2xi32 : memref<2xi32> = dense<[1, 0]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32_0 : memref<4xi32> = dense<[0, 3, 1, 2]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_4xi32 : memref<4xi32> = dense<[0, 2, 3, 1]> {alignment = 64 : i64}
  func.func @subgraph0(%arg0: memref<1x1x28x28xf32>, %arg1: memref<6x1x5x5xf32>, %arg2: memref<6xf32>, %arg3: memref<16x6x5x5xf32>, %arg4: memref<16xf32>, %arg5: memref<120x256xf32>, %arg6: memref<120xf32>, %arg7: memref<84x120xf32>, %arg8: memref<84xf32>, %arg9: memref<10x84xf32>, %arg10: memref<10xf32>) -> memref<1x10xf32> {
    %0 = "sst.malloc"() : () -> memref<1x1x28x28xf32>
    %false = arith.constant false
    "sst.memcpy"(%0, %arg0, %false) : (memref<1x1x28x28xf32>, memref<1x1x28x28xf32>, i1) -> ()
    %1 = "sst.malloc"() : () -> memref<6x1x5x5xf32>
    %false_0 = arith.constant false
    "sst.memcpy"(%1, %arg1, %false_0) : (memref<6x1x5x5xf32>, memref<6x1x5x5xf32>, i1) -> ()
    %2 = "sst.malloc"() : () -> memref<6xf32>
    %false_1 = arith.constant false
    "sst.memcpy"(%2, %arg2, %false_1) : (memref<6xf32>, memref<6xf32>, i1) -> ()
    %3 = "sst.malloc"() : () -> memref<16x6x5x5xf32>
    %false_2 = arith.constant false
    "sst.memcpy"(%3, %arg3, %false_2) : (memref<16x6x5x5xf32>, memref<16x6x5x5xf32>, i1) -> ()
    %4 = "sst.malloc"() : () -> memref<16xf32>
    %false_3 = arith.constant false
    "sst.memcpy"(%4, %arg4, %false_3) : (memref<16xf32>, memref<16xf32>, i1) -> ()
    %5 = "sst.malloc"() : () -> memref<120x256xf32>
    %false_4 = arith.constant false
    "sst.memcpy"(%5, %arg5, %false_4) : (memref<120x256xf32>, memref<120x256xf32>, i1) -> ()
    %6 = "sst.malloc"() : () -> memref<120xf32>
    %false_5 = arith.constant false
    "sst.memcpy"(%6, %arg6, %false_5) : (memref<120xf32>, memref<120xf32>, i1) -> ()
    %7 = "sst.malloc"() : () -> memref<84x120xf32>
    %false_6 = arith.constant false
    "sst.memcpy"(%7, %arg7, %false_6) : (memref<84x120xf32>, memref<84x120xf32>, i1) -> ()
    %8 = "sst.malloc"() : () -> memref<84xf32>
    %false_7 = arith.constant false
    "sst.memcpy"(%8, %arg8, %false_7) : (memref<84xf32>, memref<84xf32>, i1) -> ()
    %9 = "sst.malloc"() : () -> memref<10x84xf32>
    %false_8 = arith.constant false
    "sst.memcpy"(%9, %arg9, %false_8) : (memref<10x84xf32>, memref<10x84xf32>, i1) -> ()
    %10 = "sst.malloc"() : () -> memref<10xf32>
    %false_9 = arith.constant false
    "sst.memcpy"(%10, %arg10, %false_9) : (memref<10xf32>, memref<10xf32>, i1) -> ()
    %c10 = arith.constant 10 : index
    %c84 = arith.constant 84 : index
    %c120 = arith.constant 120 : index
    %c256 = arith.constant 256 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c12 = arith.constant 12 : index
    %c24 = arith.constant 24 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_10 = arith.constant 0.000000e+00 : f32
    %11 = "sst.malloc"() : () -> memref<1x28x28x1xf32>
    %c0_11 = arith.constant 0 : index
    %c1_12 = arith.constant 1 : index
    %12 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%12, %c1_12) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c28, %c28, %c1, %c0_11) : (index, index, index, index, index, index, index) -> ()
    %c0_13 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_13) : (index, index) -> ()
    %c8_14 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_14) : (index, index) -> ()
    %c16_15 = arith.constant 16 : index
    "sst.setup_arg"(%0, %c16_15) : (memref<1x1x28x28xf32>, index) -> ()
    %c104 = arith.constant 104 : index
    "sst.setup_arg"(%11, %c104) : (memref<1x28x28x1xf32>, index) -> ()
    "sst.launch"(%c1_12) : (index) -> ()
    %13 = "sst.malloc"() : () -> memref<6x5x5x1xf32>
    %c0_16 = arith.constant 0 : index
    %c2_17 = arith.constant 2 : index
    %14 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%14, %c2_17) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c5, %c5, %c0_16) : (index, index, index, index, index, index, index) -> ()
    %c0_18 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_18) : (index, index) -> ()
    %c8_19 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_19) : (index, index) -> ()
    %c16_20 = arith.constant 16 : index
    "sst.setup_arg"(%1, %c16_20) : (memref<6x1x5x5xf32>, index) -> ()
    %c104_21 = arith.constant 104 : index
    "sst.setup_arg"(%13, %c104_21) : (memref<6x5x5x1xf32>, index) -> ()
    "sst.launch"(%c2_17) : (index) -> ()
    %15 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    %c0_22 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %16 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%16, %c3) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_22) : (index, index, index, index, index, index, index) -> ()
    %c0_23 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_23) : (index, index) -> ()
    %c8_24 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_24) : (index, index) -> ()
    %c16_25 = arith.constant 16 : index
    "sst.setup_arg"(%cst_10, %c16_25) : (f32, index) -> ()
    %c24_26 = arith.constant 24 : index
    "sst.setup_arg"(%15, %c24_26) : (memref<1x24x24x6xf32>, index) -> ()
    "sst.launch"(%c3) : (index) -> ()
    %17 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    %c0_27 = arith.constant 0 : index
    %c4_28 = arith.constant 4 : index
    %18 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%18, %c4_28) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_27) : (index, index, index, index, index, index, index) -> ()
    %c0_29 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_29) : (index, index) -> ()
    %c8_30 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_30) : (index, index) -> ()
    %c16_31 = arith.constant 16 : index
    "sst.setup_arg"(%11, %c16_31) : (memref<1x28x28x1xf32>, index) -> ()
    %c104_32 = arith.constant 104 : index
    "sst.setup_arg"(%13, %c104_32) : (memref<6x5x5x1xf32>, index) -> ()
    %c192 = arith.constant 192 : index
    "sst.setup_arg"(%15, %c192) : (memref<1x24x24x6xf32>, index) -> ()
    %c280 = arith.constant 280 : index
    "sst.setup_arg"(%c5, %c280) : (index, index) -> ()
    "sst.launch"(%c4_28) : (index) -> ()
    %c0_33 = arith.constant 0 : index
    %c5_34 = arith.constant 5 : index
    %19 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%19, %c5_34) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_33) : (index, index, index, index, index, index, index) -> ()
    %c0_35 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_35) : (index, index) -> ()
    %c8_36 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_36) : (index, index) -> ()
    %c16_37 = arith.constant 16 : index
    "sst.setup_arg"(%2, %c16_37) : (memref<6xf32>, index) -> ()
    %c56 = arith.constant 56 : index
    "sst.setup_arg"(%15, %c56) : (memref<1x24x24x6xf32>, index) -> ()
    %c144 = arith.constant 144 : index
    "sst.setup_arg"(%17, %c144) : (memref<1x24x24x6xf32>, index) -> ()
    "sst.launch"(%c5_34) : (index) -> ()
    %20 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    %c0_38 = arith.constant 0 : index
    %c6_39 = arith.constant 6 : index
    %21 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%21, %c6_39) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c24, %c24, %c0_38) : (index, index, index, index, index, index, index) -> ()
    %c0_40 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_40) : (index, index) -> ()
    %c8_41 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_41) : (index, index) -> ()
    %c16_42 = arith.constant 16 : index
    "sst.setup_arg"(%17, %c16_42) : (memref<1x24x24x6xf32>, index) -> ()
    %c104_43 = arith.constant 104 : index
    "sst.setup_arg"(%20, %c104_43) : (memref<1x6x24x24xf32>, index) -> ()
    "sst.launch"(%c6_39) : (index) -> ()
    %22 = memref.get_global @__constant_1x6x24x24xf32 : memref<1x6x24x24xf32>
    %23 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    %false_44 = arith.constant false
    "sst.memcpy"(%23, %22, %false_44) : (memref<1x6x24x24xf32>, memref<1x6x24x24xf32>, i1) -> ()
    %24 = "sst.malloc"() : () -> memref<1x6x24x24xf32>
    %c0_45 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %25 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%25, %c7) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c24, %c24, %c0_45) : (index, index, index, index, index, index, index) -> ()
    %c0_46 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_46) : (index, index) -> ()
    %c8_47 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_47) : (index, index) -> ()
    %c16_48 = arith.constant 16 : index
    "sst.setup_arg"(%20, %c16_48) : (memref<1x6x24x24xf32>, index) -> ()
    %c104_49 = arith.constant 104 : index
    "sst.setup_arg"(%23, %c104_49) : (memref<1x6x24x24xf32>, index) -> ()
    %c192_50 = arith.constant 192 : index
    "sst.setup_arg"(%24, %c192_50) : (memref<1x6x24x24xf32>, index) -> ()
    "sst.launch"(%c7) : (index) -> ()
    %26 = "sst.malloc"() : () -> memref<1x24x24x6xf32>
    %c0_51 = arith.constant 0 : index
    %c8_52 = arith.constant 8 : index
    %27 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%27, %c8_52) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c24, %c24, %c6, %c0_51) : (index, index, index, index, index, index, index) -> ()
    %c0_53 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_53) : (index, index) -> ()
    %c8_54 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_54) : (index, index) -> ()
    %c16_55 = arith.constant 16 : index
    "sst.setup_arg"(%24, %c16_55) : (memref<1x6x24x24xf32>, index) -> ()
    %c104_56 = arith.constant 104 : index
    "sst.setup_arg"(%26, %c104_56) : (memref<1x24x24x6xf32>, index) -> ()
    "sst.launch"(%c8_52) : (index) -> ()
    %28 = "sst.malloc"() : () -> memref<1x12x12x6xf32>
    %c0_57 = arith.constant 0 : index
    %c9 = arith.constant 9 : index
    %29 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%29, %c9) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c12, %c12, %c6, %c0_57) : (index, index, index, index, index, index, index) -> ()
    %c0_58 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_58) : (index, index) -> ()
    %c8_59 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_59) : (index, index) -> ()
    %c16_60 = arith.constant 16 : index
    "sst.setup_arg"(%cst, %c16_60) : (f32, index) -> ()
    %c24_61 = arith.constant 24 : index
    "sst.setup_arg"(%28, %c24_61) : (memref<1x12x12x6xf32>, index) -> ()
    "sst.launch"(%c9) : (index) -> ()
    %c0_62 = arith.constant 0 : index
    %c10_63 = arith.constant 10 : index
    %30 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%30, %c10_63) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c12, %c12, %c6, %c0_62) : (index, index, index, index, index, index, index) -> ()
    %c0_64 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_64) : (index, index) -> ()
    %c8_65 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_65) : (index, index) -> ()
    %c16_66 = arith.constant 16 : index
    "sst.setup_arg"(%26, %c16_66) : (memref<1x24x24x6xf32>, index) -> ()
    %c104_67 = arith.constant 104 : index
    "sst.setup_arg"(%28, %c104_67) : (memref<1x12x12x6xf32>, index) -> ()
    %c192_68 = arith.constant 192 : index
    "sst.setup_arg"(%c2, %c192_68) : (index, index) -> ()
    "sst.launch"(%c10_63) : (index) -> ()
    %31 = "sst.malloc"() : () -> memref<1x6x12x12xf32>
    %c0_69 = arith.constant 0 : index
    %c11 = arith.constant 11 : index
    %32 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%32, %c11) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c6, %c12, %c12, %c0_69) : (index, index, index, index, index, index, index) -> ()
    %c0_70 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_70) : (index, index) -> ()
    %c8_71 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_71) : (index, index) -> ()
    %c16_72 = arith.constant 16 : index
    "sst.setup_arg"(%28, %c16_72) : (memref<1x12x12x6xf32>, index) -> ()
    %c104_73 = arith.constant 104 : index
    "sst.setup_arg"(%31, %c104_73) : (memref<1x6x12x12xf32>, index) -> ()
    "sst.launch"(%c11) : (index) -> ()
    %33 = "sst.malloc"() : () -> memref<1x12x12x6xf32>
    %c0_74 = arith.constant 0 : index
    %c12_75 = arith.constant 12 : index
    %34 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%34, %c12_75) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c12, %c12, %c6, %c0_74) : (index, index, index, index, index, index, index) -> ()
    %c0_76 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_76) : (index, index) -> ()
    %c8_77 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_77) : (index, index) -> ()
    %c16_78 = arith.constant 16 : index
    "sst.setup_arg"(%31, %c16_78) : (memref<1x6x12x12xf32>, index) -> ()
    %c104_79 = arith.constant 104 : index
    "sst.setup_arg"(%33, %c104_79) : (memref<1x12x12x6xf32>, index) -> ()
    "sst.launch"(%c12_75) : (index) -> ()
    %35 = "sst.malloc"() : () -> memref<16x5x5x6xf32>
    %c0_80 = arith.constant 0 : index
    %c13 = arith.constant 13 : index
    %36 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%36, %c13) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c16, %c5, %c5, %c0_80) : (index, index, index, index, index, index, index) -> ()
    %c0_81 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_81) : (index, index) -> ()
    %c8_82 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_82) : (index, index) -> ()
    %c16_83 = arith.constant 16 : index
    "sst.setup_arg"(%3, %c16_83) : (memref<16x6x5x5xf32>, index) -> ()
    %c104_84 = arith.constant 104 : index
    "sst.setup_arg"(%35, %c104_84) : (memref<16x5x5x6xf32>, index) -> ()
    %c192_85 = arith.constant 192 : index
    "sst.setup_arg"(%c6, %c192_85) : (index, index) -> ()
    "sst.launch"(%c13) : (index) -> ()
    %37 = "sst.malloc"() : () -> memref<1x8x8x16xf32>
    %c0_86 = arith.constant 0 : index
    %c14 = arith.constant 14 : index
    %38 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%38, %c14) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c8, %c8, %c16, %c0_86) : (index, index, index, index, index, index, index) -> ()
    %c0_87 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_87) : (index, index) -> ()
    %c8_88 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_88) : (index, index) -> ()
    %c16_89 = arith.constant 16 : index
    "sst.setup_arg"(%cst_10, %c16_89) : (f32, index) -> ()
    %c24_90 = arith.constant 24 : index
    "sst.setup_arg"(%37, %c24_90) : (memref<1x8x8x16xf32>, index) -> ()
    "sst.launch"(%c14) : (index) -> ()
    %39 = "sst.malloc"() : () -> memref<1x8x8x16xf32>
    %c0_91 = arith.constant 0 : index
    %c15 = arith.constant 15 : index
    %40 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%40, %c15) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c8, %c8, %c16, %c0_91) : (index, index, index, index, index, index, index) -> ()
    %c0_92 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_92) : (index, index) -> ()
    %c8_93 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_93) : (index, index) -> ()
    %c16_94 = arith.constant 16 : index
    "sst.setup_arg"(%33, %c16_94) : (memref<1x12x12x6xf32>, index) -> ()
    %c104_95 = arith.constant 104 : index
    "sst.setup_arg"(%35, %c104_95) : (memref<16x5x5x6xf32>, index) -> ()
    %c192_96 = arith.constant 192 : index
    "sst.setup_arg"(%37, %c192_96) : (memref<1x8x8x16xf32>, index) -> ()
    %c280_97 = arith.constant 280 : index
    "sst.setup_arg"(%c6, %c280_97) : (index, index) -> ()
    %c288 = arith.constant 288 : index
    "sst.setup_arg"(%c5, %c288) : (index, index) -> ()
    "sst.launch"(%c15) : (index) -> ()
    %c0_98 = arith.constant 0 : index
    %c16_99 = arith.constant 16 : index
    %41 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%41, %c16_99) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c8, %c8, %c16, %c0_98) : (index, index, index, index, index, index, index) -> ()
    %c0_100 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_100) : (index, index) -> ()
    %c8_101 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_101) : (index, index) -> ()
    %c16_102 = arith.constant 16 : index
    "sst.setup_arg"(%4, %c16_102) : (memref<16xf32>, index) -> ()
    %c56_103 = arith.constant 56 : index
    "sst.setup_arg"(%37, %c56_103) : (memref<1x8x8x16xf32>, index) -> ()
    %c144_104 = arith.constant 144 : index
    "sst.setup_arg"(%39, %c144_104) : (memref<1x8x8x16xf32>, index) -> ()
    "sst.launch"(%c16_99) : (index) -> ()
    %42 = "sst.malloc"() : () -> memref<1x16x8x8xf32>
    %c0_105 = arith.constant 0 : index
    %c17 = arith.constant 17 : index
    %43 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%43, %c17) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c16, %c8, %c8, %c0_105) : (index, index, index, index, index, index, index) -> ()
    %c0_106 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_106) : (index, index) -> ()
    %c8_107 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_107) : (index, index) -> ()
    %c16_108 = arith.constant 16 : index
    "sst.setup_arg"(%39, %c16_108) : (memref<1x8x8x16xf32>, index) -> ()
    %c104_109 = arith.constant 104 : index
    "sst.setup_arg"(%42, %c104_109) : (memref<1x16x8x8xf32>, index) -> ()
    "sst.launch"(%c17) : (index) -> ()
    %44 = memref.get_global @__constant_1x16x8x8xf32 : memref<1x16x8x8xf32>
    %45 = "sst.malloc"() : () -> memref<1x16x8x8xf32>
    %false_110 = arith.constant false
    "sst.memcpy"(%45, %44, %false_110) : (memref<1x16x8x8xf32>, memref<1x16x8x8xf32>, i1) -> ()
    %46 = "sst.malloc"() : () -> memref<1x16x8x8xf32>
    %c0_111 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %47 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%47, %c18) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c16, %c8, %c8, %c0_111) : (index, index, index, index, index, index, index) -> ()
    %c0_112 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_112) : (index, index) -> ()
    %c8_113 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_113) : (index, index) -> ()
    %c16_114 = arith.constant 16 : index
    "sst.setup_arg"(%42, %c16_114) : (memref<1x16x8x8xf32>, index) -> ()
    %c104_115 = arith.constant 104 : index
    "sst.setup_arg"(%45, %c104_115) : (memref<1x16x8x8xf32>, index) -> ()
    %c192_116 = arith.constant 192 : index
    "sst.setup_arg"(%46, %c192_116) : (memref<1x16x8x8xf32>, index) -> ()
    "sst.launch"(%c18) : (index) -> ()
    %48 = "sst.malloc"() : () -> memref<1x8x8x16xf32>
    %c0_117 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %49 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%49, %c19) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c8, %c8, %c16, %c0_117) : (index, index, index, index, index, index, index) -> ()
    %c0_118 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_118) : (index, index) -> ()
    %c8_119 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_119) : (index, index) -> ()
    %c16_120 = arith.constant 16 : index
    "sst.setup_arg"(%46, %c16_120) : (memref<1x16x8x8xf32>, index) -> ()
    %c104_121 = arith.constant 104 : index
    "sst.setup_arg"(%48, %c104_121) : (memref<1x8x8x16xf32>, index) -> ()
    "sst.launch"(%c19) : (index) -> ()
    %50 = "sst.malloc"() : () -> memref<1x4x4x16xf32>
    %c0_122 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %51 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%51, %c20) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c4, %c4, %c16, %c0_122) : (index, index, index, index, index, index, index) -> ()
    %c0_123 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_123) : (index, index) -> ()
    %c8_124 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_124) : (index, index) -> ()
    %c16_125 = arith.constant 16 : index
    "sst.setup_arg"(%cst, %c16_125) : (f32, index) -> ()
    %c24_126 = arith.constant 24 : index
    "sst.setup_arg"(%50, %c24_126) : (memref<1x4x4x16xf32>, index) -> ()
    "sst.launch"(%c20) : (index) -> ()
    %c0_127 = arith.constant 0 : index
    %c21 = arith.constant 21 : index
    %52 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%52, %c21) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c4, %c4, %c16, %c0_127) : (index, index, index, index, index, index, index) -> ()
    %c0_128 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_128) : (index, index) -> ()
    %c8_129 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_129) : (index, index) -> ()
    %c16_130 = arith.constant 16 : index
    "sst.setup_arg"(%48, %c16_130) : (memref<1x8x8x16xf32>, index) -> ()
    %c104_131 = arith.constant 104 : index
    "sst.setup_arg"(%50, %c104_131) : (memref<1x4x4x16xf32>, index) -> ()
    %c192_132 = arith.constant 192 : index
    "sst.setup_arg"(%c2, %c192_132) : (index, index) -> ()
    "sst.launch"(%c21) : (index) -> ()
    %53 = "sst.malloc"() : () -> memref<1x16x4x4xf32>
    %c0_133 = arith.constant 0 : index
    %c22 = arith.constant 22 : index
    %54 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%54, %c22) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c16, %c4, %c4, %c0_133) : (index, index, index, index, index, index, index) -> ()
    %c0_134 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_134) : (index, index) -> ()
    %c8_135 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_135) : (index, index) -> ()
    %c16_136 = arith.constant 16 : index
    "sst.setup_arg"(%50, %c16_136) : (memref<1x4x4x16xf32>, index) -> ()
    %c104_137 = arith.constant 104 : index
    "sst.setup_arg"(%53, %c104_137) : (memref<1x16x4x4xf32>, index) -> ()
    "sst.launch"(%c22) : (index) -> ()
    %55 = "sst.malloc"() : () -> memref<256x120xf32>
    %c0_138 = arith.constant 0 : index
    %c23 = arith.constant 23 : index
    %56 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%56, %c23) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c256, %c120, %c1, %c0_138) : (index, index, index, index, index, index, index) -> ()
    %c0_139 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_139) : (index, index) -> ()
    %c8_140 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_140) : (index, index) -> ()
    %c16_141 = arith.constant 16 : index
    "sst.setup_arg"(%5, %c16_141) : (memref<120x256xf32>, index) -> ()
    %c72 = arith.constant 72 : index
    "sst.setup_arg"(%55, %c72) : (memref<256x120xf32>, index) -> ()
    "sst.launch"(%c23) : (index) -> ()
    %collapse_shape = memref.collapse_shape %53 [[0], [1, 2, 3]] : memref<1x16x4x4xf32> into memref<1x256xf32>
    %expand_shape = memref.expand_shape %collapse_shape [[0, 1], [2]] : memref<1x256xf32> into memref<1x1x256xf32>
    %expand_shape_142 = memref.expand_shape %55 [[0, 1], [2]] : memref<256x120xf32> into memref<1x256x120xf32>
    %57 = "sst.malloc"() : () -> memref<1x1x120xf32>
    %c0_143 = arith.constant 0 : index
    %c24_144 = arith.constant 24 : index
    %58 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%58, %c24_144) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c120, %c1, %c1, %c0_143) : (index, index, index, index, index, index, index) -> ()
    %c0_145 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_145) : (index, index) -> ()
    %c8_146 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_146) : (index, index) -> ()
    %c16_147 = arith.constant 16 : index
    "sst.setup_arg"(%cst_10, %c16_147) : (f32, index) -> ()
    %c24_148 = arith.constant 24 : index
    "sst.setup_arg"(%57, %c24_148) : (memref<1x1x120xf32>, index) -> ()
    "sst.launch"(%c24_144) : (index) -> ()
    %c0_149 = arith.constant 0 : index
    %c25 = arith.constant 25 : index
    %59 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%59, %c25) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c120, %c1, %c1, %c0_149) : (index, index, index, index, index, index, index) -> ()
    %c0_150 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_150) : (index, index) -> ()
    %c8_151 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_151) : (index, index) -> ()
    %c16_152 = arith.constant 16 : index
    "sst.setup_arg"(%expand_shape, %c16_152) : (memref<1x1x256xf32>, index) -> ()
    %c88 = arith.constant 88 : index
    "sst.setup_arg"(%expand_shape_142, %c88) : (memref<1x256x120xf32>, index) -> ()
    %c160 = arith.constant 160 : index
    "sst.setup_arg"(%57, %c160) : (memref<1x1x120xf32>, index) -> ()
    %c232 = arith.constant 232 : index
    "sst.setup_arg"(%c256, %c232) : (index, index) -> ()
    "sst.launch"(%c25) : (index) -> ()
    %collapse_shape_153 = memref.collapse_shape %57 [[0, 1], [2]] : memref<1x1x120xf32> into memref<1x120xf32>
    %expand_shape_154 = memref.expand_shape %6 [[0, 1]] : memref<120xf32> into memref<1x120xf32>
    %60 = "sst.malloc"() : () -> memref<1x120xf32>
    %c0_155 = arith.constant 0 : index
    %c26 = arith.constant 26 : index
    %61 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%61, %c26) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c120, %c1, %c1, %c0_155) : (index, index, index, index, index, index, index) -> ()
    %c0_156 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_156) : (index, index) -> ()
    %c8_157 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_157) : (index, index) -> ()
    %c16_158 = arith.constant 16 : index
    "sst.setup_arg"(%expand_shape_154, %c16_158) : (memref<1x120xf32>, index) -> ()
    %c72_159 = arith.constant 72 : index
    "sst.setup_arg"(%collapse_shape_153, %c72_159) : (memref<1x120xf32>, index) -> ()
    %c128 = arith.constant 128 : index
    "sst.setup_arg"(%60, %c128) : (memref<1x120xf32>, index) -> ()
    "sst.launch"(%c26) : (index) -> ()
    %62 = memref.get_global @__constant_1x120xf32 : memref<1x120xf32>
    %63 = "sst.malloc"() : () -> memref<1x120xf32>
    %false_160 = arith.constant false
    "sst.memcpy"(%63, %62, %false_160) : (memref<1x120xf32>, memref<1x120xf32>, i1) -> ()
    %64 = "sst.malloc"() : () -> memref<1x120xf32>
    %c0_161 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %65 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%65, %c27) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c120, %c1, %c1, %c0_161) : (index, index, index, index, index, index, index) -> ()
    %c0_162 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_162) : (index, index) -> ()
    %c8_163 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_163) : (index, index) -> ()
    %c16_164 = arith.constant 16 : index
    "sst.setup_arg"(%60, %c16_164) : (memref<1x120xf32>, index) -> ()
    %c72_165 = arith.constant 72 : index
    "sst.setup_arg"(%63, %c72_165) : (memref<1x120xf32>, index) -> ()
    %c128_166 = arith.constant 128 : index
    "sst.setup_arg"(%64, %c128_166) : (memref<1x120xf32>, index) -> ()
    "sst.launch"(%c27) : (index) -> ()
    %66 = "sst.malloc"() : () -> memref<120x84xf32>
    %c0_167 = arith.constant 0 : index
    %c28_168 = arith.constant 28 : index
    %67 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%67, %c28_168) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c120, %c84, %c1, %c0_167) : (index, index, index, index, index, index, index) -> ()
    %c0_169 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_169) : (index, index) -> ()
    %c8_170 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_170) : (index, index) -> ()
    %c16_171 = arith.constant 16 : index
    "sst.setup_arg"(%7, %c16_171) : (memref<84x120xf32>, index) -> ()
    %c72_172 = arith.constant 72 : index
    "sst.setup_arg"(%66, %c72_172) : (memref<120x84xf32>, index) -> ()
    "sst.launch"(%c28_168) : (index) -> ()
    %expand_shape_173 = memref.expand_shape %64 [[0, 1], [2]] : memref<1x120xf32> into memref<1x1x120xf32>
    %expand_shape_174 = memref.expand_shape %66 [[0, 1], [2]] : memref<120x84xf32> into memref<1x120x84xf32>
    %68 = "sst.malloc"() : () -> memref<1x1x84xf32>
    %c0_175 = arith.constant 0 : index
    %c29 = arith.constant 29 : index
    %69 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%69, %c29) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c84, %c1, %c1, %c0_175) : (index, index, index, index, index, index, index) -> ()
    %c0_176 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_176) : (index, index) -> ()
    %c8_177 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_177) : (index, index) -> ()
    %c16_178 = arith.constant 16 : index
    "sst.setup_arg"(%cst_10, %c16_178) : (f32, index) -> ()
    %c24_179 = arith.constant 24 : index
    "sst.setup_arg"(%68, %c24_179) : (memref<1x1x84xf32>, index) -> ()
    "sst.launch"(%c29) : (index) -> ()
    %c0_180 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %70 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%70, %c30) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c84, %c1, %c1, %c0_180) : (index, index, index, index, index, index, index) -> ()
    %c0_181 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_181) : (index, index) -> ()
    %c8_182 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_182) : (index, index) -> ()
    %c16_183 = arith.constant 16 : index
    "sst.setup_arg"(%expand_shape_173, %c16_183) : (memref<1x1x120xf32>, index) -> ()
    %c88_184 = arith.constant 88 : index
    "sst.setup_arg"(%expand_shape_174, %c88_184) : (memref<1x120x84xf32>, index) -> ()
    %c160_185 = arith.constant 160 : index
    "sst.setup_arg"(%68, %c160_185) : (memref<1x1x84xf32>, index) -> ()
    %c232_186 = arith.constant 232 : index
    "sst.setup_arg"(%c120, %c232_186) : (index, index) -> ()
    "sst.launch"(%c30) : (index) -> ()
    %collapse_shape_187 = memref.collapse_shape %68 [[0, 1], [2]] : memref<1x1x84xf32> into memref<1x84xf32>
    %expand_shape_188 = memref.expand_shape %8 [[0, 1]] : memref<84xf32> into memref<1x84xf32>
    %71 = "sst.malloc"() : () -> memref<1x84xf32>
    %c0_189 = arith.constant 0 : index
    %c31 = arith.constant 31 : index
    %72 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%72, %c31) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c84, %c1, %c1, %c0_189) : (index, index, index, index, index, index, index) -> ()
    %c0_190 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_190) : (index, index) -> ()
    %c8_191 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_191) : (index, index) -> ()
    %c16_192 = arith.constant 16 : index
    "sst.setup_arg"(%expand_shape_188, %c16_192) : (memref<1x84xf32>, index) -> ()
    %c72_193 = arith.constant 72 : index
    "sst.setup_arg"(%collapse_shape_187, %c72_193) : (memref<1x84xf32>, index) -> ()
    %c128_194 = arith.constant 128 : index
    "sst.setup_arg"(%71, %c128_194) : (memref<1x84xf32>, index) -> ()
    "sst.launch"(%c31) : (index) -> ()
    %73 = memref.get_global @__constant_1x84xf32 : memref<1x84xf32>
    %74 = "sst.malloc"() : () -> memref<1x84xf32>
    %false_195 = arith.constant false
    "sst.memcpy"(%74, %73, %false_195) : (memref<1x84xf32>, memref<1x84xf32>, i1) -> ()
    %75 = "sst.malloc"() : () -> memref<1x84xf32>
    %c0_196 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %76 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%76, %c32) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c84, %c1, %c1, %c0_196) : (index, index, index, index, index, index, index) -> ()
    %c0_197 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_197) : (index, index) -> ()
    %c8_198 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_198) : (index, index) -> ()
    %c16_199 = arith.constant 16 : index
    "sst.setup_arg"(%71, %c16_199) : (memref<1x84xf32>, index) -> ()
    %c72_200 = arith.constant 72 : index
    "sst.setup_arg"(%74, %c72_200) : (memref<1x84xf32>, index) -> ()
    %c128_201 = arith.constant 128 : index
    "sst.setup_arg"(%75, %c128_201) : (memref<1x84xf32>, index) -> ()
    "sst.launch"(%c32) : (index) -> ()
    %77 = "sst.malloc"() : () -> memref<84x10xf32>
    %c0_202 = arith.constant 0 : index
    %c33 = arith.constant 33 : index
    %78 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%78, %c33) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c84, %c10, %c1, %c0_202) : (index, index, index, index, index, index, index) -> ()
    %c0_203 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_203) : (index, index) -> ()
    %c8_204 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_204) : (index, index) -> ()
    %c16_205 = arith.constant 16 : index
    "sst.setup_arg"(%9, %c16_205) : (memref<10x84xf32>, index) -> ()
    %c72_206 = arith.constant 72 : index
    "sst.setup_arg"(%77, %c72_206) : (memref<84x10xf32>, index) -> ()
    "sst.launch"(%c33) : (index) -> ()
    %expand_shape_207 = memref.expand_shape %75 [[0, 1], [2]] : memref<1x84xf32> into memref<1x1x84xf32>
    %expand_shape_208 = memref.expand_shape %77 [[0, 1], [2]] : memref<84x10xf32> into memref<1x84x10xf32>
    %79 = "sst.malloc"() : () -> memref<1x1x10xf32>
    %c0_209 = arith.constant 0 : index
    %c34 = arith.constant 34 : index
    %80 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%80, %c34) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c10, %c1, %c1, %c0_209) : (index, index, index, index, index, index, index) -> ()
    %c0_210 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_210) : (index, index) -> ()
    %c8_211 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_211) : (index, index) -> ()
    %c16_212 = arith.constant 16 : index
    "sst.setup_arg"(%cst_10, %c16_212) : (f32, index) -> ()
    %c24_213 = arith.constant 24 : index
    "sst.setup_arg"(%79, %c24_213) : (memref<1x1x10xf32>, index) -> ()
    "sst.launch"(%c34) : (index) -> ()
    %c0_214 = arith.constant 0 : index
    %c35 = arith.constant 35 : index
    %81 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%81, %c35) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c10, %c1, %c1, %c0_214) : (index, index, index, index, index, index, index) -> ()
    %c0_215 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_215) : (index, index) -> ()
    %c8_216 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_216) : (index, index) -> ()
    %c16_217 = arith.constant 16 : index
    "sst.setup_arg"(%expand_shape_207, %c16_217) : (memref<1x1x84xf32>, index) -> ()
    %c88_218 = arith.constant 88 : index
    "sst.setup_arg"(%expand_shape_208, %c88_218) : (memref<1x84x10xf32>, index) -> ()
    %c160_219 = arith.constant 160 : index
    "sst.setup_arg"(%79, %c160_219) : (memref<1x1x10xf32>, index) -> ()
    %c232_220 = arith.constant 232 : index
    "sst.setup_arg"(%c84, %c232_220) : (index, index) -> ()
    "sst.launch"(%c35) : (index) -> ()
    %collapse_shape_221 = memref.collapse_shape %79 [[0, 1], [2]] : memref<1x1x10xf32> into memref<1x10xf32>
    %expand_shape_222 = memref.expand_shape %10 [[0, 1]] : memref<10xf32> into memref<1x10xf32>
    %82 = "sst.malloc"() : () -> memref<1x10xf32>
    %c0_223 = arith.constant 0 : index
    %c36 = arith.constant 36 : index
    %83 = "sst.reg_fatbin"() : () -> index
    "sst.reg_func"(%83, %c36) : (index, index) -> ()
    "sst.config_call"(%c1, %c1, %c1, %c10, %c1, %c1, %c0_223) : (index, index, index, index, index, index, index) -> ()
    %c0_224 = arith.constant 0 : index
    "sst.setup_arg"(%c1, %c0_224) : (index, index) -> ()
    %c8_225 = arith.constant 8 : index
    "sst.setup_arg"(%c0, %c8_225) : (index, index) -> ()
    %c16_226 = arith.constant 16 : index
    "sst.setup_arg"(%expand_shape_222, %c16_226) : (memref<1x10xf32>, index) -> ()
    %c72_227 = arith.constant 72 : index
    "sst.setup_arg"(%collapse_shape_221, %c72_227) : (memref<1x10xf32>, index) -> ()
    %c128_228 = arith.constant 128 : index
    "sst.setup_arg"(%82, %c128_228) : (memref<1x10xf32>, index) -> ()
    "sst.launch"(%c36) : (index) -> ()
    %alloc = memref.alloc() : memref<1x10xf32>
    %true = arith.constant true
    "sst.memcpy"(%alloc, %82, %true) : (memref<1x10xf32>, memref<1x10xf32>, i1) -> ()
    return %alloc : memref<1x10xf32>
  }
}

