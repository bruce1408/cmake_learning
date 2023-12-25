# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo3)

include_directories(tools)

# 指定生成目标，但是文件太多，不利于工程化
add_executable(Demo main.cc math/MathFunctions.cc)
