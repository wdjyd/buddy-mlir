; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @group_scheduler(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22) {
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
  %47 = call i64 @sstGetCpuId()
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %116

49:                                               ; preds = %23
  %50 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 0
  %51 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 1
  %52 = insertvalue { ptr, ptr, i64 } undef, ptr %50, 0
  %53 = insertvalue { ptr, ptr, i64 } %52, ptr %51, 1
  %54 = insertvalue { ptr, ptr, i64 } %53, i64 0, 2
  %55 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 2
  %56 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 0
  %57 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 1
  %58 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 2
  %59 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 3
  %60 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 0
  %61 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 1
  %62 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 2
  %63 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 3
  %64 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %50, 0
  %65 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %64, ptr %51, 1
  %66 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %65, i64 0, 2
  %67 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %66, i64 30, 3, 0
  %68 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %67, i64 784, 4, 0
  %69 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %68, i64 1, 3, 1
  %70 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %69, i64 784, 4, 1
  %71 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %70, i64 28, 3, 2
  %72 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %71, i64 28, 4, 2
  %73 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %72, i64 28, 3, 3
  %74 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %73, i64 1, 4, 3
  %75 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 23520) to i64))
  %76 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %75, 0
  %77 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %76, ptr %75, 1
  %78 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %77, i64 0, 2
  %79 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %78, i64 30, 3, 0
  %80 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %79, i64 1, 3, 1
  %81 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %80, i64 28, 3, 2
  %82 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %81, i64 28, 3, 3
  %83 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %82, i64 784, 4, 0
  %84 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %83, i64 784, 4, 1
  %85 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %84, i64 28, 4, 2
  %86 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %85, i64 1, 4, 3
  %87 = getelementptr float, ptr %51, i64 0
  %88 = getelementptr float, ptr %75, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %88, ptr %87, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 23520), i1 false)
  %89 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @forward(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %75, ptr %75, i64 0, i64 30, i64 1, i64 28, i64 28, i64 784, i64 784, i64 28, i64 1)
  %90 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 0
  %91 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 1
  %92 = insertvalue { ptr, ptr, i64 } undef, ptr %90, 0
  %93 = insertvalue { ptr, ptr, i64 } %92, ptr %91, 1
  %94 = insertvalue { ptr, ptr, i64 } %93, i64 0, 2
  %95 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 2
  %96 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 3, 0
  %97 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 3, 1
  %98 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 4, 0
  %99 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 4, 1
  %100 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %90, 0
  %101 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %100, ptr %91, 1
  %102 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %101, i64 0, 2
  %103 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, i64 30, 3, 0
  %104 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %103, i64 10, 4, 0
  %105 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %104, i64 10, 3, 1
  %106 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %105, i64 1, 4, 1
  %107 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 3, 0
  %108 = mul i64 %107, 1
  %109 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 3, 1
  %110 = mul i64 %108, %109
  %111 = mul i64 %110, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %112 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 1
  %113 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, 2
  %114 = getelementptr float, ptr %112, i64 %113
  %115 = getelementptr float, ptr %91, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %115, ptr %114, i64 %111, i1 false)
  br label %116

116:                                              ; preds = %49, %23
  %117 = icmp eq i64 %47, 1
  br i1 %117, label %118, label %185

118:                                              ; preds = %116
  %119 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 0
  %120 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 1
  %121 = insertvalue { ptr, ptr, i64 } undef, ptr %119, 0
  %122 = insertvalue { ptr, ptr, i64 } %121, ptr %120, 1
  %123 = insertvalue { ptr, ptr, i64 } %122, i64 0, 2
  %124 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 2
  %125 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 0
  %126 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 1
  %127 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 2
  %128 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 3
  %129 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 0
  %130 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 1
  %131 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 2
  %132 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 3
  %133 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %119, 0
  %134 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %133, ptr %120, 1
  %135 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %134, i64 23520, 2
  %136 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %135, i64 30, 3, 0
  %137 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %136, i64 784, 4, 0
  %138 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %137, i64 1, 3, 1
  %139 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %138, i64 784, 4, 1
  %140 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %139, i64 28, 3, 2
  %141 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %140, i64 28, 4, 2
  %142 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %141, i64 28, 3, 3
  %143 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %142, i64 1, 4, 3
  %144 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 23520) to i64))
  %145 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %144, 0
  %146 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %145, ptr %144, 1
  %147 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %146, i64 0, 2
  %148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %147, i64 30, 3, 0
  %149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %148, i64 1, 3, 1
  %150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %149, i64 28, 3, 2
  %151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %150, i64 28, 3, 3
  %152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %151, i64 784, 4, 0
  %153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %152, i64 784, 4, 1
  %154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %153, i64 28, 4, 2
  %155 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, i64 1, 4, 3
  %156 = getelementptr float, ptr %120, i64 23520
  %157 = getelementptr float, ptr %144, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %157, ptr %156, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 23520), i1 false)
  %158 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @forward(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %144, ptr %144, i64 0, i64 30, i64 1, i64 28, i64 28, i64 784, i64 784, i64 28, i64 1)
  %159 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 0
  %160 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 1
  %161 = insertvalue { ptr, ptr, i64 } undef, ptr %159, 0
  %162 = insertvalue { ptr, ptr, i64 } %161, ptr %160, 1
  %163 = insertvalue { ptr, ptr, i64 } %162, i64 0, 2
  %164 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 2
  %165 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 3, 0
  %166 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 3, 1
  %167 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 4, 0
  %168 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 4, 1
  %169 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %159, 0
  %170 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %169, ptr %160, 1
  %171 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %170, i64 300, 2
  %172 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %171, i64 30, 3, 0
  %173 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %172, i64 10, 4, 0
  %174 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %173, i64 10, 3, 1
  %175 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %174, i64 1, 4, 1
  %176 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %158, 3, 0
  %177 = mul i64 %176, 1
  %178 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %158, 3, 1
  %179 = mul i64 %177, %178
  %180 = mul i64 %179, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %181 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %158, 1
  %182 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %158, 2
  %183 = getelementptr float, ptr %181, i64 %182
  %184 = getelementptr float, ptr %160, i64 300
  call void @llvm.memcpy.p0.p0.i64(ptr %184, ptr %183, i64 %180, i1 false)
  br label %185

