#!/bin/bash

# 输出所有目录
files=`ls -d */`
# echo ${files}

build="build"

include_dir="exercise"
# 遍历所有目录
for dir in ${files[@]}
do
    exer_path=`ls -d ${dir}*/`
  
    for eachline in ${exer_path[@]}
    do
        # 当前目录使用正则表达式匹配 grep 后面就加上一个E即可
        if echo "$eachline" | grep -Eq $include_dir; then
  
            # 拼接build目录且是否存在
            build_path="${eachline}/${build}"
            # echo $build_path

            # 如果存在那么再判断该目录下的文件
            if [ -d "$build_path" ];then

                # 有文件就删除所有文件
                if [ "$(ls -A $build_path)" ]; then
                    rm -r "$build_path/"*
                fi
            # 没有build目录就创建build 
            else
                mkdir -p "$build_path"
            fi

        fi
    done
done