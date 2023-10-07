# 用来搜索头文件的指令

message(status "${CMAKE_BINARY_DIR}/../../../demo/include/hello")
include_directories("${CMAKE_BINARY_DIR}/../../../demo/include/hello")

add_executable(hello main.cpp)

# 这里找不到动态链接库的话，添加一个link_directories, 这个可以不要
# link_libraries(/Users/bruce/CppProjects/cmake_learning/demo/lib)

# 目标文件和库文件进行链接
TARGET_LINK_LIBRARIES(hello "${CMAKE_BINARY_DIR}/../../../demo/lib/libhello.so")
