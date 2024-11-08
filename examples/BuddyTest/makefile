#!/bin/bash
BUDDY_OPT := ../../build/bin/buddy-opt
MLIR_OPT := ../../llvm/build/bin/mlir-opt
MLIR_TRANSLATE := ../../llvm/build/bin/mlir-translate
MLIR_CPU_RUNNER := ../../llvm/build/bin/mlir-cpu-runner
LLC := ../../llvm/build/bin/llc
OPT_FLAG := -O0

ifeq ($(shell uname),Linux)
MLIR_RUNNER_UTILS := ../../llvm/build/lib/libmlir_runner_utils.so
MLIR_C_RUNNER_UTILS := ../../llvm/build/lib/libmlir_c_runner_utils.so
MLIR_ASYNC_RUNTIME := ../../llvm/build/lib/libmlir_async_runtime.so
MLIR_CUDA_RUNTIME := ../../llvm/build/lib/libmlir_cuda_runtime.so
MTRIPLE := x86_64-unknown-linux-gnu
else ifeq ($(shell uname),Darwin)
MLIR_RUNNER_UTILS := ../../llvm/build/lib/libmlir_runner_utils.dylib
MLIR_C_RUNNER_UTILS := ../../llvm/build/lib/libmlir_c_runner_utils.dylib
MLIR_ASYNC_RUNTIME := ./../llvm/build/lib/libmlir_async_runtime.dylib
MTRIPLE := x86_64-apple-darwin
endif

test.ll: test.mlir
	${MLIR_TRANSLATE} $< -mlir-to-llvmir -o $@

test.mlir: log.mlir
	${BUDDY_OPT} $< -convert-scf-to-cf -lower-sst-to-llvm -reconcile-unrealized-casts -o $@

kernel.ptx: tmp.mlir
	@${BUDDY_OPT} $< -convert-vector-to-scf -convert-vector-to-llvm -func-bufferize-dynamic-offset -tensor-bufferize -buffer-deallocation -finalizing-bufferize -expand-strided-metadata  -one-shot-bufferize  | \
	${MLIR_OPT} -pass-pipeline "builtin.module(gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-nvvm-to-llvm,convert-arith-to-llvm, gpu-to-cubin{chip=sm_70 features=+ptx32}), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts)" | \
	${MLIR_OPT} -o res.mlir

kernel-outlining:
	@${MLIR_OPT} forward.mlir -gpu-kernel-outlining   | \
	${MLIR_OPT} -o tmp.mlir

gpu-test-lower:
	@${BUDDY_OPT} forward.mlir -gpu-kernel-outlining -convert-vector-to-scf -convert-vector-to-llvm -func-bufferize-dynamic-offset -tensor-bufferize -buffer-deallocation -finalizing-bufferize -expand-strided-metadata  -one-shot-bufferize  | \
	${MLIR_OPT} -pass-pipeline "builtin.module(gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-nvvm-to-llvm,convert-arith-to-llvm, gpu-to-cubin{chip=sm_70 features=+ptx32}), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts)" | \
	${MLIR_OPT} -o log.mlir

gpu-test-translate:
	@${MLIR_OPT} forward.mlir -gpu-kernel-outlining -llvm-request-c-wrappers -convert-vector-to-scf -convert-vector-to-llvm | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-arith-to-llvm), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts, gpu-module-to-binary)" | \
	${MLIR_TRANSLATE} -mlir-to-llvmir -o log.ll

gpu-test-run:
	@${MLIR_OPT} forward.mlir -gpu-kernel-outlining -llvm-request-c-wrappers -convert-vector-to-scf -convert-vector-to-llvm | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-arith-to-llvm), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts, gpu-module-to-binary)" | \
	${MLIR_CPU_RUNNER} -entry-point-result=void -shared-libs=${MLIR_RUNNER_UTILS} -shared-libs=${MLIR_CUDA_RUNTIME} 

gpu-conv2d-lower:
	@${MLIR_OPT} conv2d.mlir -gpu-kernel-outlining -llvm-request-c-wrappers -convert-vector-to-scf -convert-vector-to-llvm | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-arith-to-llvm), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts, gpu-module-to-binary)" | \
	${MLIR_OPT} -o log.mlir

gpu-conv2d-translate:
	@${MLIR_OPT} conv2d.mlir -gpu-kernel-outlining -llvm-request-c-wrappers | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-arith-to-llvm), convert-scf-to-cf, gpu-to-llvm, gpu-module-to-binary)" | \
	${MLIR_TRANSLATE} -mlir-to-llvmir -o log.ll

gpu-conv2d-run:
	@${MLIR_OPT} conv2d.mlir -gpu-kernel-outlining -llvm-request-c-wrappers -convert-vector-to-scf -convert-vector-to-llvm | \
	${MLIR_OPT} -pass-pipeline="builtin.module(nvvm-attach-target{chip=sm_70 O=3},\
	gpu.module(convert-scf-to-cf, convert-gpu-to-nvvm, convert-arith-to-llvm), convert-scf-to-cf, gpu-to-llvm, reconcile-unrealized-casts, gpu-module-to-binary)" | \
	${MLIR_CPU_RUNNER} -entry-point-result=void -shared-libs=${MLIR_RUNNER_UTILS} -shared-libs=${MLIR_CUDA_RUNTIME} 

memref-lower:
	@${MLIR_OPT} ./test.mlir \
		-convert-vector-to-llvm \
		-finalize-memref-to-llvm -convert-arith-to-llvm  \
		-convert-func-to-llvm -reconcile-unrealized-casts \
		-o ./log.mlir

memref-translate:
	@${MLIR_OPT} ./test.mlir \
		-convert-vector-to-llvm \
		-finalize-memref-to-llvm -convert-arith-to-llvm  \
		-convert-func-to-llvm -reconcile-unrealized-casts | \
	${MLIR_TRANSLATE} --mlir-to-llvmir -o log.ll
