#!/bin/bash

# 输出所有目录
files=`ls -d */`
echo ${files}

build="build"

# 遍历所有目录
for dir in ${files[@]}
do
    # 拼接build目录
    build_path="./${dir}/${build}"

    # 存在build目录
    if [ -d "$build_path" ];then

        # 且目录下面有文件就删除所有文件
        if [ "$(ls -A $build_path)" ]; then
            rm -r "$build_path/"*
        fi
    # 否则创建build目录 
    else
        mkdir -p "$build_path"
    fi
done