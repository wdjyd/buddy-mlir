; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define private { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26) {
  %28 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  %29 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %0, 0
  %30 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %29, ptr %1, 1
  %31 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %30, i64 %2, 2
  %32 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %31, i64 %3, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, i64 %7, 4, 0
  %34 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %33, i64 %4, 3, 1
  %35 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, i64 %8, 4, 1
  %36 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %35, i64 %5, 3, 2
  %37 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %36, i64 %9, 4, 2
  %38 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %37, i64 %6, 3, 3
  %39 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %38, i64 %10, 4, 3
  %40 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, ptr %40, align 8
  %41 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %11, 0
  %42 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %41, ptr %12, 1
  %43 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %42, i64 %13, 2
  %44 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, i64 %14, 3, 0
  %45 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %44, i64 %18, 4, 0
  %46 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %45, i64 %15, 3, 1
  %47 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %46, i64 %19, 4, 1
  %48 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %47, i64 %16, 3, 2
  %49 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %48, i64 %20, 4, 2
  %50 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %49, i64 %17, 3, 3
  %51 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %50, i64 %21, 4, 3
  %52 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %51, ptr %52, align 8
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %22, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %23, 1
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %24, 2
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 %25, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %26, 4, 0
  %58 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, ptr %58, align 8
  call void @_mlir_ciface_subgraph0(ptr %28, ptr %40, ptr %52, ptr %58)
  %59 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %28, align 8
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %59
}

declare void @_mlir_ciface_subgraph0(ptr, ptr, ptr, ptr)

