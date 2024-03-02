project(hello)

# 添加头文件
include_directories(math)

aux_source_directory(math DIR_LIB_SRCS)

# 生成可执行文件
add_executable(demo main.cc ${DIR_LIB_SRCS})

