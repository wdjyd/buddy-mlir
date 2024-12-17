cd ../../
source env.sh

cd examples/BuddySow
python buddy-lenet-import.py

rm -rf kernel.ptx gpu_sha1.out
make subgraph0-kernel.ptx
python extract-header.py
make gpu_sha1.out

_RUN_DIR=/home/newdisk/kt/sowProject/tests/sow_test_20241028_161849_subject2
make DESIGN_JSON_FILE="$_RUN_DIR"/design.json
cp -f gpu_sha1.out "$_RUN_DIR"/buddy_gpu_0.out

cd ../../build
cmake -G Ninja .. -DBUDDY_SOW_EXAMPLES=ON
ninja buddy-sow-run
cd bin/
cp -f buddy-sow-run "$_RUN_DIR"/kt_run_exe

cd ../../../sowProject
python3 subject2_test/mainTest.py
