; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_1x84xf32 = private constant [1 x [84 x float]] zeroinitializer, align 64
@__constant_1x120xf32 = private constant [1 x [120 x float]] zeroinitializer, align 64
@__constant_2xi32 = private constant [2 x i32] [i32 1, i32 0], align 64
@__constant_1x16x8x8xf32 = private constant [1 x [16 x [8 x [8 x float]]]] zeroinitializer, align 64
@__constant_1x6x24x24xf32 = private constant [1 x [6 x [24 x [24 x float]]]] zeroinitializer, align 64
@__constant_4xi32_0 = private constant [4 x i32] [i32 0, i32 3, i32 1, i32 2], align 64
@__constant_4xi32 = private constant [4 x i32] [i32 0, i32 2, i32 3, i32 1], align 64

declare ptr @malloc(i64)

declare void @free(ptr)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42, ptr %43, ptr %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, ptr %50, ptr %51, i64 %52, i64 %53, i64 %54, ptr %55, ptr %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, ptr %62, ptr %63, i64 %64, i64 %65, i64 %66, ptr %67, ptr %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, ptr %74, ptr %75, i64 %76, i64 %77, i64 %78) {
  %80 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64))
  call void @sstcudaMemcpy(ptr %80, ptr %1, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64), i1 false)
  %81 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64))
  call void @sstcudaMemcpy(ptr %81, ptr %12, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64), i1 false)
  %82 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 6) to i64))
  call void @sstcudaMemcpy(ptr %82, ptr %23, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 6) to i64), i1 false)
  %83 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2400) to i64))
  call void @sstcudaMemcpy(ptr %83, ptr %28, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2400) to i64), i1 false)
  %84 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64))
  call void @sstcudaMemcpy(ptr %84, ptr %39, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64), i1 false)
  %85 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 30720) to i64))
  call void @sstcudaMemcpy(ptr %85, ptr %44, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 30720) to i64), i1 false)
  %86 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64))
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %86, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, ptr %86, 1
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 0, 2
  call void @sstcudaMemcpy(ptr %86, ptr %51, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64), i1 false)
  %90 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10080) to i64))
  call void @sstcudaMemcpy(ptr %90, ptr %56, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10080) to i64), i1 false)
  %91 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %91, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, ptr %91, 1
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 0, 2
  call void @sstcudaMemcpy(ptr %91, ptr %63, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64), i1 false)
  %95 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 840) to i64))
  call void @sstcudaMemcpy(ptr %95, ptr %68, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 840) to i64), i1 false)
  %96 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10) to i64))
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %96, 0
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, ptr %96, 1
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, i64 0, 2
  call void @sstcudaMemcpy(ptr %96, ptr %75, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10) to i64), i1 false)
  %100 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 784) to i64))
  %101 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %101, i64 1)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 28, i64 28, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %80, ptr %80, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %100, ptr %100, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 1)
  %102 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 150) to i64))
  %103 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %103, i64 2)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 5, i64 5, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %81, ptr %81, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %102, ptr %102, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 2)
  %104 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %105 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %105, i64 3)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0.000000e+00, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %104, ptr %104, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 3)
  %106 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %107 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %107, i64 4)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %100, ptr %100, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %102, ptr %102, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupMemrefRankFourArgument(ptr %104, ptr %104, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 192)
  call void @sstSetupIntArgument(i64 5, i64 280)
  call void @sstcudaLaunch(i64 4)
  %108 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %108, i64 5)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankOneArgument(ptr %82, ptr %82, i64 0, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %104, ptr %104, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 56)
  call void @sstSetupMemrefRankFourArgument(ptr %106, ptr %106, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 144)
  call void @sstcudaLaunch(i64 5)
  %109 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %110 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %110, i64 6)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 24, i64 24, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %106, ptr %106, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %109, ptr %109, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 6)
  %111 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  call void @sstcudaMemcpy(ptr %111, ptr @__constant_1x6x24x24xf32, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64), i1 false)
  %112 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %113 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %113, i64 7)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 24, i64 24, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %109, ptr %109, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %111, ptr %111, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupMemrefRankFourArgument(ptr %112, ptr %112, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 192)
  call void @sstcudaLaunch(i64 7)
  %114 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 3456) to i64))
  %115 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %115, i64 8)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 24, i64 24, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %112, ptr %112, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %114, ptr %114, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 8)
  %116 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 864) to i64))
  %117 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %117, i64 9)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 12, i64 12, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0xC7EFFFFFE0000000, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %116, ptr %116, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 9)
  %118 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %118, i64 10)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 12, i64 12, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %114, ptr %114, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %116, ptr %116, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupIntArgument(i64 2, i64 192)
  call void @sstcudaLaunch(i64 10)
  %119 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 864) to i64))
  %120 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %120, i64 11)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 6, i64 12, i64 12, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %116, ptr %116, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %119, ptr %119, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 11)
  %121 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 864) to i64))
  %122 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %122, i64 12)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 12, i64 12, i64 6, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %119, ptr %119, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %121, ptr %121, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 12)
  %123 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2400) to i64))
  %124 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %124, i64 13)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 16, i64 5, i64 5, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %83, ptr %83, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %123, ptr %123, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupIntArgument(i64 6, i64 192)
  call void @sstcudaLaunch(i64 13)
  %125 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  %126 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %126, i64 14)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 8, i64 8, i64 16, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0.000000e+00, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %125, ptr %125, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 14)
  %127 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  %128 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %128, i64 15)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 8, i64 8, i64 16, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %121, ptr %121, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %123, ptr %123, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupMemrefRankFourArgument(ptr %125, ptr %125, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 192)
  call void @sstSetupIntArgument(i64 6, i64 280)
  call void @sstSetupIntArgument(i64 5, i64 288)
  call void @sstcudaLaunch(i64 15)
  %129 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %129, i64 16)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 8, i64 8, i64 16, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankOneArgument(ptr %84, ptr %84, i64 0, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %125, ptr %125, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 56)
  call void @sstSetupMemrefRankFourArgument(ptr %127, ptr %127, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 144)
  call void @sstcudaLaunch(i64 16)
  %130 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  %131 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %131, i64 17)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 16, i64 8, i64 8, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %127, ptr %127, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %130, ptr %130, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 17)
  %132 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  call void @sstcudaMemcpy(ptr %132, ptr @__constant_1x16x8x8xf32, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64), i1 false)
  %133 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  %134 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %134, i64 18)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 16, i64 8, i64 8, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %130, ptr %130, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %132, ptr %132, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupMemrefRankFourArgument(ptr %133, ptr %133, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 192)
  call void @sstcudaLaunch(i64 18)
  %135 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1024) to i64))
  %136 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %136, i64 19)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 8, i64 8, i64 16, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %133, ptr %133, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %135, ptr %135, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 19)
  %137 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64))
  %138 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %138, i64 20)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 4, i64 4, i64 16, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0xC7EFFFFFE0000000, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %137, ptr %137, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 20)
  %139 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %139, i64 21)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 4, i64 4, i64 16, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %135, ptr %135, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %137, ptr %137, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstSetupIntArgument(i64 2, i64 192)
  call void @sstcudaLaunch(i64 21)
  %140 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 256) to i64))
  %141 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %140, 0
  %142 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %141, ptr %140, 1
  %143 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %142, i64 0, 2
  %144 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %144, i64 22)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 16, i64 4, i64 4, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankFourArgument(ptr %137, ptr %137, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankFourArgument(ptr %140, ptr %140, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 104)
  call void @sstcudaLaunch(i64 22)
  %145 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 30720) to i64))
  %146 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %145, 0
  %147 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %146, ptr %145, 1
  %148 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, i64 0, 2
  %149 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %149, i64 23)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 256, i64 120, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankTwoArgument(ptr %85, ptr %85, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankTwoArgument(ptr %145, ptr %145, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 72)
  call void @sstcudaLaunch(i64 23)
  %150 = insertvalue { ptr, ptr, i64 } undef, ptr %140, 0
  %151 = insertvalue { ptr, ptr, i64 } %150, ptr %140, 1
  %152 = insertvalue { ptr, ptr, i64 } %151, i64 0, 2
  %153 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %140, 0
  %154 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %153, ptr %140, 1
  %155 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %154, i64 0, 2
  %156 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %155, i64 1, 3, 0
  %157 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %156, i64 256, 4, 0
  %158 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %157, i64 1, 3, 1
  %159 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %158, i64 256, 4, 1
  %160 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %159, i64 256, 3, 2
  %161 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %160, i64 1, 4, 2
  %162 = insertvalue { ptr, ptr, i64 } undef, ptr %145, 0
  %163 = insertvalue { ptr, ptr, i64 } %162, ptr %145, 1
  %164 = insertvalue { ptr, ptr, i64 } %163, i64 0, 2
  %165 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %145, 0
  %166 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %165, ptr %145, 1
  %167 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %166, i64 0, 2
  %168 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %167, i64 1, 3, 0
  %169 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %168, i64 30720, 4, 0
  %170 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %169, i64 256, 3, 1
  %171 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %170, i64 120, 4, 1
  %172 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %171, i64 120, 3, 2
  %173 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %172, i64 1, 4, 2
  %174 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64))
  %175 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %174, 0
  %176 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %175, ptr %174, 1
  %177 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %176, i64 0, 2
  %178 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %178, i64 24)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 120, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0.000000e+00, i64 16)
  call void @sstSetupMemrefRankThreeArgument(ptr %174, ptr %174, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 24)
  %179 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %179, i64 25)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 120, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  %180 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 0
  %181 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 1
  %182 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 2
  %183 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 3, 0
  %184 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 3, 1
  %185 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 3, 2
  %186 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 4, 0
  %187 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 4, 1
  %188 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %161, 4, 2
  call void @sstSetupMemrefRankThreeArgument(ptr %180, ptr %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 16)
  %189 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 0
  %190 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 1
  %191 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 2
  %192 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 3, 0
  %193 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 3, 1
  %194 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 3, 2
  %195 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 4, 0
  %196 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 4, 1
  %197 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %173, 4, 2
  call void @sstSetupMemrefRankThreeArgument(ptr %189, ptr %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 88)
  call void @sstSetupMemrefRankThreeArgument(ptr %174, ptr %174, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 160)
  call void @sstSetupIntArgument(i64 256, i64 232)
  call void @sstcudaLaunch(i64 25)
  %198 = insertvalue { ptr, ptr, i64 } undef, ptr %174, 0
  %199 = insertvalue { ptr, ptr, i64 } %198, ptr %174, 1
  %200 = insertvalue { ptr, ptr, i64 } %199, i64 0, 2
  %201 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %174, 0
  %202 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %201, ptr %174, 1
  %203 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %202, i64 0, 2
  %204 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, i64 1, 3, 0
  %205 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %204, i64 120, 4, 0
  %206 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %205, i64 120, 3, 1
  %207 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %206, i64 1, 4, 1
  %208 = insertvalue { ptr, ptr, i64 } undef, ptr %86, 0
  %209 = insertvalue { ptr, ptr, i64 } %208, ptr %86, 1
  %210 = insertvalue { ptr, ptr, i64 } %209, i64 0, 2
  %211 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %86, 0
  %212 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %211, ptr %86, 1
  %213 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %212, i64 0, 2
  %214 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %213, i64 1, 3, 0
  %215 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %214, i64 120, 4, 0
  %216 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %215, i64 120, 3, 1
  %217 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %216, i64 1, 4, 1
  %218 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64))
  %219 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %219, i64 26)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 120, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  %220 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, 0
  %221 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, 1
  %222 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, 2
  %223 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, 3, 0
  %224 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, 3, 1
  %225 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, 4, 0
  %226 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, 4, 1
  call void @sstSetupMemrefRankTwoArgument(ptr %220, ptr %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 16)
  %227 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, 0
  %228 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, 1
  %229 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, 2
  %230 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, 3, 0
  %231 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, 3, 1
  %232 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, 4, 0
  %233 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, 4, 1
  call void @sstSetupMemrefRankTwoArgument(ptr %227, ptr %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 72)
  call void @sstSetupMemrefRankTwoArgument(ptr %218, ptr %218, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 128)
  call void @sstcudaLaunch(i64 26)
  %234 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64))
  call void @sstcudaMemcpy(ptr %234, ptr @__constant_1x120xf32, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64), i1 false)
  %235 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 120) to i64))
  %236 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %235, 0
  %237 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %236, ptr %235, 1
  %238 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %237, i64 0, 2
  %239 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %239, i64 27)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 120, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankTwoArgument(ptr %218, ptr %218, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankTwoArgument(ptr %234, ptr %234, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 72)
  call void @sstSetupMemrefRankTwoArgument(ptr %235, ptr %235, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 128)
  call void @sstcudaLaunch(i64 27)
  %240 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10080) to i64))
  %241 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %240, 0
  %242 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %241, ptr %240, 1
  %243 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %242, i64 0, 2
  %244 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %244, i64 28)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 120, i64 84, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankTwoArgument(ptr %90, ptr %90, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankTwoArgument(ptr %240, ptr %240, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 72)
  call void @sstcudaLaunch(i64 28)
  %245 = insertvalue { ptr, ptr, i64 } undef, ptr %235, 0
  %246 = insertvalue { ptr, ptr, i64 } %245, ptr %235, 1
  %247 = insertvalue { ptr, ptr, i64 } %246, i64 0, 2
  %248 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %235, 0
  %249 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %248, ptr %235, 1
  %250 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %249, i64 0, 2
  %251 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %250, i64 1, 3, 0
  %252 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %251, i64 120, 4, 0
  %253 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %252, i64 1, 3, 1
  %254 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %253, i64 120, 4, 1
  %255 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %254, i64 120, 3, 2
  %256 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %255, i64 1, 4, 2
  %257 = insertvalue { ptr, ptr, i64 } undef, ptr %240, 0
  %258 = insertvalue { ptr, ptr, i64 } %257, ptr %240, 1
  %259 = insertvalue { ptr, ptr, i64 } %258, i64 0, 2
  %260 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %240, 0
  %261 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %260, ptr %240, 1
  %262 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %261, i64 0, 2
  %263 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %262, i64 1, 3, 0
  %264 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %263, i64 10080, 4, 0
  %265 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %264, i64 120, 3, 1
  %266 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %265, i64 84, 4, 1
  %267 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %266, i64 84, 3, 2
  %268 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %267, i64 1, 4, 2
  %269 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  %270 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %269, 0
  %271 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %270, ptr %269, 1
  %272 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %271, i64 0, 2
  %273 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %273, i64 29)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 84, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0.000000e+00, i64 16)
  call void @sstSetupMemrefRankThreeArgument(ptr %269, ptr %269, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 29)
  %274 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %274, i64 30)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 84, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  %275 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 0
  %276 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 1
  %277 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 2
  %278 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 3, 0
  %279 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 3, 1
  %280 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 3, 2
  %281 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 4, 0
  %282 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 4, 1
  %283 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, 4, 2
  call void @sstSetupMemrefRankThreeArgument(ptr %275, ptr %276, i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 16)
  %284 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 0
  %285 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 1
  %286 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 2
  %287 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 3, 0
  %288 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 3, 1
  %289 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 3, 2
  %290 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 4, 0
  %291 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 4, 1
  %292 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, 4, 2
  call void @sstSetupMemrefRankThreeArgument(ptr %284, ptr %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292, i64 88)
  call void @sstSetupMemrefRankThreeArgument(ptr %269, ptr %269, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 160)
  call void @sstSetupIntArgument(i64 120, i64 232)
  call void @sstcudaLaunch(i64 30)
  %293 = insertvalue { ptr, ptr, i64 } undef, ptr %269, 0
  %294 = insertvalue { ptr, ptr, i64 } %293, ptr %269, 1
  %295 = insertvalue { ptr, ptr, i64 } %294, i64 0, 2
  %296 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %269, 0
  %297 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %296, ptr %269, 1
  %298 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %297, i64 0, 2
  %299 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %298, i64 1, 3, 0
  %300 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %299, i64 84, 4, 0
  %301 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %300, i64 84, 3, 1
  %302 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %301, i64 1, 4, 1
  %303 = insertvalue { ptr, ptr, i64 } undef, ptr %91, 0
  %304 = insertvalue { ptr, ptr, i64 } %303, ptr %91, 1
  %305 = insertvalue { ptr, ptr, i64 } %304, i64 0, 2
  %306 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %91, 0
  %307 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %306, ptr %91, 1
  %308 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %307, i64 0, 2
  %309 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %308, i64 1, 3, 0
  %310 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %309, i64 84, 4, 0
  %311 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %310, i64 84, 3, 1
  %312 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %311, i64 1, 4, 1
  %313 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  %314 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %314, i64 31)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 84, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  %315 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %312, 0
  %316 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %312, 1
  %317 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %312, 2
  %318 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %312, 3, 0
  %319 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %312, 3, 1
  %320 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %312, 4, 0
  %321 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %312, 4, 1
  call void @sstSetupMemrefRankTwoArgument(ptr %315, ptr %316, i64 %317, i64 %318, i64 %319, i64 %320, i64 %321, i64 16)
  %322 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 0
  %323 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 1
  %324 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 2
  %325 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 3, 0
  %326 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 3, 1
  %327 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 4, 0
  %328 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %302, 4, 1
  call void @sstSetupMemrefRankTwoArgument(ptr %322, ptr %323, i64 %324, i64 %325, i64 %326, i64 %327, i64 %328, i64 72)
  call void @sstSetupMemrefRankTwoArgument(ptr %313, ptr %313, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 128)
  call void @sstcudaLaunch(i64 31)
  %329 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  call void @sstcudaMemcpy(ptr %329, ptr @__constant_1x84xf32, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64), i1 false)
  %330 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 84) to i64))
  %331 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %330, 0
  %332 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %331, ptr %330, 1
  %333 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %332, i64 0, 2
  %334 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %334, i64 32)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 84, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankTwoArgument(ptr %313, ptr %313, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankTwoArgument(ptr %329, ptr %329, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 72)
  call void @sstSetupMemrefRankTwoArgument(ptr %330, ptr %330, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 128)
  call void @sstcudaLaunch(i64 32)
  %335 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 840) to i64))
  %336 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %335, 0
  %337 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %336, ptr %335, 1
  %338 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %337, i64 0, 2
  %339 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %339, i64 33)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 84, i64 10, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupMemrefRankTwoArgument(ptr %95, ptr %95, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 16)
  call void @sstSetupMemrefRankTwoArgument(ptr %335, ptr %335, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 72)
  call void @sstcudaLaunch(i64 33)
  %340 = insertvalue { ptr, ptr, i64 } undef, ptr %330, 0
  %341 = insertvalue { ptr, ptr, i64 } %340, ptr %330, 1
  %342 = insertvalue { ptr, ptr, i64 } %341, i64 0, 2
  %343 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %330, 0
  %344 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %343, ptr %330, 1
  %345 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %344, i64 0, 2
  %346 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %345, i64 1, 3, 0
  %347 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %346, i64 84, 4, 0
  %348 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %347, i64 1, 3, 1
  %349 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %348, i64 84, 4, 1
  %350 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %349, i64 84, 3, 2
  %351 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %350, i64 1, 4, 2
  %352 = insertvalue { ptr, ptr, i64 } undef, ptr %335, 0
  %353 = insertvalue { ptr, ptr, i64 } %352, ptr %335, 1
  %354 = insertvalue { ptr, ptr, i64 } %353, i64 0, 2
  %355 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %335, 0
  %356 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %355, ptr %335, 1
  %357 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %356, i64 0, 2
  %358 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %357, i64 1, 3, 0
  %359 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %358, i64 840, 4, 0
  %360 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %359, i64 84, 3, 1
  %361 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %360, i64 10, 4, 1
  %362 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %361, i64 10, 3, 2
  %363 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %362, i64 1, 4, 2
  %364 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10) to i64))
  %365 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %364, 0
  %366 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %365, ptr %364, 1
  %367 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %366, i64 0, 2
  %368 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %368, i64 34)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 10, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  call void @sstSetupFloat32Argument(float 0.000000e+00, i64 16)
  call void @sstSetupMemrefRankThreeArgument(ptr %364, ptr %364, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 24)
  call void @sstcudaLaunch(i64 34)
  %369 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %369, i64 35)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 10, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  %370 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 0
  %371 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 1
  %372 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 2
  %373 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 3, 0
  %374 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 3, 1
  %375 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 3, 2
  %376 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 4, 0
  %377 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 4, 1
  %378 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %351, 4, 2
  call void @sstSetupMemrefRankThreeArgument(ptr %370, ptr %371, i64 %372, i64 %373, i64 %374, i64 %375, i64 %376, i64 %377, i64 %378, i64 16)
  %379 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 0
  %380 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 1
  %381 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 2
  %382 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 3, 0
  %383 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 3, 1
  %384 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 3, 2
  %385 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 4, 0
  %386 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 4, 1
  %387 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %363, 4, 2
  call void @sstSetupMemrefRankThreeArgument(ptr %379, ptr %380, i64 %381, i64 %382, i64 %383, i64 %384, i64 %385, i64 %386, i64 %387, i64 88)
  call void @sstSetupMemrefRankThreeArgument(ptr %364, ptr %364, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 160)
  call void @sstSetupIntArgument(i64 84, i64 232)
  call void @sstcudaLaunch(i64 35)
  %388 = insertvalue { ptr, ptr, i64 } undef, ptr %364, 0
  %389 = insertvalue { ptr, ptr, i64 } %388, ptr %364, 1
  %390 = insertvalue { ptr, ptr, i64 } %389, i64 0, 2
  %391 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %364, 0
  %392 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %391, ptr %364, 1
  %393 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %392, i64 0, 2
  %394 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %393, i64 1, 3, 0
  %395 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, i64 10, 4, 0
  %396 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %395, i64 10, 3, 1
  %397 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, i64 1, 4, 1
  %398 = insertvalue { ptr, ptr, i64 } undef, ptr %96, 0
  %399 = insertvalue { ptr, ptr, i64 } %398, ptr %96, 1
  %400 = insertvalue { ptr, ptr, i64 } %399, i64 0, 2
  %401 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %96, 0
  %402 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %401, ptr %96, 1
  %403 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %402, i64 0, 2
  %404 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %403, i64 1, 3, 0
  %405 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %404, i64 10, 4, 0
  %406 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %405, i64 10, 3, 1
  %407 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %406, i64 1, 4, 1
  %408 = call ptr @sstcudaMalloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10) to i64))
  %409 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %409, i64 36)
  call void @sstcudaConfigureCall(i64 1, i64 1, i64 1, i64 10, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 1, i64 0)
  call void @sstSetupIntArgument(i64 0, i64 8)
  %410 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, 0
  %411 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, 1
  %412 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, 2
  %413 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, 3, 0
  %414 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, 3, 1
  %415 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, 4, 0
  %416 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, 4, 1
  call void @sstSetupMemrefRankTwoArgument(ptr %410, ptr %411, i64 %412, i64 %413, i64 %414, i64 %415, i64 %416, i64 16)
  %417 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, 0
  %418 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, 1
  %419 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, 2
  %420 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, 3, 0
  %421 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, 3, 1
  %422 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, 4, 0
  %423 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %397, 4, 1
  call void @sstSetupMemrefRankTwoArgument(ptr %417, ptr %418, i64 %419, i64 %420, i64 %421, i64 %422, i64 %423, i64 72)
  call void @sstSetupMemrefRankTwoArgument(ptr %408, ptr %408, i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 128)
  call void @sstcudaLaunch(i64 36)
  %424 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10) to i64))
  %425 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %424, 0
  %426 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %425, ptr %424, 1
  %427 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %426, i64 0, 2
  %428 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %427, i64 1, 3, 0
  %429 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %428, i64 10, 3, 1
  %430 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %429, i64 10, 4, 0
  %431 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %430, i64 1, 4, 1
  call void @sstcudaMemcpy(ptr %424, ptr %408, i64 ptrtoint (ptr getelementptr (float, ptr null, i32 10) to i64), i1 true)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %431
}

