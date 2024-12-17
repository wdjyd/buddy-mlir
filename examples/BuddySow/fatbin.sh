rm *.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph0
make kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_0.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph1
make kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_1.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph2
make kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_2.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph3
make kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_3.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph4
make kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_4.out
rm kernel.ptx
export SUBGRAPH_FILE=subgraph5
make kernel.ptx
python3 extract-header.py
make buddy_gpu.out
mv buddy_gpu.out buddy_gpu_5.out