define private { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph1(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26) {
  %28 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  %29 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %0, 0
  %30 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %29, ptr %1, 1
  %31 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %30, i64 %2, 2
  %32 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %31, i64 %3, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, i64 %7, 4, 0
  %34 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %33, i64 %4, 3, 1
  %35 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, i64 %8, 4, 1
  %36 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %35, i64 %5, 3, 2
  %37 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %36, i64 %9, 4, 2
  %38 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %37, i64 %6, 3, 3
  %39 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %38, i64 %10, 4, 3
  %40 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, ptr %40, align 8
  %41 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %11, 0
  %42 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %41, ptr %12, 1
  %43 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %42, i64 %13, 2
  %44 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, i64 %14, 3, 0
  %45 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %44, i64 %18, 4, 0
  %46 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %45, i64 %15, 3, 1
  %47 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %46, i64 %19, 4, 1
  %48 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %47, i64 %16, 3, 2
  %49 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %48, i64 %20, 4, 2
  %50 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %49, i64 %17, 3, 3
  %51 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %50, i64 %21, 4, 3
  %52 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %51, ptr %52, align 8
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %22, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %23, 1
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %24, 2
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 %25, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %26, 4, 0
  %58 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, ptr %58, align 8
  call void @_mlir_ciface_subgraph1(ptr %28, ptr %40, ptr %52, ptr %58)
  %59 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %28, align 8
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %59
}

declare void @_mlir_ciface_subgraph1(ptr, ptr, ptr, ptr)

define private { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph2(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18) {
  %20 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, ptr %1, 1
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 %2, 2
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 %3, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 %4, 4, 0
  %26 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, ptr %26, align 8
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %5, 0
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, ptr %6, 1
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 %7, 2
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, i64 %8, 3, 0
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, i64 %10, 4, 0
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, i64 %9, 3, 1
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %11, 4, 1
  %34 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, ptr %34, align 8
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %12, 0
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, ptr %13, 1
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 %14, 2
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 %15, 3, 0
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %38, i64 %17, 4, 0
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, i64 %16, 3, 1
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, i64 %18, 4, 1
  %42 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, ptr %42, align 8
  call void @_mlir_ciface_subgraph2(ptr %20, ptr %26, ptr %34, ptr %42)
  %43 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %20, align 8
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %43
}

declare void @_mlir_ciface_subgraph2(ptr, ptr, ptr, ptr)

define private { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph3(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) {
  %12 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %13 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %0, 0
  %14 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, ptr %1, 1
  %15 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %14, i64 %2, 2
  %16 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %15, i64 %3, 3, 0
  %17 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %16, i64 %7, 4, 0
  %18 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, i64 %4, 3, 1
  %19 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %18, i64 %8, 4, 1
  %20 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %19, i64 %5, 3, 2
  %21 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %20, i64 %9, 4, 2
  %22 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %21, i64 %6, 3, 3
  %23 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %22, i64 %10, 4, 3
  %24 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %23, ptr %24, align 8
  call void @_mlir_ciface_subgraph3(ptr %12, ptr %24)
  %25 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %12, align 8
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %25
}

declare void @_mlir_ciface_subgraph3(ptr, ptr)

define private { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph4(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18) {
  %20 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, ptr %1, 1
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 %2, 2
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 %3, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 %5, 4, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %4, 3, 1
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %6, 4, 1
  %28 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, ptr %28, align 8
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %7, 0
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, ptr %8, 1
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, i64 %9, 2
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 %10, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 %11, 4, 0
  %34 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, ptr %34, align 8
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %12, 0
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, ptr %13, 1
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 %14, 2
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 %15, 3, 0
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %38, i64 %17, 4, 0
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, i64 %16, 3, 1
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, i64 %18, 4, 1
  %42 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, ptr %42, align 8
  call void @_mlir_ciface_subgraph4(ptr %20, ptr %28, ptr %34, ptr %42)
  %43 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %20, align 8
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %43
}

declare void @_mlir_ciface_subgraph4(ptr, ptr, ptr, ptr)

define private { { ptr, ptr, i64, [2 x i64], [2 x i64] }, { ptr, ptr, i64, [2 x i64], [2 x i64] } } @subgraph5(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13) {
  %15 = alloca { { ptr, ptr, i64, [2 x i64], [2 x i64] }, { ptr, ptr, i64, [2 x i64], [2 x i64] } }, i64 1, align 8
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, ptr %1, 1
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 %2, 2
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 %3, 3, 0
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 %5, 4, 0
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, i64 %4, 3, 1
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 %6, 4, 1
  %23 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, ptr %23, align 8
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %7, 0
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, ptr %8, 1
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %9, 2
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %10, 3, 0
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %12, 4, 0
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 %11, 3, 1
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, i64 %13, 4, 1
  %31 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, ptr %31, align 8
  call void @_mlir_ciface_subgraph5(ptr %15, ptr %23, ptr %31)
  %32 = load { { ptr, ptr, i64, [2 x i64], [2 x i64] }, { ptr, ptr, i64, [2 x i64], [2 x i64] } }, ptr %15, align 8
  ret { { ptr, ptr, i64, [2 x i64], [2 x i64] }, { ptr, ptr, i64, [2 x i64], [2 x i64] } } %32
}

declare void @_mlir_ciface_subgraph5(ptr, ptr, ptr)

define private { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph6(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18) {
  %20 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, ptr %1, 1
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 %2, 2
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 %3, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 %5, 4, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %4, 3, 1
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %6, 4, 1
  %28 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, ptr %28, align 8
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %7, 0
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, ptr %8, 1
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, i64 %9, 2
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, i64 %10, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %12, 4, 0
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 %11, 3, 1
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %13, 4, 1
  %36 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, ptr %36, align 8
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %14, 0
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, ptr %15, 1
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, i64 %16, 2
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %17, 3, 0
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 %18, 4, 0
  %42 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, ptr %42, align 8
  call void @_mlir_ciface_subgraph6(ptr %20, ptr %28, ptr %36, ptr %42)
  %43 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %20, align 8
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %43
}

declare void @_mlir_ciface_subgraph6(ptr, ptr, ptr, ptr)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @forward(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15) {
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, ptr %1, 1
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, i64 %2, 2
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, i64 %3, 3, 0
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %4, 4, 0
  %22 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %5, 0
  %23 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %22, ptr %6, 1
  %24 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %23, i64 %7, 2
  %25 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %24, i64 %8, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, i64 %12, 4, 0
  %27 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %26, i64 %9, 3, 1
  %28 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %27, i64 %13, 4, 1
  %29 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %28, i64 %10, 3, 2
  %30 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %29, i64 %14, 4, 2
  %31 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %30, i64 %11, 3, 3
  %32 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %31, i64 %15, 4, 3
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %34 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %35 = insertvalue { ptr, ptr, i64 } undef, ptr %33, 0
  %36 = insertvalue { ptr, ptr, i64 } %35, ptr %34, 1
  %37 = insertvalue { ptr, ptr, i64 } %36, i64 0, 2
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %40 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %41 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %33, 0
  %42 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %41, ptr %34, 1
  %43 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %42, i64 0, 2
  %44 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, i64 6, 3, 0
  %45 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %44, i64 25, 4, 0
  %46 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %45, i64 1, 3, 1
  %47 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %46, i64 25, 4, 1
  %48 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %47, i64 5, 3, 2
  %49 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %48, i64 5, 4, 2
  %50 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %49, i64 5, 3, 3
  %51 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %50, i64 1, 4, 3
  %52 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %53 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %54 = insertvalue { ptr, ptr, i64 } undef, ptr %52, 0
  %55 = insertvalue { ptr, ptr, i64 } %54, ptr %53, 1
  %56 = insertvalue { ptr, ptr, i64 } %55, i64 0, 2
  %57 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %58 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %59 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %52, 0
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, ptr %53, 1
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 150, 2
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, i64 6, 3, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, i64 1, 4, 0
  %65 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %66 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %67 = insertvalue { ptr, ptr, i64 } undef, ptr %65, 0
  %68 = insertvalue { ptr, ptr, i64 } %67, ptr %66, 1
  %69 = insertvalue { ptr, ptr, i64 } %68, i64 0, 2
  %70 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %71 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %72 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %73 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %65, 0
  %74 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %73, ptr %66, 1
  %75 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %74, i64 156, 2
  %76 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %75, i64 16, 3, 0
  %77 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %76, i64 150, 4, 0
  %78 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %77, i64 6, 3, 1
  %79 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %78, i64 25, 4, 1
  %80 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %79, i64 5, 3, 2
  %81 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %80, i64 5, 4, 2
  %82 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %81, i64 5, 3, 3
  %83 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %82, i64 1, 4, 3
  %84 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %85 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %86 = insertvalue { ptr, ptr, i64 } undef, ptr %84, 0
  %87 = insertvalue { ptr, ptr, i64 } %86, ptr %85, 1
  %88 = insertvalue { ptr, ptr, i64 } %87, i64 0, 2
  %89 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %90 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %91 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %84, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, ptr %85, 1
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 2556, 2
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 16, 3, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, i64 1, 4, 0
  %97 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %98 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %99 = insertvalue { ptr, ptr, i64 } undef, ptr %97, 0
  %100 = insertvalue { ptr, ptr, i64 } %99, ptr %98, 1
  %101 = insertvalue { ptr, ptr, i64 } %100, i64 0, 2
  %102 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %103 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %104 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %105 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %97, 0
  %106 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %105, ptr %98, 1
  %107 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %106, i64 2572, 2
  %108 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %107, i64 120, 3, 0
  %109 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %108, i64 256, 4, 0
  %110 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %109, i64 256, 3, 1
  %111 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %110, i64 1, 4, 1
  %112 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %113 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %114 = insertvalue { ptr, ptr, i64 } undef, ptr %112, 0
  %115 = insertvalue { ptr, ptr, i64 } %114, ptr %113, 1
  %116 = insertvalue { ptr, ptr, i64 } %115, i64 0, 2
  %117 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %118 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %119 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %112, 0
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, ptr %113, 1
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %121, i64 33292, 2
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, i64 120, 3, 0
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, i64 1, 4, 0
  %125 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %126 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %127 = insertvalue { ptr, ptr, i64 } undef, ptr %125, 0
  %128 = insertvalue { ptr, ptr, i64 } %127, ptr %126, 1
  %129 = insertvalue { ptr, ptr, i64 } %128, i64 0, 2
  %130 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %131 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %132 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %133 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %125, 0
  %134 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %133, ptr %126, 1
  %135 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %134, i64 33412, 2
  %136 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %135, i64 84, 3, 0
  %137 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %136, i64 120, 4, 0
  %138 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %137, i64 120, 3, 1
  %139 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %138, i64 1, 4, 1
  %140 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %141 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %142 = insertvalue { ptr, ptr, i64 } undef, ptr %140, 0
  %143 = insertvalue { ptr, ptr, i64 } %142, ptr %141, 1
  %144 = insertvalue { ptr, ptr, i64 } %143, i64 0, 2
  %145 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %146 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %147 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %148 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %140, 0
  %149 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %148, ptr %141, 1
  %150 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %149, i64 43492, 2
  %151 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %150, i64 84, 3, 0
  %152 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %151, i64 1, 4, 0
  %153 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %154 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %155 = insertvalue { ptr, ptr, i64 } undef, ptr %153, 0
  %156 = insertvalue { ptr, ptr, i64 } %155, ptr %154, 1
  %157 = insertvalue { ptr, ptr, i64 } %156, i64 0, 2
  %158 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %159 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %160 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %161 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %153, 0
  %162 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %161, ptr %154, 1
  %163 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %162, i64 43576, 2
  %164 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %163, i64 10, 3, 0
  %165 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %164, i64 84, 4, 0
  %166 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %165, i64 84, 3, 1
  %167 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %166, i64 1, 4, 1
  %168 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %169 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %170 = insertvalue { ptr, ptr, i64 } undef, ptr %168, 0
  %171 = insertvalue { ptr, ptr, i64 } %170, ptr %169, 1
  %172 = insertvalue { ptr, ptr, i64 } %171, i64 0, 2
  %173 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %174 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %175 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %176 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %168, 0
  %177 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %176, ptr %169, 1
  %178 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %177, i64 44416, 2
  %179 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %178, i64 10, 3, 0
  %180 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %179, i64 1, 4, 0
  %181 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64))
  %182 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %181, 0
  %183 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %182, ptr %181, 1
  %184 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %183, i64 0, 2
  %185 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %184, i64 1, 3, 0
  %186 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %185, i64 1, 3, 1
  %187 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %186, i64 28, 3, 2
  %188 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %187, i64 28, 3, 3
  %189 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %188, i64 784, 4, 0
  %190 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %189, i64 784, 4, 1
  %191 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %190, i64 28, 4, 2
  %192 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %191, i64 1, 4, 3
  %193 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 0
  %194 = mul i64 %193, 1
  %195 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 1
  %196 = mul i64 %194, %195
  %197 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 2
  %198 = mul i64 %196, %197
  %199 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 3
  %200 = mul i64 %198, %199
  %201 = mul i64 %200, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %202 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 1
  %203 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 2
  %204 = getelementptr float, ptr %202, i64 %203
  %205 = getelementptr float, ptr %181, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %205, ptr %204, i64 %201, i1 false)
  %206 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64))
  %207 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %206, 0
  %208 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %207, ptr %206, 1
  %209 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %208, i64 0, 2
  %210 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %209, i64 6, 3, 0
  %211 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %210, i64 1, 3, 1
  %212 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %211, i64 5, 3, 2
  %213 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, i64 5, 3, 3
  %214 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %213, i64 25, 4, 0
  %215 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, i64 25, 4, 1
  %216 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %215, i64 5, 4, 2
  %217 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %216, i64 1, 4, 3
  %218 = getelementptr float, ptr %34, i64 0
  %219 = getelementptr float, ptr %206, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %219, ptr %218, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 150), i1 false)
  %220 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 6) to i64))
  %221 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %220, 0
  %222 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %221, ptr %220, 1
  %223 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %222, i64 0, 2
  %224 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %223, i64 6, 3, 0
  %225 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %224, i64 1, 4, 0
  %226 = getelementptr float, ptr %53, i64 150
  %227 = getelementptr float, ptr %220, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %227, ptr %226, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 6), i1 false)
  %228 = call { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph1(ptr %181, ptr %181, i64 0, i64 1, i64 1, i64 28, i64 28, i64 784, i64 784, i64 28, i64 1, ptr %206, ptr %206, i64 0, i64 6, i64 1, i64 5, i64 5, i64 25, i64 25, i64 5, i64 1, ptr %220, ptr %220, i64 0, i64 6, i64 1)
  %229 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %230 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %229, 0
  %231 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %230, ptr %229, 1
  %232 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %231, i64 0, 2
  %233 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %232, i64 1, 3, 0
  %234 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %233, i64 6, 3, 1
  %235 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %234, i64 24, 3, 2
  %236 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %235, i64 24, 3, 3
  %237 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %236, i64 3456, 4, 0
  %238 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %237, i64 576, 4, 1
  %239 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %238, i64 24, 4, 2
  %240 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %239, i64 1, 4, 3
  %241 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %228, 3, 0
  %242 = mul i64 %241, 1
  %243 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %228, 3, 1
  %244 = mul i64 %242, %243
  %245 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %228, 3, 2
  %246 = mul i64 %244, %245
  %247 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %228, 3, 3
  %248 = mul i64 %246, %247
  %249 = mul i64 %248, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %250 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %228, 1
  %251 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %228, 2
  %252 = getelementptr float, ptr %250, i64 %251
  %253 = getelementptr float, ptr %229, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %253, ptr %252, i64 %249, i1 false)
  %254 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2400) to i64))
  %255 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %254, 0
  %256 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %255, ptr %254, 1
  %257 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %256, i64 0, 2
  %258 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %257, i64 16, 3, 0
  %259 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %258, i64 6, 3, 1
  %260 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %259, i64 5, 3, 2
  %261 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %260, i64 5, 3, 3
  %262 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %261, i64 150, 4, 0
  %263 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %262, i64 25, 4, 1
  %264 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %263, i64 5, 4, 2
  %265 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %264, i64 1, 4, 3
  %266 = getelementptr float, ptr %66, i64 156
  %267 = getelementptr float, ptr %254, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %267, ptr %266, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 2400), i1 false)
  %268 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64))
  %269 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %268, 0
  %270 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %269, ptr %268, 1
  %271 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %270, i64 0, 2
  %272 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %271, i64 16, 3, 0
  %273 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %272, i64 1, 4, 0
  %274 = getelementptr float, ptr %85, i64 2556
  %275 = getelementptr float, ptr %268, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %275, ptr %274, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 16), i1 false)
  %276 = call { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph0(ptr %229, ptr %229, i64 0, i64 1, i64 6, i64 24, i64 24, i64 3456, i64 576, i64 24, i64 1, ptr %254, ptr %254, i64 0, i64 16, i64 6, i64 5, i64 5, i64 150, i64 25, i64 5, i64 1, ptr %268, ptr %268, i64 0, i64 16, i64 1)
  %277 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  %278 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %277, 0
  %279 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %278, ptr %277, 1
  %280 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %279, i64 0, 2
  %281 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %280, i64 1, 3, 0
  %282 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %281, i64 16, 3, 1
  %283 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %282, i64 8, 3, 2
  %284 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %283, i64 8, 3, 3
  %285 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %284, i64 1024, 4, 0
  %286 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %285, i64 64, 4, 1
  %287 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %286, i64 8, 4, 2
  %288 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %287, i64 1, 4, 3
  %289 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %276, 3, 0
  %290 = mul i64 %289, 1
  %291 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %276, 3, 1
  %292 = mul i64 %290, %291
  %293 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %276, 3, 2
  %294 = mul i64 %292, %293
  %295 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %276, 3, 3
  %296 = mul i64 %294, %295
  %297 = mul i64 %296, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %298 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %276, 1
  %299 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %276, 2
  %300 = getelementptr float, ptr %298, i64 %299
  %301 = getelementptr float, ptr %277, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %301, ptr %300, i64 %297, i1 false)
  %302 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph3(ptr %277, ptr %277, i64 0, i64 1, i64 16, i64 8, i64 8, i64 1024, i64 64, i64 8, i64 1)
  %303 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 30720) to i64))
  %304 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %303, 0
  %305 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %304, ptr %303, 1
  %306 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %305, i64 0, 2
  %307 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %306, i64 120, 3, 0
  %308 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %307, i64 256, 3, 1
  %309 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %308, i64 256, 4, 0
  %310 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %309, i64 1, 4, 1
  %311 = getelementptr float, ptr %98, i64 2572
  %312 = getelementptr float, ptr %303, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %312, ptr %311, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 30720), i1 false)
  %313 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64))
  %314 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %313, 0
  %315 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %314, ptr %313, 1
  %316 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %315, i64 0, 2
  %317 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %316, i64 120, 3, 0
  %318 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %317, i64 1, 4, 0
  %319 = getelementptr float, ptr %113, i64 33292
  %320 = getelementptr float, ptr %313, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %320, ptr %319, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 120), i1 false)
  %321 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64))
  %322 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %321, 0
  %323 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %322, ptr %321, 1
  %324 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %323, i64 0, 2
  %325 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %324, i64 1, 3, 0
  %326 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %325, i64 256, 3, 1
  %327 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %326, i64 256, 4, 0
  %328 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %327, i64 1, 4, 1
  %329 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 3, 0
  %330 = mul i64 %329, 1
  %331 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 3, 1
  %332 = mul i64 %330, %331
  %333 = mul i64 %332, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %334 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 1
  %335 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 2
  %336 = getelementptr float, ptr %334, i64 %335
  %337 = getelementptr float, ptr %321, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %337, ptr %336, i64 %333, i1 false)
  %338 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph4(ptr %303, ptr %303, i64 0, i64 120, i64 256, i64 256, i64 1, ptr %313, ptr %313, i64 0, i64 120, i64 1, ptr %321, ptr %321, i64 0, i64 1, i64 256, i64 256, i64 1)
  %339 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64))
  %340 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %339, 0
  %341 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %340, ptr %339, 1
  %342 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %341, i64 0, 2
  %343 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %342, i64 1, 3, 0
  %344 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %343, i64 120, 3, 1
  %345 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %344, i64 120, 4, 0
  %346 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %345, i64 1, 4, 1
  %347 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, 3, 0
  %348 = mul i64 %347, 1
  %349 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, 3, 1
  %350 = mul i64 %348, %349
  %351 = mul i64 %350, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %352 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, 1
  %353 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, 2
  %354 = getelementptr float, ptr %352, i64 %353
  %355 = getelementptr float, ptr %339, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %355, ptr %354, i64 %351, i1 false)
  %356 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10080) to i64))
  %357 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %356, 0
  %358 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %357, ptr %356, 1
  %359 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %358, i64 0, 2
  %360 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %359, i64 84, 3, 0
  %361 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %360, i64 120, 3, 1
  %362 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %361, i64 120, 4, 0
  %363 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %362, i64 1, 4, 1
  %364 = getelementptr float, ptr %126, i64 33412
  %365 = getelementptr float, ptr %356, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %365, ptr %364, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 10080), i1 false)
  %366 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  %367 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %366, 0
  %368 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %367, ptr %366, 1
  %369 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %368, i64 0, 2
  %370 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %369, i64 84, 3, 0
  %371 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %370, i64 1, 4, 0
  %372 = getelementptr float, ptr %141, i64 43492
  %373 = getelementptr float, ptr %366, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %373, ptr %372, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 84), i1 false)
  %374 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph6(ptr %339, ptr %339, i64 0, i64 1, i64 120, i64 120, i64 1, ptr %356, ptr %356, i64 0, i64 84, i64 120, i64 120, i64 1, ptr %366, ptr %366, i64 0, i64 84, i64 1)
  %375 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %375, 0
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, ptr %375, 1
  %378 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, i64 0, 2
  %379 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, i64 1, 3, 0
  %380 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %379, i64 84, 3, 1
  %381 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %380, i64 84, 4, 0
  %382 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %381, i64 1, 4, 1
  %383 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, 3, 0
  %384 = mul i64 %383, 1
  %385 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, 3, 1
  %386 = mul i64 %384, %385
  %387 = mul i64 %386, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %388 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, 1
  %389 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, 2
  %390 = getelementptr float, ptr %388, i64 %389
  %391 = getelementptr float, ptr %375, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %391, ptr %390, i64 %387, i1 false)
  %392 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 840) to i64))
  %393 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %392, 0
  %394 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %393, ptr %392, 1
  %395 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, i64 0, 2
  %396 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %395, i64 10, 3, 0
  %397 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, i64 84, 3, 1
  %398 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, i64 84, 4, 0
  %399 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %398, i64 1, 4, 1
  %400 = getelementptr float, ptr %154, i64 43576
  %401 = getelementptr float, ptr %392, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %401, ptr %400, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 840), i1 false)
  %402 = call { { ptr, ptr, i64, [2 x i64], [2 x i64] }, { ptr, ptr, i64, [2 x i64], [2 x i64] } } @subgraph5(ptr %375, ptr %375, i64 0, i64 1, i64 84, i64 84, i64 1, ptr %392, ptr %392, i64 0, i64 10, i64 84, i64 84, i64 1)
  %403 = extractvalue { { ptr, ptr, i64, [2 x i64], [2 x i64] }, { ptr, ptr, i64, [2 x i64], [2 x i64] } } %402, 0
  %404 = extractvalue { { ptr, ptr, i64, [2 x i64], [2 x i64] }, { ptr, ptr, i64, [2 x i64], [2 x i64] } } %402, 1
  %405 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10) to i64))
  %406 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %405, 0
  %407 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %406, ptr %405, 1
  %408 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %407, i64 0, 2
  %409 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %408, i64 10, 3, 0
  %410 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %409, i64 1, 4, 0
  %411 = getelementptr float, ptr %169, i64 44416
  %412 = getelementptr float, ptr %405, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %412, ptr %411, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 10), i1 false)
  %413 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  %414 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %413, 0
  %415 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %414, ptr %413, 1
  %416 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %415, i64 0, 2
  %417 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %416, i64 1, 3, 0
  %418 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, i64 84, 3, 1
  %419 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, i64 84, 4, 0
  %420 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %419, i64 1, 4, 1
  %421 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %403, 3, 0
  %422 = mul i64 %421, 1
  %423 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %403, 3, 1
  %424 = mul i64 %422, %423
  %425 = mul i64 %424, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %426 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %403, 1
  %427 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %403, 2
  %428 = getelementptr float, ptr %426, i64 %427
  %429 = getelementptr float, ptr %413, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %429, ptr %428, i64 %425, i1 false)
  %430 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 840) to i64))
  %431 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %430, 0
  %432 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %431, ptr %430, 1
  %433 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %432, i64 0, 2
  %434 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %433, i64 84, 3, 0
  %435 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %434, i64 10, 3, 1
  %436 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %435, i64 10, 4, 0
  %437 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, i64 1, 4, 1
  %438 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %404, 3, 0
  %439 = mul i64 %438, 1
  %440 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %404, 3, 1
  %441 = mul i64 %439, %440
  %442 = mul i64 %441, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %443 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %404, 1
  %444 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %404, 2
  %445 = getelementptr float, ptr %443, i64 %444
  %446 = getelementptr float, ptr %430, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %446, ptr %445, i64 %442, i1 false)
  %447 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph2(ptr %405, ptr %405, i64 0, i64 10, i64 1, ptr %413, ptr %413, i64 0, i64 1, i64 84, i64 84, i64 1, ptr %430, ptr %430, i64 0, i64 84, i64 10, i64 10, i64 1)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %447
}

define void @_mlir_ciface_forward(ptr %0, ptr %1, ptr %2) {
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %1, align 8
  %5 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 0
  %6 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %7 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 2
  %8 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 3, 0
  %9 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 4, 0
  %10 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %2, align 8
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
  %22 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @forward(ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
