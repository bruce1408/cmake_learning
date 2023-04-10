include_directories(/Users/bruce/CppProjects/cmake_learning/demo/include/hello)

add_executable(hello main.cpp)
# 这里找不到动态链接库的话，添加一个link_directories
link_libraries(/Users/bruce/CppProjects/cmake_learning/demo/lib)

# 目标文件和库文件进行链接
TARGET_LINK_LIBRARIES(hello /Users/bruce/CppProjects/cmake_learning/demo/lib/libhello.dylib)
