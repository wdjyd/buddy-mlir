; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @main() {
  %1 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64))
  %2 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %1, 0
  %3 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, i64 0, 2
  %5 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, i64 32, 3, 0
  %6 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, i64 1, 4, 0
  %7 = call ptr @mgpuStreamCreate()
  %8 = call ptr @mgpuMemAlloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64), ptr %7, i8 0)
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, ptr %8, 1
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 0, 2
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 32, 3, 0
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 1, 4, 0
  call void @mgpuStreamSynchronize(ptr %7)
  call void @mgpuStreamDestroy(ptr %7)
  %14 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %14, i64 1)
  call void @sstcudaConfigureCall(i64 32, i64 1, i64 1, i64 1, i64 1, i64 1, i64 0)
  call void @sstSetupInt32Argument(i32 1, i64 0)
  call void @sstSetupMemrefArgument(ptr %8, ptr %8, i64 0, i64 32, i64 1, i64 8)
  call void @sstcudaLaunch(i64 1)
  %15 = call ptr @mgpuStreamCreate()
  call void @mgpuMemcpy(ptr %1, ptr %8, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 32) to i64), ptr %15)
  %16 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, ptr %16, align 8
  %17 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %16, 1
  call void @mgpuStreamSynchronize(ptr %15)
  call void @mgpuStreamDestroy(ptr %15)
  call void @printMemrefI32(i64 1, ptr %16)
  %18 = call ptr @mgpuStreamCreate()
  call void @mgpuMemFree(ptr %8, ptr %18)
  call void @mgpuStreamSynchronize(ptr %18)
  call void @mgpuStreamDestroy(ptr %18)
  ret void
}

declare void @printMemrefI32(i64, ptr)

declare ptr @mgpuStreamCreate()

declare ptr @mgpuMemAlloc(i64, ptr, i8)

declare void @mgpuStreamSynchronize(ptr)

declare void @mgpuStreamDestroy(ptr)

declare void @mgpuMemcpy(ptr, ptr, i64, ptr)

declare void @mgpuMemFree(ptr, ptr)

declare i64 @__sstcudaRegisterFatBinary()

declare void @__sstcudaRegisterFunction(i64, i64)

declare void @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)

declare void @sstSetupInt32Argument(i32, i64)

declare void @sstSetupMemrefArgument(ptr, ptr, i64, i64, i64, i64)

declare void @sstcudaLaunch(i64)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
