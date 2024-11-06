module {
  llvm.func @forward(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<4x32xi32>
    %9 = llvm.mlir.constant(32 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = llvm.mlir.constant(128 : i32) : i32
    %12 = llvm.mlir.zero : !llvm.ptr
    %13 = llvm.getelementptr %12[%11] : (!llvm.ptr, i32) -> !llvm.ptr, i32
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.call @sstcudaMalloc(%14) : (i64) -> !llvm.ptr
    %16 = llvm.bitcast %15 : !llvm.ptr to !llvm.ptr
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(1 : i32) : i32
    %23 = llvm.mlir.constant(2 : i32) : i32
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = builtin.unrealized_conversion_cast %25 : i64 to index
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(3 : index) : i64
    %29 = llvm.mlir.constant(4 : index) : i64
    %30 = builtin.unrealized_conversion_cast %29 : i64 to index
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = builtin.unrealized_conversion_cast %31 : i64 to index
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = builtin.unrealized_conversion_cast %33 : i64 to index
    %35 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%35, %33) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%9, %25, %25, %29, %25, %25, %31) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = builtin.unrealized_conversion_cast %36 : i64 to index
    llvm.call @sstSetupInt32Argument(%22, %36) : (i32, i64) -> ()
    %38 = llvm.mlir.constant(8 : index) : i64
    %39 = builtin.unrealized_conversion_cast %38 : i64 to index
    %40 = llvm.extractvalue %21[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.extractvalue %21[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.extractvalue %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.extractvalue %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.extractvalue %21[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.extractvalue %21[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%40, %41, %42, %43, %44, %45, %46, %38) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%33) : (i64) -> ()
    %47 = llvm.mlir.constant(false) : i1
    %48 = llvm.mlir.constant(true) : i1
    %49 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.bitcast %49 : !llvm.ptr to !llvm.ptr
    %51 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.bitcast %51 : !llvm.ptr to !llvm.ptr
    %53 = llvm.mlir.constant(128 : index) : i64
    %54 = llvm.mlir.zero : !llvm.ptr
    %55 = llvm.getelementptr %54[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%52, %50, %56, %48) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.alloca %57 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %7, %58 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(i64, ptr)> 
    %62 = llvm.insertvalue %58, %61[1] : !llvm.struct<(i64, ptr)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = builtin.unrealized_conversion_cast %63 : i64 to index
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = builtin.unrealized_conversion_cast %65 : i64 to index
    %67 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%67, %65) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%9, %25, %25, %29, %25, %25, %63) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = builtin.unrealized_conversion_cast %68 : i64 to index
    llvm.call @sstSetupInt32Argument(%23, %68) : (i32, i64) -> ()
    %70 = llvm.mlir.constant(8 : index) : i64
    %71 = builtin.unrealized_conversion_cast %70 : i64 to index
    %72 = llvm.extractvalue %21[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.extractvalue %21[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.extractvalue %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.extractvalue %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.extractvalue %21[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.extractvalue %21[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @sstSetupMemrefRankTwoArgument(%72, %73, %74, %75, %76, %77, %78, %70) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%65) : (i64) -> ()
    %79 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.bitcast %79 : !llvm.ptr to !llvm.ptr
    %81 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr to !llvm.ptr
    %83 = llvm.mlir.constant(128 : index) : i64
    %84 = llvm.mlir.zero : !llvm.ptr
    %85 = llvm.getelementptr %84[%83] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %86 = llvm.ptrtoint %85 : !llvm.ptr to i64
    llvm.call @sstcudaMemcpy(%82, %80, %86, %48) : (!llvm.ptr, !llvm.ptr, i64, i1) -> ()
    llvm.return
  }
  llvm.func @sstcudaMalloc(i64) -> !llvm.ptr
  llvm.func @__sstcudaRegisterFatBinary() -> i64
  llvm.func @__sstcudaRegisterFunction(i64, i64)
  llvm.func @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupInt32Argument(i32, i64)
  llvm.func @sstSetupMemrefRankTwoArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64)
  llvm.func @sstcudaLaunch(i64)
  llvm.func @sstcudaMemcpy(!llvm.ptr, !llvm.ptr, i64, i1)
}

