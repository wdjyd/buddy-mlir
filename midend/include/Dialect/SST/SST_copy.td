#ifndef SST_OPS
#define SST_OPS

include "mlir/Dialect/LLVMIR/LLVMOpBase.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/Interfaces/ControlFlowInterfaces.td"
include "mlir/Interfaces/LoopLikeInterface.td"
include "mlir/IR/EnumAttr.td"
include "mlir/IR/AttrTypeBase.td"
include "mlir/IR/OpBase.td"

//===----------------------------------------------------------------------===//
// Crypto dialect definition
//===----------------------------------------------------------------------===//

def SST_Dialect : Dialect {
  let name = "sst";
  let cppNamespace = "::mlir::sst";

  // Note: this does not need to depend on LLVMDialect as long as functions in
  // this dialect (such as canonicalization) do not produce entities belonging
  // to the LLVMDialect (ops or types).
}

//===----------------------------------------------------------------------===//
// Crypto op definitions
//===----------------------------------------------------------------------===//

class SST_Op<string mnemonic, list<Trait> traits = []> :
    Op<SST_Dialect, mnemonic, traits>;

// TODO: add file_name as an argument (now name is fixed)
def SST_RegisterFatbinOp : SST_Op <"reg_fatbin", []> {
  let results = (outs Index :$handle);
}

// TODO: add device_func_name as an argument (now name is fixed)
def SST_RegisterFuncOp : SST_Op <"reg_func", []> {
  let arguments = (ins Index :$handle,
                       Index :$hostFunc);
}

def SST_MallocOp : SST_Op <"malloc", [
    AttrSizedOperandSegments
  ]> {
  
  let summary = "SST GPGPU simulation memory allocation operation.";

  let arguments = (ins Variadic<Index>:$dynamicSizes,
                       Variadic<Index>:$symbolOperands);
  let results = (outs Res<AnyMemRef, "", [MemAlloc]>:$memref);

  // let assemblyFormat = [{
  //   `(`$dynamicSizes`)` (`` `[` $symbolOperands^ `]`)? attr-dict `:` type($memref)
  // }];
}

def SST_MemcpyOp : SST_Op <"memcpy", []> {
  let summary = "Memory copy operation between CPU and SST GPGPU devices.";

  let arguments = (ins Arg<AnyMemRef, "", [MemWrite]>:$dst,
                       Arg<AnyMemRef, "", [MemRead]>:$src,
                       I1 : $copyDirection);

  // let assemblyFormat = [{
  //   $dst `,` $src attr-dict `:` type($dst)`,` type($src)
  // }];
}

def SST_ConfigureCallOp : SST_Op <"config_call", []> {
  let arguments = (ins Index : $bx,
                       Index : $by,
                       Index : $bz,
                       Index : $gx,
                       Index : $gy,
                       Index : $gz,
                       Index : $sharedMem);
}

def SST_SetupArgumentOp : SST_Op <"setup_arg", []> {
  let arguments = (ins AnyType : $arg,
                       Index : $offset);
}

def SST_LaunchOp : SST_Op <"launch", []> {
  let arguments = (ins Index : $funcId);
}

def SST_GetCpuIdOp : SST_Op <"get_cpuid", []> {
  let results = (outs Index : $cpuId);
}

def SST_MsgSendOp : SST_Op <"msg_send", []> {
  let arguments = (ins Index : $dst,
                       Index : $src,
                       MemRefRankOf<[I8], [1]> : $buffer,
                       Index : $size);
}

def SST_MsgRecvOp : SST_Op <"msg_recv", []> {
  let arguments = (ins Index : $dst,
                       Index : $src,
                       MemRefRankOf<[I8], [1]> : $buffer,
                       Index : $size);
}

#endif // SST_OPS
