from buddy.compiler.graph import GraphDriver
from buddy.compiler.graph.type import DeviceType
import re

# def extract_number(name):
#     match = re.search(r'\d+', name)  # 匹配数字
#     return match.group() if match else None  # 转换为整数

def generate_shell(driver : GraphDriver, gpu_num):
    shell_content = ""
    shell_content = """rm *.out\n"""
    for gpu_id in range(gpu_num):
        shell_content += """rm kernel.ptx\n"""
        for subgraph in driver.subgraphs:
            if subgraph.device != DeviceType.CPU and subgraph.device != DeviceType.UNKNOW:
                numbers = re.findall(r'\d+', subgraph.name)  # 找出所有连续数字
                device_id, op_id = map(int, numbers)
                if device_id == gpu_id:
                    shell_content += f"""export SUBGRAPH_FILE={subgraph.name}\n"""
                    shell_content += """make -B kernel.ptx\n"""
        shell_content += """python3 extract-header.py\n"""
        shell_content += """make buddy_gpu.out\n"""
        shell_content += f"""mv buddy_gpu.out buddy_gpu_{gpu_id}.out\n"""
    return shell_content
