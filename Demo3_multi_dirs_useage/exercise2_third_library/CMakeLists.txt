# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo3)

# 添加所有的源文件
aux_source_directory(. DIR_SRCS)

# 添加 math 头文件
add_subdirectory(math)

# 指定生成目标
add_executable(Demo ${DIR_SRCS})

# 添加链接库
target_link_libraries(Demo MathFunctions)