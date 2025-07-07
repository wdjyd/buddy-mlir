; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_1x6x24x24xf32 = private constant [1 x [6 x [24 x [24 x float]]]] zeroinitializer, align 64

declare ptr @malloc(i64)

declare void @free(ptr)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph1_0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) {
  call void @sstcudaSetDevice(i64 1)
  %12 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  call void @sstcudaMemcpy(ptr %12, ptr %1, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64), i1 false)
  %13 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  call void @sstcudaMemcpy(ptr %13, ptr @__constant_1x6x24x24xf32, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64), i1 false)
  %14 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %15 = call i64 @__sstcudaRegisterFatBinary(i64 1, i64 0)
  call void @__sstcudaRegisterFunction(i64 %15, i64 1)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 24, i64 24, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %12, ptr %12, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %13, ptr %13, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupMemrefRankFourArgument(ptr %14, ptr %14, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 192)
  call void @sstcudaLaunch(i64 1)
  %16 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %17 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %17, ptr %16, 1
  %19 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %18, i64 0, 2
  %20 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %19, i64 1, 3, 0
  %21 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %20, i64 6, 3, 1
  %22 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %21, i64 24, 3, 2
  %23 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %22, i64 24, 3, 3
  %24 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %23, i64 3456, 4, 0
  %25 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %24, i64 576, 4, 1
  %26 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, i64 24, 4, 2
  %27 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %26, i64 1, 4, 3
  call void @sstcudaMemcpy(ptr %16, ptr %14, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64), i1 true)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %27
}

define void @_mlir_ciface_subgraph1_0(ptr %0, ptr %1) {
  %3 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %1, align 8
  %4 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 0
  %5 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 1
  %6 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 2
  %7 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 0
  %8 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 1
  %9 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 2
  %10 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 3
  %11 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 0
  %12 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 1
  %13 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 2
  %14 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 3
  %15 = call { ptr, ptr, i64, [4 x i64], [4 x i64] } @subgraph1_0(ptr %4, ptr %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14)
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %15, ptr %0, align 8
  ret void
}

declare void @sstcudaSetDevice(i64)

declare ptr @sstcudaMalloc(i64)

declare void @sstcudaMemcpy(ptr, ptr, i64, i1)

declare i64 @__sstcudaRegisterFatBinary(i64, i64)

declare void @__sstcudaRegisterFunction(i64, i64)

declare void @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)

declare void @sstSetupIntArgument(i64, i64)

declare void @sstSetupMemrefRankFourArgument(ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @sstcudaLaunch(i64)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
