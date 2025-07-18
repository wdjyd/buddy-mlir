cd ../../build

export BUDDY_MLIR_BUILD_DIR=$PWD
export LLVM_MLIR_BUILD_DIR=$PWD/../llvm/build
export PYTHONPATH=${LLVM_MLIR_BUILD_DIR}/tools/mlir/python_packages/mlir_core:${BUDDY_MLIR_BUILD_DIR}/python_packages:${PYTHONPATH}
export LENET_EXAMPLE_PATH=${BUDDY_MLIR_BUILD_DIR}/../examples/BuddyLeNet/

cd ../examples/BuddySow
python3 buddy-lenet-import.py
sh fatbin.sh


_RUN_DIR=/home/newdisk/kt/sowProject/tests/20250717_888888/
cp *.out "$_RUN_DIR"
cd ../../build
cmake -G Ninja .. -DBUDDY_SOW_EXAMPLES=ON
ninja buddy-sow-run
cd bin/
cp buddy-sow-run "$_RUN_DIR"/kt_run_exe

cd /home/newdisk/kt/sowProject/module_cd/tools
./design_run /home/newdisk/kt/sowProject/tests/20250717_888888/ 0


