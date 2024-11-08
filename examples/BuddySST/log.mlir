module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_1x84xf32(dense<0.000000e+00> : tensor<1x84xf32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<1 x array<84 x f32>>
  llvm.mlir.global private constant @__constant_1x120xf32(dense<0.000000e+00> : tensor<1x120xf32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<1 x array<120 x f32>>
  llvm.mlir.global private constant @__constant_2xi32(dense<[1, 0]> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<2 x i32>
  llvm.mlir.global private constant @__constant_1x16x8x8xf32(dense<0.000000e+00> : tensor<1x16x8x8xf32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<1 x array<16 x array<8 x array<8 x f32>>>>
  llvm.mlir.global private constant @__constant_1x6x24x24xf32(dense<0.000000e+00> : tensor<1x6x24x24xf32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<1 x array<6 x array<24 x array<24 x f32>>>>
  llvm.mlir.global private constant @__constant_4xi32_0(dense<[0, 3, 1, 2]> : tensor<4xi32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<4 x i32>
  llvm.mlir.global private constant @__constant_4xi32(dense<[0, 2, 3, 1]> : tensor<4xi32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<4 x i32>
  llvm.func @subgraph0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr, %arg23: !llvm.ptr, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: !llvm.ptr, %arg28: !llvm.ptr, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: !llvm.ptr, %arg39: !llvm.ptr, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: !llvm.ptr, %arg44: !llvm.ptr, %arg45: i64, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: !llvm.ptr, %arg51: !llvm.ptr, %arg52: i64, %arg53: i64, %arg54: i64, %arg55: !llvm.ptr, %arg56: !llvm.ptr, %arg57: i64, %arg58: i64, %arg59: i64, %arg60: i64, %arg61: i64, %arg62: !llvm.ptr, %arg63: !llvm.ptr, %arg64: i64, %arg65: i64, %arg66: i64, %arg67: !llvm.ptr, %arg68: !llvm.ptr, %arg69: i64, %arg70: i64, %arg71: i64, %arg72: i64, %arg73: i64, %arg74: !llvm.ptr, %arg75: !llvm.ptr, %arg76: i64, %arg77: i64, %arg78: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(36 : index) : i64
    %2 = llvm.mlir.constant(35 : index) : i64
    %3 = llvm.mlir.constant(34 : index) : i64
    %4 = llvm.mlir.constant(33 : index) : i64
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(31 : index) : i64
    %7 = llvm.mlir.constant(30 : index) : i64
    %8 = llvm.mlir.constant(29 : index) : i64
    %9 = llvm.mlir.constant(27 : index) : i64
    %10 = llvm.mlir.constant(128 : index) : i64
    %11 = llvm.mlir.constant(26 : index) : i64
    %12 = llvm.mlir.constant(232 : index) : i64
    %13 = llvm.mlir.constant(160 : index) : i64
    %14 = llvm.mlir.constant(88 : index) : i64
    %15 = llvm.mlir.constant(25 : index) : i64
    %16 = llvm.mlir.constant(72 : index) : i64
    %17 = llvm.mlir.constant(23 : index) : i64
    %18 = llvm.mlir.constant(22 : index) : i64
    %19 = llvm.mlir.constant(21 : index) : i64
    %20 = llvm.mlir.constant(20 : index) : i64
    %21 = llvm.mlir.constant(19 : index) : i64
    %22 = llvm.mlir.constant(18 : index) : i64
    %23 = llvm.mlir.constant(17 : index) : i64
    %24 = llvm.mlir.constant(288 : index) : i64
    %25 = llvm.mlir.constant(15 : index) : i64
    %26 = llvm.mlir.constant(14 : index) : i64
    %27 = llvm.mlir.constant(13 : index) : i64
    %28 = llvm.mlir.constant(11 : index) : i64
    %29 = llvm.mlir.constant(9 : index) : i64
    %30 = llvm.mlir.constant(7 : index) : i64
    %31 = llvm.mlir.constant(144 : index) : i64
    %32 = llvm.mlir.constant(56 : index) : i64
    %33 = llvm.mlir.constant(280 : index) : i64
    %34 = llvm.mlir.constant(192 : index) : i64
    %35 = llvm.mlir.constant(3 : index) : i64
    %36 = llvm.mlir.constant(104 : index) : i64
    %37 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %38 = llvm.mlir.constant(-3.40282347E+38 : f32) : f32
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(28 : index) : i64
    %42 = llvm.mlir.constant(24 : index) : i64
    %43 = llvm.mlir.constant(12 : index) : i64
    %44 = llvm.mlir.constant(5 : index) : i64
    %45 = llvm.mlir.constant(8 : index) : i64
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.mlir.constant(256 : index) : i64
    %48 = llvm.mlir.constant(10 : index) : i64
    %49 = llvm.mlir.constant(84 : index) : i64
    %50 = llvm.mlir.constant(120 : index) : i64
    %51 = llvm.mlir.constant(16 : index) : i64
    %52 = llvm.mlir.constant(6 : index) : i64
    %53 = llvm.mlir.constant(false) : i1
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.zero : !llvm.ptr
    %56 = llvm.getelementptr %55[784] : (!llvm.ptr) -> !llvm.ptr, f32
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.call @sstcudaMalloc(%57) : (i64) -> !llvm.ptr
    %59 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.mlir.zero : !llvm.ptr
    %61 = llvm.getelementptr %60[784] : (!llvm.ptr) -> !llvm.ptr, f32
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%58, %arg1, %62, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %63 = llvm.mlir.zero : !llvm.ptr
    %64 = llvm.getelementptr %63[150] : (!llvm.ptr) -> !llvm.ptr, f32
    %65 = llvm.ptrtoint %64 : !llvm.ptr to i64
    %66 = llvm.call @sstcudaMalloc(%65) : (i64) -> !llvm.ptr
    %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %68 = llvm.mlir.zero : !llvm.ptr
    %69 = llvm.getelementptr %68[150] : (!llvm.ptr) -> !llvm.ptr, f32
    %70 = llvm.ptrtoint %69 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%66, %arg12, %70, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %71 = llvm.mlir.zero : !llvm.ptr
    %72 = llvm.getelementptr %71[6] : (!llvm.ptr) -> !llvm.ptr, f32
    %73 = llvm.ptrtoint %72 : !llvm.ptr to i64
    %74 = llvm.call @sstcudaMalloc(%73) : (i64) -> !llvm.ptr
    %75 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[6] : (!llvm.ptr) -> !llvm.ptr, f32
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%74, %arg23, %78, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %79 = llvm.mlir.zero : !llvm.ptr
    %80 = llvm.getelementptr %79[2400] : (!llvm.ptr) -> !llvm.ptr, f32
    %81 = llvm.ptrtoint %80 : !llvm.ptr to i64
    %82 = llvm.call @sstcudaMalloc(%81) : (i64) -> !llvm.ptr
    %83 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %84 = llvm.mlir.zero : !llvm.ptr
    %85 = llvm.getelementptr %84[2400] : (!llvm.ptr) -> !llvm.ptr, f32
    %86 = llvm.ptrtoint %85 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%82, %arg28, %86, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[16] : (!llvm.ptr) -> !llvm.ptr, f32
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.call @sstcudaMalloc(%89) : (i64) -> !llvm.ptr
    %91 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %92 = llvm.mlir.zero : !llvm.ptr
    %93 = llvm.getelementptr %92[16] : (!llvm.ptr) -> !llvm.ptr, f32
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%90, %arg39, %94, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %95 = llvm.mlir.zero : !llvm.ptr
    %96 = llvm.getelementptr %95[30720] : (!llvm.ptr) -> !llvm.ptr, f32
    %97 = llvm.ptrtoint %96 : !llvm.ptr to i64
    %98 = llvm.call @sstcudaMalloc(%97) : (i64) -> !llvm.ptr
    %99 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %100 = llvm.mlir.zero : !llvm.ptr
    %101 = llvm.getelementptr %100[30720] : (!llvm.ptr) -> !llvm.ptr, f32
    %102 = llvm.ptrtoint %101 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%98, %arg44, %102, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %103 = llvm.mlir.zero : !llvm.ptr
    %104 = llvm.getelementptr %103[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.call @sstcudaMalloc(%105) : (i64) -> !llvm.ptr
    %107 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %108 = llvm.insertvalue %106, %107[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %54, %109[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.zero : !llvm.ptr
    %112 = llvm.getelementptr %111[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %113 = llvm.ptrtoint %112 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%106, %arg51, %113, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %114 = llvm.mlir.zero : !llvm.ptr
    %115 = llvm.getelementptr %114[10080] : (!llvm.ptr) -> !llvm.ptr, f32
    %116 = llvm.ptrtoint %115 : !llvm.ptr to i64
    %117 = llvm.call @sstcudaMalloc(%116) : (i64) -> !llvm.ptr
    %118 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %119 = llvm.mlir.zero : !llvm.ptr
    %120 = llvm.getelementptr %119[10080] : (!llvm.ptr) -> !llvm.ptr, f32
    %121 = llvm.ptrtoint %120 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%117, %arg56, %121, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %122 = llvm.mlir.zero : !llvm.ptr
    %123 = llvm.getelementptr %122[84] : (!llvm.ptr) -> !llvm.ptr, f32
    %124 = llvm.ptrtoint %123 : !llvm.ptr to i64
    %125 = llvm.call @sstcudaMalloc(%124) : (i64) -> !llvm.ptr
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %54, %128[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.mlir.zero : !llvm.ptr
    %131 = llvm.getelementptr %130[84] : (!llvm.ptr) -> !llvm.ptr, f32
    %132 = llvm.ptrtoint %131 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%125, %arg63, %132, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %133 = llvm.mlir.zero : !llvm.ptr
    %134 = llvm.getelementptr %133[840] : (!llvm.ptr) -> !llvm.ptr, f32
    %135 = llvm.ptrtoint %134 : !llvm.ptr to i64
    %136 = llvm.call @sstcudaMalloc(%135) : (i64) -> !llvm.ptr
    %137 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.mlir.zero : !llvm.ptr
    %139 = llvm.getelementptr %138[840] : (!llvm.ptr) -> !llvm.ptr, f32
    %140 = llvm.ptrtoint %139 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%136, %arg68, %140, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %141 = llvm.mlir.zero : !llvm.ptr
    %142 = llvm.getelementptr %141[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %143 = llvm.ptrtoint %142 : !llvm.ptr to i64
    %144 = llvm.call @sstcudaMalloc(%143) : (i64) -> !llvm.ptr
    %145 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %146 = llvm.insertvalue %144, %145[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %144, %146[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %54, %147[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.mlir.zero : !llvm.ptr
    %150 = llvm.getelementptr %149[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %151 = llvm.ptrtoint %150 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%144, %arg75, %151, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %152 = llvm.mlir.zero : !llvm.ptr
    %153 = llvm.getelementptr %152[784] : (!llvm.ptr) -> !llvm.ptr, f32
    %154 = llvm.ptrtoint %153 : !llvm.ptr to i64
    %155 = llvm.call @sstcudaMalloc(%154) : (i64) -> !llvm.ptr
    %156 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %157 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%157, %40) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %41, %41, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %158 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.extractvalue %59[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.extractvalue %59[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.extractvalue %59[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.extractvalue %59[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.extractvalue %59[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.extractvalue %59[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%58, %58, %54, %158, %159, %160, %161, %162, %163, %164, %165, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %166 = llvm.extractvalue %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.extractvalue %156[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.extractvalue %156[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.extractvalue %156[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.extractvalue %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.extractvalue %156[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.extractvalue %156[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.extractvalue %156[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%155, %155, %54, %166, %167, %168, %169, %170, %171, %172, %173, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%40) : (i64) -> ()
    %174 = llvm.mlir.zero : !llvm.ptr
    %175 = llvm.getelementptr %174[150] : (!llvm.ptr) -> !llvm.ptr, f32
    %176 = llvm.ptrtoint %175 : !llvm.ptr to i64
    %177 = llvm.call @sstcudaMalloc(%176) : (i64) -> !llvm.ptr
    %178 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %179 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%179, %39) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %52, %44, %44, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %180 = llvm.extractvalue %67[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.extractvalue %67[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.extractvalue %67[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.extractvalue %67[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.extractvalue %67[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.extractvalue %67[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.extractvalue %67[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.extractvalue %67[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%66, %66, %54, %180, %181, %182, %183, %184, %185, %186, %187, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %188 = llvm.extractvalue %178[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.extractvalue %178[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.extractvalue %178[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.extractvalue %178[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.extractvalue %178[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.extractvalue %178[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.extractvalue %178[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.extractvalue %178[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%177, %177, %54, %188, %189, %190, %191, %192, %193, %194, %195, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%39) : (i64) -> ()
    %196 = llvm.mlir.zero : !llvm.ptr
    %197 = llvm.getelementptr %196[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %198 = llvm.ptrtoint %197 : !llvm.ptr to i64
    %199 = llvm.call @sstcudaMalloc(%198) : (i64) -> !llvm.ptr
    %200 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %201 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%201, %35) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %42, %42, %52, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    llvm.call @sstSetupFloat32Argument(%37, %51) : (f32, i64) -> ()
    %202 = llvm.extractvalue %200[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.extractvalue %200[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.extractvalue %200[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.extractvalue %200[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.extractvalue %200[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.extractvalue %200[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.extractvalue %200[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.extractvalue %200[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%199, %199, %54, %202, %203, %204, %205, %206, %207, %208, %209, %42) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%35) : (i64) -> ()
    %210 = llvm.mlir.zero : !llvm.ptr
    %211 = llvm.getelementptr %210[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %212 = llvm.ptrtoint %211 : !llvm.ptr to i64
    %213 = llvm.call @sstcudaMalloc(%212) : (i64) -> !llvm.ptr
    %214 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %215 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%215, %46) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %42, %42, %52, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %216 = llvm.extractvalue %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.extractvalue %156[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.extractvalue %156[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.extractvalue %156[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.extractvalue %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.extractvalue %156[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.extractvalue %156[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.extractvalue %156[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%155, %155, %54, %216, %217, %218, %219, %220, %221, %222, %223, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %224 = llvm.extractvalue %178[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.extractvalue %178[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.extractvalue %178[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.extractvalue %178[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.extractvalue %178[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.extractvalue %178[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.extractvalue %178[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.extractvalue %178[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%177, %177, %54, %224, %225, %226, %227, %228, %229, %230, %231, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %232 = llvm.extractvalue %200[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.extractvalue %200[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.extractvalue %200[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.extractvalue %200[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.extractvalue %200[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.extractvalue %200[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.extractvalue %200[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.extractvalue %200[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%199, %199, %54, %232, %233, %234, %235, %236, %237, %238, %239, %34) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%44, %33) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%46) : (i64) -> ()
    %240 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%240, %44) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %42, %42, %52, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %241 = llvm.extractvalue %75[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.extractvalue %75[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%74, %74, %54, %241, %242, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %243 = llvm.extractvalue %200[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.extractvalue %200[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.extractvalue %200[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.extractvalue %200[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.extractvalue %200[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.extractvalue %200[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.extractvalue %200[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.extractvalue %200[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%199, %199, %54, %243, %244, %245, %246, %247, %248, %249, %250, %32) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %251 = llvm.extractvalue %214[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.extractvalue %214[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.extractvalue %214[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.extractvalue %214[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.extractvalue %214[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.extractvalue %214[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.extractvalue %214[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.extractvalue %214[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%213, %213, %54, %251, %252, %253, %254, %255, %256, %257, %258, %31) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%44) : (i64) -> ()
    %259 = llvm.mlir.zero : !llvm.ptr
    %260 = llvm.getelementptr %259[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %261 = llvm.ptrtoint %260 : !llvm.ptr to i64
    %262 = llvm.call @sstcudaMalloc(%261) : (i64) -> !llvm.ptr
    %263 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %264 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%264, %52) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %52, %42, %42, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %265 = llvm.extractvalue %214[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.extractvalue %214[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.extractvalue %214[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.extractvalue %214[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.extractvalue %214[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.extractvalue %214[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.extractvalue %214[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.extractvalue %214[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%213, %213, %54, %265, %266, %267, %268, %269, %270, %271, %272, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %273 = llvm.extractvalue %263[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.extractvalue %263[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.extractvalue %263[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.extractvalue %263[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.extractvalue %263[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.extractvalue %263[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.extractvalue %263[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.extractvalue %263[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%262, %262, %54, %273, %274, %275, %276, %277, %278, %279, %280, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%52) : (i64) -> ()
    %281 = llvm.mlir.addressof @__constant_1x6x24x24xf32 : !llvm.ptr
    %282 = llvm.getelementptr %281[0, 0, 0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x array<6 x array<24 x array<24 x f32>>>>
    %283 = llvm.mlir.zero : !llvm.ptr
    %284 = llvm.getelementptr %283[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %285 = llvm.ptrtoint %284 : !llvm.ptr to i64
    %286 = llvm.call @sstcudaMalloc(%285) : (i64) -> !llvm.ptr
    %287 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %288 = llvm.mlir.zero : !llvm.ptr
    %289 = llvm.getelementptr %288[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %290 = llvm.ptrtoint %289 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%286, %282, %290, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %291 = llvm.mlir.zero : !llvm.ptr
    %292 = llvm.getelementptr %291[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %293 = llvm.ptrtoint %292 : !llvm.ptr to i64
    %294 = llvm.call @sstcudaMalloc(%293) : (i64) -> !llvm.ptr
    %295 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %296 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%296, %30) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %52, %42, %42, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %297 = llvm.extractvalue %263[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.extractvalue %263[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.extractvalue %263[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.extractvalue %263[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.extractvalue %263[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.extractvalue %263[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.extractvalue %263[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.extractvalue %263[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%262, %262, %54, %297, %298, %299, %300, %301, %302, %303, %304, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %305 = llvm.extractvalue %287[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.extractvalue %287[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.extractvalue %287[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.extractvalue %287[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.extractvalue %287[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.extractvalue %287[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.extractvalue %287[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.extractvalue %287[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%286, %286, %54, %305, %306, %307, %308, %309, %310, %311, %312, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %313 = llvm.extractvalue %295[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.extractvalue %295[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.extractvalue %295[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.extractvalue %295[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.extractvalue %295[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.extractvalue %295[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.extractvalue %295[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.extractvalue %295[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%294, %294, %54, %313, %314, %315, %316, %317, %318, %319, %320, %34) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%30) : (i64) -> ()
    %321 = llvm.mlir.zero : !llvm.ptr
    %322 = llvm.getelementptr %321[3456] : (!llvm.ptr) -> !llvm.ptr, f32
    %323 = llvm.ptrtoint %322 : !llvm.ptr to i64
    %324 = llvm.call @sstcudaMalloc(%323) : (i64) -> !llvm.ptr
    %325 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %326 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%326, %45) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %42, %42, %52, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %327 = llvm.extractvalue %295[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.extractvalue %295[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.extractvalue %295[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.extractvalue %295[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.extractvalue %295[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.extractvalue %295[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.extractvalue %295[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.extractvalue %295[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%294, %294, %54, %327, %328, %329, %330, %331, %332, %333, %334, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %335 = llvm.extractvalue %325[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.extractvalue %325[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.extractvalue %325[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.extractvalue %325[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.extractvalue %325[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.extractvalue %325[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.extractvalue %325[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.extractvalue %325[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%324, %324, %54, %335, %336, %337, %338, %339, %340, %341, %342, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%45) : (i64) -> ()
    %343 = llvm.mlir.zero : !llvm.ptr
    %344 = llvm.getelementptr %343[864] : (!llvm.ptr) -> !llvm.ptr, f32
    %345 = llvm.ptrtoint %344 : !llvm.ptr to i64
    %346 = llvm.call @sstcudaMalloc(%345) : (i64) -> !llvm.ptr
    %347 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %348 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%348, %29) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %43, %43, %52, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    llvm.call @sstSetupFloat32Argument(%38, %51) : (f32, i64) -> ()
    %349 = llvm.extractvalue %347[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.extractvalue %347[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.extractvalue %347[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.extractvalue %347[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.extractvalue %347[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.extractvalue %347[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.extractvalue %347[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.extractvalue %347[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%346, %346, %54, %349, %350, %351, %352, %353, %354, %355, %356, %42) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%29) : (i64) -> ()
    %357 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%357, %48) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %43, %43, %52, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %358 = llvm.extractvalue %325[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.extractvalue %325[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.extractvalue %325[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.extractvalue %325[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.extractvalue %325[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.extractvalue %325[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.extractvalue %325[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.extractvalue %325[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%324, %324, %54, %358, %359, %360, %361, %362, %363, %364, %365, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %366 = llvm.extractvalue %347[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.extractvalue %347[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.extractvalue %347[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.extractvalue %347[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.extractvalue %347[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.extractvalue %347[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.extractvalue %347[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.extractvalue %347[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%346, %346, %54, %366, %367, %368, %369, %370, %371, %372, %373, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%39, %34) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%48) : (i64) -> ()
    %374 = llvm.mlir.zero : !llvm.ptr
    %375 = llvm.getelementptr %374[864] : (!llvm.ptr) -> !llvm.ptr, f32
    %376 = llvm.ptrtoint %375 : !llvm.ptr to i64
    %377 = llvm.call @sstcudaMalloc(%376) : (i64) -> !llvm.ptr
    %378 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %379 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%379, %28) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %52, %43, %43, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %380 = llvm.extractvalue %347[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.extractvalue %347[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.extractvalue %347[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.extractvalue %347[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.extractvalue %347[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.extractvalue %347[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.extractvalue %347[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.extractvalue %347[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%346, %346, %54, %380, %381, %382, %383, %384, %385, %386, %387, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %388 = llvm.extractvalue %378[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.extractvalue %378[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.extractvalue %378[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.extractvalue %378[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.extractvalue %378[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.extractvalue %378[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.extractvalue %378[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.extractvalue %378[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%377, %377, %54, %388, %389, %390, %391, %392, %393, %394, %395, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%28) : (i64) -> ()
    %396 = llvm.mlir.zero : !llvm.ptr
    %397 = llvm.getelementptr %396[864] : (!llvm.ptr) -> !llvm.ptr, f32
    %398 = llvm.ptrtoint %397 : !llvm.ptr to i64
    %399 = llvm.call @sstcudaMalloc(%398) : (i64) -> !llvm.ptr
    %400 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %401 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%401, %43) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %43, %43, %52, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %402 = llvm.extractvalue %378[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.extractvalue %378[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.extractvalue %378[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.extractvalue %378[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.extractvalue %378[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.extractvalue %378[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.extractvalue %378[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.extractvalue %378[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%377, %377, %54, %402, %403, %404, %405, %406, %407, %408, %409, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %410 = llvm.extractvalue %400[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.extractvalue %400[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.extractvalue %400[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.extractvalue %400[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.extractvalue %400[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.extractvalue %400[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.extractvalue %400[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.extractvalue %400[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%399, %399, %54, %410, %411, %412, %413, %414, %415, %416, %417, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%43) : (i64) -> ()
    %418 = llvm.mlir.zero : !llvm.ptr
    %419 = llvm.getelementptr %418[2400] : (!llvm.ptr) -> !llvm.ptr, f32
    %420 = llvm.ptrtoint %419 : !llvm.ptr to i64
    %421 = llvm.call @sstcudaMalloc(%420) : (i64) -> !llvm.ptr
    %422 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %423 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%423, %27) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %51, %44, %44, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %424 = llvm.extractvalue %83[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.extractvalue %83[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.extractvalue %83[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.extractvalue %83[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.extractvalue %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.extractvalue %83[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.extractvalue %83[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.extractvalue %83[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%82, %82, %54, %424, %425, %426, %427, %428, %429, %430, %431, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %432 = llvm.extractvalue %422[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.extractvalue %422[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.extractvalue %422[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.extractvalue %422[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.extractvalue %422[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.extractvalue %422[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.extractvalue %422[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.extractvalue %422[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%421, %421, %54, %432, %433, %434, %435, %436, %437, %438, %439, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%52, %34) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%27) : (i64) -> ()
    %440 = llvm.mlir.zero : !llvm.ptr
    %441 = llvm.getelementptr %440[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %442 = llvm.ptrtoint %441 : !llvm.ptr to i64
    %443 = llvm.call @sstcudaMalloc(%442) : (i64) -> !llvm.ptr
    %444 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %445 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%445, %26) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %45, %45, %51, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    llvm.call @sstSetupFloat32Argument(%37, %51) : (f32, i64) -> ()
    %446 = llvm.extractvalue %444[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.extractvalue %444[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.extractvalue %444[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.extractvalue %444[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.extractvalue %444[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.extractvalue %444[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.extractvalue %444[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.extractvalue %444[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%443, %443, %54, %446, %447, %448, %449, %450, %451, %452, %453, %42) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%26) : (i64) -> ()
    %454 = llvm.mlir.zero : !llvm.ptr
    %455 = llvm.getelementptr %454[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %456 = llvm.ptrtoint %455 : !llvm.ptr to i64
    %457 = llvm.call @sstcudaMalloc(%456) : (i64) -> !llvm.ptr
    %458 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %459 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%459, %25) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %45, %45, %51, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %460 = llvm.extractvalue %400[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.extractvalue %400[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.extractvalue %400[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.extractvalue %400[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.extractvalue %400[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.extractvalue %400[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.extractvalue %400[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.extractvalue %400[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%399, %399, %54, %460, %461, %462, %463, %464, %465, %466, %467, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %468 = llvm.extractvalue %422[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.extractvalue %422[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.extractvalue %422[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.extractvalue %422[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.extractvalue %422[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.extractvalue %422[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.extractvalue %422[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.extractvalue %422[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%421, %421, %54, %468, %469, %470, %471, %472, %473, %474, %475, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %476 = llvm.extractvalue %444[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.extractvalue %444[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.extractvalue %444[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.extractvalue %444[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.extractvalue %444[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.extractvalue %444[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.extractvalue %444[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.extractvalue %444[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%443, %443, %54, %476, %477, %478, %479, %480, %481, %482, %483, %34) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%52, %33) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%44, %24) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%25) : (i64) -> ()
    %484 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%484, %51) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %45, %45, %51, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %485 = llvm.extractvalue %91[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.extractvalue %91[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%90, %90, %54, %485, %486, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %487 = llvm.extractvalue %444[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.extractvalue %444[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.extractvalue %444[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.extractvalue %444[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.extractvalue %444[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.extractvalue %444[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.extractvalue %444[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.extractvalue %444[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%443, %443, %54, %487, %488, %489, %490, %491, %492, %493, %494, %32) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %495 = llvm.extractvalue %458[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.extractvalue %458[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.extractvalue %458[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.extractvalue %458[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.extractvalue %458[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.extractvalue %458[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.extractvalue %458[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.extractvalue %458[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%457, %457, %54, %495, %496, %497, %498, %499, %500, %501, %502, %31) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%51) : (i64) -> ()
    %503 = llvm.mlir.zero : !llvm.ptr
    %504 = llvm.getelementptr %503[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %505 = llvm.ptrtoint %504 : !llvm.ptr to i64
    %506 = llvm.call @sstcudaMalloc(%505) : (i64) -> !llvm.ptr
    %507 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %508 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%508, %23) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %51, %45, %45, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %509 = llvm.extractvalue %458[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.extractvalue %458[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.extractvalue %458[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.extractvalue %458[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.extractvalue %458[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.extractvalue %458[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.extractvalue %458[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.extractvalue %458[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%457, %457, %54, %509, %510, %511, %512, %513, %514, %515, %516, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %517 = llvm.extractvalue %507[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.extractvalue %507[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.extractvalue %507[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.extractvalue %507[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.extractvalue %507[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.extractvalue %507[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.extractvalue %507[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.extractvalue %507[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%506, %506, %54, %517, %518, %519, %520, %521, %522, %523, %524, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%23) : (i64) -> ()
    %525 = llvm.mlir.addressof @__constant_1x16x8x8xf32 : !llvm.ptr
    %526 = llvm.getelementptr %525[0, 0, 0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x array<16 x array<8 x array<8 x f32>>>>
    %527 = llvm.mlir.zero : !llvm.ptr
    %528 = llvm.getelementptr %527[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %529 = llvm.ptrtoint %528 : !llvm.ptr to i64
    %530 = llvm.call @sstcudaMalloc(%529) : (i64) -> !llvm.ptr
    %531 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %532 = llvm.mlir.zero : !llvm.ptr
    %533 = llvm.getelementptr %532[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %534 = llvm.ptrtoint %533 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%530, %526, %534, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %535 = llvm.mlir.zero : !llvm.ptr
    %536 = llvm.getelementptr %535[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %537 = llvm.ptrtoint %536 : !llvm.ptr to i64
    %538 = llvm.call @sstcudaMalloc(%537) : (i64) -> !llvm.ptr
    %539 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %540 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%540, %22) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %51, %45, %45, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %541 = llvm.extractvalue %507[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.extractvalue %507[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.extractvalue %507[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.extractvalue %507[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.extractvalue %507[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.extractvalue %507[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.extractvalue %507[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.extractvalue %507[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%506, %506, %54, %541, %542, %543, %544, %545, %546, %547, %548, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %549 = llvm.extractvalue %531[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.extractvalue %531[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %551 = llvm.extractvalue %531[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %552 = llvm.extractvalue %531[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.extractvalue %531[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.extractvalue %531[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.extractvalue %531[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.extractvalue %531[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%530, %530, %54, %549, %550, %551, %552, %553, %554, %555, %556, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %557 = llvm.extractvalue %539[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.extractvalue %539[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.extractvalue %539[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.extractvalue %539[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.extractvalue %539[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.extractvalue %539[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.extractvalue %539[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.extractvalue %539[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%538, %538, %54, %557, %558, %559, %560, %561, %562, %563, %564, %34) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%22) : (i64) -> ()
    %565 = llvm.mlir.zero : !llvm.ptr
    %566 = llvm.getelementptr %565[1024] : (!llvm.ptr) -> !llvm.ptr, f32
    %567 = llvm.ptrtoint %566 : !llvm.ptr to i64
    %568 = llvm.call @sstcudaMalloc(%567) : (i64) -> !llvm.ptr
    %569 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %570 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%570, %21) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %45, %45, %51, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %571 = llvm.extractvalue %539[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.extractvalue %539[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.extractvalue %539[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.extractvalue %539[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %575 = llvm.extractvalue %539[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.extractvalue %539[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.extractvalue %539[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.extractvalue %539[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%538, %538, %54, %571, %572, %573, %574, %575, %576, %577, %578, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %579 = llvm.extractvalue %569[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.extractvalue %569[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.extractvalue %569[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.extractvalue %569[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.extractvalue %569[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.extractvalue %569[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.extractvalue %569[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.extractvalue %569[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%568, %568, %54, %579, %580, %581, %582, %583, %584, %585, %586, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%21) : (i64) -> ()
    %587 = llvm.mlir.zero : !llvm.ptr
    %588 = llvm.getelementptr %587[256] : (!llvm.ptr) -> !llvm.ptr, f32
    %589 = llvm.ptrtoint %588 : !llvm.ptr to i64
    %590 = llvm.call @sstcudaMalloc(%589) : (i64) -> !llvm.ptr
    %591 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %592 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%592, %20) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %46, %46, %51, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    llvm.call @sstSetupFloat32Argument(%38, %51) : (f32, i64) -> ()
    %593 = llvm.extractvalue %591[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.extractvalue %591[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.extractvalue %591[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.extractvalue %591[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.extractvalue %591[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.extractvalue %591[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.extractvalue %591[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.extractvalue %591[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%590, %590, %54, %593, %594, %595, %596, %597, %598, %599, %600, %42) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%20) : (i64) -> ()
    %601 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%601, %19) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %46, %46, %51, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %602 = llvm.extractvalue %569[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %603 = llvm.extractvalue %569[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %604 = llvm.extractvalue %569[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %605 = llvm.extractvalue %569[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.extractvalue %569[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.extractvalue %569[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.extractvalue %569[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.extractvalue %569[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%568, %568, %54, %602, %603, %604, %605, %606, %607, %608, %609, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %610 = llvm.extractvalue %591[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.extractvalue %591[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.extractvalue %591[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.extractvalue %591[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.extractvalue %591[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.extractvalue %591[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.extractvalue %591[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.extractvalue %591[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%590, %590, %54, %610, %611, %612, %613, %614, %615, %616, %617, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%39, %34) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%19) : (i64) -> ()
    %618 = llvm.mlir.zero : !llvm.ptr
    %619 = llvm.getelementptr %618[256] : (!llvm.ptr) -> !llvm.ptr, f32
    %620 = llvm.ptrtoint %619 : !llvm.ptr to i64
    %621 = llvm.call @sstcudaMalloc(%620) : (i64) -> !llvm.ptr
    %622 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %623 = llvm.insertvalue %621, %622[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.insertvalue %621, %623[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.insertvalue %54, %624[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%626, %18) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %51, %46, %46, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %627 = llvm.extractvalue %591[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.extractvalue %591[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.extractvalue %591[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.extractvalue %591[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.extractvalue %591[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.extractvalue %591[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.extractvalue %591[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.extractvalue %591[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%590, %590, %54, %627, %628, %629, %630, %631, %632, %633, %634, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %635 = llvm.extractvalue %622[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.extractvalue %622[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.extractvalue %622[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.extractvalue %622[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.extractvalue %622[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.extractvalue %622[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.extractvalue %622[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %642 = llvm.extractvalue %622[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%621, %621, %54, %635, %636, %637, %638, %639, %640, %641, %642, %36) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%18) : (i64) -> ()
    %643 = llvm.mlir.zero : !llvm.ptr
    %644 = llvm.getelementptr %643[30720] : (!llvm.ptr) -> !llvm.ptr, f32
    %645 = llvm.ptrtoint %644 : !llvm.ptr to i64
    %646 = llvm.call @sstcudaMalloc(%645) : (i64) -> !llvm.ptr
    %647 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %648 = llvm.insertvalue %646, %647[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %649 = llvm.insertvalue %646, %648[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %650 = llvm.insertvalue %54, %649[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %651 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%651, %17) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %47, %50, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %652 = llvm.extractvalue %99[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %653 = llvm.extractvalue %99[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %654 = llvm.extractvalue %99[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %655 = llvm.extractvalue %99[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%98, %98, %54, %652, %653, %654, %655, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %656 = llvm.extractvalue %647[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %657 = llvm.extractvalue %647[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %658 = llvm.extractvalue %647[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %659 = llvm.extractvalue %647[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%646, %646, %54, %656, %657, %658, %659, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%17) : (i64) -> ()
    %660 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %661 = llvm.insertvalue %621, %660[0] : !llvm.struct<(ptr, ptr, i64)> 
    %662 = llvm.insertvalue %621, %661[1] : !llvm.struct<(ptr, ptr, i64)> 
    %663 = llvm.mlir.constant(0 : index) : i64
    %664 = llvm.insertvalue %663, %662[2] : !llvm.struct<(ptr, ptr, i64)> 
    %665 = llvm.extractvalue %622[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.extractvalue %622[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.extractvalue %622[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.extractvalue %622[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.extractvalue %622[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.extractvalue %622[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.extractvalue %622[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.extractvalue %622[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %674 = llvm.insertvalue %621, %673[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %675 = llvm.insertvalue %621, %674[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %676 = llvm.mlir.constant(0 : index) : i64
    %677 = llvm.insertvalue %676, %675[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %678 = llvm.mlir.constant(1 : index) : i64
    %679 = llvm.insertvalue %678, %677[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %680 = llvm.mlir.constant(256 : index) : i64
    %681 = llvm.insertvalue %680, %679[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %682 = llvm.mlir.constant(1 : index) : i64
    %683 = llvm.insertvalue %682, %681[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %684 = llvm.mlir.constant(256 : index) : i64
    %685 = llvm.insertvalue %684, %683[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %686 = llvm.mlir.constant(256 : index) : i64
    %687 = llvm.insertvalue %686, %685[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %688 = llvm.mlir.constant(1 : index) : i64
    %689 = llvm.insertvalue %688, %687[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %690 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %691 = llvm.insertvalue %646, %690[0] : !llvm.struct<(ptr, ptr, i64)> 
    %692 = llvm.insertvalue %646, %691[1] : !llvm.struct<(ptr, ptr, i64)> 
    %693 = llvm.mlir.constant(0 : index) : i64
    %694 = llvm.insertvalue %693, %692[2] : !llvm.struct<(ptr, ptr, i64)> 
    %695 = llvm.extractvalue %647[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %696 = llvm.extractvalue %647[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %697 = llvm.extractvalue %647[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %698 = llvm.extractvalue %647[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %699 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %700 = llvm.insertvalue %646, %699[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %701 = llvm.insertvalue %646, %700[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %702 = llvm.mlir.constant(0 : index) : i64
    %703 = llvm.insertvalue %702, %701[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %704 = llvm.mlir.constant(1 : index) : i64
    %705 = llvm.insertvalue %704, %703[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %706 = llvm.mlir.constant(30720 : index) : i64
    %707 = llvm.insertvalue %706, %705[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %708 = llvm.mlir.constant(256 : index) : i64
    %709 = llvm.insertvalue %708, %707[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %710 = llvm.mlir.constant(120 : index) : i64
    %711 = llvm.insertvalue %710, %709[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %712 = llvm.mlir.constant(120 : index) : i64
    %713 = llvm.insertvalue %712, %711[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %714 = llvm.mlir.constant(1 : index) : i64
    %715 = llvm.insertvalue %714, %713[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %716 = llvm.mlir.zero : !llvm.ptr
    %717 = llvm.getelementptr %716[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %718 = llvm.ptrtoint %717 : !llvm.ptr to i64
    %719 = llvm.call @sstcudaMalloc(%718) : (i64) -> !llvm.ptr
    %720 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %721 = llvm.insertvalue %719, %720[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %722 = llvm.insertvalue %719, %721[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %723 = llvm.insertvalue %54, %722[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %724 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%724, %42) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %50, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    llvm.call @sstSetupFloat32Argument(%37, %51) : (f32, i64) -> ()
    %725 = llvm.extractvalue %720[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %726 = llvm.extractvalue %720[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %727 = llvm.extractvalue %720[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %728 = llvm.extractvalue %720[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %729 = llvm.extractvalue %720[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %730 = llvm.extractvalue %720[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%719, %719, %54, %725, %726, %727, %728, %729, %730, %42) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%42) : (i64) -> ()
    %731 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%731, %15) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %50, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %732 = llvm.extractvalue %689[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %733 = llvm.extractvalue %689[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %734 = llvm.extractvalue %689[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %735 = llvm.extractvalue %689[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %736 = llvm.extractvalue %689[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %737 = llvm.extractvalue %689[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %738 = llvm.extractvalue %689[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %739 = llvm.extractvalue %689[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %740 = llvm.extractvalue %689[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%732, %733, %734, %735, %736, %737, %738, %739, %740, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %741 = llvm.extractvalue %715[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %742 = llvm.extractvalue %715[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %743 = llvm.extractvalue %715[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %744 = llvm.extractvalue %715[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %745 = llvm.extractvalue %715[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %746 = llvm.extractvalue %715[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %747 = llvm.extractvalue %715[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %748 = llvm.extractvalue %715[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %749 = llvm.extractvalue %715[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%741, %742, %743, %744, %745, %746, %747, %748, %749, %14) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %750 = llvm.extractvalue %720[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %751 = llvm.extractvalue %720[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %752 = llvm.extractvalue %720[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %753 = llvm.extractvalue %720[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %754 = llvm.extractvalue %720[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %755 = llvm.extractvalue %720[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%719, %719, %54, %750, %751, %752, %753, %754, %755, %13) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%47, %12) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%15) : (i64) -> ()
    %756 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %757 = llvm.insertvalue %719, %756[0] : !llvm.struct<(ptr, ptr, i64)> 
    %758 = llvm.insertvalue %719, %757[1] : !llvm.struct<(ptr, ptr, i64)> 
    %759 = llvm.mlir.constant(0 : index) : i64
    %760 = llvm.insertvalue %759, %758[2] : !llvm.struct<(ptr, ptr, i64)> 
    %761 = llvm.extractvalue %720[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %762 = llvm.extractvalue %720[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %763 = llvm.extractvalue %720[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %764 = llvm.extractvalue %720[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %765 = llvm.extractvalue %720[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %766 = llvm.extractvalue %720[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %767 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %768 = llvm.insertvalue %719, %767[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %769 = llvm.insertvalue %719, %768[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %770 = llvm.mlir.constant(0 : index) : i64
    %771 = llvm.insertvalue %770, %769[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %772 = llvm.mlir.constant(1 : index) : i64
    %773 = llvm.insertvalue %772, %771[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %774 = llvm.mlir.constant(120 : index) : i64
    %775 = llvm.insertvalue %774, %773[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %776 = llvm.mlir.constant(120 : index) : i64
    %777 = llvm.insertvalue %776, %775[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %778 = llvm.mlir.constant(1 : index) : i64
    %779 = llvm.insertvalue %778, %777[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %780 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %781 = llvm.insertvalue %106, %780[0] : !llvm.struct<(ptr, ptr, i64)> 
    %782 = llvm.insertvalue %106, %781[1] : !llvm.struct<(ptr, ptr, i64)> 
    %783 = llvm.mlir.constant(0 : index) : i64
    %784 = llvm.insertvalue %783, %782[2] : !llvm.struct<(ptr, ptr, i64)> 
    %785 = llvm.extractvalue %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %786 = llvm.extractvalue %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %787 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %788 = llvm.insertvalue %106, %787[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %789 = llvm.insertvalue %106, %788[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %790 = llvm.mlir.constant(0 : index) : i64
    %791 = llvm.insertvalue %790, %789[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %792 = llvm.mlir.constant(1 : index) : i64
    %793 = llvm.insertvalue %792, %791[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %794 = llvm.mlir.constant(120 : index) : i64
    %795 = llvm.insertvalue %794, %793[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %796 = llvm.mlir.constant(120 : index) : i64
    %797 = llvm.insertvalue %796, %795[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %798 = llvm.mlir.constant(1 : index) : i64
    %799 = llvm.insertvalue %798, %797[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %800 = llvm.mlir.zero : !llvm.ptr
    %801 = llvm.getelementptr %800[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %802 = llvm.ptrtoint %801 : !llvm.ptr to i64
    %803 = llvm.call @sstcudaMalloc(%802) : (i64) -> !llvm.ptr
    %804 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %805 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%805, %11) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %50, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %806 = llvm.extractvalue %799[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %807 = llvm.extractvalue %799[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %808 = llvm.extractvalue %799[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %809 = llvm.extractvalue %799[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %810 = llvm.extractvalue %799[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %811 = llvm.extractvalue %799[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %812 = llvm.extractvalue %799[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%806, %807, %808, %809, %810, %811, %812, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %813 = llvm.extractvalue %779[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %814 = llvm.extractvalue %779[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %815 = llvm.extractvalue %779[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %816 = llvm.extractvalue %779[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %817 = llvm.extractvalue %779[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %818 = llvm.extractvalue %779[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %819 = llvm.extractvalue %779[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%813, %814, %815, %816, %817, %818, %819, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %820 = llvm.extractvalue %804[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %821 = llvm.extractvalue %804[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %822 = llvm.extractvalue %804[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %823 = llvm.extractvalue %804[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%803, %803, %54, %820, %821, %822, %823, %10) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%11) : (i64) -> ()
    %824 = llvm.mlir.addressof @__constant_1x120xf32 : !llvm.ptr
    %825 = llvm.getelementptr %824[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x array<120 x f32>>
    %826 = llvm.mlir.zero : !llvm.ptr
    %827 = llvm.getelementptr %826[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %828 = llvm.ptrtoint %827 : !llvm.ptr to i64
    %829 = llvm.call @sstcudaMalloc(%828) : (i64) -> !llvm.ptr
    %830 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %831 = llvm.mlir.zero : !llvm.ptr
    %832 = llvm.getelementptr %831[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %833 = llvm.ptrtoint %832 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%829, %825, %833, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %834 = llvm.mlir.zero : !llvm.ptr
    %835 = llvm.getelementptr %834[120] : (!llvm.ptr) -> !llvm.ptr, f32
    %836 = llvm.ptrtoint %835 : !llvm.ptr to i64
    %837 = llvm.call @sstcudaMalloc(%836) : (i64) -> !llvm.ptr
    %838 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %839 = llvm.insertvalue %837, %838[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %840 = llvm.insertvalue %837, %839[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %841 = llvm.insertvalue %54, %840[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %842 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%842, %9) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %50, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %843 = llvm.extractvalue %804[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %844 = llvm.extractvalue %804[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %845 = llvm.extractvalue %804[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %846 = llvm.extractvalue %804[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%803, %803, %54, %843, %844, %845, %846, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %847 = llvm.extractvalue %830[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %848 = llvm.extractvalue %830[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %849 = llvm.extractvalue %830[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %850 = llvm.extractvalue %830[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%829, %829, %54, %847, %848, %849, %850, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %851 = llvm.extractvalue %838[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %852 = llvm.extractvalue %838[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %853 = llvm.extractvalue %838[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %854 = llvm.extractvalue %838[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%837, %837, %54, %851, %852, %853, %854, %10) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%9) : (i64) -> ()
    %855 = llvm.mlir.zero : !llvm.ptr
    %856 = llvm.getelementptr %855[10080] : (!llvm.ptr) -> !llvm.ptr, f32
    %857 = llvm.ptrtoint %856 : !llvm.ptr to i64
    %858 = llvm.call @sstcudaMalloc(%857) : (i64) -> !llvm.ptr
    %859 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %860 = llvm.insertvalue %858, %859[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %861 = llvm.insertvalue %858, %860[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %862 = llvm.insertvalue %54, %861[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %863 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%863, %41) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %50, %49, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %864 = llvm.extractvalue %118[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %865 = llvm.extractvalue %118[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %866 = llvm.extractvalue %118[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %867 = llvm.extractvalue %118[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%117, %117, %54, %864, %865, %866, %867, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %868 = llvm.extractvalue %859[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %869 = llvm.extractvalue %859[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %870 = llvm.extractvalue %859[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %871 = llvm.extractvalue %859[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%858, %858, %54, %868, %869, %870, %871, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%41) : (i64) -> ()
    %872 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %873 = llvm.insertvalue %837, %872[0] : !llvm.struct<(ptr, ptr, i64)> 
    %874 = llvm.insertvalue %837, %873[1] : !llvm.struct<(ptr, ptr, i64)> 
    %875 = llvm.mlir.constant(0 : index) : i64
    %876 = llvm.insertvalue %875, %874[2] : !llvm.struct<(ptr, ptr, i64)> 
    %877 = llvm.extractvalue %838[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %878 = llvm.extractvalue %838[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %879 = llvm.extractvalue %838[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %880 = llvm.extractvalue %838[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %881 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %882 = llvm.insertvalue %837, %881[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %883 = llvm.insertvalue %837, %882[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %884 = llvm.mlir.constant(0 : index) : i64
    %885 = llvm.insertvalue %884, %883[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %886 = llvm.mlir.constant(1 : index) : i64
    %887 = llvm.insertvalue %886, %885[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %888 = llvm.mlir.constant(120 : index) : i64
    %889 = llvm.insertvalue %888, %887[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %890 = llvm.mlir.constant(1 : index) : i64
    %891 = llvm.insertvalue %890, %889[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %892 = llvm.mlir.constant(120 : index) : i64
    %893 = llvm.insertvalue %892, %891[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %894 = llvm.mlir.constant(120 : index) : i64
    %895 = llvm.insertvalue %894, %893[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %896 = llvm.mlir.constant(1 : index) : i64
    %897 = llvm.insertvalue %896, %895[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %898 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %899 = llvm.insertvalue %858, %898[0] : !llvm.struct<(ptr, ptr, i64)> 
    %900 = llvm.insertvalue %858, %899[1] : !llvm.struct<(ptr, ptr, i64)> 
    %901 = llvm.mlir.constant(0 : index) : i64
    %902 = llvm.insertvalue %901, %900[2] : !llvm.struct<(ptr, ptr, i64)> 
    %903 = llvm.extractvalue %859[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %904 = llvm.extractvalue %859[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %905 = llvm.extractvalue %859[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %906 = llvm.extractvalue %859[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %907 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %908 = llvm.insertvalue %858, %907[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %909 = llvm.insertvalue %858, %908[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %910 = llvm.mlir.constant(0 : index) : i64
    %911 = llvm.insertvalue %910, %909[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %912 = llvm.mlir.constant(1 : index) : i64
    %913 = llvm.insertvalue %912, %911[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %914 = llvm.mlir.constant(10080 : index) : i64
    %915 = llvm.insertvalue %914, %913[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %916 = llvm.mlir.constant(120 : index) : i64
    %917 = llvm.insertvalue %916, %915[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %918 = llvm.mlir.constant(84 : index) : i64
    %919 = llvm.insertvalue %918, %917[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %920 = llvm.mlir.constant(84 : index) : i64
    %921 = llvm.insertvalue %920, %919[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %922 = llvm.mlir.constant(1 : index) : i64
    %923 = llvm.insertvalue %922, %921[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %924 = llvm.mlir.zero : !llvm.ptr
    %925 = llvm.getelementptr %924[84] : (!llvm.ptr) -> !llvm.ptr, f32
    %926 = llvm.ptrtoint %925 : !llvm.ptr to i64
    %927 = llvm.call @sstcudaMalloc(%926) : (i64) -> !llvm.ptr
    %928 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %929 = llvm.insertvalue %927, %928[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %930 = llvm.insertvalue %927, %929[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %931 = llvm.insertvalue %54, %930[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %932 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%932, %8) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %49, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    llvm.call @sstSetupFloat32Argument(%37, %51) : (f32, i64) -> ()
    %933 = llvm.extractvalue %928[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %934 = llvm.extractvalue %928[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %935 = llvm.extractvalue %928[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %936 = llvm.extractvalue %928[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %937 = llvm.extractvalue %928[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %938 = llvm.extractvalue %928[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%927, %927, %54, %933, %934, %935, %936, %937, %938, %42) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%8) : (i64) -> ()
    %939 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%939, %7) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %49, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %940 = llvm.extractvalue %897[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %941 = llvm.extractvalue %897[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %942 = llvm.extractvalue %897[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %943 = llvm.extractvalue %897[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %944 = llvm.extractvalue %897[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %945 = llvm.extractvalue %897[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %946 = llvm.extractvalue %897[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %947 = llvm.extractvalue %897[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %948 = llvm.extractvalue %897[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%940, %941, %942, %943, %944, %945, %946, %947, %948, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %949 = llvm.extractvalue %923[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %950 = llvm.extractvalue %923[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %951 = llvm.extractvalue %923[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %952 = llvm.extractvalue %923[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %953 = llvm.extractvalue %923[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %954 = llvm.extractvalue %923[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %955 = llvm.extractvalue %923[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %956 = llvm.extractvalue %923[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %957 = llvm.extractvalue %923[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%949, %950, %951, %952, %953, %954, %955, %956, %957, %14) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %958 = llvm.extractvalue %928[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %959 = llvm.extractvalue %928[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %960 = llvm.extractvalue %928[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %961 = llvm.extractvalue %928[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %962 = llvm.extractvalue %928[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %963 = llvm.extractvalue %928[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%927, %927, %54, %958, %959, %960, %961, %962, %963, %13) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%50, %12) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%7) : (i64) -> ()
    %964 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %965 = llvm.insertvalue %927, %964[0] : !llvm.struct<(ptr, ptr, i64)> 
    %966 = llvm.insertvalue %927, %965[1] : !llvm.struct<(ptr, ptr, i64)> 
    %967 = llvm.mlir.constant(0 : index) : i64
    %968 = llvm.insertvalue %967, %966[2] : !llvm.struct<(ptr, ptr, i64)> 
    %969 = llvm.extractvalue %928[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %970 = llvm.extractvalue %928[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %971 = llvm.extractvalue %928[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %972 = llvm.extractvalue %928[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %973 = llvm.extractvalue %928[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %974 = llvm.extractvalue %928[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %975 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %976 = llvm.insertvalue %927, %975[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %977 = llvm.insertvalue %927, %976[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %978 = llvm.mlir.constant(0 : index) : i64
    %979 = llvm.insertvalue %978, %977[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %980 = llvm.mlir.constant(1 : index) : i64
    %981 = llvm.insertvalue %980, %979[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %982 = llvm.mlir.constant(84 : index) : i64
    %983 = llvm.insertvalue %982, %981[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %984 = llvm.mlir.constant(84 : index) : i64
    %985 = llvm.insertvalue %984, %983[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %986 = llvm.mlir.constant(1 : index) : i64
    %987 = llvm.insertvalue %986, %985[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %988 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %989 = llvm.insertvalue %125, %988[0] : !llvm.struct<(ptr, ptr, i64)> 
    %990 = llvm.insertvalue %125, %989[1] : !llvm.struct<(ptr, ptr, i64)> 
    %991 = llvm.mlir.constant(0 : index) : i64
    %992 = llvm.insertvalue %991, %990[2] : !llvm.struct<(ptr, ptr, i64)> 
    %993 = llvm.extractvalue %126[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %994 = llvm.extractvalue %126[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %995 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %996 = llvm.insertvalue %125, %995[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %997 = llvm.insertvalue %125, %996[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %998 = llvm.mlir.constant(0 : index) : i64
    %999 = llvm.insertvalue %998, %997[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1000 = llvm.mlir.constant(1 : index) : i64
    %1001 = llvm.insertvalue %1000, %999[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1002 = llvm.mlir.constant(84 : index) : i64
    %1003 = llvm.insertvalue %1002, %1001[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1004 = llvm.mlir.constant(84 : index) : i64
    %1005 = llvm.insertvalue %1004, %1003[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1006 = llvm.mlir.constant(1 : index) : i64
    %1007 = llvm.insertvalue %1006, %1005[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1008 = llvm.mlir.zero : !llvm.ptr
    %1009 = llvm.getelementptr %1008[84] : (!llvm.ptr) -> !llvm.ptr, f32
    %1010 = llvm.ptrtoint %1009 : !llvm.ptr to i64
    %1011 = llvm.call @sstcudaMalloc(%1010) : (i64) -> !llvm.ptr
    %1012 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1013 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1013, %6) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %49, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %1014 = llvm.extractvalue %1007[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1015 = llvm.extractvalue %1007[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1016 = llvm.extractvalue %1007[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1017 = llvm.extractvalue %1007[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1018 = llvm.extractvalue %1007[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1019 = llvm.extractvalue %1007[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1020 = llvm.extractvalue %1007[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1014, %1015, %1016, %1017, %1018, %1019, %1020, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %1021 = llvm.extractvalue %987[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1022 = llvm.extractvalue %987[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1023 = llvm.extractvalue %987[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1024 = llvm.extractvalue %987[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1025 = llvm.extractvalue %987[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1026 = llvm.extractvalue %987[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1027 = llvm.extractvalue %987[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1021, %1022, %1023, %1024, %1025, %1026, %1027, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %1028 = llvm.extractvalue %1012[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1029 = llvm.extractvalue %1012[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1030 = llvm.extractvalue %1012[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1031 = llvm.extractvalue %1012[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1011, %1011, %54, %1028, %1029, %1030, %1031, %10) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%6) : (i64) -> ()
    %1032 = llvm.mlir.addressof @__constant_1x84xf32 : !llvm.ptr
    %1033 = llvm.getelementptr %1032[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x array<84 x f32>>
    %1034 = llvm.mlir.zero : !llvm.ptr
    %1035 = llvm.getelementptr %1034[84] : (!llvm.ptr) -> !llvm.ptr, f32
    %1036 = llvm.ptrtoint %1035 : !llvm.ptr to i64
    %1037 = llvm.call @sstcudaMalloc(%1036) : (i64) -> !llvm.ptr
    %1038 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1039 = llvm.mlir.zero : !llvm.ptr
    %1040 = llvm.getelementptr %1039[84] : (!llvm.ptr) -> !llvm.ptr, f32
    %1041 = llvm.ptrtoint %1040 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%1037, %1033, %1041, %53) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %1042 = llvm.mlir.zero : !llvm.ptr
    %1043 = llvm.getelementptr %1042[84] : (!llvm.ptr) -> !llvm.ptr, f32
    %1044 = llvm.ptrtoint %1043 : !llvm.ptr to i64
    %1045 = llvm.call @sstcudaMalloc(%1044) : (i64) -> !llvm.ptr
    %1046 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1047 = llvm.insertvalue %1045, %1046[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1048 = llvm.insertvalue %1045, %1047[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1049 = llvm.insertvalue %54, %1048[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1050 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1050, %5) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %49, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %1051 = llvm.extractvalue %1012[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1052 = llvm.extractvalue %1012[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1053 = llvm.extractvalue %1012[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1054 = llvm.extractvalue %1012[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1011, %1011, %54, %1051, %1052, %1053, %1054, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %1055 = llvm.extractvalue %1038[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1056 = llvm.extractvalue %1038[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1057 = llvm.extractvalue %1038[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1058 = llvm.extractvalue %1038[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1037, %1037, %54, %1055, %1056, %1057, %1058, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %1059 = llvm.extractvalue %1046[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1060 = llvm.extractvalue %1046[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1061 = llvm.extractvalue %1046[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1062 = llvm.extractvalue %1046[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1045, %1045, %54, %1059, %1060, %1061, %1062, %10) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%5) : (i64) -> ()
    %1063 = llvm.mlir.zero : !llvm.ptr
    %1064 = llvm.getelementptr %1063[840] : (!llvm.ptr) -> !llvm.ptr, f32
    %1065 = llvm.ptrtoint %1064 : !llvm.ptr to i64
    %1066 = llvm.call @sstcudaMalloc(%1065) : (i64) -> !llvm.ptr
    %1067 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1068 = llvm.insertvalue %1066, %1067[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1069 = llvm.insertvalue %1066, %1068[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1070 = llvm.insertvalue %54, %1069[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1071 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1071, %4) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %49, %48, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %1072 = llvm.extractvalue %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1073 = llvm.extractvalue %137[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1074 = llvm.extractvalue %137[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1075 = llvm.extractvalue %137[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%136, %136, %54, %1072, %1073, %1074, %1075, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %1076 = llvm.extractvalue %1067[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1077 = llvm.extractvalue %1067[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1078 = llvm.extractvalue %1067[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1079 = llvm.extractvalue %1067[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1066, %1066, %54, %1076, %1077, %1078, %1079, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%4) : (i64) -> ()
    %1080 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %1081 = llvm.insertvalue %1045, %1080[0] : !llvm.struct<(ptr, ptr, i64)> 
    %1082 = llvm.insertvalue %1045, %1081[1] : !llvm.struct<(ptr, ptr, i64)> 
    %1083 = llvm.mlir.constant(0 : index) : i64
    %1084 = llvm.insertvalue %1083, %1082[2] : !llvm.struct<(ptr, ptr, i64)> 
    %1085 = llvm.extractvalue %1046[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1086 = llvm.extractvalue %1046[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1087 = llvm.extractvalue %1046[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1088 = llvm.extractvalue %1046[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1089 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %1090 = llvm.insertvalue %1045, %1089[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1091 = llvm.insertvalue %1045, %1090[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1092 = llvm.mlir.constant(0 : index) : i64
    %1093 = llvm.insertvalue %1092, %1091[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1094 = llvm.mlir.constant(1 : index) : i64
    %1095 = llvm.insertvalue %1094, %1093[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1096 = llvm.mlir.constant(84 : index) : i64
    %1097 = llvm.insertvalue %1096, %1095[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1098 = llvm.mlir.constant(1 : index) : i64
    %1099 = llvm.insertvalue %1098, %1097[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1100 = llvm.mlir.constant(84 : index) : i64
    %1101 = llvm.insertvalue %1100, %1099[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1102 = llvm.mlir.constant(84 : index) : i64
    %1103 = llvm.insertvalue %1102, %1101[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1104 = llvm.mlir.constant(1 : index) : i64
    %1105 = llvm.insertvalue %1104, %1103[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1106 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %1107 = llvm.insertvalue %1066, %1106[0] : !llvm.struct<(ptr, ptr, i64)> 
    %1108 = llvm.insertvalue %1066, %1107[1] : !llvm.struct<(ptr, ptr, i64)> 
    %1109 = llvm.mlir.constant(0 : index) : i64
    %1110 = llvm.insertvalue %1109, %1108[2] : !llvm.struct<(ptr, ptr, i64)> 
    %1111 = llvm.extractvalue %1067[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1112 = llvm.extractvalue %1067[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1113 = llvm.extractvalue %1067[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1114 = llvm.extractvalue %1067[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1115 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %1116 = llvm.insertvalue %1066, %1115[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1117 = llvm.insertvalue %1066, %1116[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1118 = llvm.mlir.constant(0 : index) : i64
    %1119 = llvm.insertvalue %1118, %1117[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1120 = llvm.mlir.constant(1 : index) : i64
    %1121 = llvm.insertvalue %1120, %1119[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1122 = llvm.mlir.constant(840 : index) : i64
    %1123 = llvm.insertvalue %1122, %1121[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1124 = llvm.mlir.constant(84 : index) : i64
    %1125 = llvm.insertvalue %1124, %1123[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1126 = llvm.mlir.constant(10 : index) : i64
    %1127 = llvm.insertvalue %1126, %1125[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1128 = llvm.mlir.constant(10 : index) : i64
    %1129 = llvm.insertvalue %1128, %1127[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1130 = llvm.mlir.constant(1 : index) : i64
    %1131 = llvm.insertvalue %1130, %1129[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1132 = llvm.mlir.zero : !llvm.ptr
    %1133 = llvm.getelementptr %1132[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %1134 = llvm.ptrtoint %1133 : !llvm.ptr to i64
    %1135 = llvm.call @sstcudaMalloc(%1134) : (i64) -> !llvm.ptr
    %1136 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %1137 = llvm.insertvalue %1135, %1136[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1138 = llvm.insertvalue %1135, %1137[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1139 = llvm.insertvalue %54, %1138[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1140 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1140, %3) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %48, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    llvm.call @sstSetupFloat32Argument(%37, %51) : (f32, i64) -> ()
    %1141 = llvm.extractvalue %1136[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1142 = llvm.extractvalue %1136[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1143 = llvm.extractvalue %1136[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1144 = llvm.extractvalue %1136[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1145 = llvm.extractvalue %1136[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1146 = llvm.extractvalue %1136[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%1135, %1135, %54, %1141, %1142, %1143, %1144, %1145, %1146, %42) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%3) : (i64) -> ()
    %1147 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1147, %2) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %48, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %1148 = llvm.extractvalue %1105[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1149 = llvm.extractvalue %1105[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1150 = llvm.extractvalue %1105[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1151 = llvm.extractvalue %1105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1152 = llvm.extractvalue %1105[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1153 = llvm.extractvalue %1105[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1154 = llvm.extractvalue %1105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1155 = llvm.extractvalue %1105[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1156 = llvm.extractvalue %1105[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%1148, %1149, %1150, %1151, %1152, %1153, %1154, %1155, %1156, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %1157 = llvm.extractvalue %1131[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1158 = llvm.extractvalue %1131[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1159 = llvm.extractvalue %1131[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1160 = llvm.extractvalue %1131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1161 = llvm.extractvalue %1131[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1162 = llvm.extractvalue %1131[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1163 = llvm.extractvalue %1131[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1164 = llvm.extractvalue %1131[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1165 = llvm.extractvalue %1131[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%1157, %1158, %1159, %1160, %1161, %1162, %1163, %1164, %1165, %14) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %1166 = llvm.extractvalue %1136[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1167 = llvm.extractvalue %1136[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1168 = llvm.extractvalue %1136[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1169 = llvm.extractvalue %1136[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1170 = llvm.extractvalue %1136[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1171 = llvm.extractvalue %1136[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%1135, %1135, %54, %1166, %1167, %1168, %1169, %1170, %1171, %13) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%49, %12) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%2) : (i64) -> ()
    %1172 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %1173 = llvm.insertvalue %1135, %1172[0] : !llvm.struct<(ptr, ptr, i64)> 
    %1174 = llvm.insertvalue %1135, %1173[1] : !llvm.struct<(ptr, ptr, i64)> 
    %1175 = llvm.mlir.constant(0 : index) : i64
    %1176 = llvm.insertvalue %1175, %1174[2] : !llvm.struct<(ptr, ptr, i64)> 
    %1177 = llvm.extractvalue %1136[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1178 = llvm.extractvalue %1136[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1179 = llvm.extractvalue %1136[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1180 = llvm.extractvalue %1136[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1181 = llvm.extractvalue %1136[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1182 = llvm.extractvalue %1136[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %1183 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1184 = llvm.insertvalue %1135, %1183[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1185 = llvm.insertvalue %1135, %1184[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1186 = llvm.mlir.constant(0 : index) : i64
    %1187 = llvm.insertvalue %1186, %1185[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1188 = llvm.mlir.constant(1 : index) : i64
    %1189 = llvm.insertvalue %1188, %1187[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1190 = llvm.mlir.constant(10 : index) : i64
    %1191 = llvm.insertvalue %1190, %1189[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1192 = llvm.mlir.constant(10 : index) : i64
    %1193 = llvm.insertvalue %1192, %1191[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1194 = llvm.mlir.constant(1 : index) : i64
    %1195 = llvm.insertvalue %1194, %1193[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1196 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %1197 = llvm.insertvalue %144, %1196[0] : !llvm.struct<(ptr, ptr, i64)> 
    %1198 = llvm.insertvalue %144, %1197[1] : !llvm.struct<(ptr, ptr, i64)> 
    %1199 = llvm.mlir.constant(0 : index) : i64
    %1200 = llvm.insertvalue %1199, %1198[2] : !llvm.struct<(ptr, ptr, i64)> 
    %1201 = llvm.extractvalue %145[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1202 = llvm.extractvalue %145[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1203 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1204 = llvm.insertvalue %144, %1203[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1205 = llvm.insertvalue %144, %1204[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1206 = llvm.mlir.constant(0 : index) : i64
    %1207 = llvm.insertvalue %1206, %1205[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1208 = llvm.mlir.constant(1 : index) : i64
    %1209 = llvm.insertvalue %1208, %1207[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1210 = llvm.mlir.constant(10 : index) : i64
    %1211 = llvm.insertvalue %1210, %1209[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1212 = llvm.mlir.constant(10 : index) : i64
    %1213 = llvm.insertvalue %1212, %1211[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1214 = llvm.mlir.constant(1 : index) : i64
    %1215 = llvm.insertvalue %1214, %1213[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1216 = llvm.mlir.zero : !llvm.ptr
    %1217 = llvm.getelementptr %1216[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %1218 = llvm.ptrtoint %1217 : !llvm.ptr to i64
    %1219 = llvm.call @sstcudaMalloc(%1218) : (i64) -> !llvm.ptr
    %1220 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1221 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1221, %1) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%40, %40, %40, %48, %40, %40, %54) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%40, %54) : (i64, i64) -> ()
    llvm.call @sstSetupIntArgument(%54, %45) : (i64, i64) -> ()
    %1222 = llvm.extractvalue %1215[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1223 = llvm.extractvalue %1215[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1224 = llvm.extractvalue %1215[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1225 = llvm.extractvalue %1215[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1226 = llvm.extractvalue %1215[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1227 = llvm.extractvalue %1215[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1228 = llvm.extractvalue %1215[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1222, %1223, %1224, %1225, %1226, %1227, %1228, %51) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %1229 = llvm.extractvalue %1195[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1230 = llvm.extractvalue %1195[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1231 = llvm.extractvalue %1195[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1232 = llvm.extractvalue %1195[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1233 = llvm.extractvalue %1195[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1234 = llvm.extractvalue %1195[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1235 = llvm.extractvalue %1195[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1229, %1230, %1231, %1232, %1233, %1234, %1235, %16) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %1236 = llvm.extractvalue %1220[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1237 = llvm.extractvalue %1220[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1238 = llvm.extractvalue %1220[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1239 = llvm.extractvalue %1220[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%1219, %1219, %54, %1236, %1237, %1238, %1239, %10) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%1) : (i64) -> ()
    %1240 = llvm.mlir.zero : !llvm.ptr
    %1241 = llvm.getelementptr %1240[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %1242 = llvm.ptrtoint %1241 : !llvm.ptr to i64
    %1243 = llvm.call @malloc(%1242) : (i64) -> !llvm.ptr
    %1244 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1245 = llvm.insertvalue %1243, %1244[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1246 = llvm.insertvalue %1243, %1245[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1247 = llvm.insertvalue %54, %1246[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1248 = llvm.insertvalue %40, %1247[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1249 = llvm.insertvalue %48, %1248[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1250 = llvm.insertvalue %48, %1249[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1251 = llvm.insertvalue %40, %1250[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1252 = llvm.mlir.zero : !llvm.ptr
    %1253 = llvm.getelementptr %1252[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %1254 = llvm.ptrtoint %1253 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%1243, %1219, %1254, %0) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    llvm.return %1251 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_subgraph0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: !llvm.ptr) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.load %arg3 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.load %arg4 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %31 = llvm.extractvalue %30[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %30[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %30[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %30[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %30[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %30[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.extractvalue %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.extractvalue %30[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %30[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %30[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.load %arg5 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.extractvalue %42[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.extractvalue %42[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.extractvalue %42[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.extractvalue %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.load %arg6 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.extractvalue %48[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.extractvalue %48[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.extractvalue %48[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.load %arg7 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.extractvalue %56[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.extractvalue %56[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.extractvalue %56[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %56[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.extractvalue %56[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.load %arg8 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %63 = llvm.extractvalue %62[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.extractvalue %62[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.extractvalue %62[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.extractvalue %62[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.extractvalue %62[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.extractvalue %62[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.extractvalue %62[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.load %arg9 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.extractvalue %70[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.extractvalue %70[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.extractvalue %70[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.extractvalue %70[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.load %arg10 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %77 = llvm.extractvalue %76[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.extractvalue %76[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.extractvalue %76[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.extractvalue %76[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.extractvalue %76[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.extractvalue %76[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.load %arg11 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %85 = llvm.extractvalue %84[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.extractvalue %84[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.extractvalue %84[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.extractvalue %84[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.extractvalue %84[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.call @subgraph0(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %43, %44, %45, %46, %47, %49, %50, %51, %52, %53, %54, %55, %57, %58, %59, %60, %61, %63, %64, %65, %66, %67, %68, %69, %71, %72, %73, %74, %75, %77, %78, %79, %80, %81, %82, %83, %85, %86, %87, %88, %89) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %90, %arg0 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.return
  }
  llvm.func @sstcudaMalloc(i64) -> !llvm.ptr
  llvm.func @sstcudaMemcpy(!llvm.ptr, !llvm.ptr, i64, i1)
  llvm.func @__sstcudaRegisterFatBinary() -> i64
  llvm.func @__sstcudaRegisterFunction(i64, i64)
  llvm.func @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupIntArgument(i64, i64)
  llvm.func @sstSetupMemrefRankFourArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)
  llvm.func @sstcudaLaunch(i64)
  llvm.func @sstSetupFloat32Argument(f32, i64)
  llvm.func @sstSetupMemrefRankOneArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64)
  llvm.func @sstSetupMemrefRankTwoArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupMemrefRankThreeArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64)
}

