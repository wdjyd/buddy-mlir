cd ../../
source env.sh

cd examples/BuddySow
python buddy-lenet-import.py
sh fatbin.sh

# rm -rf kernel.ptx gpu_sha1.out
# make subgraph0-kernel.ptx
# python extract-header.py
# make gpu_sha1.out

# _RUN_DIR=/home/newdisk/kt/sowProject/tests/sow_test_20241028_161849_subject2
# make DESIGN_JSON_FILE="$_RUN_DIR"/design.json
# cp -f gpu_sha1.out "$_RUN_DIR"/buddy_gpu_0.out


_RUN_DIR=/root/wafer_project/wafer_test/result/
cp *.out "$_RUN_DIR"
cd ../../build
cmake -G Ninja .. -DBUDDY_SOW_EXAMPLES=ON
ninja buddy-sow-run
cd bin/
cp buddy-sow-run "$_RUN_DIR"/wafer_run_exe

cd ../../../wafer_project/wafer_test/tools
./design_run
