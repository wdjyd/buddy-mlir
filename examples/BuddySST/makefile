#!/bin/bash
BUDDY_OPT := ../../build/bin/buddy-opt
MLIR_OPT := ../../llvm/build/bin/mlir-opt
MLIR_TRANSLATE := ../../llvm/build/bin/mlir-translate
MLIR_CPU_RUNNER := ../../llvm/build/bin/mlir-cpu-runner
LLC := ../../llvm/build/bin/llc
OPT_FLAG := -O0
PTXAS = /usr/local/cuda/bin/ptxas
FATBINARY = /usr/local/cuda/bin/fatbinary
CICC = /usr/local/cuda/nvvm/bin/cicc

ifeq ($(shell uname),Linux)
MLIR_RUNNER_UTILS := ../../llvm/build/lib/libmlir_runner_utils.so
MLIR_C_RUNNER_UTILS := ../../llvm/build/lib/libmlir_c_runner_utils.so
MLIR_ASYNC_RUNTIME := ../../llvm/build/lib/libmlir_async_runtime.so
MLIR_CUDA_RUNTIME := ../../llvm/build/lib/libmlir_cuda_runtime.so
WAFER_SST_RUNTIME := ../../build/lib/libwafer_sst_runtime.so
MTRIPLE := x86_64-unknown-linux-gnu
else ifeq ($(shell uname),Darwin)
MLIR_RUNNER_UTILS := ../../llvm/build/lib/libmlir_runner_utils.dylib
MLIR_C_RUNNER_UTILS := ../../llvm/build/lib/libmlir_c_runner_utils.dylib
MLIR_ASYNC_RUNTIME := ./../llvm/build/lib/libmlir_async_runtime.dylib
MTRIPLE := x86_64-apple-darwin
endif

kernel.ptx: forward.mlir
	@${BUDDY_OPT} $< -gpu-kernel-outlining -gpu-async-region | \
	${MLIR_OPT} -pass-pipeline "builtin.module(gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-nvvm-to-llvm,convert-arith-to-llvm, gpu-to-cubin{chip=sm_70 features=+ptx32}), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts)" | \
	${MLIR_OPT} > /dev/null 

kernel-outlining:
	@${MLIR_OPT} forward.mlir -gpu-kernel-outlining  | \
	${MLIR_OPT} -o outlining.mlir

gpu-to-sst:	
	@${BUDDY_OPT} --allow-unregistered-dialect  outlining.mlir -convert-gpu-to-sst -gpu-async-region -gpu-to-llvm -lower-sst-to-llvm -o tmp.mlir

sst-lower:
	@${BUDDY_OPT} sst.mlir  -gpu-async-region -gpu-to-llvm -lower-sst-to-llvm -o log.mlir

sst-translate:
	@${BUDDY_OPT} sst.mlir  -gpu-async-region -gpu-to-llvm -lower-sst-to-llvm -reconcile-unrealized-casts | \
	${MLIR_TRANSLATE} -mlir-to-llvmir -o log.ll

sst-run:
	@${BUDDY_OPT} log.mlir | \
	${MLIR_CPU_RUNNER} -entry-point-result=void -shared-libs=${MLIR_RUNNER_UTILS} -shared-libs=${MLIR_C_RUNNER_UTILS} -shared-libs=${MLIR_CUDA_RUNTIME} -shared-libs=${WAFER_SST_RUNTIME}

gpu-test-lower:
	@${MLIR_OPT} forward.mlir -gpu-kernel-outlining -gpu-async-region | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-nvvm-to-llvm,convert-arith-to-llvm, gpu-to-cubin{chip=sm_70 features=+ptx32}), gpu-to-llvm, gpu-module-to-binary)" -o log.mlir\

gpu-test-translate:
	@${MLIR_OPT} forward.mlir -gpu-kernel-outlining -llvm-request-c-wrappers -convert-vector-to-scf -convert-vector-to-llvm | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-arith-to-llvm), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts, gpu-module-to-binary)" | \
	${MLIR_TRANSLATE} -mlir-to-llvmir -o log.ll

gpu-test-run:
	@${MLIR_OPT} forward.mlir -gpu-kernel-outlining -gpu-async-region | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-gpu-to-nvvm), gpu-to-llvm, gpu-module-to-binary)" | \
	${MLIR_CPU_RUNNER} -entry-point-result=void -shared-libs=${MLIR_RUNNER_UTILS} -shared-libs=${MLIR_CUDA_RUNTIME} 

