# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo3)

# 添加 math 目录的头文件(添加所有的头文件)
include_directories(math)

# 把 math 目录中的非头文件 加入到 SRC_LIST(添加所有的源文件)
aux_source_directory(math SRC_LIST)

message(STATUS "src-list is: " ${SRC_LIST} )
message(STATUS "include-list is: " ${CMAKE_CURRENT_SOURCE_DIR} )

# 指定生成目标
add_executable(Demo main.cc ${SRC_LIST})

# 添加链接库
# target_link_libraries(Demo MathFunctions)