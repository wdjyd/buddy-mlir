def remove_ptx_headers(file_path):
    # 要删除的关键词
    headers_to_remove = {'.version 3.2', '.target sm_30', '.address_size 64'}
    
    # 读取文件内容
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # 过滤掉包含指定关键词的行
    filtered_lines = [line for line in lines if not any(header in line for header in headers_to_remove)]
    
    # 将结果写回文件
    with open(file_path, 'w') as file:
        file.writelines(filtered_lines)
    
    print("Headers removed successfully.")

# 使用方法
remove_ptx_headers('kernel.ptx')