gpu_sha1.out:
	gcc -D__CUDA_ARCH__=300 -E -x c++  -DCUDA_DOUBLE_MATH_FUNCTIONS -D__CUDACC__ -D__NVCC__  "-I/usr/local/cuda/bin/../targets/x86_64-linux/include"    -D__CUDACC_VER_MAJOR__=10 -D__CUDACC_VER_MINOR__=1 -D__CUDACC_VER_BUILD__=243 -include "cuda_runtime.h" -m64 "./main.cu" > "main.cpp1.ii" 
	${CICC} --c++14 --gnu_version=70500 --allow_managed   -arch compute_30 -m64 -ftz=0 -prec_div=1 -prec_sqrt=1 -fmad=1 --include_file_name "main.fatbin.c" -tused -nvvmir-library "/usr/local/cuda/bin/../nvvm/libdevice/libdevice.10.bc" --gen_module_id_file --module_id_file_name "main.module_id" --orig_src_file_name "./main.cu" --gen_c_file_name "main.cudafe1.c" --stub_file_name "main.cudafe1.stub.c" --gen_device_file_name "main.cudafe1.gpu"  "main.cpp1.ii" -o "main.ptx"
	cp kernel.ptx ./main.ptx
	fatbinary --create="main.fatbin" -64 "--image=profile=compute_30,file=main.ptx" --embedded-fatbin="main.fatbin.c" 
	rm main.fatbin
	gcc -E -x c++ -D__CUDACC__ -D__NVCC__  "-I/usr/local/cuda/bin/../targets/x86_64-linux/include"    -D__CUDACC_VER_MAJOR__=10 -D__CUDACC_VER_MINOR__=1 -D__CUDACC_VER_BUILD__=243 -include "cuda_runtime.h" -m64 "./main.cu" > "main.cpp4.ii" 
	cudafe++ --c++14 --gnu_version=70500 --allow_managed  --m64 --parse_templates --gen_c_file_name "main.cudafe1.cpp" --stub_file_name "main.cudafe1.stub.c" --module_id_file_name "main.module_id" "main.cpp4.ii" 
	gcc -D__CUDA_ARCH__=300 -c -x c++  -DCUDA_DOUBLE_MATH_FUNCTIONS "-I/usr/local/cuda/bin/../targets/x86_64-linux/include"   -m64 -o "main.o" "main.cudafe1.cpp" 
	nvlink --arch=compute_30 --register-link-binaries="dlink.reg.c"  -m64   "-L/usr/local/cuda/bin/../targets/x86_64-linux/lib/stubs" "-L/usr/local/cuda/bin/../targets/x86_64-linux/lib" -cpu-arch=X86_64 "main.o" 
	fatbinary --create="dlink.fatbin" -64 -link --embedded-fatbin="dlink.fatbin.c" 
	rm dlink.fatbin
	gcc -c -x c++ -DFATBINFILE="\"dlink.fatbin.c\"" -DREGISTERLINKBINARYFILE="\"dlink.reg.c\"" -I. -D__NV_EXTRA_INITIALIZATION= -D__NV_EXTRA_FINALIZATION= -D__CUDA_INCLUDE_COMPILER_INTERNAL_HEADERS__  "-I/usr/local/cuda/bin/../targets/x86_64-linux/include"    -D__CUDACC_VER_MAJOR__=10 -D__CUDACC_VER_MINOR__=1 -D__CUDACC_VER_BUILD__=243 -m64 -o "dlink.o" "/usr/local/cuda/bin/crt/link.stub" 
	g++ -m64 -o gpu_sha1.out -Wl,--start-group "dlink.o" "main.o"   "-L/usr/local/cuda/bin/../targets/x86_64-linux/lib/stubs" "-L/usr/local/cuda/bin/../targets/x86_64-linux/lib" -lcudadevrt  -L/usr/local/cuda/lib64 -lcudart  -lrt -lpthread  -ldl  -Wl,--end-group
	rm main.cpp1.ii main.cpp4.ii main.cudafe1.c main.cudafe1.cpp main.cudafe1.gpu main.cudafe1.stub.c main.fatbin.c main.module_id main.o dlink.fatbin.c dlink.o dlink.reg.c

host_ctrl.o: op_sha1multi.ll gpu_sha1.out
	$(LLVM_BIN_DIR)/llc -mtriple=x86_64-unknown-linux-gnu -mattr=+sha $< --filetype=obj -o $@

example.o: SHA1Example.cpp
	$(CLANG)  -c $< -I $(WAFER_DIR)/include -o $@

sha1_host: example.o host_ctrl.o
	$(CLANG) host_ctrl.o example.o -L$(WAFER_DIR)/3rdparty/llvm/build/lib -lmlir_c_runner_utils \
	            -L$(WAFER_BUILD_DIR)/lib -lwafer_sst_runtime \
				-Wl,-rpath,$(WAFER_DIR)/3rdparty/llvm/build/lib:$(WAFER_BUILD_DIR)/lib \
				-o kt_run_exe
