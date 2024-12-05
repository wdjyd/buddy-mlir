; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @forward(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) {
  %8 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 128) to i64))
  %9 = call i64 @__sstcudaRegisterFatBinary(i64 0)
  call void @__sstcudaRegisterFunction(i64 %9, i64 1)
  call void @sstcudaConfigureCall(i64 32, i64 1, i64 1, i64 4, i64 1, i64 1, i64 0)
  call void @sstSetupFloat32Argument(float 0x40091EB860000000, i64 0)
  call void @sstSetupMemrefRankTwoArgument(ptr %8, ptr %8, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 8)
  call void @sstcudaLaunch(i64 1)
  %10 = call i64 @__sstcudaRegisterFatBinary(i64 1)
  call void @__sstcudaRegisterFunction(i64 %10, i64 2)
  call void @sstcudaConfigureCall(i64 32, i64 1, i64 1, i64 4, i64 1, i64 1, i64 0)
  call void @sstSetupMemrefRankTwoArgument(ptr %8, ptr %8, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 0)
  call void @sstSetupFloat32Argument(float 6.500000e+00, i64 56)
  call void @sstSetupFloat32Argument(float 0x40091EB860000000, i64 60)
  call void @sstSetupIntArgument(i64 0, i64 64)
  call void @sstcudaLaunch(i64 2)
  call void @sstcudaMemcpy(ptr %1, ptr %8, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 128) to i64), i1 true)
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

declare i64 @__sstcudaRegisterFatBinary(i64)

declare void @__sstcudaRegisterFunction(i64, i64)

declare void @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)

declare void @sstSetupFloat32Argument(float, i64)

declare void @sstSetupMemrefRankTwoArgument(ptr, ptr, i64, i64, i64, i64, i64, i64)

declare void @sstcudaLaunch(i64)

declare void @sstSetupIntArgument(i64, i64)

declare void @sstcudaMemcpy(ptr, ptr, i64, i1)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
