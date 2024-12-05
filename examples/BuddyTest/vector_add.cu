#include <stdio.h>
#include <cuda_runtime.h>
__global__ void vector_addition_gpu(int *a, int *b, int *result, int n) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) {
        result[i] = a[i] * b[i];
    }
}
int main() {
    // 分配内存并初始化向量数据
    int *d_a, *d_b, *d_result;
    int n = 5;
    int a[] = {1, 2, 3, 4, 5};
    int b[] = {5, 4, 3, 2, 1};
    int result[n];
    // 在GPU上分配内存
    cudaMalloc((void**)&d_a, n * sizeof(int));
    cudaMalloc((void**)&d_b, n * sizeof(int));
    cudaMalloc((void**)&d_result, n * sizeof(int));
    // 将数据从主机复制到设备
    cudaMemcpy(d_a, a, n * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, n * sizeof(int), cudaMemcpyHostToDevice);
    // 调用内核函数执行向量加法
    vector_addition_gpu<<<1, n>>>(d_a, d_b, d_result, n);
    // 将计算结果从设备复制回主机
    cudaMemcpy(result, d_result, n * sizeof(int), cudaMemcpyDeviceToHost);
    // 释放内存
    // cudaFree(d_a);
    // cudaFree(d_b);
    // cudaFree(d_result);
    // 打印GPU版本向量加法结果
    for (int i = 0; i < n; i++) {
        
        printf("%d ", result[i]);
    }
    return 0;
}