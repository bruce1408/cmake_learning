# CMake 最低版本号要求
cmake_minimum_required (VERSION 3.8)

# 项目信息 指定语言是C++
project (Demo2 LANGUAGES CXX) 

# 查找目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 保存的就是mathfunctions.cc 和 main.cc,不会包含.h的头文件
message(STATUS "the dir srcs is: " ${DIR_SRCS} )

# 指定生成目标
add_executable(Demo ${DIR_SRCS})