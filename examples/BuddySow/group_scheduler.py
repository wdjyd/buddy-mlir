# ===- group_scheduler.py ---------------------------------------------------
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ===---------------------------------------------------------------------------
#
# This is the Group Scheduler for data parallel.
#
# ===---------------------------------------------------------------------------


from typing import Any, List, Optional
import functools

import mlir
from mlir import ir
from mlir.ir import *
from mlir.dialects import arith, memref, func, gpu, scf, tosa, vector, bufferization, tensor

from buddy.compiler.graph.type import TensorMeta
from buddy.compiler.ops.utils import *

GROUP_SCHEDULER_FUNC_NAME = "group_scheduler"

def group_scheduler(
    params: List[TensorMeta],
    total_inputs: TensorMeta,
    total_results: TensorMeta,
    input_per_group: TensorMeta,
    result_per_group: TensorMeta,
    func_name: str,
    group_num
):
    ctx = ir.Context()
    ctx.allow_unregistered_dialects = True

    with ir.Location.unknown(ctx):
        module = ir.Module.create()
        with ir.InsertionPoint(module.body):

            param_packs = pack_params(params)
            mlir_dtype = mlir_element_type_get(total_inputs.dtype)

            arguments = []
            arguments.extend(param_packs)
            arguments.append(ir.MemRefType.get(total_inputs.shape, mlir_dtype))
            arguments.append(ir.MemRefType.get(total_results.shape, mlir_dtype))

            func_type = ir.FunctionType.get(arguments, [])
            main_func = func.FuncOp(name=GROUP_SCHEDULER_FUNC_NAME, type=func_type)
            main_block = main_func.add_entry_block()

            input_shape = input_per_group.shape

            with ir.InsertionPoint(main_block):
                params = main_block.arguments[0]
                inputs = main_block.arguments[1]
                returns = main_block.arguments[2]

                cpu_id = ir.Operation.create(
                    name="sst.get_cpuid",
                    results=[ir.IndexType.get()]
                )

                for group_i in range(group_num):
                    sel_cpu = arith.ConstantOp(ir.IndexType.get(), ir.IntegerAttr.get(ir.IndexType.get(), group_i))
                    tmp = arith.cmpi(arith.CmpIPredicate.eq, cpu_id, sel_cpu)
                    if0 = scf.IfOp(tmp)
                    with ir.InsertionPoint(if0.then_block):
                        offset_attr = ir._denseI64ArrayAttr([input_shape[0] * group_i] + [0] * (len(input_shape) - 1), None)
                        size_attr = ir._denseI64ArrayAttr(input_shape, None)
                        stride_attr = ir._denseI64ArrayAttr([1] * len(input_shape), None)
                        memref_type = ir.MemRefType.get(
                            input_shape, 
                            mlir_dtype, 
                            ir.Attribute.parse("strided<[784, 784, 28, 1], offset: {}>".format(input_shape[0] * group_i * 28* 28))
                        )
                        memref_subview_op = memref.SubViewOp(
                            memref_type,
                            inputs,
                            [],
                            [],
                            [],
                            offset_attr,
                            size_attr,
                            stride_attr,
                        )
                        dest = memref.AllocOp(ir.MemRefType.get(input_shape, mlir_dtype), [], [])
                        copy_op = memref.CopyOp(memref_subview_op, dest)
                        
                        result = func.call(
                            [ir.MemRefType.get(result_per_group.shape, mlir_dtype)],
                            ir.FlatSymbolRefAttr.get(func_name),
                            [params, dest]
                        )

                        # Copy result to params memref.
                        result_shape = result_per_group.shape
                        offset_attr = ir._denseI64ArrayAttr([result_shape[0] * group_i] + [0] * (len(result_shape) - 1), None)
                        size_attr = ir._denseI64ArrayAttr(result_shape, None)
                        stride_attr = ir._denseI64ArrayAttr([1] * len(result_shape), None)
                        memref_type = ir.MemRefType.get(
                            result_shape, 
                            mlir_dtype, 
                            ir.Attribute.parse("strided<[10, 1], offset: {}>".format(result_shape[0] * group_i * 10))
                        )
                        memref_subview_op = memref.SubViewOp(
                            memref_type,
                            returns,
                            [],
                            [],
                            [],
                            offset_attr,
                            size_attr,
                            stride_attr,
                        )
                        copy_op = memref.CopyOp(result, memref_subview_op)
                        scf.YieldOp([])
            
                func.ReturnOp([])
                
            # Declare forward function
            arguments = []
            arguments.extend(param_packs)
            arguments.append(ir.MemRefType.get(input_shape, mlir_dtype))
            forward_func_op = func.FuncOp(
                name=func_name,
                type=ir.FunctionType.get(
                    arguments,
                    [ir.MemRefType.get(result_per_group.shape, mlir_dtype)]
                ),
                visibility="private"
            )

    return module


def pack_params(params):
    """
    Packs parameters of the graph to one memref.

    Returns:
    None

    Example:
    graph_instance = Graph(inputs, fake_params, ops_registry, func_name)
    graph_instance._pack_params()
    # The parameters of the graph are now packed to one memref.
    """
    dtypes = list(set([param.dtype for param in params]))
    dtypes.sort(key=str)
    param_packs = []
    for dtype in dtypes:
        params_of_dtype = [
            param for param in params if param.dtype == dtype
        ]
        param_total_size = 0
        for param in params_of_dtype:
            param_total_size += functools.reduce(
                lambda x, y: x * y, list(param.shape), 1
            )
        mlir_dtype = mlir_element_type_get(dtype)
        param_packs.append(
            ir.MemRefType.get([param_total_size], mlir_dtype)
        )
    return param_packs
