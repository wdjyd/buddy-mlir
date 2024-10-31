module attributes {gpu.container_module} {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @subgraph0(%arg0: tensor<1x1x28x28xf32>, %arg1: tensor<6x1x5x5xf32>, %arg2: tensor<6xf32>, %arg3: tensor<16x6x5x5xf32>, %arg4: tensor<16xf32>, %arg5: tensor<120xf32>, %arg6: tensor<256x120xf32>, %arg7: tensor<84xf32>, %arg8: tensor<120x84xf32>, %arg9: tensor<10xf32>, %arg10: tensor<84x10xf32>) -> tensor<1x10xf32> {
    %0 = bufferization.to_memref %arg0 : memref<1x1x28x28xf32>
    %1 = builtin.unrealized_conversion_cast %0 : memref<1x1x28x28xf32> to !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %2 = builtin.unrealized_conversion_cast %0 : memref<1x1x28x28xf32> to !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %3 = bufferization.to_memref %arg1 : memref<6x1x5x5xf32>
    %4 = builtin.unrealized_conversion_cast %3 : memref<6x1x5x5xf32> to !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %5 = builtin.unrealized_conversion_cast %3 : memref<6x1x5x5xf32> to !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %6 = bufferization.to_memref %arg2 : memref<6xf32>
    %7 = builtin.unrealized_conversion_cast %6 : memref<6xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %8 = builtin.unrealized_conversion_cast %6 : memref<6xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %9 = bufferization.to_memref %arg3 : memref<16x6x5x5xf32>
    %10 = builtin.unrealized_conversion_cast %9 : memref<16x6x5x5xf32> to !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %11 = builtin.unrealized_conversion_cast %9 : memref<16x6x5x5xf32> to !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %12 = bufferization.to_memref %arg4 : memref<16xf32>
    %13 = builtin.unrealized_conversion_cast %12 : memref<16xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %14 = builtin.unrealized_conversion_cast %12 : memref<16xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = bufferization.to_memref %arg5 : memref<120xf32>
    %16 = builtin.unrealized_conversion_cast %15 : memref<120xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %17 = bufferization.to_memref %arg6 : memref<256x120xf32>
    %18 = builtin.unrealized_conversion_cast %17 : memref<256x120xf32> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %19 = bufferization.to_memref %arg7 : memref<84xf32>
    %20 = builtin.unrealized_conversion_cast %19 : memref<84xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %21 = bufferization.to_memref %arg8 : memref<120x84xf32>
    %22 = builtin.unrealized_conversion_cast %21 : memref<120x84xf32> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %23 = bufferization.to_memref %arg9 : memref<10xf32>
    %24 = builtin.unrealized_conversion_cast %23 : memref<10xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = bufferization.to_memref %arg10 : memref<84x10xf32>
    %26 = builtin.unrealized_conversion_cast %25 : memref<84x10xf32> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(6 : index) : i64
    %29 = llvm.mlir.constant(24 : index) : i64
    %30 = llvm.mlir.constant(24 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(576 : index) : i64
    %33 = llvm.mlir.constant(3456 : index) : i64
    %34 = llvm.mlir.constant(3456 : index) : i64
    %35 = llvm.mlir.zero : !llvm.ptr
    %36 = llvm.getelementptr %35[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.call @malloc(%37) : (i64) -> !llvm.ptr
    %39 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %27, %43[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %28, %44[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %29, %45[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %30, %46[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %33, %47[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %32, %48[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %30, %49[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %31, %50[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = builtin.unrealized_conversion_cast %51 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> to memref<1x6x24x24xf32>
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.alloca %53 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %2, %54 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(i64, ptr)> 
    %58 = llvm.insertvalue %54, %57[1] : !llvm.struct<(i64, ptr)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.alloca %59 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %5, %60 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %61 = llvm.mlir.constant(4 : index) : i64
    %62 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(i64, ptr)> 
    %64 = llvm.insertvalue %60, %63[1] : !llvm.struct<(i64, ptr)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.alloca %65 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %8, %66 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %69 = llvm.insertvalue %67, %68[0] : !llvm.struct<(i64, ptr)> 
    %70 = llvm.insertvalue %66, %69[1] : !llvm.struct<(i64, ptr)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.alloca %71 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %51, %72 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %73 = llvm.mlir.constant(4 : index) : i64
    %74 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(i64, ptr)> 
    %76 = llvm.insertvalue %72, %75[1] : !llvm.struct<(i64, ptr)> 
    %77 = llvm.mlir.zero : !llvm.ptr
    %78 = llvm.getelementptr %77[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %79 = llvm.ptrtoint %78 : !llvm.ptr to i64
    %80 = llvm.extractvalue %58[0] : !llvm.struct<(i64, ptr)> 
    %81 = llvm.extractvalue %58[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%80, %81, %79) : (i64, !llvm.ptr, i64) -> ()
    %82 = llvm.mlir.zero : !llvm.ptr
    %83 = llvm.getelementptr %82[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.extractvalue %64[0] : !llvm.struct<(i64, ptr)> 
    %86 = llvm.extractvalue %64[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%85, %86, %84) : (i64, !llvm.ptr, i64) -> ()
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.extractvalue %70[0] : !llvm.struct<(i64, ptr)> 
    %91 = llvm.extractvalue %70[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%90, %91, %89) : (i64, !llvm.ptr, i64) -> ()
    %92 = llvm.mlir.zero : !llvm.ptr
    %93 = llvm.getelementptr %92[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.extractvalue %76[0] : !llvm.struct<(i64, ptr)> 
    %96 = llvm.extractvalue %76[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%95, %96, %94) : (i64, !llvm.ptr, i64) -> ()
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = builtin.unrealized_conversion_cast %97 : i64 to index
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = builtin.unrealized_conversion_cast %99 : i64 to index
    %101 = llvm.mlir.constant(6 : index) : i64
    %102 = builtin.unrealized_conversion_cast %101 : i64 to index
    %103 = llvm.mlir.constant(4 : index) : i64
    %104 = builtin.unrealized_conversion_cast %103 : i64 to index
    %105 = llvm.mlir.constant(16 : index) : i64
    %106 = builtin.unrealized_conversion_cast %105 : i64 to index
    %107 = llvm.mlir.constant(5 : index) : i64
    %108 = builtin.unrealized_conversion_cast %107 : i64 to index
    %109 = llvm.mlir.constant(5 : index) : i64
    %110 = builtin.unrealized_conversion_cast %109 : i64 to index
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = builtin.unrealized_conversion_cast %111 : i64 to index
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%119, %117) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%105, %105, %113, %97, %101, %103, %115) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = builtin.unrealized_conversion_cast %120 : i64 to index
    llvm.call @sstSetupIntArgument(%105, %120) : (i64, i64) -> ()
    %122 = llvm.mlir.constant(8 : index) : i64
    %123 = builtin.unrealized_conversion_cast %122 : i64 to index
    %124 = llvm.extractvalue %1[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.extractvalue %1[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.extractvalue %1[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.extractvalue %1[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.extractvalue %1[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.extractvalue %1[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.extractvalue %1[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.extractvalue %1[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.extractvalue %1[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.extractvalue %1[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.extractvalue %1[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%124, %125, %126, %127, %128, %129, %130, %131, %132, %133, %134, %122) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %135 = llvm.mlir.constant(96 : index) : i64
    %136 = builtin.unrealized_conversion_cast %135 : i64 to index
    %137 = llvm.extractvalue %4[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.extractvalue %4[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.extractvalue %4[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.extractvalue %4[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.extractvalue %4[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%137, %138, %139, %140, %141, %142, %143, %144, %145, %146, %147, %135) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %148 = llvm.mlir.constant(184 : index) : i64
    %149 = builtin.unrealized_conversion_cast %148 : i64 to index
    llvm.call @sstSetupIntArgument(%111, %148) : (i64, i64) -> ()
    %150 = llvm.mlir.constant(192 : index) : i64
    %151 = builtin.unrealized_conversion_cast %150 : i64 to index
    llvm.call @sstSetupIntArgument(%109, %150) : (i64, i64) -> ()
    %152 = llvm.mlir.constant(200 : index) : i64
    %153 = builtin.unrealized_conversion_cast %152 : i64 to index
    llvm.call @sstSetupIntArgument(%113, %152) : (i64, i64) -> ()
    %154 = llvm.mlir.constant(208 : index) : i64
    %155 = builtin.unrealized_conversion_cast %154 : i64 to index
    llvm.call @sstSetupIntArgument(%107, %154) : (i64, i64) -> ()
    %156 = llvm.mlir.constant(216 : index) : i64
    %157 = builtin.unrealized_conversion_cast %156 : i64 to index
    llvm.call @sstSetupIntArgument(%99, %156) : (i64, i64) -> ()
    %158 = llvm.mlir.constant(224 : index) : i64
    %159 = builtin.unrealized_conversion_cast %158 : i64 to index
    %160 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%160, %161, %162, %163, %164, %158) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %165 = llvm.mlir.constant(264 : index) : i64
    %166 = builtin.unrealized_conversion_cast %165 : i64 to index
    %167 = llvm.extractvalue %51[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.extractvalue %51[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.extractvalue %51[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.extractvalue %51[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%167, %168, %169, %170, %171, %172, %173, %174, %175, %176, %177, %165) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%117) : (i64) -> ()
    %178 = llvm.mlir.zero : !llvm.ptr
    %179 = llvm.getelementptr %178[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %180 = llvm.ptrtoint %179 : !llvm.ptr to i64
    %181 = llvm.extractvalue %58[0] : !llvm.struct<(i64, ptr)> 
    %182 = llvm.extractvalue %58[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%181, %182, %180) : (i64, !llvm.ptr, i64) -> ()
    %183 = llvm.mlir.zero : !llvm.ptr
    %184 = llvm.getelementptr %183[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %185 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %186 = llvm.extractvalue %64[0] : !llvm.struct<(i64, ptr)> 
    %187 = llvm.extractvalue %64[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%186, %187, %185) : (i64, !llvm.ptr, i64) -> ()
    %188 = llvm.mlir.zero : !llvm.ptr
    %189 = llvm.getelementptr %188[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %190 = llvm.ptrtoint %189 : !llvm.ptr to i64
    %191 = llvm.extractvalue %70[0] : !llvm.struct<(i64, ptr)> 
    %192 = llvm.extractvalue %70[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%191, %192, %190) : (i64, !llvm.ptr, i64) -> ()
    %193 = llvm.mlir.zero : !llvm.ptr
    %194 = llvm.getelementptr %193[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %195 = llvm.ptrtoint %194 : !llvm.ptr to i64
    %196 = llvm.extractvalue %76[0] : !llvm.struct<(i64, ptr)> 
    %197 = llvm.extractvalue %76[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%196, %197, %195) : (i64, !llvm.ptr, i64) -> ()
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = builtin.unrealized_conversion_cast %199 : i64 to index
    %201 = llvm.mlir.constant(512 : index) : i64
    %202 = builtin.unrealized_conversion_cast %201 : i64 to index
    %203 = llvm.mlir.constant(3456 : index) : i64
    %204 = builtin.unrealized_conversion_cast %203 : i64 to index
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.zero : !llvm.ptr
    %208 = llvm.getelementptr %207[%205] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %209 = llvm.ptrtoint %208 : !llvm.ptr to i64
    %210 = llvm.call @malloc(%209) : (i64) -> !llvm.ptr
    %211 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %212 = llvm.insertvalue %210, %211[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %210, %212[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.insertvalue %214, %213[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.insertvalue %205, %215[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %206, %216[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.extractvalue %217[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.getelementptr %218[%198] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %203, %219 : i64, !llvm.ptr
    %220 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %221 = llvm.extractvalue %51[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.extractvalue %51[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %221, %220[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %222, %223[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.insertvalue %225, %224[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(3456 : index) : i64
    %229 = llvm.insertvalue %228, %226[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %227, %229[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mul %227, %228  : i64
    %232 = builtin.unrealized_conversion_cast %230 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<3456xf32>
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.alloca %233 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %51, %234 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %237 = llvm.insertvalue %235, %236[0] : !llvm.struct<(i64, ptr)> 
    %238 = llvm.insertvalue %234, %237[1] : !llvm.struct<(i64, ptr)> 
    %239 = llvm.mlir.zero : !llvm.ptr
    %240 = llvm.getelementptr %239[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %241 = llvm.ptrtoint %240 : !llvm.ptr to i64
    %242 = llvm.extractvalue %238[0] : !llvm.struct<(i64, ptr)> 
    %243 = llvm.extractvalue %238[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%242, %243, %241) : (i64, !llvm.ptr, i64) -> ()
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = builtin.unrealized_conversion_cast %244 : i64 to index
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = builtin.unrealized_conversion_cast %246 : i64 to index
    %248 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%248, %246) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%201, %199, %199, %199, %199, %199, %244) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = builtin.unrealized_conversion_cast %249 : i64 to index
    %251 = llvm.extractvalue %230[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.extractvalue %230[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.extractvalue %230[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.extractvalue %230[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.extractvalue %230[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%251, %252, %253, %254, %255, %249) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %256 = llvm.mlir.constant(40 : index) : i64
    %257 = builtin.unrealized_conversion_cast %256 : i64 to index
    llvm.call @sstSetupIntArgument(%203, %256) : (i64, i64) -> ()
    %258 = llvm.mlir.constant(48 : index) : i64
    %259 = builtin.unrealized_conversion_cast %258 : i64 to index
    llvm.call @sstSetupIntArgument(%201, %258) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%246) : (i64) -> ()
    %260 = llvm.mlir.zero : !llvm.ptr
    %261 = llvm.getelementptr %260[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %262 = llvm.ptrtoint %261 : !llvm.ptr to i64
    %263 = llvm.extractvalue %238[0] : !llvm.struct<(i64, ptr)> 
    %264 = llvm.extractvalue %238[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%263, %264, %262) : (i64, !llvm.ptr, i64) -> ()
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(6 : index) : i64
    %267 = llvm.mlir.constant(24 : index) : i64
    %268 = llvm.mlir.constant(24 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(576 : index) : i64
    %271 = llvm.mlir.constant(3456 : index) : i64
    %272 = llvm.mlir.constant(3456 : index) : i64
    %273 = llvm.mlir.zero : !llvm.ptr
    %274 = llvm.getelementptr %273[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %275 = llvm.ptrtoint %274 : !llvm.ptr to i64
    %276 = llvm.call @malloc(%275) : (i64) -> !llvm.ptr
    %277 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %278 = llvm.insertvalue %276, %277[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %276, %278[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.insertvalue %280, %279[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %265, %281[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %266, %282[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %267, %283[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %268, %284[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %271, %285[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %270, %286[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %268, %287[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %269, %288[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = builtin.unrealized_conversion_cast %289 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> to memref<1x6x24x24xf32>
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.mul %291, %292  : i64
    %294 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.mul %293, %294  : i64
    %296 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mul %295, %296  : i64
    %298 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.mul %297, %298  : i64
    %300 = llvm.mlir.zero : !llvm.ptr
    %301 = llvm.getelementptr %300[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    %303 = llvm.mul %299, %302  : i64
    %304 = llvm.extractvalue %51[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.extractvalue %51[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.getelementptr %304[%305] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %307 = llvm.extractvalue %289[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.extractvalue %289[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.getelementptr %307[%308] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%309, %306, %303) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(6 : index) : i64
    %312 = llvm.mlir.constant(12 : index) : i64
    %313 = llvm.mlir.constant(12 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(144 : index) : i64
    %316 = llvm.mlir.constant(864 : index) : i64
    %317 = llvm.mlir.constant(864 : index) : i64
    %318 = llvm.mlir.zero : !llvm.ptr
    %319 = llvm.getelementptr %318[%317] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %320 = llvm.ptrtoint %319 : !llvm.ptr to i64
    %321 = llvm.call @malloc(%320) : (i64) -> !llvm.ptr
    %322 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %323 = llvm.insertvalue %321, %322[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %321, %323[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.insertvalue %325, %324[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %310, %326[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %311, %327[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %312, %328[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %313, %329[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %316, %330[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %315, %331[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %313, %332[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %314, %333[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = builtin.unrealized_conversion_cast %334 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> to memref<1x6x12x12xf32>
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.alloca %336 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %289, %337 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %338 = llvm.mlir.constant(4 : index) : i64
    %339 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %340 = llvm.insertvalue %338, %339[0] : !llvm.struct<(i64, ptr)> 
    %341 = llvm.insertvalue %337, %340[1] : !llvm.struct<(i64, ptr)> 
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.alloca %342 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %334, %343 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %344 = llvm.mlir.constant(4 : index) : i64
    %345 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %346 = llvm.insertvalue %344, %345[0] : !llvm.struct<(i64, ptr)> 
    %347 = llvm.insertvalue %343, %346[1] : !llvm.struct<(i64, ptr)> 
    %348 = llvm.mlir.zero : !llvm.ptr
    %349 = llvm.getelementptr %348[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %350 = llvm.ptrtoint %349 : !llvm.ptr to i64
    %351 = llvm.extractvalue %341[0] : !llvm.struct<(i64, ptr)> 
    %352 = llvm.extractvalue %341[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%351, %352, %350) : (i64, !llvm.ptr, i64) -> ()
    %353 = llvm.mlir.zero : !llvm.ptr
    %354 = llvm.getelementptr %353[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %355 = llvm.ptrtoint %354 : !llvm.ptr to i64
    %356 = llvm.extractvalue %347[0] : !llvm.struct<(i64, ptr)> 
    %357 = llvm.extractvalue %347[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%356, %357, %355) : (i64, !llvm.ptr, i64) -> ()
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = builtin.unrealized_conversion_cast %358 : i64 to index
    %360 = llvm.mlir.constant(6 : index) : i64
    %361 = builtin.unrealized_conversion_cast %360 : i64 to index
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = builtin.unrealized_conversion_cast %362 : i64 to index
    %364 = llvm.mlir.constant(16 : index) : i64
    %365 = builtin.unrealized_conversion_cast %364 : i64 to index
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = builtin.unrealized_conversion_cast %366 : i64 to index
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = builtin.unrealized_conversion_cast %368 : i64 to index
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = builtin.unrealized_conversion_cast %370 : i64 to index
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = builtin.unrealized_conversion_cast %372 : i64 to index
    %374 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%374, %372) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%364, %364, %368, %358, %360, %362, %370) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = builtin.unrealized_conversion_cast %375 : i64 to index
    llvm.call @sstSetupIntArgument(%364, %375) : (i64, i64) -> ()
    %377 = llvm.mlir.constant(8 : index) : i64
    %378 = builtin.unrealized_conversion_cast %377 : i64 to index
    %379 = llvm.extractvalue %289[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.extractvalue %289[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.extractvalue %289[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.extractvalue %289[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.extractvalue %289[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.extractvalue %289[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.extractvalue %289[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.extractvalue %289[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.extractvalue %289[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.extractvalue %289[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.extractvalue %289[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%379, %380, %381, %382, %383, %384, %385, %386, %387, %388, %389, %377) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %390 = llvm.mlir.constant(96 : index) : i64
    %391 = builtin.unrealized_conversion_cast %390 : i64 to index
    llvm.call @sstSetupIntArgument(%366, %390) : (i64, i64) -> ()
    %392 = llvm.mlir.constant(104 : index) : i64
    %393 = builtin.unrealized_conversion_cast %392 : i64 to index
    llvm.call @sstSetupIntArgument(%368, %392) : (i64, i64) -> ()
    %394 = llvm.mlir.constant(112 : index) : i64
    %395 = builtin.unrealized_conversion_cast %394 : i64 to index
    %396 = llvm.extractvalue %334[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.extractvalue %334[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.extractvalue %334[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.extractvalue %334[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.extractvalue %334[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.extractvalue %334[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.extractvalue %334[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.extractvalue %334[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.extractvalue %334[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.extractvalue %334[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.extractvalue %334[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%396, %397, %398, %399, %400, %401, %402, %403, %404, %405, %406, %394) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%372) : (i64) -> ()
    %407 = llvm.mlir.zero : !llvm.ptr
    %408 = llvm.getelementptr %407[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %409 = llvm.ptrtoint %408 : !llvm.ptr to i64
    %410 = llvm.extractvalue %341[0] : !llvm.struct<(i64, ptr)> 
    %411 = llvm.extractvalue %341[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%410, %411, %409) : (i64, !llvm.ptr, i64) -> ()
    %412 = llvm.mlir.zero : !llvm.ptr
    %413 = llvm.getelementptr %412[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %414 = llvm.ptrtoint %413 : !llvm.ptr to i64
    %415 = llvm.extractvalue %347[0] : !llvm.struct<(i64, ptr)> 
    %416 = llvm.extractvalue %347[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%415, %416, %414) : (i64, !llvm.ptr, i64) -> ()
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(16 : index) : i64
    %419 = llvm.mlir.constant(8 : index) : i64
    %420 = llvm.mlir.constant(8 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(64 : index) : i64
    %423 = llvm.mlir.constant(1024 : index) : i64
    %424 = llvm.mlir.constant(1024 : index) : i64
    %425 = llvm.mlir.zero : !llvm.ptr
    %426 = llvm.getelementptr %425[%424] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %427 = llvm.ptrtoint %426 : !llvm.ptr to i64
    %428 = llvm.call @malloc(%427) : (i64) -> !llvm.ptr
    %429 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %430 = llvm.insertvalue %428, %429[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %428, %430[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.insertvalue %432, %431[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %417, %433[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %418, %434[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %419, %435[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %420, %436[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %423, %437[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %422, %438[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %420, %439[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %421, %440[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = builtin.unrealized_conversion_cast %441 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> to memref<1x16x8x8xf32>
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.alloca %443 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %334, %444 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %447 = llvm.insertvalue %445, %446[0] : !llvm.struct<(i64, ptr)> 
    %448 = llvm.insertvalue %444, %447[1] : !llvm.struct<(i64, ptr)> 
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.alloca %449 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %11, %450 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %451 = llvm.mlir.constant(4 : index) : i64
    %452 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %453 = llvm.insertvalue %451, %452[0] : !llvm.struct<(i64, ptr)> 
    %454 = llvm.insertvalue %450, %453[1] : !llvm.struct<(i64, ptr)> 
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.alloca %455 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %14, %456 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %459 = llvm.insertvalue %457, %458[0] : !llvm.struct<(i64, ptr)> 
    %460 = llvm.insertvalue %456, %459[1] : !llvm.struct<(i64, ptr)> 
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.alloca %461 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %441, %462 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %463 = llvm.mlir.constant(4 : index) : i64
    %464 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %465 = llvm.insertvalue %463, %464[0] : !llvm.struct<(i64, ptr)> 
    %466 = llvm.insertvalue %462, %465[1] : !llvm.struct<(i64, ptr)> 
    %467 = llvm.mlir.zero : !llvm.ptr
    %468 = llvm.getelementptr %467[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %469 = llvm.ptrtoint %468 : !llvm.ptr to i64
    %470 = llvm.extractvalue %448[0] : !llvm.struct<(i64, ptr)> 
    %471 = llvm.extractvalue %448[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%470, %471, %469) : (i64, !llvm.ptr, i64) -> ()
    %472 = llvm.mlir.zero : !llvm.ptr
    %473 = llvm.getelementptr %472[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %474 = llvm.ptrtoint %473 : !llvm.ptr to i64
    %475 = llvm.extractvalue %454[0] : !llvm.struct<(i64, ptr)> 
    %476 = llvm.extractvalue %454[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%475, %476, %474) : (i64, !llvm.ptr, i64) -> ()
    %477 = llvm.mlir.zero : !llvm.ptr
    %478 = llvm.getelementptr %477[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %479 = llvm.ptrtoint %478 : !llvm.ptr to i64
    %480 = llvm.extractvalue %460[0] : !llvm.struct<(i64, ptr)> 
    %481 = llvm.extractvalue %460[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%480, %481, %479) : (i64, !llvm.ptr, i64) -> ()
    %482 = llvm.mlir.zero : !llvm.ptr
    %483 = llvm.getelementptr %482[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %484 = llvm.ptrtoint %483 : !llvm.ptr to i64
    %485 = llvm.extractvalue %466[0] : !llvm.struct<(i64, ptr)> 
    %486 = llvm.extractvalue %466[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%485, %486, %484) : (i64, !llvm.ptr, i64) -> ()
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = builtin.unrealized_conversion_cast %487 : i64 to index
    %489 = llvm.mlir.constant(6 : index) : i64
    %490 = builtin.unrealized_conversion_cast %489 : i64 to index
    %491 = llvm.mlir.constant(16 : index) : i64
    %492 = builtin.unrealized_conversion_cast %491 : i64 to index
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = builtin.unrealized_conversion_cast %493 : i64 to index
    %495 = llvm.mlir.constant(16 : index) : i64
    %496 = builtin.unrealized_conversion_cast %495 : i64 to index
    %497 = llvm.mlir.constant(5 : index) : i64
    %498 = builtin.unrealized_conversion_cast %497 : i64 to index
    %499 = llvm.mlir.constant(5 : index) : i64
    %500 = builtin.unrealized_conversion_cast %499 : i64 to index
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = builtin.unrealized_conversion_cast %501 : i64 to index
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = builtin.unrealized_conversion_cast %503 : i64 to index
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = builtin.unrealized_conversion_cast %505 : i64 to index
    %507 = llvm.mlir.constant(3 : index) : i64
    %508 = builtin.unrealized_conversion_cast %507 : i64 to index
    %509 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%509, %507) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%495, %495, %503, %487, %491, %493, %505) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = builtin.unrealized_conversion_cast %510 : i64 to index
    llvm.call @sstSetupIntArgument(%495, %510) : (i64, i64) -> ()
    %512 = llvm.mlir.constant(8 : index) : i64
    %513 = builtin.unrealized_conversion_cast %512 : i64 to index
    %514 = llvm.extractvalue %334[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.extractvalue %334[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.extractvalue %334[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.extractvalue %334[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.extractvalue %334[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.extractvalue %334[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.extractvalue %334[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.extractvalue %334[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.extractvalue %334[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.extractvalue %334[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.extractvalue %334[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%514, %515, %516, %517, %518, %519, %520, %521, %522, %523, %524, %512) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %525 = llvm.mlir.constant(96 : index) : i64
    %526 = builtin.unrealized_conversion_cast %525 : i64 to index
    %527 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.extractvalue %10[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.extractvalue %10[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.extractvalue %10[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.extractvalue %10[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.extractvalue %10[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%527, %528, %529, %530, %531, %532, %533, %534, %535, %536, %537, %525) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %538 = llvm.mlir.constant(184 : index) : i64
    %539 = builtin.unrealized_conversion_cast %538 : i64 to index
    llvm.call @sstSetupIntArgument(%501, %538) : (i64, i64) -> ()
    %540 = llvm.mlir.constant(192 : index) : i64
    %541 = builtin.unrealized_conversion_cast %540 : i64 to index
    llvm.call @sstSetupIntArgument(%499, %540) : (i64, i64) -> ()
    %542 = llvm.mlir.constant(200 : index) : i64
    %543 = builtin.unrealized_conversion_cast %542 : i64 to index
    llvm.call @sstSetupIntArgument(%503, %542) : (i64, i64) -> ()
    %544 = llvm.mlir.constant(208 : index) : i64
    %545 = builtin.unrealized_conversion_cast %544 : i64 to index
    llvm.call @sstSetupIntArgument(%497, %544) : (i64, i64) -> ()
    %546 = llvm.mlir.constant(216 : index) : i64
    %547 = builtin.unrealized_conversion_cast %546 : i64 to index
    llvm.call @sstSetupIntArgument(%489, %546) : (i64, i64) -> ()
    %548 = llvm.mlir.constant(224 : index) : i64
    %549 = builtin.unrealized_conversion_cast %548 : i64 to index
    %550 = llvm.extractvalue %13[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %551 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %552 = llvm.extractvalue %13[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.extractvalue %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %554 = llvm.extractvalue %13[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%550, %551, %552, %553, %554, %548) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %555 = llvm.mlir.constant(264 : index) : i64
    %556 = builtin.unrealized_conversion_cast %555 : i64 to index
    %557 = llvm.extractvalue %441[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.extractvalue %441[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.extractvalue %441[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.extractvalue %441[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.extractvalue %441[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.extractvalue %441[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.extractvalue %441[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.extractvalue %441[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.extractvalue %441[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.extractvalue %441[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.extractvalue %441[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%557, %558, %559, %560, %561, %562, %563, %564, %565, %566, %567, %555) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%507) : (i64) -> ()
    %568 = llvm.mlir.zero : !llvm.ptr
    %569 = llvm.getelementptr %568[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %570 = llvm.ptrtoint %569 : !llvm.ptr to i64
    %571 = llvm.extractvalue %448[0] : !llvm.struct<(i64, ptr)> 
    %572 = llvm.extractvalue %448[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%571, %572, %570) : (i64, !llvm.ptr, i64) -> ()
    %573 = llvm.mlir.zero : !llvm.ptr
    %574 = llvm.getelementptr %573[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %575 = llvm.ptrtoint %574 : !llvm.ptr to i64
    %576 = llvm.extractvalue %454[0] : !llvm.struct<(i64, ptr)> 
    %577 = llvm.extractvalue %454[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%576, %577, %575) : (i64, !llvm.ptr, i64) -> ()
    %578 = llvm.mlir.zero : !llvm.ptr
    %579 = llvm.getelementptr %578[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %580 = llvm.ptrtoint %579 : !llvm.ptr to i64
    %581 = llvm.extractvalue %460[0] : !llvm.struct<(i64, ptr)> 
    %582 = llvm.extractvalue %460[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%581, %582, %580) : (i64, !llvm.ptr, i64) -> ()
    %583 = llvm.mlir.zero : !llvm.ptr
    %584 = llvm.getelementptr %583[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %585 = llvm.ptrtoint %584 : !llvm.ptr to i64
    %586 = llvm.extractvalue %466[0] : !llvm.struct<(i64, ptr)> 
    %587 = llvm.extractvalue %466[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%586, %587, %585) : (i64, !llvm.ptr, i64) -> ()
    %588 = llvm.mlir.constant(0 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    %590 = builtin.unrealized_conversion_cast %589 : i64 to index
    %591 = llvm.mlir.constant(512 : index) : i64
    %592 = builtin.unrealized_conversion_cast %591 : i64 to index
    %593 = llvm.mlir.constant(1024 : index) : i64
    %594 = builtin.unrealized_conversion_cast %593 : i64 to index
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.mlir.zero : !llvm.ptr
    %598 = llvm.getelementptr %597[%595] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %599 = llvm.ptrtoint %598 : !llvm.ptr to i64
    %600 = llvm.call @malloc(%599) : (i64) -> !llvm.ptr
    %601 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %602 = llvm.insertvalue %600, %601[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %603 = llvm.insertvalue %600, %602[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.insertvalue %604, %603[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %606 = llvm.insertvalue %595, %605[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.insertvalue %596, %606[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.extractvalue %607[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %609 = llvm.getelementptr %608[%588] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %593, %609 : i64, !llvm.ptr
    %610 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %611 = llvm.extractvalue %441[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.extractvalue %441[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %611, %610[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.insertvalue %612, %613[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.insertvalue %615, %614[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.constant(1024 : index) : i64
    %619 = llvm.insertvalue %618, %616[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %620 = llvm.insertvalue %617, %619[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %621 = llvm.mul %617, %618  : i64
    %622 = builtin.unrealized_conversion_cast %620 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<1024xf32>
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.alloca %623 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %441, %624 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %625 = llvm.mlir.constant(4 : index) : i64
    %626 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %627 = llvm.insertvalue %625, %626[0] : !llvm.struct<(i64, ptr)> 
    %628 = llvm.insertvalue %624, %627[1] : !llvm.struct<(i64, ptr)> 
    %629 = llvm.mlir.zero : !llvm.ptr
    %630 = llvm.getelementptr %629[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %631 = llvm.ptrtoint %630 : !llvm.ptr to i64
    %632 = llvm.extractvalue %628[0] : !llvm.struct<(i64, ptr)> 
    %633 = llvm.extractvalue %628[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%632, %633, %631) : (i64, !llvm.ptr, i64) -> ()
    %634 = llvm.mlir.constant(0 : index) : i64
    %635 = builtin.unrealized_conversion_cast %634 : i64 to index
    %636 = llvm.mlir.constant(4 : index) : i64
    %637 = builtin.unrealized_conversion_cast %636 : i64 to index
    %638 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%638, %636) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%591, %589, %589, %589, %589, %589, %634) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %639 = llvm.mlir.constant(0 : index) : i64
    %640 = builtin.unrealized_conversion_cast %639 : i64 to index
    %641 = llvm.extractvalue %620[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.extractvalue %620[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %643 = llvm.extractvalue %620[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %644 = llvm.extractvalue %620[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.extractvalue %620[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%641, %642, %643, %644, %645, %639) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %646 = llvm.mlir.constant(40 : index) : i64
    %647 = builtin.unrealized_conversion_cast %646 : i64 to index
    llvm.call @sstSetupIntArgument(%593, %646) : (i64, i64) -> ()
    %648 = llvm.mlir.constant(48 : index) : i64
    %649 = builtin.unrealized_conversion_cast %648 : i64 to index
    llvm.call @sstSetupIntArgument(%591, %648) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%636) : (i64) -> ()
    %650 = llvm.mlir.zero : !llvm.ptr
    %651 = llvm.getelementptr %650[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %652 = llvm.ptrtoint %651 : !llvm.ptr to i64
    %653 = llvm.extractvalue %628[0] : !llvm.struct<(i64, ptr)> 
    %654 = llvm.extractvalue %628[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%653, %654, %652) : (i64, !llvm.ptr, i64) -> ()
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.constant(16 : index) : i64
    %657 = llvm.mlir.constant(8 : index) : i64
    %658 = llvm.mlir.constant(8 : index) : i64
    %659 = llvm.mlir.constant(1 : index) : i64
    %660 = llvm.mlir.constant(64 : index) : i64
    %661 = llvm.mlir.constant(1024 : index) : i64
    %662 = llvm.mlir.constant(1024 : index) : i64
    %663 = llvm.mlir.zero : !llvm.ptr
    %664 = llvm.getelementptr %663[%662] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %665 = llvm.ptrtoint %664 : !llvm.ptr to i64
    %666 = llvm.call @malloc(%665) : (i64) -> !llvm.ptr
    %667 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %668 = llvm.insertvalue %666, %667[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.insertvalue %666, %668[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.mlir.constant(0 : index) : i64
    %671 = llvm.insertvalue %670, %669[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.insertvalue %655, %671[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %656, %672[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.insertvalue %657, %673[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %658, %674[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %661, %675[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %660, %676[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.insertvalue %658, %677[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.insertvalue %659, %678[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = builtin.unrealized_conversion_cast %679 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> to memref<1x16x8x8xf32>
    %681 = llvm.mlir.constant(1 : index) : i64
    %682 = llvm.extractvalue %441[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %683 = llvm.mul %681, %682  : i64
    %684 = llvm.extractvalue %441[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.mul %683, %684  : i64
    %686 = llvm.extractvalue %441[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.mul %685, %686  : i64
    %688 = llvm.extractvalue %441[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.mul %687, %688  : i64
    %690 = llvm.mlir.zero : !llvm.ptr
    %691 = llvm.getelementptr %690[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %692 = llvm.ptrtoint %691 : !llvm.ptr to i64
    %693 = llvm.mul %689, %692  : i64
    %694 = llvm.extractvalue %441[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.extractvalue %441[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.getelementptr %694[%695] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %697 = llvm.extractvalue %679[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.extractvalue %679[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.getelementptr %697[%698] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%699, %696, %693) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %700 = llvm.mlir.constant(1 : index) : i64
    %701 = llvm.mlir.constant(16 : index) : i64
    %702 = llvm.mlir.constant(4 : index) : i64
    %703 = llvm.mlir.constant(4 : index) : i64
    %704 = llvm.mlir.constant(1 : index) : i64
    %705 = llvm.mlir.constant(16 : index) : i64
    %706 = llvm.mlir.constant(256 : index) : i64
    %707 = llvm.mlir.constant(256 : index) : i64
    %708 = llvm.mlir.zero : !llvm.ptr
    %709 = llvm.getelementptr %708[%707] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %710 = llvm.ptrtoint %709 : !llvm.ptr to i64
    %711 = llvm.call @malloc(%710) : (i64) -> !llvm.ptr
    %712 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %713 = llvm.insertvalue %711, %712[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %714 = llvm.insertvalue %711, %713[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %715 = llvm.mlir.constant(0 : index) : i64
    %716 = llvm.insertvalue %715, %714[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %717 = llvm.insertvalue %700, %716[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %718 = llvm.insertvalue %701, %717[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %719 = llvm.insertvalue %702, %718[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %720 = llvm.insertvalue %703, %719[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %721 = llvm.insertvalue %706, %720[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.insertvalue %705, %721[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.insertvalue %703, %722[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %724 = llvm.insertvalue %704, %723[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %725 = builtin.unrealized_conversion_cast %724 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> to memref<1x16x4x4xf32>
    %726 = llvm.mlir.constant(1 : index) : i64
    %727 = llvm.alloca %726 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %679, %727 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %728 = llvm.mlir.constant(4 : index) : i64
    %729 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %730 = llvm.insertvalue %728, %729[0] : !llvm.struct<(i64, ptr)> 
    %731 = llvm.insertvalue %727, %730[1] : !llvm.struct<(i64, ptr)> 
    %732 = llvm.mlir.constant(1 : index) : i64
    %733 = llvm.alloca %732 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %724, %733 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %734 = llvm.mlir.constant(4 : index) : i64
    %735 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %736 = llvm.insertvalue %734, %735[0] : !llvm.struct<(i64, ptr)> 
    %737 = llvm.insertvalue %733, %736[1] : !llvm.struct<(i64, ptr)> 
    %738 = llvm.mlir.zero : !llvm.ptr
    %739 = llvm.getelementptr %738[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %740 = llvm.ptrtoint %739 : !llvm.ptr to i64
    %741 = llvm.extractvalue %731[0] : !llvm.struct<(i64, ptr)> 
    %742 = llvm.extractvalue %731[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%741, %742, %740) : (i64, !llvm.ptr, i64) -> ()
    %743 = llvm.mlir.zero : !llvm.ptr
    %744 = llvm.getelementptr %743[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %745 = llvm.ptrtoint %744 : !llvm.ptr to i64
    %746 = llvm.extractvalue %737[0] : !llvm.struct<(i64, ptr)> 
    %747 = llvm.extractvalue %737[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%746, %747, %745) : (i64, !llvm.ptr, i64) -> ()
    %748 = llvm.mlir.constant(1 : index) : i64
    %749 = builtin.unrealized_conversion_cast %748 : i64 to index
    %750 = llvm.mlir.constant(16 : index) : i64
    %751 = builtin.unrealized_conversion_cast %750 : i64 to index
    %752 = llvm.mlir.constant(1 : index) : i64
    %753 = builtin.unrealized_conversion_cast %752 : i64 to index
    %754 = llvm.mlir.constant(16 : index) : i64
    %755 = builtin.unrealized_conversion_cast %754 : i64 to index
    %756 = llvm.mlir.constant(0 : index) : i64
    %757 = builtin.unrealized_conversion_cast %756 : i64 to index
    %758 = llvm.mlir.constant(1 : index) : i64
    %759 = builtin.unrealized_conversion_cast %758 : i64 to index
    %760 = llvm.mlir.constant(0 : index) : i64
    %761 = builtin.unrealized_conversion_cast %760 : i64 to index
    %762 = llvm.mlir.constant(5 : index) : i64
    %763 = builtin.unrealized_conversion_cast %762 : i64 to index
    %764 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%764, %762) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%754, %754, %758, %748, %750, %752, %760) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %765 = llvm.mlir.constant(0 : index) : i64
    %766 = builtin.unrealized_conversion_cast %765 : i64 to index
    llvm.call @sstSetupIntArgument(%754, %765) : (i64, i64) -> ()
    %767 = llvm.mlir.constant(8 : index) : i64
    %768 = builtin.unrealized_conversion_cast %767 : i64 to index
    %769 = llvm.extractvalue %679[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %770 = llvm.extractvalue %679[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %771 = llvm.extractvalue %679[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %772 = llvm.extractvalue %679[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %773 = llvm.extractvalue %679[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %774 = llvm.extractvalue %679[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %775 = llvm.extractvalue %679[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %776 = llvm.extractvalue %679[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %777 = llvm.extractvalue %679[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %778 = llvm.extractvalue %679[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %779 = llvm.extractvalue %679[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%769, %770, %771, %772, %773, %774, %775, %776, %777, %778, %779, %767) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    %780 = llvm.mlir.constant(96 : index) : i64
    %781 = builtin.unrealized_conversion_cast %780 : i64 to index
    llvm.call @sstSetupIntArgument(%756, %780) : (i64, i64) -> ()
    %782 = llvm.mlir.constant(104 : index) : i64
    %783 = builtin.unrealized_conversion_cast %782 : i64 to index
    llvm.call @sstSetupIntArgument(%758, %782) : (i64, i64) -> ()
    %784 = llvm.mlir.constant(112 : index) : i64
    %785 = builtin.unrealized_conversion_cast %784 : i64 to index
    %786 = llvm.extractvalue %724[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %787 = llvm.extractvalue %724[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %788 = llvm.extractvalue %724[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %789 = llvm.extractvalue %724[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %790 = llvm.extractvalue %724[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %791 = llvm.extractvalue %724[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %792 = llvm.extractvalue %724[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %793 = llvm.extractvalue %724[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %794 = llvm.extractvalue %724[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %795 = llvm.extractvalue %724[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %796 = llvm.extractvalue %724[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @sstSetupMemrefRankFourArgument(%786, %787, %788, %789, %790, %791, %792, %793, %794, %795, %796, %784) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    llvm.call @sstcudaLaunch(%762) : (i64) -> ()
    %797 = llvm.mlir.zero : !llvm.ptr
    %798 = llvm.getelementptr %797[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %799 = llvm.ptrtoint %798 : !llvm.ptr to i64
    %800 = llvm.extractvalue %731[0] : !llvm.struct<(i64, ptr)> 
    %801 = llvm.extractvalue %731[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%800, %801, %799) : (i64, !llvm.ptr, i64) -> ()
    %802 = llvm.mlir.zero : !llvm.ptr
    %803 = llvm.getelementptr %802[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %804 = llvm.ptrtoint %803 : !llvm.ptr to i64
    %805 = llvm.extractvalue %737[0] : !llvm.struct<(i64, ptr)> 
    %806 = llvm.extractvalue %737[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%805, %806, %804) : (i64, !llvm.ptr, i64) -> ()
    %807 = llvm.mlir.constant(2 : index) : i64
    %808 = llvm.mlir.constant(1 : index) : i64
    %809 = llvm.mlir.zero : !llvm.ptr
    %810 = llvm.getelementptr %809[%807] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %811 = llvm.ptrtoint %810 : !llvm.ptr to i64
    %812 = llvm.call @malloc(%811) : (i64) -> !llvm.ptr
    %813 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %814 = llvm.insertvalue %812, %813[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %815 = llvm.insertvalue %812, %814[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %816 = llvm.mlir.constant(0 : index) : i64
    %817 = llvm.insertvalue %816, %815[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %818 = llvm.insertvalue %807, %817[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %819 = llvm.insertvalue %808, %818[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %820 = llvm.mlir.constant(0 : index) : i64
    %821 = llvm.mlir.constant(1 : index) : i64
    %822 = llvm.extractvalue %819[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %823 = llvm.getelementptr %822[%820] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %821, %823 : i64, !llvm.ptr
    %824 = llvm.mlir.constant(1 : index) : i64
    %825 = llvm.mlir.constant(256 : index) : i64
    %826 = llvm.extractvalue %819[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %827 = llvm.getelementptr %826[%824] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %825, %827 : i64, !llvm.ptr
    %828 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %829 = llvm.extractvalue %724[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %830 = llvm.extractvalue %724[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %831 = llvm.insertvalue %829, %828[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %832 = llvm.insertvalue %830, %831[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %833 = llvm.mlir.constant(0 : index) : i64
    %834 = llvm.insertvalue %833, %832[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %835 = llvm.mlir.constant(1 : index) : i64
    %836 = llvm.mlir.constant(256 : index) : i64
    %837 = llvm.insertvalue %836, %834[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %838 = llvm.insertvalue %835, %837[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %839 = llvm.mul %835, %836  : i64
    %840 = llvm.mlir.constant(256 : index) : i64
    %841 = llvm.mlir.constant(1 : index) : i64
    %842 = llvm.insertvalue %841, %838[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %843 = llvm.insertvalue %840, %842[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %844 = llvm.mul %840, %841  : i64
    %845 = llvm.mlir.constant(0 : index) : i64
    %846 = builtin.unrealized_conversion_cast %845 : i64 to index
    %847 = llvm.mlir.constant(1 : index) : i64
    %848 = builtin.unrealized_conversion_cast %847 : i64 to index
    %849 = llvm.mlir.constant(512 : index) : i64
    %850 = builtin.unrealized_conversion_cast %849 : i64 to index
    %851 = llvm.mlir.constant(256 : index) : i64
    %852 = llvm.mlir.constant(30720 : index) : i64
    %853 = llvm.mlir.constant(120 : index) : i64
    %854 = llvm.mlir.constant(1 : index) : i64
    %855 = llvm.mlir.constant(1 : index) : i64
    %856 = llvm.mlir.zero : !llvm.ptr
    %857 = llvm.getelementptr %856[%854] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %858 = llvm.ptrtoint %857 : !llvm.ptr to i64
    %859 = llvm.call @malloc(%858) : (i64) -> !llvm.ptr
    %860 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %861 = llvm.insertvalue %859, %860[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %862 = llvm.insertvalue %859, %861[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %863 = llvm.mlir.constant(0 : index) : i64
    %864 = llvm.insertvalue %863, %862[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %865 = llvm.insertvalue %854, %864[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %866 = llvm.insertvalue %855, %865[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %867 = llvm.mlir.constant(1 : index) : i64
    %868 = llvm.mlir.constant(1 : index) : i64
    %869 = llvm.mlir.zero : !llvm.ptr
    %870 = llvm.getelementptr %869[%867] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %871 = llvm.ptrtoint %870 : !llvm.ptr to i64
    %872 = llvm.call @malloc(%871) : (i64) -> !llvm.ptr
    %873 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %874 = llvm.insertvalue %872, %873[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %875 = llvm.insertvalue %872, %874[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %876 = llvm.mlir.constant(0 : index) : i64
    %877 = llvm.insertvalue %876, %875[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %878 = llvm.insertvalue %867, %877[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %879 = llvm.insertvalue %868, %878[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %880 = llvm.mlir.constant(1 : index) : i64
    %881 = llvm.mlir.constant(1 : index) : i64
    %882 = llvm.mlir.zero : !llvm.ptr
    %883 = llvm.getelementptr %882[%880] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %884 = llvm.ptrtoint %883 : !llvm.ptr to i64
    %885 = llvm.call @malloc(%884) : (i64) -> !llvm.ptr
    %886 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %887 = llvm.insertvalue %885, %886[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %888 = llvm.insertvalue %885, %887[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %889 = llvm.mlir.constant(0 : index) : i64
    %890 = llvm.insertvalue %889, %888[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %891 = llvm.insertvalue %880, %890[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %892 = llvm.insertvalue %881, %891[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %893 = llvm.extractvalue %866[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %894 = llvm.getelementptr %893[%845] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %851, %894 : i64, !llvm.ptr
    %895 = llvm.extractvalue %879[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %896 = llvm.getelementptr %895[%845] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %852, %896 : i64, !llvm.ptr
    %897 = llvm.extractvalue %892[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %898 = llvm.getelementptr %897[%845] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %853, %898 : i64, !llvm.ptr
    %899 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %900 = llvm.extractvalue %843[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %901 = llvm.extractvalue %843[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %902 = llvm.insertvalue %900, %899[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %903 = llvm.insertvalue %901, %902[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %904 = llvm.mlir.constant(0 : index) : i64
    %905 = llvm.insertvalue %904, %903[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %906 = llvm.mlir.constant(1 : index) : i64
    %907 = llvm.mlir.constant(256 : index) : i64
    %908 = llvm.insertvalue %907, %905[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %909 = llvm.insertvalue %906, %908[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %910 = llvm.mul %906, %907  : i64
    %911 = builtin.unrealized_conversion_cast %909 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<256xf32>
    %912 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %913 = llvm.extractvalue %18[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %914 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %915 = llvm.insertvalue %913, %912[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %916 = llvm.insertvalue %914, %915[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %917 = llvm.mlir.constant(0 : index) : i64
    %918 = llvm.insertvalue %917, %916[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %919 = llvm.mlir.constant(1 : index) : i64
    %920 = llvm.mlir.constant(30720 : index) : i64
    %921 = llvm.insertvalue %920, %918[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %922 = llvm.insertvalue %919, %921[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %923 = llvm.mul %919, %920  : i64
    %924 = builtin.unrealized_conversion_cast %922 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<30720xf32>
    %925 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %926 = llvm.extractvalue %16[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %927 = llvm.extractvalue %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %928 = llvm.insertvalue %926, %925[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %929 = llvm.insertvalue %927, %928[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %930 = llvm.mlir.constant(0 : index) : i64
    %931 = llvm.insertvalue %930, %929[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %932 = llvm.mlir.constant(1 : index) : i64
    %933 = llvm.mlir.constant(120 : index) : i64
    %934 = llvm.insertvalue %933, %931[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %935 = llvm.insertvalue %932, %934[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %936 = llvm.mul %932, %933  : i64
    %937 = builtin.unrealized_conversion_cast %935 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<120xf32>
    %938 = llvm.mlir.constant(1 : index) : i64
    %939 = llvm.alloca %938 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %909, %939 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %940 = llvm.mlir.constant(1 : index) : i64
    %941 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %942 = llvm.insertvalue %940, %941[0] : !llvm.struct<(i64, ptr)> 
    %943 = llvm.insertvalue %939, %942[1] : !llvm.struct<(i64, ptr)> 
    %944 = llvm.mlir.zero : !llvm.ptr
    %945 = llvm.getelementptr %944[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %946 = llvm.ptrtoint %945 : !llvm.ptr to i64
    %947 = llvm.extractvalue %943[0] : !llvm.struct<(i64, ptr)> 
    %948 = llvm.extractvalue %943[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%947, %948, %946) : (i64, !llvm.ptr, i64) -> ()
    %949 = llvm.mlir.constant(1 : index) : i64
    %950 = llvm.alloca %949 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %922, %950 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %951 = llvm.mlir.constant(1 : index) : i64
    %952 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %953 = llvm.insertvalue %951, %952[0] : !llvm.struct<(i64, ptr)> 
    %954 = llvm.insertvalue %950, %953[1] : !llvm.struct<(i64, ptr)> 
    %955 = llvm.mlir.zero : !llvm.ptr
    %956 = llvm.getelementptr %955[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %957 = llvm.ptrtoint %956 : !llvm.ptr to i64
    %958 = llvm.extractvalue %954[0] : !llvm.struct<(i64, ptr)> 
    %959 = llvm.extractvalue %954[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%958, %959, %957) : (i64, !llvm.ptr, i64) -> ()
    %960 = llvm.mlir.constant(1 : index) : i64
    %961 = llvm.alloca %960 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %935, %961 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %962 = llvm.mlir.constant(1 : index) : i64
    %963 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %964 = llvm.insertvalue %962, %963[0] : !llvm.struct<(i64, ptr)> 
    %965 = llvm.insertvalue %961, %964[1] : !llvm.struct<(i64, ptr)> 
    %966 = llvm.mlir.zero : !llvm.ptr
    %967 = llvm.getelementptr %966[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %968 = llvm.ptrtoint %967 : !llvm.ptr to i64
    %969 = llvm.extractvalue %965[0] : !llvm.struct<(i64, ptr)> 
    %970 = llvm.extractvalue %965[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%969, %970, %968) : (i64, !llvm.ptr, i64) -> ()
    %971 = llvm.mlir.constant(1 : index) : i64
    %972 = builtin.unrealized_conversion_cast %971 : i64 to index
    %973 = llvm.mlir.constant(120 : index) : i64
    %974 = builtin.unrealized_conversion_cast %973 : i64 to index
    %975 = llvm.mlir.constant(256 : index) : i64
    %976 = builtin.unrealized_conversion_cast %975 : i64 to index
    %977 = llvm.mlir.constant(0 : index) : i64
    %978 = builtin.unrealized_conversion_cast %977 : i64 to index
    %979 = llvm.mlir.constant(6 : index) : i64
    %980 = builtin.unrealized_conversion_cast %979 : i64 to index
    %981 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%981, %979) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%849, %847, %847, %847, %847, %847, %977) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %982 = llvm.mlir.constant(0 : index) : i64
    %983 = builtin.unrealized_conversion_cast %982 : i64 to index
    llvm.call @sstSetupIntArgument(%975, %982) : (i64, i64) -> ()
    %984 = llvm.mlir.constant(8 : index) : i64
    %985 = builtin.unrealized_conversion_cast %984 : i64 to index
    %986 = llvm.extractvalue %909[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %987 = llvm.extractvalue %909[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %988 = llvm.extractvalue %909[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %989 = llvm.extractvalue %909[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %990 = llvm.extractvalue %909[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%986, %987, %988, %989, %990, %984) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %991 = llvm.mlir.constant(48 : index) : i64
    %992 = builtin.unrealized_conversion_cast %991 : i64 to index
    llvm.call @sstSetupIntArgument(%973, %991) : (i64, i64) -> ()
    %993 = llvm.mlir.constant(56 : index) : i64
    %994 = builtin.unrealized_conversion_cast %993 : i64 to index
    %995 = llvm.extractvalue %922[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %996 = llvm.extractvalue %922[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %997 = llvm.extractvalue %922[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %998 = llvm.extractvalue %922[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %999 = llvm.extractvalue %922[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%995, %996, %997, %998, %999, %993) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1000 = llvm.mlir.constant(96 : index) : i64
    %1001 = builtin.unrealized_conversion_cast %1000 : i64 to index
    llvm.call @sstSetupIntArgument(%845, %1000) : (i64, i64) -> ()
    %1002 = llvm.mlir.constant(104 : index) : i64
    %1003 = builtin.unrealized_conversion_cast %1002 : i64 to index
    llvm.call @sstSetupIntArgument(%847, %1002) : (i64, i64) -> ()
    %1004 = llvm.mlir.constant(112 : index) : i64
    %1005 = builtin.unrealized_conversion_cast %1004 : i64 to index
    %1006 = llvm.extractvalue %935[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1007 = llvm.extractvalue %935[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1008 = llvm.extractvalue %935[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1009 = llvm.extractvalue %935[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1010 = llvm.extractvalue %935[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1006, %1007, %1008, %1009, %1010, %1004) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1011 = llvm.mlir.constant(152 : index) : i64
    %1012 = builtin.unrealized_conversion_cast %1011 : i64 to index
    llvm.call @sstSetupIntArgument(%971, %1011) : (i64, i64) -> ()
    %1013 = llvm.mlir.constant(160 : index) : i64
    %1014 = builtin.unrealized_conversion_cast %1013 : i64 to index
    llvm.call @sstSetupIntArgument(%849, %1013) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%979) : (i64) -> ()
    %1015 = llvm.mlir.constant(1 : index) : i64
    %1016 = llvm.mlir.constant(120 : index) : i64
    %1017 = llvm.mlir.constant(1 : index) : i64
    %1018 = llvm.mlir.constant(120 : index) : i64
    %1019 = llvm.mlir.zero : !llvm.ptr
    %1020 = llvm.getelementptr %1019[%1018] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1021 = llvm.ptrtoint %1020 : !llvm.ptr to i64
    %1022 = llvm.call @malloc(%1021) : (i64) -> !llvm.ptr
    %1023 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1024 = llvm.insertvalue %1022, %1023[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1025 = llvm.insertvalue %1022, %1024[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1026 = llvm.mlir.constant(0 : index) : i64
    %1027 = llvm.insertvalue %1026, %1025[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1028 = llvm.insertvalue %1015, %1027[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1029 = llvm.insertvalue %1016, %1028[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1030 = llvm.insertvalue %1016, %1029[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1031 = llvm.insertvalue %1017, %1030[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1032 = llvm.mlir.constant(2 : index) : i64
    %1033 = llvm.mlir.constant(1 : index) : i64
    %1034 = llvm.mlir.zero : !llvm.ptr
    %1035 = llvm.getelementptr %1034[%1032] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1036 = llvm.ptrtoint %1035 : !llvm.ptr to i64
    %1037 = llvm.call @malloc(%1036) : (i64) -> !llvm.ptr
    %1038 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1039 = llvm.insertvalue %1037, %1038[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1040 = llvm.insertvalue %1037, %1039[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1041 = llvm.mlir.constant(0 : index) : i64
    %1042 = llvm.insertvalue %1041, %1040[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1043 = llvm.insertvalue %1032, %1042[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1044 = llvm.insertvalue %1033, %1043[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1045 = llvm.mlir.constant(1 : index) : i64
    %1046 = llvm.mlir.constant(0 : index) : i64
    %1047 = llvm.extractvalue %1044[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1048 = llvm.getelementptr %1047[%1046] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1045, %1048 : i64, !llvm.ptr
    %1049 = llvm.mlir.constant(120 : index) : i64
    %1050 = llvm.mlir.constant(1 : index) : i64
    %1051 = llvm.extractvalue %1044[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1052 = llvm.getelementptr %1051[%1050] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1049, %1052 : i64, !llvm.ptr
    %1053 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1054 = llvm.extractvalue %16[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1055 = llvm.extractvalue %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1056 = llvm.insertvalue %1054, %1053[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1057 = llvm.insertvalue %1055, %1056[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1058 = llvm.mlir.constant(0 : index) : i64
    %1059 = llvm.insertvalue %1058, %1057[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1060 = llvm.mlir.constant(1 : index) : i64
    %1061 = llvm.mlir.constant(120 : index) : i64
    %1062 = llvm.insertvalue %1061, %1059[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1063 = llvm.insertvalue %1060, %1062[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1064 = llvm.mul %1060, %1061  : i64
    %1065 = llvm.mlir.constant(120 : index) : i64
    %1066 = llvm.mlir.constant(1 : index) : i64
    %1067 = llvm.insertvalue %1066, %1063[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1068 = llvm.insertvalue %1065, %1067[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1069 = llvm.mul %1065, %1066  : i64
    %1070 = llvm.mlir.constant(1 : index) : i64
    %1071 = llvm.extractvalue %1068[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1072 = llvm.mul %1070, %1071  : i64
    %1073 = llvm.extractvalue %1068[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1074 = llvm.mul %1072, %1073  : i64
    %1075 = llvm.mlir.zero : !llvm.ptr
    %1076 = llvm.getelementptr %1075[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1077 = llvm.ptrtoint %1076 : !llvm.ptr to i64
    %1078 = llvm.mul %1074, %1077  : i64
    %1079 = llvm.extractvalue %1068[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1080 = llvm.extractvalue %1068[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1081 = llvm.getelementptr %1079[%1080] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1082 = llvm.extractvalue %1031[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1083 = llvm.extractvalue %1031[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1084 = llvm.getelementptr %1082[%1083] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%1084, %1081, %1078) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %1085 = llvm.mlir.constant(0 : index) : i64
    %1086 = llvm.mlir.constant(1 : index) : i64
    %1087 = builtin.unrealized_conversion_cast %1086 : i64 to index
    %1088 = llvm.mlir.constant(512 : index) : i64
    %1089 = builtin.unrealized_conversion_cast %1088 : i64 to index
    %1090 = llvm.mlir.constant(120 : index) : i64
    %1091 = builtin.unrealized_conversion_cast %1090 : i64 to index
    %1092 = llvm.mlir.constant(1 : index) : i64
    %1093 = llvm.mlir.constant(1 : index) : i64
    %1094 = llvm.mlir.zero : !llvm.ptr
    %1095 = llvm.getelementptr %1094[%1092] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1096 = llvm.ptrtoint %1095 : !llvm.ptr to i64
    %1097 = llvm.call @malloc(%1096) : (i64) -> !llvm.ptr
    %1098 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1099 = llvm.insertvalue %1097, %1098[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1100 = llvm.insertvalue %1097, %1099[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1101 = llvm.mlir.constant(0 : index) : i64
    %1102 = llvm.insertvalue %1101, %1100[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1103 = llvm.insertvalue %1092, %1102[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1104 = llvm.insertvalue %1093, %1103[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1105 = llvm.extractvalue %1104[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1106 = llvm.getelementptr %1105[%1085] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1090, %1106 : i64, !llvm.ptr
    %1107 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1108 = llvm.extractvalue %1031[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1109 = llvm.extractvalue %1031[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1110 = llvm.insertvalue %1108, %1107[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1111 = llvm.insertvalue %1109, %1110[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1112 = llvm.mlir.constant(0 : index) : i64
    %1113 = llvm.insertvalue %1112, %1111[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1114 = llvm.mlir.constant(1 : index) : i64
    %1115 = llvm.mlir.constant(120 : index) : i64
    %1116 = llvm.insertvalue %1115, %1113[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1117 = llvm.insertvalue %1114, %1116[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1118 = llvm.mul %1114, %1115  : i64
    %1119 = builtin.unrealized_conversion_cast %1117 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<120xf32>
    %1120 = llvm.mlir.constant(1 : index) : i64
    %1121 = llvm.alloca %1120 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1031, %1121 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %1122 = llvm.mlir.constant(2 : index) : i64
    %1123 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1124 = llvm.insertvalue %1122, %1123[0] : !llvm.struct<(i64, ptr)> 
    %1125 = llvm.insertvalue %1121, %1124[1] : !llvm.struct<(i64, ptr)> 
    %1126 = llvm.mlir.zero : !llvm.ptr
    %1127 = llvm.getelementptr %1126[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1128 = llvm.ptrtoint %1127 : !llvm.ptr to i64
    %1129 = llvm.extractvalue %1125[0] : !llvm.struct<(i64, ptr)> 
    %1130 = llvm.extractvalue %1125[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1129, %1130, %1128) : (i64, !llvm.ptr, i64) -> ()
    %1131 = llvm.mlir.constant(0 : index) : i64
    %1132 = builtin.unrealized_conversion_cast %1131 : i64 to index
    %1133 = llvm.mlir.constant(7 : index) : i64
    %1134 = builtin.unrealized_conversion_cast %1133 : i64 to index
    %1135 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1135, %1133) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%1088, %1086, %1086, %1086, %1086, %1086, %1131) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %1136 = llvm.mlir.constant(0 : index) : i64
    %1137 = builtin.unrealized_conversion_cast %1136 : i64 to index
    %1138 = llvm.extractvalue %1117[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1139 = llvm.extractvalue %1117[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1140 = llvm.extractvalue %1117[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1141 = llvm.extractvalue %1117[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1142 = llvm.extractvalue %1117[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1138, %1139, %1140, %1141, %1142, %1136) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1143 = llvm.mlir.constant(40 : index) : i64
    %1144 = builtin.unrealized_conversion_cast %1143 : i64 to index
    llvm.call @sstSetupIntArgument(%1090, %1143) : (i64, i64) -> ()
    %1145 = llvm.mlir.constant(48 : index) : i64
    %1146 = builtin.unrealized_conversion_cast %1145 : i64 to index
    llvm.call @sstSetupIntArgument(%1088, %1145) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%1133) : (i64) -> ()
    %1147 = llvm.mlir.zero : !llvm.ptr
    %1148 = llvm.getelementptr %1147[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1149 = llvm.ptrtoint %1148 : !llvm.ptr to i64
    %1150 = llvm.extractvalue %1125[0] : !llvm.struct<(i64, ptr)> 
    %1151 = llvm.extractvalue %1125[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%1150, %1151, %1149) : (i64, !llvm.ptr, i64) -> ()
    %1152 = llvm.mlir.constant(1 : index) : i64
    %1153 = llvm.mlir.constant(120 : index) : i64
    %1154 = llvm.mlir.constant(1 : index) : i64
    %1155 = llvm.mlir.constant(120 : index) : i64
    %1156 = llvm.mlir.zero : !llvm.ptr
    %1157 = llvm.getelementptr %1156[%1155] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1158 = llvm.ptrtoint %1157 : !llvm.ptr to i64
    %1159 = llvm.call @malloc(%1158) : (i64) -> !llvm.ptr
    %1160 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1161 = llvm.insertvalue %1159, %1160[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1162 = llvm.insertvalue %1159, %1161[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1163 = llvm.mlir.constant(0 : index) : i64
    %1164 = llvm.insertvalue %1163, %1162[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1165 = llvm.insertvalue %1152, %1164[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1166 = llvm.insertvalue %1153, %1165[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1167 = llvm.insertvalue %1153, %1166[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1168 = llvm.insertvalue %1154, %1167[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1169 = llvm.mlir.constant(1 : index) : i64
    %1170 = llvm.extractvalue %1031[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1171 = llvm.mul %1169, %1170  : i64
    %1172 = llvm.extractvalue %1031[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1173 = llvm.mul %1171, %1172  : i64
    %1174 = llvm.mlir.zero : !llvm.ptr
    %1175 = llvm.getelementptr %1174[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1176 = llvm.ptrtoint %1175 : !llvm.ptr to i64
    %1177 = llvm.mul %1173, %1176  : i64
    %1178 = llvm.extractvalue %1031[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1179 = llvm.extractvalue %1031[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1180 = llvm.getelementptr %1178[%1179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1181 = llvm.extractvalue %1168[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1182 = llvm.extractvalue %1168[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1183 = llvm.getelementptr %1181[%1182] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%1183, %1180, %1177) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %1184 = llvm.mlir.constant(0 : index) : i64
    %1185 = builtin.unrealized_conversion_cast %1184 : i64 to index
    %1186 = llvm.mlir.constant(1 : index) : i64
    %1187 = builtin.unrealized_conversion_cast %1186 : i64 to index
    %1188 = llvm.mlir.constant(512 : index) : i64
    %1189 = builtin.unrealized_conversion_cast %1188 : i64 to index
    %1190 = llvm.mlir.constant(120 : index) : i64
    %1191 = llvm.mlir.constant(10080 : index) : i64
    %1192 = llvm.mlir.constant(84 : index) : i64
    %1193 = llvm.mlir.constant(1 : index) : i64
    %1194 = llvm.mlir.constant(1 : index) : i64
    %1195 = llvm.mlir.zero : !llvm.ptr
    %1196 = llvm.getelementptr %1195[%1193] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1197 = llvm.ptrtoint %1196 : !llvm.ptr to i64
    %1198 = llvm.call @malloc(%1197) : (i64) -> !llvm.ptr
    %1199 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1200 = llvm.insertvalue %1198, %1199[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1201 = llvm.insertvalue %1198, %1200[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1202 = llvm.mlir.constant(0 : index) : i64
    %1203 = llvm.insertvalue %1202, %1201[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1204 = llvm.insertvalue %1193, %1203[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1205 = llvm.insertvalue %1194, %1204[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1206 = llvm.mlir.constant(1 : index) : i64
    %1207 = llvm.mlir.constant(1 : index) : i64
    %1208 = llvm.mlir.zero : !llvm.ptr
    %1209 = llvm.getelementptr %1208[%1206] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1210 = llvm.ptrtoint %1209 : !llvm.ptr to i64
    %1211 = llvm.call @malloc(%1210) : (i64) -> !llvm.ptr
    %1212 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1213 = llvm.insertvalue %1211, %1212[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1214 = llvm.insertvalue %1211, %1213[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1215 = llvm.mlir.constant(0 : index) : i64
    %1216 = llvm.insertvalue %1215, %1214[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1217 = llvm.insertvalue %1206, %1216[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1218 = llvm.insertvalue %1207, %1217[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1219 = llvm.mlir.constant(1 : index) : i64
    %1220 = llvm.mlir.constant(1 : index) : i64
    %1221 = llvm.mlir.zero : !llvm.ptr
    %1222 = llvm.getelementptr %1221[%1219] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1223 = llvm.ptrtoint %1222 : !llvm.ptr to i64
    %1224 = llvm.call @malloc(%1223) : (i64) -> !llvm.ptr
    %1225 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1226 = llvm.insertvalue %1224, %1225[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1227 = llvm.insertvalue %1224, %1226[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1228 = llvm.mlir.constant(0 : index) : i64
    %1229 = llvm.insertvalue %1228, %1227[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1230 = llvm.insertvalue %1219, %1229[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1231 = llvm.insertvalue %1220, %1230[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1232 = llvm.extractvalue %1205[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1233 = llvm.getelementptr %1232[%1184] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1190, %1233 : i64, !llvm.ptr
    %1234 = llvm.extractvalue %1218[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1235 = llvm.getelementptr %1234[%1184] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1191, %1235 : i64, !llvm.ptr
    %1236 = llvm.extractvalue %1231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1237 = llvm.getelementptr %1236[%1184] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1192, %1237 : i64, !llvm.ptr
    %1238 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1239 = llvm.extractvalue %1168[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1240 = llvm.extractvalue %1168[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1241 = llvm.insertvalue %1239, %1238[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1242 = llvm.insertvalue %1240, %1241[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1243 = llvm.mlir.constant(0 : index) : i64
    %1244 = llvm.insertvalue %1243, %1242[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1245 = llvm.mlir.constant(1 : index) : i64
    %1246 = llvm.mlir.constant(120 : index) : i64
    %1247 = llvm.insertvalue %1246, %1244[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1248 = llvm.insertvalue %1245, %1247[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1249 = llvm.mul %1245, %1246  : i64
    %1250 = builtin.unrealized_conversion_cast %1248 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<120xf32>
    %1251 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1252 = llvm.extractvalue %22[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1253 = llvm.extractvalue %22[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1254 = llvm.insertvalue %1252, %1251[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1255 = llvm.insertvalue %1253, %1254[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1256 = llvm.mlir.constant(0 : index) : i64
    %1257 = llvm.insertvalue %1256, %1255[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1258 = llvm.mlir.constant(1 : index) : i64
    %1259 = llvm.mlir.constant(10080 : index) : i64
    %1260 = llvm.insertvalue %1259, %1257[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1261 = llvm.insertvalue %1258, %1260[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1262 = llvm.mul %1258, %1259  : i64
    %1263 = builtin.unrealized_conversion_cast %1261 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<10080xf32>
    %1264 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1265 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1266 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1267 = llvm.insertvalue %1265, %1264[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1268 = llvm.insertvalue %1266, %1267[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1269 = llvm.mlir.constant(0 : index) : i64
    %1270 = llvm.insertvalue %1269, %1268[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1271 = llvm.mlir.constant(1 : index) : i64
    %1272 = llvm.mlir.constant(84 : index) : i64
    %1273 = llvm.insertvalue %1272, %1270[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1274 = llvm.insertvalue %1271, %1273[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1275 = llvm.mul %1271, %1272  : i64
    %1276 = builtin.unrealized_conversion_cast %1274 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<84xf32>
    %1277 = llvm.mlir.constant(1 : index) : i64
    %1278 = llvm.alloca %1277 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1248, %1278 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1279 = llvm.mlir.constant(1 : index) : i64
    %1280 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1281 = llvm.insertvalue %1279, %1280[0] : !llvm.struct<(i64, ptr)> 
    %1282 = llvm.insertvalue %1278, %1281[1] : !llvm.struct<(i64, ptr)> 
    %1283 = llvm.mlir.zero : !llvm.ptr
    %1284 = llvm.getelementptr %1283[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1285 = llvm.ptrtoint %1284 : !llvm.ptr to i64
    %1286 = llvm.extractvalue %1282[0] : !llvm.struct<(i64, ptr)> 
    %1287 = llvm.extractvalue %1282[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1286, %1287, %1285) : (i64, !llvm.ptr, i64) -> ()
    %1288 = llvm.mlir.constant(1 : index) : i64
    %1289 = llvm.alloca %1288 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1261, %1289 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1290 = llvm.mlir.constant(1 : index) : i64
    %1291 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1292 = llvm.insertvalue %1290, %1291[0] : !llvm.struct<(i64, ptr)> 
    %1293 = llvm.insertvalue %1289, %1292[1] : !llvm.struct<(i64, ptr)> 
    %1294 = llvm.mlir.zero : !llvm.ptr
    %1295 = llvm.getelementptr %1294[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1296 = llvm.ptrtoint %1295 : !llvm.ptr to i64
    %1297 = llvm.extractvalue %1293[0] : !llvm.struct<(i64, ptr)> 
    %1298 = llvm.extractvalue %1293[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1297, %1298, %1296) : (i64, !llvm.ptr, i64) -> ()
    %1299 = llvm.mlir.constant(1 : index) : i64
    %1300 = llvm.alloca %1299 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1274, %1300 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1301 = llvm.mlir.constant(1 : index) : i64
    %1302 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1303 = llvm.insertvalue %1301, %1302[0] : !llvm.struct<(i64, ptr)> 
    %1304 = llvm.insertvalue %1300, %1303[1] : !llvm.struct<(i64, ptr)> 
    %1305 = llvm.mlir.zero : !llvm.ptr
    %1306 = llvm.getelementptr %1305[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1307 = llvm.ptrtoint %1306 : !llvm.ptr to i64
    %1308 = llvm.extractvalue %1304[0] : !llvm.struct<(i64, ptr)> 
    %1309 = llvm.extractvalue %1304[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1308, %1309, %1307) : (i64, !llvm.ptr, i64) -> ()
    %1310 = llvm.mlir.constant(1 : index) : i64
    %1311 = builtin.unrealized_conversion_cast %1310 : i64 to index
    %1312 = llvm.mlir.constant(84 : index) : i64
    %1313 = builtin.unrealized_conversion_cast %1312 : i64 to index
    %1314 = llvm.mlir.constant(120 : index) : i64
    %1315 = builtin.unrealized_conversion_cast %1314 : i64 to index
    %1316 = llvm.mlir.constant(0 : index) : i64
    %1317 = builtin.unrealized_conversion_cast %1316 : i64 to index
    %1318 = llvm.mlir.constant(8 : index) : i64
    %1319 = builtin.unrealized_conversion_cast %1318 : i64 to index
    %1320 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1320, %1318) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%1188, %1186, %1186, %1186, %1186, %1186, %1316) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %1321 = llvm.mlir.constant(0 : index) : i64
    %1322 = builtin.unrealized_conversion_cast %1321 : i64 to index
    llvm.call @sstSetupIntArgument(%1314, %1321) : (i64, i64) -> ()
    %1323 = llvm.mlir.constant(8 : index) : i64
    %1324 = builtin.unrealized_conversion_cast %1323 : i64 to index
    %1325 = llvm.extractvalue %1248[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1326 = llvm.extractvalue %1248[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1327 = llvm.extractvalue %1248[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1328 = llvm.extractvalue %1248[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1329 = llvm.extractvalue %1248[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1325, %1326, %1327, %1328, %1329, %1323) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1330 = llvm.mlir.constant(48 : index) : i64
    %1331 = builtin.unrealized_conversion_cast %1330 : i64 to index
    llvm.call @sstSetupIntArgument(%1312, %1330) : (i64, i64) -> ()
    %1332 = llvm.mlir.constant(56 : index) : i64
    %1333 = builtin.unrealized_conversion_cast %1332 : i64 to index
    %1334 = llvm.extractvalue %1261[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1335 = llvm.extractvalue %1261[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1336 = llvm.extractvalue %1261[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1337 = llvm.extractvalue %1261[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1338 = llvm.extractvalue %1261[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1334, %1335, %1336, %1337, %1338, %1332) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1339 = llvm.mlir.constant(96 : index) : i64
    %1340 = builtin.unrealized_conversion_cast %1339 : i64 to index
    llvm.call @sstSetupIntArgument(%1184, %1339) : (i64, i64) -> ()
    %1341 = llvm.mlir.constant(104 : index) : i64
    %1342 = builtin.unrealized_conversion_cast %1341 : i64 to index
    llvm.call @sstSetupIntArgument(%1186, %1341) : (i64, i64) -> ()
    %1343 = llvm.mlir.constant(112 : index) : i64
    %1344 = builtin.unrealized_conversion_cast %1343 : i64 to index
    %1345 = llvm.extractvalue %1274[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1346 = llvm.extractvalue %1274[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1347 = llvm.extractvalue %1274[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1348 = llvm.extractvalue %1274[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1349 = llvm.extractvalue %1274[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1345, %1346, %1347, %1348, %1349, %1343) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1350 = llvm.mlir.constant(152 : index) : i64
    %1351 = builtin.unrealized_conversion_cast %1350 : i64 to index
    llvm.call @sstSetupIntArgument(%1310, %1350) : (i64, i64) -> ()
    %1352 = llvm.mlir.constant(160 : index) : i64
    %1353 = builtin.unrealized_conversion_cast %1352 : i64 to index
    llvm.call @sstSetupIntArgument(%1188, %1352) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%1318) : (i64) -> ()
    %1354 = llvm.mlir.constant(1 : index) : i64
    %1355 = llvm.mlir.constant(84 : index) : i64
    %1356 = llvm.mlir.constant(1 : index) : i64
    %1357 = llvm.mlir.constant(84 : index) : i64
    %1358 = llvm.mlir.zero : !llvm.ptr
    %1359 = llvm.getelementptr %1358[%1357] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1360 = llvm.ptrtoint %1359 : !llvm.ptr to i64
    %1361 = llvm.call @malloc(%1360) : (i64) -> !llvm.ptr
    %1362 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1363 = llvm.insertvalue %1361, %1362[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1364 = llvm.insertvalue %1361, %1363[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1365 = llvm.mlir.constant(0 : index) : i64
    %1366 = llvm.insertvalue %1365, %1364[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1367 = llvm.insertvalue %1354, %1366[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1368 = llvm.insertvalue %1355, %1367[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1369 = llvm.insertvalue %1355, %1368[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1370 = llvm.insertvalue %1356, %1369[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1371 = llvm.mlir.constant(2 : index) : i64
    %1372 = llvm.mlir.constant(1 : index) : i64
    %1373 = llvm.mlir.zero : !llvm.ptr
    %1374 = llvm.getelementptr %1373[%1371] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1375 = llvm.ptrtoint %1374 : !llvm.ptr to i64
    %1376 = llvm.call @malloc(%1375) : (i64) -> !llvm.ptr
    %1377 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1378 = llvm.insertvalue %1376, %1377[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1379 = llvm.insertvalue %1376, %1378[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1380 = llvm.mlir.constant(0 : index) : i64
    %1381 = llvm.insertvalue %1380, %1379[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1382 = llvm.insertvalue %1371, %1381[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1383 = llvm.insertvalue %1372, %1382[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1384 = llvm.mlir.constant(1 : index) : i64
    %1385 = llvm.mlir.constant(0 : index) : i64
    %1386 = llvm.extractvalue %1383[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1387 = llvm.getelementptr %1386[%1385] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1384, %1387 : i64, !llvm.ptr
    %1388 = llvm.mlir.constant(84 : index) : i64
    %1389 = llvm.mlir.constant(1 : index) : i64
    %1390 = llvm.extractvalue %1383[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1391 = llvm.getelementptr %1390[%1389] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1388, %1391 : i64, !llvm.ptr
    %1392 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1393 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1394 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1395 = llvm.insertvalue %1393, %1392[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1396 = llvm.insertvalue %1394, %1395[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1397 = llvm.mlir.constant(0 : index) : i64
    %1398 = llvm.insertvalue %1397, %1396[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1399 = llvm.mlir.constant(1 : index) : i64
    %1400 = llvm.mlir.constant(84 : index) : i64
    %1401 = llvm.insertvalue %1400, %1398[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1402 = llvm.insertvalue %1399, %1401[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1403 = llvm.mul %1399, %1400  : i64
    %1404 = llvm.mlir.constant(84 : index) : i64
    %1405 = llvm.mlir.constant(1 : index) : i64
    %1406 = llvm.insertvalue %1405, %1402[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1407 = llvm.insertvalue %1404, %1406[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1408 = llvm.mul %1404, %1405  : i64
    %1409 = llvm.mlir.constant(1 : index) : i64
    %1410 = llvm.extractvalue %1407[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1411 = llvm.mul %1409, %1410  : i64
    %1412 = llvm.extractvalue %1407[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1413 = llvm.mul %1411, %1412  : i64
    %1414 = llvm.mlir.zero : !llvm.ptr
    %1415 = llvm.getelementptr %1414[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1416 = llvm.ptrtoint %1415 : !llvm.ptr to i64
    %1417 = llvm.mul %1413, %1416  : i64
    %1418 = llvm.extractvalue %1407[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1419 = llvm.extractvalue %1407[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1420 = llvm.getelementptr %1418[%1419] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1421 = llvm.extractvalue %1370[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1422 = llvm.extractvalue %1370[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1423 = llvm.getelementptr %1421[%1422] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%1423, %1420, %1417) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %1424 = llvm.mlir.constant(0 : index) : i64
    %1425 = llvm.mlir.constant(1 : index) : i64
    %1426 = builtin.unrealized_conversion_cast %1425 : i64 to index
    %1427 = llvm.mlir.constant(512 : index) : i64
    %1428 = builtin.unrealized_conversion_cast %1427 : i64 to index
    %1429 = llvm.mlir.constant(84 : index) : i64
    %1430 = builtin.unrealized_conversion_cast %1429 : i64 to index
    %1431 = llvm.mlir.constant(1 : index) : i64
    %1432 = llvm.mlir.constant(1 : index) : i64
    %1433 = llvm.mlir.zero : !llvm.ptr
    %1434 = llvm.getelementptr %1433[%1431] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1435 = llvm.ptrtoint %1434 : !llvm.ptr to i64
    %1436 = llvm.call @malloc(%1435) : (i64) -> !llvm.ptr
    %1437 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1438 = llvm.insertvalue %1436, %1437[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1439 = llvm.insertvalue %1436, %1438[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1440 = llvm.mlir.constant(0 : index) : i64
    %1441 = llvm.insertvalue %1440, %1439[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1442 = llvm.insertvalue %1431, %1441[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1443 = llvm.insertvalue %1432, %1442[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1444 = llvm.extractvalue %1443[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1445 = llvm.getelementptr %1444[%1424] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1429, %1445 : i64, !llvm.ptr
    %1446 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1447 = llvm.extractvalue %1370[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1448 = llvm.extractvalue %1370[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1449 = llvm.insertvalue %1447, %1446[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1450 = llvm.insertvalue %1448, %1449[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1451 = llvm.mlir.constant(0 : index) : i64
    %1452 = llvm.insertvalue %1451, %1450[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1453 = llvm.mlir.constant(1 : index) : i64
    %1454 = llvm.mlir.constant(84 : index) : i64
    %1455 = llvm.insertvalue %1454, %1452[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1456 = llvm.insertvalue %1453, %1455[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1457 = llvm.mul %1453, %1454  : i64
    %1458 = builtin.unrealized_conversion_cast %1456 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<84xf32>
    %1459 = llvm.mlir.constant(1 : index) : i64
    %1460 = llvm.alloca %1459 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1370, %1460 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %1461 = llvm.mlir.constant(2 : index) : i64
    %1462 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1463 = llvm.insertvalue %1461, %1462[0] : !llvm.struct<(i64, ptr)> 
    %1464 = llvm.insertvalue %1460, %1463[1] : !llvm.struct<(i64, ptr)> 
    %1465 = llvm.mlir.zero : !llvm.ptr
    %1466 = llvm.getelementptr %1465[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1467 = llvm.ptrtoint %1466 : !llvm.ptr to i64
    %1468 = llvm.extractvalue %1464[0] : !llvm.struct<(i64, ptr)> 
    %1469 = llvm.extractvalue %1464[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1468, %1469, %1467) : (i64, !llvm.ptr, i64) -> ()
    %1470 = llvm.mlir.constant(0 : index) : i64
    %1471 = builtin.unrealized_conversion_cast %1470 : i64 to index
    %1472 = llvm.mlir.constant(9 : index) : i64
    %1473 = builtin.unrealized_conversion_cast %1472 : i64 to index
    %1474 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1474, %1472) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%1427, %1425, %1425, %1425, %1425, %1425, %1470) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %1475 = llvm.mlir.constant(0 : index) : i64
    %1476 = builtin.unrealized_conversion_cast %1475 : i64 to index
    %1477 = llvm.extractvalue %1456[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1478 = llvm.extractvalue %1456[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1479 = llvm.extractvalue %1456[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1480 = llvm.extractvalue %1456[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1481 = llvm.extractvalue %1456[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1477, %1478, %1479, %1480, %1481, %1475) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1482 = llvm.mlir.constant(40 : index) : i64
    %1483 = builtin.unrealized_conversion_cast %1482 : i64 to index
    llvm.call @sstSetupIntArgument(%1429, %1482) : (i64, i64) -> ()
    %1484 = llvm.mlir.constant(48 : index) : i64
    %1485 = builtin.unrealized_conversion_cast %1484 : i64 to index
    llvm.call @sstSetupIntArgument(%1427, %1484) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%1472) : (i64) -> ()
    %1486 = llvm.mlir.zero : !llvm.ptr
    %1487 = llvm.getelementptr %1486[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1488 = llvm.ptrtoint %1487 : !llvm.ptr to i64
    %1489 = llvm.extractvalue %1464[0] : !llvm.struct<(i64, ptr)> 
    %1490 = llvm.extractvalue %1464[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostUnregisterMemRef(%1489, %1490, %1488) : (i64, !llvm.ptr, i64) -> ()
    %1491 = llvm.mlir.constant(1 : index) : i64
    %1492 = llvm.mlir.constant(84 : index) : i64
    %1493 = llvm.mlir.constant(1 : index) : i64
    %1494 = llvm.mlir.constant(84 : index) : i64
    %1495 = llvm.mlir.zero : !llvm.ptr
    %1496 = llvm.getelementptr %1495[%1494] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1497 = llvm.ptrtoint %1496 : !llvm.ptr to i64
    %1498 = llvm.call @malloc(%1497) : (i64) -> !llvm.ptr
    %1499 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1500 = llvm.insertvalue %1498, %1499[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1501 = llvm.insertvalue %1498, %1500[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1502 = llvm.mlir.constant(0 : index) : i64
    %1503 = llvm.insertvalue %1502, %1501[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1504 = llvm.insertvalue %1491, %1503[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1505 = llvm.insertvalue %1492, %1504[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1506 = llvm.insertvalue %1492, %1505[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1507 = llvm.insertvalue %1493, %1506[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1508 = llvm.mlir.constant(1 : index) : i64
    %1509 = llvm.extractvalue %1370[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1510 = llvm.mul %1508, %1509  : i64
    %1511 = llvm.extractvalue %1370[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1512 = llvm.mul %1510, %1511  : i64
    %1513 = llvm.mlir.zero : !llvm.ptr
    %1514 = llvm.getelementptr %1513[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1515 = llvm.ptrtoint %1514 : !llvm.ptr to i64
    %1516 = llvm.mul %1512, %1515  : i64
    %1517 = llvm.extractvalue %1370[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1518 = llvm.extractvalue %1370[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1519 = llvm.getelementptr %1517[%1518] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1520 = llvm.extractvalue %1507[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1521 = llvm.extractvalue %1507[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1522 = llvm.getelementptr %1520[%1521] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%1522, %1519, %1516) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %1523 = llvm.mlir.constant(0 : index) : i64
    %1524 = builtin.unrealized_conversion_cast %1523 : i64 to index
    %1525 = llvm.mlir.constant(1 : index) : i64
    %1526 = builtin.unrealized_conversion_cast %1525 : i64 to index
    %1527 = llvm.mlir.constant(512 : index) : i64
    %1528 = builtin.unrealized_conversion_cast %1527 : i64 to index
    %1529 = llvm.mlir.constant(84 : index) : i64
    %1530 = llvm.mlir.constant(840 : index) : i64
    %1531 = llvm.mlir.constant(10 : index) : i64
    %1532 = llvm.mlir.constant(1 : index) : i64
    %1533 = llvm.mlir.constant(1 : index) : i64
    %1534 = llvm.mlir.zero : !llvm.ptr
    %1535 = llvm.getelementptr %1534[%1532] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1536 = llvm.ptrtoint %1535 : !llvm.ptr to i64
    %1537 = llvm.call @malloc(%1536) : (i64) -> !llvm.ptr
    %1538 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1539 = llvm.insertvalue %1537, %1538[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1540 = llvm.insertvalue %1537, %1539[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1541 = llvm.mlir.constant(0 : index) : i64
    %1542 = llvm.insertvalue %1541, %1540[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1543 = llvm.insertvalue %1532, %1542[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1544 = llvm.insertvalue %1533, %1543[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1545 = llvm.mlir.constant(1 : index) : i64
    %1546 = llvm.mlir.constant(1 : index) : i64
    %1547 = llvm.mlir.zero : !llvm.ptr
    %1548 = llvm.getelementptr %1547[%1545] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1549 = llvm.ptrtoint %1548 : !llvm.ptr to i64
    %1550 = llvm.call @malloc(%1549) : (i64) -> !llvm.ptr
    %1551 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1552 = llvm.insertvalue %1550, %1551[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1553 = llvm.insertvalue %1550, %1552[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1554 = llvm.mlir.constant(0 : index) : i64
    %1555 = llvm.insertvalue %1554, %1553[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1556 = llvm.insertvalue %1545, %1555[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1557 = llvm.insertvalue %1546, %1556[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1558 = llvm.mlir.constant(1 : index) : i64
    %1559 = llvm.mlir.constant(1 : index) : i64
    %1560 = llvm.mlir.zero : !llvm.ptr
    %1561 = llvm.getelementptr %1560[%1558] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1562 = llvm.ptrtoint %1561 : !llvm.ptr to i64
    %1563 = llvm.call @malloc(%1562) : (i64) -> !llvm.ptr
    %1564 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1565 = llvm.insertvalue %1563, %1564[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1566 = llvm.insertvalue %1563, %1565[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1567 = llvm.mlir.constant(0 : index) : i64
    %1568 = llvm.insertvalue %1567, %1566[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1569 = llvm.insertvalue %1558, %1568[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1570 = llvm.insertvalue %1559, %1569[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1571 = llvm.extractvalue %1544[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1572 = llvm.getelementptr %1571[%1523] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1529, %1572 : i64, !llvm.ptr
    %1573 = llvm.extractvalue %1557[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1574 = llvm.getelementptr %1573[%1523] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1530, %1574 : i64, !llvm.ptr
    %1575 = llvm.extractvalue %1570[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1576 = llvm.getelementptr %1575[%1523] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1531, %1576 : i64, !llvm.ptr
    %1577 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1578 = llvm.extractvalue %1507[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1579 = llvm.extractvalue %1507[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1580 = llvm.insertvalue %1578, %1577[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1581 = llvm.insertvalue %1579, %1580[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1582 = llvm.mlir.constant(0 : index) : i64
    %1583 = llvm.insertvalue %1582, %1581[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1584 = llvm.mlir.constant(1 : index) : i64
    %1585 = llvm.mlir.constant(84 : index) : i64
    %1586 = llvm.insertvalue %1585, %1583[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1587 = llvm.insertvalue %1584, %1586[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1588 = llvm.mul %1584, %1585  : i64
    %1589 = builtin.unrealized_conversion_cast %1587 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<84xf32>
    %1590 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1591 = llvm.extractvalue %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1592 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1593 = llvm.insertvalue %1591, %1590[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1594 = llvm.insertvalue %1592, %1593[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1595 = llvm.mlir.constant(0 : index) : i64
    %1596 = llvm.insertvalue %1595, %1594[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1597 = llvm.mlir.constant(1 : index) : i64
    %1598 = llvm.mlir.constant(840 : index) : i64
    %1599 = llvm.insertvalue %1598, %1596[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1600 = llvm.insertvalue %1597, %1599[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1601 = llvm.mul %1597, %1598  : i64
    %1602 = builtin.unrealized_conversion_cast %1600 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<840xf32>
    %1603 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1604 = llvm.extractvalue %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1605 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1606 = llvm.insertvalue %1604, %1603[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1607 = llvm.insertvalue %1605, %1606[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1608 = llvm.mlir.constant(0 : index) : i64
    %1609 = llvm.insertvalue %1608, %1607[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1610 = llvm.mlir.constant(1 : index) : i64
    %1611 = llvm.mlir.constant(10 : index) : i64
    %1612 = llvm.insertvalue %1611, %1609[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1613 = llvm.insertvalue %1610, %1612[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1614 = llvm.mul %1610, %1611  : i64
    %1615 = builtin.unrealized_conversion_cast %1613 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<10xf32>
    %1616 = llvm.mlir.constant(1 : index) : i64
    %1617 = llvm.alloca %1616 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1587, %1617 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1618 = llvm.mlir.constant(1 : index) : i64
    %1619 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1620 = llvm.insertvalue %1618, %1619[0] : !llvm.struct<(i64, ptr)> 
    %1621 = llvm.insertvalue %1617, %1620[1] : !llvm.struct<(i64, ptr)> 
    %1622 = llvm.mlir.zero : !llvm.ptr
    %1623 = llvm.getelementptr %1622[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1624 = llvm.ptrtoint %1623 : !llvm.ptr to i64
    %1625 = llvm.extractvalue %1621[0] : !llvm.struct<(i64, ptr)> 
    %1626 = llvm.extractvalue %1621[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1625, %1626, %1624) : (i64, !llvm.ptr, i64) -> ()
    %1627 = llvm.mlir.constant(1 : index) : i64
    %1628 = llvm.alloca %1627 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1600, %1628 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1629 = llvm.mlir.constant(1 : index) : i64
    %1630 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1631 = llvm.insertvalue %1629, %1630[0] : !llvm.struct<(i64, ptr)> 
    %1632 = llvm.insertvalue %1628, %1631[1] : !llvm.struct<(i64, ptr)> 
    %1633 = llvm.mlir.zero : !llvm.ptr
    %1634 = llvm.getelementptr %1633[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1635 = llvm.ptrtoint %1634 : !llvm.ptr to i64
    %1636 = llvm.extractvalue %1632[0] : !llvm.struct<(i64, ptr)> 
    %1637 = llvm.extractvalue %1632[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1636, %1637, %1635) : (i64, !llvm.ptr, i64) -> ()
    %1638 = llvm.mlir.constant(1 : index) : i64
    %1639 = llvm.alloca %1638 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %1613, %1639 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1640 = llvm.mlir.constant(1 : index) : i64
    %1641 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1642 = llvm.insertvalue %1640, %1641[0] : !llvm.struct<(i64, ptr)> 
    %1643 = llvm.insertvalue %1639, %1642[1] : !llvm.struct<(i64, ptr)> 
    %1644 = llvm.mlir.zero : !llvm.ptr
    %1645 = llvm.getelementptr %1644[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1646 = llvm.ptrtoint %1645 : !llvm.ptr to i64
    %1647 = llvm.extractvalue %1643[0] : !llvm.struct<(i64, ptr)> 
    %1648 = llvm.extractvalue %1643[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @mgpuMemHostRegisterMemRef(%1647, %1648, %1646) : (i64, !llvm.ptr, i64) -> ()
    %1649 = llvm.mlir.constant(1 : index) : i64
    %1650 = builtin.unrealized_conversion_cast %1649 : i64 to index
    %1651 = llvm.mlir.constant(10 : index) : i64
    %1652 = builtin.unrealized_conversion_cast %1651 : i64 to index
    %1653 = llvm.mlir.constant(84 : index) : i64
    %1654 = builtin.unrealized_conversion_cast %1653 : i64 to index
    %1655 = llvm.mlir.constant(0 : index) : i64
    %1656 = builtin.unrealized_conversion_cast %1655 : i64 to index
    %1657 = llvm.mlir.constant(10 : index) : i64
    %1658 = builtin.unrealized_conversion_cast %1657 : i64 to index
    %1659 = llvm.call @__sstcudaRegisterFatBinary() : () -> i64
    llvm.call @__sstcudaRegisterFunction(%1659, %1657) : (i64, i64) -> ()
    llvm.call @sstcudaConfigureCall(%1527, %1525, %1525, %1525, %1525, %1525, %1655) : (i64, i64, i64, i64, i64, i64, i64) -> ()
    %1660 = llvm.mlir.constant(0 : index) : i64
    %1661 = builtin.unrealized_conversion_cast %1660 : i64 to index
    llvm.call @sstSetupIntArgument(%1653, %1660) : (i64, i64) -> ()
    %1662 = llvm.mlir.constant(8 : index) : i64
    %1663 = builtin.unrealized_conversion_cast %1662 : i64 to index
    %1664 = llvm.extractvalue %1587[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1665 = llvm.extractvalue %1587[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1666 = llvm.extractvalue %1587[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1667 = llvm.extractvalue %1587[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1668 = llvm.extractvalue %1587[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1664, %1665, %1666, %1667, %1668, %1662) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1669 = llvm.mlir.constant(48 : index) : i64
    %1670 = builtin.unrealized_conversion_cast %1669 : i64 to index
    llvm.call @sstSetupIntArgument(%1651, %1669) : (i64, i64) -> ()
    %1671 = llvm.mlir.constant(56 : index) : i64
    %1672 = builtin.unrealized_conversion_cast %1671 : i64 to index
    %1673 = llvm.extractvalue %1600[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1674 = llvm.extractvalue %1600[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1675 = llvm.extractvalue %1600[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1676 = llvm.extractvalue %1600[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1677 = llvm.extractvalue %1600[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1673, %1674, %1675, %1676, %1677, %1671) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1678 = llvm.mlir.constant(96 : index) : i64
    %1679 = builtin.unrealized_conversion_cast %1678 : i64 to index
    llvm.call @sstSetupIntArgument(%1523, %1678) : (i64, i64) -> ()
    %1680 = llvm.mlir.constant(104 : index) : i64
    %1681 = builtin.unrealized_conversion_cast %1680 : i64 to index
    llvm.call @sstSetupIntArgument(%1525, %1680) : (i64, i64) -> ()
    %1682 = llvm.mlir.constant(112 : index) : i64
    %1683 = builtin.unrealized_conversion_cast %1682 : i64 to index
    %1684 = llvm.extractvalue %1613[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1685 = llvm.extractvalue %1613[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1686 = llvm.extractvalue %1613[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1687 = llvm.extractvalue %1613[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1688 = llvm.extractvalue %1613[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @sstSetupMemrefRankOneArgument(%1684, %1685, %1686, %1687, %1688, %1682) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64) -> ()
    %1689 = llvm.mlir.constant(152 : index) : i64
    %1690 = builtin.unrealized_conversion_cast %1689 : i64 to index
    llvm.call @sstSetupIntArgument(%1649, %1689) : (i64, i64) -> ()
    %1691 = llvm.mlir.constant(160 : index) : i64
    %1692 = builtin.unrealized_conversion_cast %1691 : i64 to index
    llvm.call @sstSetupIntArgument(%1527, %1691) : (i64, i64) -> ()
    llvm.call @sstcudaLaunch(%1657) : (i64) -> ()
    %1693 = llvm.mlir.constant(1 : index) : i64
    %1694 = llvm.mlir.constant(10 : index) : i64
    %1695 = llvm.mlir.constant(1 : index) : i64
    %1696 = llvm.mlir.constant(10 : index) : i64
    %1697 = llvm.mlir.zero : !llvm.ptr
    %1698 = llvm.getelementptr %1697[%1696] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1699 = llvm.ptrtoint %1698 : !llvm.ptr to i64
    %1700 = llvm.call @malloc(%1699) : (i64) -> !llvm.ptr
    %1701 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1702 = llvm.insertvalue %1700, %1701[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1703 = llvm.insertvalue %1700, %1702[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1704 = llvm.mlir.constant(0 : index) : i64
    %1705 = llvm.insertvalue %1704, %1703[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1706 = llvm.insertvalue %1693, %1705[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1707 = llvm.insertvalue %1694, %1706[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1708 = llvm.insertvalue %1694, %1707[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1709 = llvm.insertvalue %1695, %1708[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1710 = builtin.unrealized_conversion_cast %1709 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<1x10xf32>
    %1711 = llvm.mlir.constant(2 : index) : i64
    %1712 = llvm.mlir.constant(1 : index) : i64
    %1713 = llvm.mlir.zero : !llvm.ptr
    %1714 = llvm.getelementptr %1713[%1711] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %1715 = llvm.ptrtoint %1714 : !llvm.ptr to i64
    %1716 = llvm.call @malloc(%1715) : (i64) -> !llvm.ptr
    %1717 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1718 = llvm.insertvalue %1716, %1717[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1719 = llvm.insertvalue %1716, %1718[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1720 = llvm.mlir.constant(0 : index) : i64
    %1721 = llvm.insertvalue %1720, %1719[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1722 = llvm.insertvalue %1711, %1721[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1723 = llvm.insertvalue %1712, %1722[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1724 = llvm.mlir.constant(1 : index) : i64
    %1725 = llvm.mlir.constant(0 : index) : i64
    %1726 = llvm.extractvalue %1723[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1727 = llvm.getelementptr %1726[%1725] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1724, %1727 : i64, !llvm.ptr
    %1728 = llvm.mlir.constant(10 : index) : i64
    %1729 = llvm.mlir.constant(1 : index) : i64
    %1730 = llvm.extractvalue %1723[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1731 = llvm.getelementptr %1730[%1729] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1728, %1731 : i64, !llvm.ptr
    %1732 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1733 = llvm.extractvalue %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1734 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %1735 = llvm.insertvalue %1733, %1732[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1736 = llvm.insertvalue %1734, %1735[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1737 = llvm.mlir.constant(0 : index) : i64
    %1738 = llvm.insertvalue %1737, %1736[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1739 = llvm.mlir.constant(1 : index) : i64
    %1740 = llvm.mlir.constant(10 : index) : i64
    %1741 = llvm.insertvalue %1740, %1738[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1742 = llvm.insertvalue %1739, %1741[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1743 = llvm.mul %1739, %1740  : i64
    %1744 = llvm.mlir.constant(10 : index) : i64
    %1745 = llvm.mlir.constant(1 : index) : i64
    %1746 = llvm.insertvalue %1745, %1742[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1747 = llvm.insertvalue %1744, %1746[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1748 = llvm.mul %1744, %1745  : i64
    %1749 = llvm.mlir.constant(1 : index) : i64
    %1750 = llvm.extractvalue %1747[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1751 = llvm.mul %1749, %1750  : i64
    %1752 = llvm.extractvalue %1747[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1753 = llvm.mul %1751, %1752  : i64
    %1754 = llvm.mlir.zero : !llvm.ptr
    %1755 = llvm.getelementptr %1754[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %1756 = llvm.ptrtoint %1755 : !llvm.ptr to i64
    %1757 = llvm.mul %1753, %1756  : i64
    %1758 = llvm.extractvalue %1747[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1759 = llvm.extractvalue %1747[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1760 = llvm.getelementptr %1758[%1759] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %1761 = llvm.extractvalue %1709[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1762 = llvm.extractvalue %1709[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %1763 = llvm.getelementptr %1761[%1762] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%1763, %1760, %1757) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %1764 = bufferization.to_tensor %1710 : memref<1x10xf32>
    return %1764 : tensor<1x10xf32>
  }
  llvm.func @mgpuMemHostRegisterMemRef(i64, !llvm.ptr, i64)
  llvm.func @mgpuMemHostUnregisterMemRef(i64, !llvm.ptr, i64)
  llvm.func @__sstcudaRegisterFatBinary() -> i64
  llvm.func @__sstcudaRegisterFunction(i64, i64)
  llvm.func @sstcudaConfigureCall(i64, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupIntArgument(i64, i64)
  llvm.func @sstSetupMemrefRankFourArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)
  llvm.func @sstSetupMemrefRankOneArgument(!llvm.ptr, !llvm.ptr, i64, i64, i64, i64)
  llvm.func @sstcudaLaunch(i64)
}

