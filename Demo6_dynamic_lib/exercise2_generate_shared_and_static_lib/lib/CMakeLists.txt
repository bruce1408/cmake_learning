set(LIBHELLO_SRC hello.cpp)

# SHARED 表示的是动态库，STATIC表示静态库
add_library(hello_static STATIC ${LIBHELLO_SRC}) 
set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello")
set_target_properties(hello_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

# 安装动态库
add_library(hello_dynamic SHARED  ${LIBHELLO_SRC})
set_target_properties(hello_dynamic PROPERTIES OUTPUT_NAME "hello")
set_target_properties(hello_dynamic PROPERTIES CLEAN_DIRECT_OUTPUT 1)