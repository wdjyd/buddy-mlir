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

from mlir import ir
from collections import deque, defaultdict

from .graph import Graph, GraphImporter, TensorMeta
from .operation import FuncOp, CallOp, PlaceholderOp, OutputOp, GetItemOp
from .graph_driver import GraphDriver

class GroupScheduler:
    def __init__(
        self,
        driver: GraphDriver, 
        inputs: List[TensorMeta],
        params: List[TensorMeta],
        ops_registry: dict,
        group_num
    ) -> None:

        self._driver = driver
        self._group_num = group_num
        self._inputs = inputs
        self._params = params
        self._ops_registry = ops_registry

    def construct_scheduler_graph(self):
        """
        Constructs the main computational graph by incorporating subgraphs' call
        and placeholder operations.

        Args:
        - do_param_pack (bool): Flag indicating whether parameter packing should
        be performed. Defaults to False.

        Returns:
        - Graph: The main computational graph constructed.

        Note: The actual call sequence and topology analysis are pending
        implementation.

        """
        scheduler_graph = Graph(
            self._inputs,
            self._params,
            self._ops_registry,
            "main",
        )

        # Adding FuncOp node for groups scheduler
        func_node = FuncOp()
        func_node.name = self._driver._graph._func_name
        func_node.tensor_meta = {"shape": [], "dtype": []}
        func_node
        for inp in self._subgraphs[subgraph_name]._inputs:
            func_node.add_argument(inp)
        for output in self._subgraphs_outputs[subgraph_name]:
            func_node.tensor_meta["shape"].append(
                self._graph.node_table[output].tensor_meta["shape"]
            )
            func_node.tensor_meta["dtype"].append(
                self._graph.node_table[output].tensor_meta["dtype"]
            )
        main_graph.add_node(func_node)
        
        # Adding placeholder operations from the original graph
        for op in self._graph.body:
            if isinstance(op, PlaceholderOp):
                main_graph.add_node(op)
            
        # Analysis topology order to sort subgraph call.
        topo_order = self.topological_sort_subgraph()
        if topo_order ==  None:
            print('Error : Graph Partitioning is illegal!')
            return None
        
        # Adding CallOp to invoke the single subgraph
        for i, subgraph_name in enumerate(topo_order):
            call_node = CallOp()
            call_node.name = "call{}".format(i)
            call_node.call_func_name = subgraph_name
            call_node.tensor_meta = {"shape": [], "dtype": []}
            for inp in self._subgraphs_inputs[subgraph_name]:
                if inp in main_graph.node_table:
                    call_node.add_argument(inp)
                    continue
                for key, value in self._subgraphs_outputs.items():
                    if inp in value:
                        call_node.add_argument(
                            arg=self._call_table[key].name,
                            arg_index=value.index(inp)
                        )
                        break
            for output in self._subgraphs_outputs[subgraph_name]:
                call_node.tensor_meta["shape"].append(
                    self._graph.node_table[output].tensor_meta["shape"]
                )
                call_node.tensor_meta["dtype"].append(
                    self._graph.node_table[output].tensor_meta["dtype"]
                )
            self._call_table[subgraph_name] = call_node
            main_graph.add_node(call_node)

        # Adding GetItemOps to retrieve individual output tensors
        output_node = OutputOp()
        for i, output in enumerate(self._subgraphs_outputs[topo_order[-1]]):
            getitem_node = GetItemOp()
            getitem_node.add_argument(call_node.name)
            getitem_node.add_argument(i)
            getitem_node.name = "getitem{}".format(i)
            output_node.add_argument(getitem_node.name)
            main_graph.add_node(getitem_node)
        
        # Marking the final output of the main graph
        output_node.name = "output"
        main_graph.add_node(output_node)

        # Importing the main graph
        with ir.Location.unknown(ir.Context()):
            main_importer = GraphImporter(
                main_graph.body,
                main_graph._fake_params,
                main_graph._inputs,
                main_graph._func_name,
                main_graph._ops_registry,
                do_param_pack,
            )
            return main_importer.import_main_graph()

