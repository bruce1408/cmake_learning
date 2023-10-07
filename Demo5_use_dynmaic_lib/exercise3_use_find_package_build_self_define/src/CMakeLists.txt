# 用来搜索头文件的指令
FIND_PACKAGE(HELLO)

if(HELLO_FOUND)
    add_executable(hello main.cpp)

    # 这里找不到动态链接库的话，添加一个link_directories
    include_directories(${HELLO_INCLUDE_DIR})

    # 目标文件和库文件进行链接
    TARGET_LINK_LIBRARIES(hello ${HELLO_LIBRARY})
    
else(HELLO_FOUND)
    message(FATAL_ERROR "hello library not found")
endif(HELLO_FOUND)



