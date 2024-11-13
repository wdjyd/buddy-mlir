; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_1x6x24x24xf32 = private constant [1 x [6 x [24 x [24 x float]]]] zeroinitializer, align 64
@__constant_4xi32_0 = private constant [4 x i32] [i32 0, i32 3, i32 1, i32 2], align 64
@__constant_4xi32 = private constant [4 x i32] [i32 0, i32 2, i32 3, i32 1], align 64

declare ptr @malloc(i64)

declare void @free(ptr)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26) {
  %28 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64))
  call void @sstcudaMemcpy(ptr %28, ptr %1, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64), i1 false)
  %29 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64))
  call void @sstcudaMemcpy(ptr %29, ptr %12, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64), i1 false)
  %30 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 6) to i64))
  call void @sstcudaMemcpy(ptr %30, ptr %23, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 6) to i64), i1 false)
  %31 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64))
  %32 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %32, i64 1)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 28, i64 28, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %28, ptr %28, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %31, ptr %31, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 1)
  %33 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64))
  %34 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %34, i64 2)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 5, i64 5, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %29, ptr %29, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %33, ptr %33, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 2)
  %35 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %36 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %36, i64 3)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0.000000e+00, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %35, ptr %35, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 3)
  %37 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %38 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %38, i64 4)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %31, ptr %31, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %33, ptr %33, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupMemrefRankFourArgument(ptr %35, ptr %35, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 192)
  call void @sstSetupIntArgument(i64 5, i64 280)
  call void @sstcudaLaunch(i64 4)
  %39 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %39, i64 5)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankOneArgument(ptr %30, ptr %30, i64 0, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %35, ptr %35, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 56)
  call void @sstSetupMemrefRankFourArgument(ptr %37, ptr %37, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 144)
  call void @sstcudaLaunch(i64 5)
  %40 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %41 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %41, i64 6)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 24, i64 24, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %37, ptr %37, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %40, ptr %40, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 6)
  %42 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  call void @sstcudaMemcpy(ptr %42, ptr @__constant_1x6x24x24xf32, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64), i1 false)
  %43 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %44 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %44, i64 7)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 24, i64 24, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %40, ptr %40, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %42, ptr %42, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupMemrefRankFourArgument(ptr %43, ptr %43, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 192)
  call void @sstcudaLaunch(i64 7)
  %45 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %46 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %46, i64 8)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %43, ptr %43, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %45, ptr %45, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 8)
  %47 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 864) to i64))
  %48 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %48, i64 9)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 12, i64 12, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0xC7EFFFFFE0000000, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %47, ptr %47, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 9)
  %49 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %49, i64 10)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 12, i64 12, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %45, ptr %45, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %47, ptr %47, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupIntArgument(i64 2, i64 192)
  call void @sstcudaLaunch(i64 10)
  %50 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 864) to i64))
  %51 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %51, i64 11)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 12, i64 12, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %47, ptr %47, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %50, ptr %50, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 11)
  %52 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 864) to i64))
  %53 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %52, 0
  %54 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %53, ptr %52, 1
  %55 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %54, i64 0, 2
  %56 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %55, i64 1, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %56, i64 6, 3, 1
  %58 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %57, i64 12, 3, 2
  %59 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %58, i64 12, 3, 3
  %60 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %59, i64 864, 4, 0
  %61 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %60, i64 144, 4, 1
  %62 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %61, i64 12, 4, 2
  %63 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %62, i64 1, 4, 3
  call void @sstcudaMemcpy(ptr %52, ptr %50, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 864) to i64), i1 true)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %63
}

define void @_mlir_ciface_subgraph0(ptr %0, ptr %1, ptr %2, ptr %3) {
  %5 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %1, align 8
  %6 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 0
  %7 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 1
  %8 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 2
  %9 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 0
  %10 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 1
  %11 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 2
  %12 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 3
  %13 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 0
  %14 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 1
  %15 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 2
  %16 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 3
  %17 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %2, align 8
  %18 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 0
  %19 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 1
  %20 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 2
  %21 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 3, 0
  %22 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 3, 1
  %23 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 3, 2
  %24 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 3, 3
  %25 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 4, 0
  %26 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 4, 1
  %27 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 4, 2
  %28 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, 4, 3
  %29 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, 0
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, 1
  %32 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, 2
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, 3, 0
  %34 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, 4, 0
  %35 = call { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph0(ptr %6, ptr %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, ptr %18, ptr %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, ptr %30, ptr %31, i64 %32, i64 %33, i64 %34)
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %35, ptr %0, align 8
  ret void
}

declare ptr @sstcudaMalloc(i64)

declare void @sstcudaMemcpy(ptr, ptr, i64, i1)

declare i64 @__sstcudaRegisterFatBinary()

declare void @__sstcudaRegisterFunction(i64, i64)

declare void @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)

declare void @sstSetupIntArgument(i64, i64)

declare void @sstSetupMemrefRankFourArgument(ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @sstcudaLaunch(i64)

declare void @sstSetupFloat32Argument(float, i64)

declare void @sstSetupMemrefRankOneArgument(ptr, ptr, i64, i64, i64, i64)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