185:                                              ; preds = %118, %116
  %186 = icmp eq i64 %47, 2
  br i1 %186, label %187, label %254

187:                                              ; preds = %185
  %188 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 0
  %189 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 1
  %190 = insertvalue { ptr, ptr, i64 } undef, ptr %188, 0
  %191 = insertvalue { ptr, ptr, i64 } %190, ptr %189, 1
  %192 = insertvalue { ptr, ptr, i64 } %191, i64 0, 2
  %193 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 2
  %194 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 0
  %195 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 1
  %196 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 2
  %197 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 3, 3
  %198 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 0
  %199 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 1
  %200 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 2
  %201 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %39, 4, 3
  %202 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %188, 0
  %203 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %202, ptr %189, 1
  %204 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %203, i64 47040, 2
  %205 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %204, i64 30, 3, 0
  %206 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %205, i64 784, 4, 0
  %207 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %206, i64 1, 3, 1
  %208 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %207, i64 784, 4, 1
  %209 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %208, i64 28, 3, 2
  %210 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %209, i64 28, 4, 2
  %211 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %210, i64 28, 3, 3
  %212 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %211, i64 1, 4, 3
  %213 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 23520) to i64))
  %214 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %213, 0
  %215 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, ptr %213, 1
  %216 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %215, i64 0, 2
  %217 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %216, i64 30, 3, 0
  %218 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %217, i64 1, 3, 1
  %219 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %218, i64 28, 3, 2
  %220 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %219, i64 28, 3, 3
  %221 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, i64 784, 4, 0
  %222 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %221, i64 784, 4, 1
  %223 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %222, i64 28, 4, 2
  %224 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %223, i64 1, 4, 3
  %225 = getelementptr float, ptr %189, i64 47040
  %226 = getelementptr float, ptr %213, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %226, ptr %225, i64 mul (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 23520), i1 false)
  %227 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @forward(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %213, ptr %213, i64 0, i64 30, i64 1, i64 28, i64 28, i64 784, i64 784, i64 28, i64 1)
  %228 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 0
  %229 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 1
  %230 = insertvalue { ptr, ptr, i64 } undef, ptr %228, 0
  %231 = insertvalue { ptr, ptr, i64 } %230, ptr %229, 1
  %232 = insertvalue { ptr, ptr, i64 } %231, i64 0, 2
  %233 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 2
  %234 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 3, 0
  %235 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 3, 1
  %236 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 4, 0
  %237 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 4, 1
  %238 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %228, 0
  %239 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %238, ptr %229, 1
  %240 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %239, i64 600, 2
  %241 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %240, i64 30, 3, 0
  %242 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %241, i64 10, 4, 0
  %243 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %242, i64 10, 3, 1
  %244 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %243, i64 1, 4, 1
  %245 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %227, 3, 0
  %246 = mul i64 %245, 1
  %247 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %227, 3, 1
  %248 = mul i64 %246, %247
  %249 = mul i64 %248, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %250 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %227, 1
  %251 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %227, 2
  %252 = getelementptr float, ptr %250, i64 %251
  %253 = getelementptr float, ptr %229, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr %253, ptr %252, i64 %249, i1 false)
  br label %254

254:                                              ; preds = %187, %185
  ret void
}

declare { ptr, ptr, i64, [2 x i64], [2 x i64] } @forward(ptr, ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare i64 @sstGetCpuId()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
