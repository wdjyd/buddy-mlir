; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @forward(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) {
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %9 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, ptr %1, 1
  %10 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %9, i64 %2, 2
  %11 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %10, i64 %3, 3, 0
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %11, i64 %5, 4, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, i64 %4, 3, 1
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, i64 %6, 4, 1
  %15 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64))
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, ptr %15, 1
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 0, 2
  %19 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %19, i64 0)
  call void @sstcudaConfigureCall(i64 32, i64 1, i64 1, i64 4, i64 1, i64 1, i64 0)
  call void @sstSetupInt32Argument(i32 1, i64 0)
  call void @sstSetupMemrefRankTwoArgument(ptr %15, ptr %15, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 8)
  call void @sstcudaLaunch(i64 0)
  call void @sstcudaMemcpy(ptr %1, ptr %15, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 128) to i64), i1 true)
  ret void
}

define void @_mlir_ciface_forward(ptr %0) {
  %2 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %0, align 8
  %3 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, 0
  %4 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, 1
  %5 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, 2
  %6 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, 3, 0
  %7 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, 3, 1
  %8 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, 4, 0
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, 4, 1
  call void @forward(ptr %3, ptr %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9)
  ret void
}

declare ptr @sstcudaMalloc(i64)

declare i64 @__sstcudaRegisterFatBinary()

declare void @__sstcudaRegisterFunction(i64, i64)

declare void @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)

declare void @sstSetupInt32Argument(i32, i64)

declare void @sstSetupMemrefRankTwoArgument(ptr, ptr, i64, i64, i64, i64, i64, i64)

declare void @sstcudaLaunch(i64)

declare void @sstcudaMemcpy(ptr, ptr, i64, i1)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
