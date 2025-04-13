#!/bin/bash

# 确保 .config 目录存在
mkdir -p ~/.config

# 遍历当前目录下的所有子文件夹（非隐藏）
for dir in */; do
    # 去除目录名后的 "/"（如 "folder/" → "folder"）
    dir_name="${dir%/}"
    # 创建软连接（指向当前目录下的文件夹）
    echo "Create symbolic link: ~/.config/$dir_name → $PWD/$dir_name"
    ln -sf "$PWD/$dir_name" ~/.config/
done

echo "操作完成！"
