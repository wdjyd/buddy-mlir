module attributes {gpu.container_module} {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main(%arg0: f32) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(128 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(128 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = llvm.getelementptr %6[128] : (!llvm.ptr) -> !llvm.ptr, f32
    %8 = llvm.ptrtoint %7 : !llvm.ptr to i64
    %9 = llvm.call @malloc(%8) : (i64) -> !llvm.ptr
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %4, %14[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %5, %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb2
    %18 = llvm.icmp "slt" %17, %0 : i64
    llvm.cond_br %18, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %19 = llvm.getelementptr %9[%17] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %arg0, %19 : f32, !llvm.ptr
    %20 = llvm.add %17, %2  : i64
    llvm.br ^bb1(%20 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%21: i64):  // 2 preds: ^bb3, ^bb5
    %22 = llvm.icmp "slt" %21, %0 : i64
    llvm.cond_br %22, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %23 = llvm.extractvalue %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.getelementptr %23[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %25 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
    %26 = llvm.fadd %25, %25  : vector<4xf32>
    %27 = llvm.extractvalue %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.getelementptr %27[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %26, %28 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
    %29 = llvm.add %21, %1  : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.alloca %30 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %16, %31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(i64, ptr)> 
    %35 = llvm.insertvalue %31, %34[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @printMemrefF32(%32, %31) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_main(%arg0: f32) attributes {llvm.emit_c_interface} {
    llvm.call @main(%arg0) : (f32) -> ()
    llvm.return
  }
  llvm.func private @printMemrefF32(%arg0: i64, %arg1: !llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(i64, ptr)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(i64, ptr)> 
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.alloca %3 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %2, %4 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    llvm.call @_mlir_ciface_printMemrefF32(%4) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_printMemrefF32(!llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"}
}

