; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @CUDA(ptr %0, i32 %1, ptr %2, i32 %3) {
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %0, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  %7 = sext i32 %1 to i64
  %8 = sext i32 %3 to i64
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to float
  %11 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i8, ptr null, i32 3) to i64))
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, ptr %11, 1
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 0, 2
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, i64 3, 3, 0
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 1, 4, 0
  %17 = call i64 @sstGetCpuId()
  %18 = call i64 @__sstcudaRegisterFatBinary()
  call void @__sstcudaRegisterFunction(i64 %18, i64 1)
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %20, label %147

20:                                               ; preds = %4
  %21 = fmul float %10, 0.000000e+00
  %22 = fptosi float %21 to i32
  %23 = sext i32 %22 to i64
  %24 = fmul float %10, 0x3FA475A320000000
  %25 = fptosi float %24 to i32
  %26 = sext i32 %25 to i64
  %27 = sub i64 %8, %23
  %28 = mul i64 %27, 20
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %11, 0
  %30 = getelementptr i8, ptr %11, i64 %23
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, ptr %30, 1
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 0, 2
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 %27, 3, 0
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 1, 4, 0
  %35 = mul i64 %23, 20
  %36 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 0
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %36, 0
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %39 = getelementptr i8, ptr %38, i64 %35
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, ptr %39, 1
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 0, 2
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 %28, 3, 0
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 1, 4, 0
  %44 = trunc i64 %27 to i32
  %45 = sitofp i32 %44 to float
  %46 = sext i32 %1 to i64
  %47 = fmul float %45, 0x3FD45F53C0000000
  %48 = fptosi float %47 to i32
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 0
  %51 = udiv i64 %27, %27
  %52 = mul i64 %50, %51
  %53 = mul i64 %51, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %11, 0
  %55 = getelementptr i8, ptr %30, i64 %53
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, ptr %55, 1
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 0, 2
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 %52, 3, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, i64 1, 4, 0
  %60 = getelementptr i8, ptr null, i64 %52
  %61 = ptrtoint ptr %60 to i64
  %62 = call ptr @malloc(i64 %61)
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %62, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, ptr %62, 1
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 0, 2
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 %52, 3, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 1, 4, 0
  %68 = udiv i64 %28, %27
  %69 = mul i64 %50, %68
  %70 = mul i64 %68, 0
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %36, 0
  %72 = getelementptr i8, ptr %39, i64 %70
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, ptr %72, 1
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, i64 0, 2
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, i64 %69, 3, 0
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, i64 1, 4, 0
  %77 = getelementptr i8, ptr null, i64 %69
  %78 = ptrtoint ptr %77 to i64
  %79 = call ptr @malloc(i64 %78)
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %79, 0
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, ptr %79, 1
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 0, 2
  %83 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, i64 %69, 3, 0
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, i64 1, 4, 0
  %85 = mul i64 %52, 1
  %86 = mul i64 %85, ptrtoint (ptr getelementptr (i8, ptr null, i32 1) to i64)
  %87 = getelementptr i8, ptr %55, i64 0
  %88 = getelementptr i8, ptr %62, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %88, ptr %87, i64 %86, i1 false)
  br label %89

89:                                               ; preds = %92, %20
  %90 = phi i64 [ %106, %92 ], [ 0, %20 ]
  %91 = icmp slt i64 %90, %50
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = mul i64 %90, 20
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %62, 0
  %95 = getelementptr i8, ptr %62, i64 %90
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, ptr %95, 1
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, i64 0, 2
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, i64 1, 3, 0
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, i64 1, 4, 0
  %100 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %79, 0
  %101 = getelementptr i8, ptr %79, i64 %93
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %100, ptr %101, 1
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, i64 0, 2
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, i64 20, 3, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, i64 1, 4, 0
  %106 = add i64 %90, 1
  br label %89

107:                                              ; preds = %89
  %108 = mul i64 %69, 1
  %109 = mul i64 %108, ptrtoint (ptr getelementptr (i8, ptr null, i32 1) to i64)
  %110 = getelementptr i8, ptr %79, i64 0
  %111 = getelementptr i8, ptr %72, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %111, ptr %110, i64 %109, i1 false)
  %112 = sub i64 %27, %50
  %113 = udiv i64 %27, %27
  %114 = mul i64 %112, %113
  %115 = mul i64 %50, %113
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %11, 0
  %117 = getelementptr i8, ptr %30, i64 %115
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, ptr %117, 1
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, i64 0, 2
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, i64 %114, 3, 0
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, i64 1, 4, 0
  %122 = getelementptr i8, ptr null, i64 %114
  %123 = ptrtoint ptr %122 to i64
  %124 = call ptr @sstcudaMalloc(i64 %114)
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %124, 0
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, ptr %124, 1
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, i64 0, 2
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, i64 %114, 3, 0
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, i64 1, 4, 0
  %130 = udiv i64 %28, %27
  %131 = mul i64 %112, %130
  %132 = mul i64 %50, %130
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %36, 0
  %134 = getelementptr i8, ptr %39, i64 %132
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, ptr %134, 1
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, i64 0, 2
  %137 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, i64 %131, 3, 0
  %138 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %137, i64 1, 4, 0
  %139 = getelementptr i8, ptr null, i64 %131
  %140 = ptrtoint ptr %139 to i64
  %141 = call ptr @sstcudaMalloc(i64 %131)
  %142 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %141, 0
  %143 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, ptr %141, 1
  %144 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, i64 0, 2
  %145 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, i64 %131, 3, 0
  %146 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %145, i64 1, 4, 0
  call void @sstcudaMemcpy(ptr %124, ptr %117, i64 %114, i1 false)
  call void @sstcudaConfigureCall(i64 100, i64 1, i64 1, i64 1, i64 1, i64 1, i64 0)
  call void @sstSetupIntArgument(i64 %112, i64 0)
  call void @sstSetupIntArgument(i64 %113, i64 8)
  call void @sstSetupIntArgument(i64 %130, i64 16)
  call void @sstSetupMemrefArgument(ptr %124, ptr %124, i64 0, i64 %114, i64 1, i64 24)
  call void @sstSetupMemrefArgument(ptr %141, ptr %141, i64 0, i64 %131, i64 1, i64 64)
  call void @sstSetupInt32Argument(i32 %1, i64 104)
  call void @sstcudaLaunch(i64 1)
  call void @sstcudaMemcpy(ptr %134, ptr %141, i64 %131, i1 true)
  br label %147

147:                                              ; preds = %107, %4
  ret void
}

declare i64 @sstGetCpuId()

declare i64 @__sstcudaRegisterFatBinary()

declare void @__sstcudaRegisterFunction(i64, i64)

declare ptr @sstcudaMalloc(i64)

declare void @sstcudaMemcpy(ptr, ptr, i64, i1)

declare void @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)

declare void @sstSetupIntArgument(i64, i64)

declare void @sstSetupMemrefArgument(ptr, ptr, i64, i64, i64, i64)

declare void @sstSetupInt32Argument(i32, i64)

declare void @sstcudaLaunch(i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
