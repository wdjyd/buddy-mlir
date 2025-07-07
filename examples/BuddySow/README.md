# Buddy Compiler LeNet Example
0. Activate your python environment.

1. Build llvm/mlir

```bash
$ cd buddy-mlir
$ mkdir llvm/build
$ cd llvm/build
$ cmake -G Ninja ../llvm \
    -DLLVM_ENABLE_PROJECTS="mlir;clang;openmp" \
    -DLLVM_TARGETS_TO_BUILD="host;NVPTX" \
    -DMLIR_ENABLE_CUDA_RUNNER=ON \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DOPENMP_ENABLE_LIBOMPTARGET=OFF \
    -DCMAKE_BUILD_TYPE=RELEASE \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DPython3_EXECUTABLE=$(which python3)
$ ninja check-clang check-mlir omp
```

2. Build buddy-mlir

```bash
$ mkdir build && cd build
$ cmake -G Ninja .. \
    -DMLIR_DIR=$PWD/../llvm/build/lib/cmake/mlir \
    -DLLVM_DIR=$PWD/../llvm/build/lib/cmake/llvm \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_BUILD_TYPE=RELEASE \
    -DBUDDY_MLIR_ENABLE_PYTHON_PACKAGES=ON \
    -DPython3_EXECUTABLE=$(which python3) \
    -DBUDDY_ENABLE_OPENCV=ON \
    -DOpenCV_DIR=</PATH/TO/OPENCV/BUILD/>
$ ninja
$ ninja check-buddy
```

3. Set the `PYTHONPATH` environment variable.

Make sure you are in the build directory.

```bash
$ export BUDDY_MLIR_BUILD_DIR=$PWD
$ export LLVM_MLIR_BUILD_DIR=$PWD/../llvm/build
$ export PYTHONPATH=${LLVM_MLIR_BUILD_DIR}/tools/mlir/python_packages/mlir_core:${BUDDY_MLIR_BUILD_DIR}/python_packages:${PYTHONPATH}
```

4. Set the `LENET_EXAMPLE_PATH` environment variable.

```bash
$ export LENET_EXAMPLE_PATH=${BUDDY_MLIR_BUILD_DIR}/../examples/BuddyLeNet/
```

