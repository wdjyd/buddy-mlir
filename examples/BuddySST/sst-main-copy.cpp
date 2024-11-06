#include <iostream>
#include <array>
#include <buddy/Core/Container.h>

// extern "C" void _mlir_ciface_forward(MemRef<float, 2> *output,
//                                      MemRef<float, 1> *arg0,
//                                      Img<float, 4> *input);

extern "C" void _mlir_ciface_forward(MemRef<unsigned int, 2> *output);

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
  intptr_t sizesOutput[2] = {4, 32};
  MemRef<unsigned int, 2> output(sizesOutput);
  _mlir_ciface_forward(&output);
  auto out = output.getData();

  // int out[128];
  for (int i = 0; i < 128; i++) {
    out[i] = i;
  }
  std::cout << "----------------------Test SST-------------------------"<< std::endl;
  for (int j = 0; j < 4; j++) {
    std::cout << "[ ";
    for (int i = 0; i < 32; ++i) {
      printf("%d ", out[j*32+i]);
    }
    std::cout << "]" << std::endl;
  }
  // assert(1==0);
  return 0;
}

