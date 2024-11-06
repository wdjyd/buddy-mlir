#include "ExecutionEngine/cuda_runtime_api_def.h"
#include <cstdlib>
#include <cstdint>

extern "C"
unsigned int __sstcudaRegisterFatBinary() {
  const char* work_dir = getenv("WAFER_WORKSPACE");
  char file_name[256];
  if (work_dir != NULL) {
    snprintf(file_name, sizeof(file_name), "%s/gpu_sha1.out", work_dir);
  } else {
    snprintf(file_name, sizeof(file_name), "./gpu_sha1.out");
  }
  printf("%s", file_name);
  unsigned int fatbin_handle = __cudaRegisterFatBinary(file_name);
  return fatbin_handle;
}

extern "C"
void __sstcudaRegisterFunction(uint64_t fatCubinHandle,
                               uint64_t hostFun){
  char deviceFun[256];
  snprintf(deviceFun, sizeof(deviceFun), "CUDA_kernel_%d", static_cast<int>(hostFun));
  __cudaRegisterFunction(fatCubinHandle, hostFun, deviceFun);
}

extern "C"
void sstcudaConfigureCall(unsigned int blockX, unsigned int blockY, unsigned int blockZ,
                          unsigned int gridX, unsigned int gridY, unsigned int gridZ,
                          uint64_t sharedMem){
  dim3 gridDim = {gridX, gridY, gridZ};
  dim3 blockDim = {blockX, blockY, blockZ};
  cudaConfigureCall(gridDim, blockDim, sharedMem);
}

extern "C"
void sstcudaLaunch(uint64_t func){
  cudaLaunch(func);
}

extern "C"
void* sstcudaMalloc(size_t size){
  void *data;
  cudaMalloc((void**)&data, size * sizeof(unsigned char));
  return (void *)data;
}

extern "C"
void sstcudaMemcpy(void *dst, void *src, size_t sizeBytes, bool kind){
  if (!kind) {
    cudaMemcpy(reinterpret_cast<uint64_t>(dst) & 0xFFFFFFFF, reinterpret_cast<uint64_t>(src),
               sizeBytes * sizeof(unsigned char), cudaMemcpyHostToDevice);
  } else {
    cudaMemcpy(reinterpret_cast<uint64_t>(dst), reinterpret_cast<uint64_t>(src) & 0xFFFFFFFF,
               sizeBytes * sizeof(unsigned char), cudaMemcpyDeviceToHost);
  }
}

extern "C"
void sstSetupIntArgument(uint64_t integer, uint64_t offset){
  cudaSetupArgument((void *) integer, 8, offset);
}

extern "C"
void sstSetupInt8Argument(uint8_t integer, uint64_t offset){
  cudaSetupArgument((void *) integer, 8, offset);
}

extern "C"
void sstSetupInt32Argument(uint32_t integer, uint64_t offset){
  cudaSetupArgument((void *) integer, 8, offset);
}

extern "C"
void sstSetupFloat32Argument(uint32_t data, uint64_t offset){
  cudaSetupArgument((void *) data, 8, offset);
}

extern "C"
void sstSetupMemrefRankOneArgument(void *allocated, void *aligned, intptr_t offset, intptr_t size, intptr_t stride, uint64_t argOffset){
  cudaSetupArgument((void *) allocated, 8, argOffset);
  cudaSetupArgument((void *) aligned, 8, argOffset + 8);
  cudaSetupArgument((void *) offset, 8, argOffset + 16);
  cudaSetupArgument((void *) size, 8, argOffset + 24);
  cudaSetupArgument((void *) stride, 8, argOffset + 32);
}

extern "C"
void sstSetupMemrefRankTwoArgument(void *allocated, void *aligned, intptr_t offset_0, intptr_t offset_1, 
                                        intptr_t size_0, intptr_t size_1, intptr_t stride, uint64_t argOffset){
  cudaSetupArgument((void *) allocated, 8, argOffset);
  cudaSetupArgument((void *) aligned, 8, argOffset + 8);
  cudaSetupArgument((void *) offset_0, 8, argOffset + 16);
  cudaSetupArgument((void *) offset_1, 8, argOffset + 24);
  cudaSetupArgument((void *) size_0, 8, argOffset + 32);
  cudaSetupArgument((void *) size_1, 8, argOffset + 40);
  cudaSetupArgument((void *) stride, 8, argOffset + 48);
}

extern "C"
void sstSetupMemrefRankThreeArgument(void *allocated, void *aligned, intptr_t offset_0, intptr_t offset_1, intptr_t offset_2, 
                                        intptr_t size_0, intptr_t size_1, intptr_t size_2, intptr_t stride, uint64_t argOffset){
  cudaSetupArgument((void *) allocated, 8, argOffset);
  cudaSetupArgument((void *) aligned, 8, argOffset + 8);
  cudaSetupArgument((void *) offset_0, 8, argOffset + 16);
  cudaSetupArgument((void *) offset_1, 8, argOffset + 24);
  cudaSetupArgument((void *) offset_2, 8, argOffset + 32);
  cudaSetupArgument((void *) size_0, 8, argOffset + 40);
  cudaSetupArgument((void *) size_1, 8, argOffset + 48);
  cudaSetupArgument((void *) size_2, 8, argOffset + 56);
  cudaSetupArgument((void *) stride, 8, argOffset + 64);
}

extern "C"
void sstSetupMemrefRankFourArgument(void *allocated, void *aligned, intptr_t offset_0, intptr_t offset_1, intptr_t offset_2, intptr_t offset_3,
                                        intptr_t size_0, intptr_t size_1, intptr_t size_2, intptr_t size_3, intptr_t stride, uint64_t argOffset){
  cudaSetupArgument((void *) allocated, 8, argOffset);
  cudaSetupArgument((void *) aligned, 8, argOffset + 8);
  cudaSetupArgument((void *) offset_0, 8, argOffset + 16);
  cudaSetupArgument((void *) offset_1, 8, argOffset + 24);
  cudaSetupArgument((void *) offset_2, 8, argOffset + 32);
  cudaSetupArgument((void *) offset_3, 8, argOffset + 40);
  cudaSetupArgument((void *) size_0, 8, argOffset + 48);
  cudaSetupArgument((void *) size_1, 8, argOffset + 56);
  cudaSetupArgument((void *) size_2, 8, argOffset + 64);
  cudaSetupArgument((void *) size_3, 8, argOffset + 72);
  cudaSetupArgument((void *) stride, 8, argOffset + 80);
}

extern "C"
uint64_t sstGetCpuId(){
  return (uint64_t)getCPUID();
}

extern "C"
void sstMsgSend(int src, int dst, void *buf_p, int count){
  ariel_msg_send((uint32_t)(src<<8), (uint32_t)(dst<<8), (void *)buf_p, (uint64_t)(count), 1);
}

extern "C"
void sstMsgRecv(int src, int dst, void *buf_p, int count){
  ariel_msg_recv((uint32_t)(src<<8), (uint32_t)(dst<<8), (void *)buf_p, (uint64_t)(count), 1, 1);
}
