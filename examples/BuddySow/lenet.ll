; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @lenet(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, ptr %1, 1
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, i64 %2, 2
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, i64 %3, 3, 0
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, i64 %4, 4, 0
  %29 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %5, 0
  %30 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %29, ptr %6, 1
  %31 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %30, i64 %7, 2
  %32 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %31, i64 %8, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, i64 %12, 4, 0
  %34 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %33, i64 %9, 3, 1
  %35 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, i64 %13, 4, 1
  %36 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %35, i64 %10, 3, 2
  %37 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %36, i64 %14, 4, 2
  %38 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %37, i64 %11, 3, 3
  %39 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %38, i64 %15, 4, 3
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, ptr %17, 1
  %42 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, i64 %18, 2
  %43 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %42, i64 %19, 3, 0
  %44 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %43, i64 %21, 4, 0
  %45 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %44, i64 %20, 3, 1
  %46 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, i64 %22, 4, 1
  call void @group_schduler(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22)
  ret void
}

define void @_mlir_ciface_lenet(ptr %0, ptr %1, ptr %2) {
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %0, align 8
  %5 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 0
  %6 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %7 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 2
  %8 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 3, 0
  %9 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 4, 0
  %10 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %1, align 8
  %11 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 0
  %12 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 1
  %13 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 2
  %14 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 3, 0
  %15 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 3, 1
  %16 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 3, 2
  %17 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 3, 3
  %18 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 4, 0
  %19 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 4, 1
  %20 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 4, 2
  %21 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %10, 4, 3
  %22 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %2, align 8
  %23 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 0
  %24 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 1
  %25 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 2
  %26 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 3, 0
  %27 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 3, 1
  %28 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 4, 0
  %29 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 4, 1
  call void @lenet(ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29)
  ret void
}

define private void @group_schduler(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, ptr %1, 1
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, i64 %2, 2
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, i64 %3, 3, 0
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, i64 %4, 4, 0
  %29 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, ptr %29, align 8
  %30 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %5, 0
  %31 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %30, ptr %6, 1
  %32 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %31, i64 %7, 2
  %33 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, i64 %8, 3, 0
  %34 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %33, i64 %12, 4, 0
  %35 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, i64 %9, 3, 1
  %36 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %35, i64 %13, 4, 1
  %37 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %36, i64 %10, 3, 2
  %38 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %37, i64 %14, 4, 2
  %39 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %38, i64 %11, 3, 3
  %40 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, i64 %15, 4, 3
  %41 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %40, ptr %41, align 8
  %42 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %43 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %42, ptr %17, 1
  %44 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %43, i64 %18, 2
  %45 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %44, i64 %19, 3, 0
  %46 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, i64 %21, 4, 0
  %47 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, i64 %20, 3, 1
  %48 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %47, i64 %22, 4, 1
  %49 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, ptr %49, align 8
  call void @_mlir_ciface_group_schduler(ptr %29, ptr %41, ptr %49)
  ret void
}

declare void @_mlir_ciface_group_schduler(ptr, ptr, ptr)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
