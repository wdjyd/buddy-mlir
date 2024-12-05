; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @main(float %0) {
  %2 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 128) to i64))
  %3 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %4 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, ptr %2, 1
  %5 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, i64 0, 2
  %6 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, i64 128, 3, 0
  %7 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, i64 1, 4, 0
  br label %8

8:                                                ; preds = %11, %1
  %9 = phi i64 [ %13, %11 ], [ 0, %1 ]
  %10 = icmp slt i64 %9, 128
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr float, ptr %2, i64 %9
  store float %0, ptr %12, align 4
  %13 = add i64 %9, 1
  br label %8

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %18, %14
  %16 = phi i64 [ %25, %18 ], [ 0, %14 ]
  %17 = icmp slt i64 %16, 128
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, 1
  %20 = getelementptr float, ptr %19, i64 %16
  %21 = load <16 x float>, ptr %20, align 4
  %22 = fadd <16 x float> %21, %21
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, 1
  %24 = getelementptr float, ptr %23, i64 %16
  store <16 x float> %22, ptr %24, align 4
  %25 = add i64 %16, 16
  br label %15

26:                                               ; preds = %15
  %27 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, ptr %27, align 8
  %28 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %27, 1
  call void @printMemrefF32(i64 1, ptr %27)
  ret void
}

define void @_mlir_ciface_main(float %0) {
  call void @main(float %0)
  ret void
}

define private void @printMemrefF32(i64 %0, ptr %1) {
  %3 = insertvalue { i64, ptr } undef, i64 %0, 0
  %4 = insertvalue { i64, ptr } %3, ptr %1, 1
  %5 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %4, ptr %5, align 8
  call void @_mlir_ciface_printMemrefF32(ptr %5)
  ret void
}

declare void @_mlir_ciface_printMemrefF32(ptr)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