define void @_mlir_ciface_subgraph0(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr %6, ptr %7, ptr %8, ptr %9, ptr %10, ptr %11) {
  %13 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %1, align 8
  %14 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 0
  %15 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 1
  %16 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 2
  %17 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 3, 0
  %18 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 3, 1
  %19 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 3, 2
  %20 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 3, 3
  %21 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 4, 0
  %22 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 4, 1
  %23 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 4, 2
  %24 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, 4, 3
  %25 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %2, align 8
  %26 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 0
  %27 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 1
  %28 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 2
  %29 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 3, 0
  %30 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 3, 1
  %31 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 3, 2
  %32 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 3, 3
  %33 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 4, 0
  %34 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 4, 1
  %35 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 4, 2
  %36 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, 4, 3
  %37 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 0
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 1
  %40 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 2
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 3, 0
  %42 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 4, 0
  %43 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %4, align 8
  %44 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 0
  %45 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 1
  %46 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 2
  %47 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 3, 0
  %48 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 3, 1
  %49 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 3, 2
  %50 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 3, 3
  %51 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 4, 0
  %52 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 4, 1
  %53 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 4, 2
  %54 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %43, 4, 3
  %55 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %5, align 8
  %56 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 0
  %57 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 1
  %58 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 2
  %59 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 3, 0
  %60 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 4, 0
  %61 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %6, align 8
  %62 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, 0
  %63 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, 1
  %64 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, 2
  %65 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, 3, 0
  %66 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, 3, 1
  %67 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, 4, 0
  %68 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, 4, 1
  %69 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %7, align 8
  %70 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, 0
  %71 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, 1
  %72 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, 2
  %73 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, 3, 0
  %74 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, 4, 0
  %75 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %8, align 8
  %76 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, 0
  %77 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, 1
  %78 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, 2
  %79 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, 3, 0
  %80 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, 3, 1
  %81 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, 4, 0
  %82 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, 4, 1
  %83 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %9, align 8
  %84 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 0
  %85 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 1
  %86 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 2
  %87 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 3, 0
  %88 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 4, 0
  %89 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %10, align 8
  %90 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 0
  %91 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 1
  %92 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 2
  %93 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 3, 0
  %94 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 3, 1
  %95 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 4, 0
  %96 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 4, 1
  %97 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %11, align 8
  %98 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, 0
  %99 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, 1
  %100 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, 2
  %101 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, 3, 0
  %102 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, 4, 0
  %103 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @subgraph0(ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42, ptr %44, ptr %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, ptr %56, ptr %57, i64 %58, i64 %59, i64 %60, ptr %62, ptr %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, ptr %70, ptr %71, i64 %72, i64 %73, i64 %74, ptr %76, ptr %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, ptr %84, ptr %85, i64 %86, i64 %87, i64 %88, ptr %90, ptr %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, ptr %98, ptr %99, i64 %100, i64 %101, i64 %102)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %103, ptr %0, align 8
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

declare void @sstSetupMemrefRankTwoArgument(ptr, ptr, i64, i64, i64, i64, i64, i64)

declare void @sstSetupMemrefRankThreeArgument(ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64)

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
