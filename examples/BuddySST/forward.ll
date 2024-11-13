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

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @forward(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15) {
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
  %65 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64))
  %66 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %65, 0
  %67 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %66, ptr %65, 1
  %68 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %67, i64 0, 2
  %69 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %68, i64 1, 3, 0
  %70 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %69, i64 1, 3, 1
  %71 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %70, i64 28, 3, 2
  %72 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %71, i64 28, 3, 3
  %73 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %72, i64 784, 4, 0
  %74 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %73, i64 784, 4, 1
  %75 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %74, i64 28, 4, 2
  %76 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %75, i64 1, 4, 3
  %77 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 0
  %78 = mul i64 %77, 1
  %79 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 1
  %80 = mul i64 %78, %79
  %81 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 2
  %82 = mul i64 %80, %81
  %83 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 3, 3
  %84 = mul i64 %82, %83
  %85 = mul i64 %84, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %86 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 1
  %87 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %32, 2
  %88 = getelementptr float, ptr %86, i64 %87
  %89 = getelementptr float, ptr %65, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %89, ptr %88, i64 %85, i1 false)
  %90 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64))
  %91 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %90, 0
  %92 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %91, ptr %90, 1
  %93 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %92, i64 0, 2
  %94 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %93, i64 6, 3, 0
  %95 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %94, i64 1, 3, 1
  %96 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %95, i64 5, 3, 2
  %97 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %96, i64 5, 3, 3
  %98 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %97, i64 25, 4, 0
  %99 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, i64 25, 4, 1
  %100 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %99, i64 5, 4, 2
  %101 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %100, i64 1, 4, 3
  %102 = getelementptr float, ptr %34, i64 0
  %103 = getelementptr float, ptr %90, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %103, ptr %102, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 150), i1 false)
  %104 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 6) to i64))
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %104, 0
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, ptr %104, 1
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 0, 2
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 6, 3, 0
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, i64 1, 4, 0
  %110 = getelementptr float, ptr %53, i64 150
  %111 = getelementptr float, ptr %104, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %111, ptr %110, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 6), i1 false)
  %112 = call { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph0(ptr %65, ptr %65, i64 0, i64 1, i64 1, i64 28, i64 28, i64 784, i64 784, i64 28, i64 1, ptr %90, ptr %90, i64 0, i64 6, i64 1, i64 5, i64 5, i64 25, i64 25, i64 5, i64 1, ptr %104, ptr %104, i64 0, i64 6, i64 1)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %112
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
  %22 = call { ptr, ptr, i64, [4 x i64], [4 x i64] } @forward(ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21)
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %22, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
