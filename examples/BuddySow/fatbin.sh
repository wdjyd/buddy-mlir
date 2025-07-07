rm *.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph0_0
make -B kernel.ptx
export SUBGRAPH_FILE=subgraph0_1
make -B kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_0.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph1_0
make -B kernel.ptx
export SUBGRAPH_FILE=subgraph1_1
make -B kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_1.out

