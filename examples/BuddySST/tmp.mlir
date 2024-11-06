module attributes {gpu.container_module} {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(32 : index) : i64
    %1 = builtin.unrealized_conversion_cast %0 : i64 to index
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(128 : index) : i64
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = llvm.getelementptr %6[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %8 = llvm.ptrtoint %7 : !llvm.ptr to i64
    %9 = llvm.call @malloc(%8) : (i64) -> !llvm.ptr
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %2, %14[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %3, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %3, %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %4, %17[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.mlir.constant(32 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(128 : index) : i64
    %24 = llvm.mlir.constant(128 : index) : i64
    %25 = llvm.mlir.zero : !llvm.ptr
    %26 = llvm.getelementptr %25[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %27 = llvm.ptrtoint %26 : !llvm.ptr to i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr
    %29 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.insertvalue %19, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.insertvalue %20, %34[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %21, %35[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %23, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %21, %37[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %22, %38[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.call @mgpuStreamCreate() : () -> !llvm.ptr
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mlir.constant(32 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(128 : index) : i64
    %45 = llvm.mlir.zero : !llvm.ptr
    %46 = llvm.getelementptr %45[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %47 = llvm.ptrtoint %46 : !llvm.ptr to i64
    %48 = llvm.mlir.zero : !llvm.ptr
    %49 = llvm.mlir.constant(0 : i8) : i8
    %50 = llvm.call @mgpuMemAlloc(%47, %40, %49) : (i64, !llvm.ptr, i8) -> !llvm.ptr
    %51 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %41, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %42, %56[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %42, %57[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %43, %58[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = builtin.unrealized_conversion_cast %59 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<4x32xi32>
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(4 : index) : i64
    %63 = llvm.mlir.constant(32 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(128 : index) : i64
    %66 = llvm.mlir.constant(128 : index) : i64
    %67 = llvm.mlir.zero : !llvm.ptr
    %68 = llvm.getelementptr %67[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %69 = llvm.ptrtoint %68 : !llvm.ptr to i64
    %70 = llvm.mlir.zero : !llvm.ptr
    %71 = llvm.mlir.constant(0 : i8) : i8
    %72 = llvm.call @mgpuMemAlloc(%69, %40, %71) : (i64, !llvm.ptr, i8) -> !llvm.ptr
    %73 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.insertvalue %61, %77[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.insertvalue %62, %78[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.insertvalue %63, %79[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.insertvalue %65, %80[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.insertvalue %63, %81[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.insertvalue %64, %82[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = builtin.unrealized_conversion_cast %83 : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> to memref<1x4x32xf32>
    %85 = llvm.mlir.constant(1 : i32) : i32
    %86 = llvm.mlir.constant(2 : i32) : i32
    %87 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %88 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = builtin.unrealized_conversion_cast %89 : i64 to index
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = builtin.unrealized_conversion_cast %91 : i64 to index
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.constant(3 : index) : i64
    %95 = llvm.mlir.constant(4 : index) : i64
    %96 = builtin.unrealized_conversion_cast %95 : i64 to index
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = builtin.unrealized_conversion_cast %97 : i64 to index
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = builtin.unrealized_conversion_cast %99 : i64 to index
    llvm.call @mgpuStreamSynchronize(%40) : (!llvm.ptr) -> ()
    llvm.call @mgpuStreamDestroy(%40) : (!llvm.ptr) -> ()
    %101 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%101, %99) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%0, %91, %91, %95, %91, %91, %97) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = builtin.unrealized_conversion_cast %102 : i64 to index
    llvm.call @sstSetupInt32Argument(%85, %102) : (i32, i64) -> ()
    %104 = llvm.mlir.constant(8 : index) : i64
    %105 = builtin.unrealized_conversion_cast %104 : i64 to index
    %106 = llvm.extractvalue %59[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.extractvalue %59[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.extractvalue %59[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.extractvalue %59[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%106, %107, %108, %109, %110, %111, %112, %104) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    %113 = llvm.mlir.constant(64 : index) : i64
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    llvm.call @sstSetupFloat32Argument(%87, %113) : (f32, i64) -> ()
    %115 = llvm.mlir.constant(72 : index) : i64
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = llvm.extractvalue %83[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.extractvalue %83[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.extractvalue %83[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %121 = llvm.extractvalue %83[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.extractvalue %83[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.extractvalue %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.extractvalue %83[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.extractvalue %83[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @sstSetupMemrefRankThreeArgument(%117, %118, %119, %120, %121, %122, %123, %124, %125, %115) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %126 = llvm.mlir.constant(144 : index) : i64
    %127 = builtin.unrealized_conversion_cast %126 : i64 to index
    llvm.call @sstSetupIntArgument(%89, %126) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%99) : (i64) -> ()
    %128 = llvm.call @mgpuStreamCreate() : () -> !llvm.ptr
    %129 = llvm.mlir.constant(128 : index) : i64
    %130 = llvm.mlir.zero : !llvm.ptr
    %131 = llvm.getelementptr %130[%129] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %132 = llvm.ptrtoint %131 : !llvm.ptr to i64
    %133 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @mgpuMemcpy(%134, %133, %132, %128) : (!llvm.ptr, !llvm.ptr, i64, !llvm.ptr) -> ()
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.alloca %135 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %18, %136 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %139 = llvm.insertvalue %137, %138[0] : !llvm.struct<(i64, ptr)> 
    %140 = llvm.insertvalue %136, %139[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuStreamSynchronize(%128) : (!llvm.ptr) -> ()
    llvm.call @mgpuStreamDestroy(%128) : (!llvm.ptr) -> ()
    %141 = llvm.extractvalue %140[0] : !llvm.struct<(i64, ptr)> 
    %142 = llvm.extractvalue %140[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @printMemrefI32(%141, %142) : (i64, !llvm.ptr) -> ()
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = builtin.unrealized_conversion_cast %143 : i64 to index
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = builtin.unrealized_conversion_cast %145 : i64 to index
    %147 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%147, %145) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%0, %91, %91, %91, %91, %91, %143) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = builtin.unrealized_conversion_cast %148 : i64 to index
    llvm.call @sstSetupInt32Argument(%86, %148) : (i32, i64) -> ()
    %150 = llvm.mlir.constant(8 : index) : i64
    %151 = builtin.unrealized_conversion_cast %150 : i64 to index
    %152 = llvm.extractvalue %59[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.extractvalue %59[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.extractvalue %59[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.extractvalue %59[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%152, %153, %154, %155, %156, %157, %158, %150) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%145) : (i64) -> ()
    %159 = llvm.call @mgpuStreamCreate() : () -> !llvm.ptr
    %160 = llvm.mlir.constant(128 : index) : i64
    %161 = llvm.mlir.zero : !llvm.ptr
    %162 = llvm.getelementptr %161[%160] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %163 = llvm.ptrtoint %162 : !llvm.ptr to i64
    %164 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @mgpuMemcpy(%165, %164, %163, %159) : (!llvm.ptr, !llvm.ptr, i64, !llvm.ptr) -> ()
    %166 = llvm.mlir.constant(128 : index) : i64
    %167 = llvm.mlir.zero : !llvm.ptr
    %168 = llvm.getelementptr %167[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %169 = llvm.ptrtoint %168 : !llvm.ptr to i64
    %170 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @mgpuMemcpy(%171, %170, %169, %159) : (!llvm.ptr, !llvm.ptr, i64, !llvm.ptr) -> ()
    llvm.call @mgpuStreamSynchronize(%159) : (!llvm.ptr) -> ()
    llvm.call @mgpuStreamDestroy(%159) : (!llvm.ptr) -> ()
    %172 = llvm.extractvalue %140[0] : !llvm.struct<(i64, ptr)> 
    %173 = llvm.extractvalue %140[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @printMemrefI32(%172, %173) : (i64, !llvm.ptr) -> ()
    %174 = llvm.call @mgpuStreamCreate() : () -> !llvm.ptr
    %175 = llvm.extractvalue %59[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @mgpuMemFree(%175, %174) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @mgpuStreamSynchronize(%174) : (!llvm.ptr) -> ()
    llvm.call @mgpuStreamDestroy(%174) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @printMemrefI32(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mgpuStreamCreate() -> !llvm.ptr
  llvm.func @mgpuMemAlloc(i64, !llvm.ptr, i8) -> !llvm.ptr
  llvm.func @mgpuStreamSynchronize(!llvm.ptr)
  llvm.func @mgpuStreamDestroy(!llvm.ptr)
  llvm.func @mgpuMemcpy(!llvm.ptr, !llvm.ptr, i64, !llvm.ptr)
  llvm.func @mgpuMemFree(!llvm.ptr, !llvm.ptr)
  llvm.func @__sstcudaRegisterFatBinary() -> i64
  llvm.func @__sstcudaRegisterFunction(i64, i64)
  llvm.func @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupInt32Argument(i32, i64)
  llvm.func @sstSetupMemrefRankTwoArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupFloat32Argument(f32, i64)
  llvm.func @sstSetupMemrefRankThreeArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupIntArgument(i64, i64)
  llvm.func @sstcudaLaunch(i64)
}

