// Copyright 2009-2023 NTESS. Under the terms
// of Contract DE-NA0003525 with NTESS, the U.S.
// Government retains certain rights in this software.
//
// Copyright (c) 2009-2023, NTESS
// All rights reserved.
//
// Portions are copyright of other developers:
// See the file CONTRIBUTORS.TXT in the top level directory
// of the distribution for more information.
//
// This file is part of the SST software package. For license
// information, see the LICENSE file in the top level directory of the
// distribution.

/**
 * @file cuda_runtime_api.h
 * @author Weili An (an107@purdue.edu)
 * @brief Test lib header for vanadis calling CUDA api
 * @version 0.1
 * @date 2022-09-22
 * 
 */

#ifndef __CUDA_RUNTIME_API_H__
#define __CUDA_RUNTIME_API_H__

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdexcept>


enum cudaMemcpyKind
{
    cudaMemcpyHostToHost          =   0,      /**< Host   -> Host */
    cudaMemcpyHostToDevice        =   1,      /**< Host   -> Device */
    cudaMemcpyDeviceToHost        =   2,      /**< Device -> Host */
    cudaMemcpyDeviceToDevice      =   3,      /**< Device -> Device */
    cudaMemcpyDefault             =   4       /**< Direction of the transfer is inferred from the pointer values. Requires unified virtual addressing */
};

enum cudaError
{
  cudaSuccess = 0,
  cudaErrorMissingConfiguration = 1,
  cudaErrorMemoryAllocation = 2,
  cudaErrorInitializationError = 3,
  cudaErrorLaunchFailure = 4,
  cudaErrorPriorLaunchFailure = 5,
  cudaErrorLaunchTimeout = 6,
  cudaErrorLaunchOutOfResources = 7,
  cudaErrorInvalidDeviceFunction = 8,
  cudaErrorInvalidConfiguration = 9,
  cudaErrorInvalidDevice = 10,
  cudaErrorInvalidValue = 11,
  cudaErrorInvalidPitchValue = 12,
  cudaErrorInvalidSymbol = 13,
  cudaErrorMapBufferObjectFailed = 14,
  cudaErrorUnmapBufferObjectFailed = 15,
  cudaErrorInvalidHostPointer = 16,
  cudaErrorInvalidDevicePointer = 17,
  cudaErrorInvalidTexture = 18,
  cudaErrorInvalidTextureBinding = 19,
  cudaErrorInvalidChannelDescriptor = 20,
  cudaErrorInvalidMemcpyDirection = 21,
  cudaErrorAddressOfConstant = 22,
  cudaErrorTextureFetchFailed = 23,
  cudaErrorTextureNotBound = 24,
  cudaErrorSynchronizationError = 25,
  cudaErrorInvalidFilterSetting = 26,
  cudaErrorInvalidNormSetting = 27,
  cudaErrorMixedDeviceExecution = 28,
  cudaErrorCudartUnloading = 29,
  cudaErrorUnknown = 30,
  cudaErrorNotYetImplemented = 31,
  cudaErrorMemoryValueTooLarge = 32,
  cudaErrorInvalidResourceHandle = 33,
  cudaErrorNotReady = 34,
  cudaErrorInsufficientDriver = 35,
  cudaErrorSetOnActiveProcess = 36,
  cudaErrorNoDevice = 38,
  cudaErrorStartupFailure = 0x7f,
  cudaErrorApiFailureBase = 10000
};

struct dim3
{
    unsigned int x, y, z;
};

typedef enum cudaError cudaError_t;
typedef struct dim3 dim3;

extern "C" cudaError_t cudaSetDevice(int device) { return cudaSuccess; };

extern "C" cudaError_t cudaMalloc(void **devPtr, uint64_t size){ return cudaSuccess; };

extern "C" cudaError_t cudaMemcpy(uint64_t dst, uint64_t src, uint64_t count, enum cudaMemcpyKind kind){ return cudaSuccess; };

// Cuda Configure call
extern "C" cudaError_t cudaConfigureCall(dim3 gridDim, dim3 blockDim, uint64_t sharedMem){ return cudaSuccess; };

// Cuda Setup argument
extern "C" cudaError_t cudaSetupArgument(const void *arg, size_t size, size_t offset){ return cudaSuccess; };

extern "C" cudaError_t cudaLaunch(uint64_t func){ return cudaSuccess; };

extern "C" unsigned int __cudaRegisterFatBinary(char file_name[256]){ return 0; };

// TODO: How to get the deviceFun name automatically?
// TODO: Requires parsing the binary?
extern "C" void __cudaRegisterFunction(
    uint64_t fatCubinHandle,
    uint64_t hostFun,
    char deviceFun[256]
){};

extern "C" int ariel_msg_send(uint32_t src, uint32_t dst, void *buf_p, uint64_t count, uint64_t tag){};
extern "C" int ariel_msg_recv(uint32_t src, uint32_t dst, void *buf_p, uint64_t count, uint64_t tag,int nb){};


extern "C" unsigned int getCPUID(){ 
    const char* env_id = std::getenv("CPUID");
    if (env_id != nullptr) {
        return std::stoi(env_id);
    }
    return 0; 
}

#endif 
