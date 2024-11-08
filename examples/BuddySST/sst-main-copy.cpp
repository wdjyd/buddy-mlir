#include <iostream>
#include <array>
#include <buddy/Core/Container.h>

// extern "C" void _mlir_ciface_forward(MemRef<float, 2> *output,
//                                      MemRef<float, 1> *arg0,
//                                      Img<float, 4> *input);

extern "C" void _mlir_ciface_forward(MemRef<float, 2> *mem0);

// void printResult(uint8_t* hash, std::string head, bool printHead) {
//     // Print the output.
//     if (printHead) {
//       std::cout << "--------------------------------------------------------"
//                   << std::endl;
//       std::cout << head << std::endl;
//     }
//     std::cout << "[ ";
//     for (size_t i = 0; i < 20; i++) {
//      printf("%02x ", hash[i]);
//     }
//     std::cout << "]" << std::endl;
// }

// intptr_t sizesOutput[2] = {4, 32};
// MemRef<unsigned int, 2> output(sizesOutput);

int main() {
  intptr_t sizesmem0[2] = {4, 32};
  intptr_t sizesmem1[4] = {2, 2, 4, 32};
  MemRef<float, 2> mem0(sizesmem0);
  // MemRef<unsigned int, 4> mem1(sizesmem1);
  _mlir_ciface_forward(&mem0);
  auto out0 = mem0.getData();
  // auto out1 = mem1.getData();

  // int out[128];
  // for (int i = 0; i < 128; i++) {
  //   out[i] = i;
  // }
  std::cout << "----------------------Test SST mem0-------------------------"<< std::endl;
  for (int j = 0; j < 4; j++) {
    std::cout << "[ ";
    for (int i = 0; i < 32; ++i) {
      printf("%f ", out0[j*32+i]);
    }
    std::cout << "]" << std::endl;
  }

  // std::cout << "----------------------Test SST mem1-------------------------"<< std::endl;
  // for (int j = 16; j < 32; j++) {
  //   std::cout << "[ ";
  //   for (int i = 0; i < 16; ++i) {
  //     printf("%d ", out1[j*16+i]);
  //   }
  //   std::cout << "]" << std::endl;
  // }
  // assert(1==0);
  return 0;
}

