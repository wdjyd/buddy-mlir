
_RUN_DIR=/home/newdisk/kt/sowProject/tests/sow_test_20241028_161849_subject2
make DESIGN_JSON_FILE="$_RUN_DIR"/design.json
cp -f buddy-sst-run "$_RUN_DIR"/kt_run_exe
cp -f gpu_sha1.out "$_RUN_DIR"/buddy_gpu.out
cmake -G Ninja .. -DBUDDY_SST_EXAMPLES=ON
