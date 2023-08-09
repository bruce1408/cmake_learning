# 项目关键字，制定工程名字和语言
PROJECT(HELLO LANGUAGES CXX)

# 可以设置多个文件
SET(SRC_LIST main.cpp) 

# send_error 产生错误，status 输出前缀为--，对齐标准的输出，fatal_error立刻终止
message(STATUS "THIS IS BINDARY IDR" ${PROJECT_BINARY_DIR})
message(STATUS "THIS IS source IDR" ${PROJECT_SOURCE_DIR})

# 生成可执行文件
add_executable(hello ${SRC_LIST})
