include_directories(/Users/bruce/CppProjects/demo/include/hello)

add_executable(hello main.cpp)

# 这里找不到动态链接库的话，添加一个link_directories
link_libraries(/Users/bruce/CppProjects/demo/lib)