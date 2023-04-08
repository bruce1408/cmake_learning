# set(LIBHELLO_SRC hello.cpp)
aux_source_directory(. LIBHELLO_SRC)

# SHARED 表示的是动态库，STATIC表示静态库
add_library(hello_static STATIC ${LIBHELLO_SRC}) 
set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello")

# 这个命令一般不需要
set_target_properties(hello_static PROPERTIES CLEAN_DIRECT_OUTPUT TRUE)

# 安装动态库
add_library(hello_dynamic SHARED  ${LIBHELLO_SRC})
set_target_properties(hello_dynamic PROPERTIES OUTPUT_NAME "hello")

# 这个命令一般不需要
set_target_properties(hello_dynamic PROPERTIES CLEAN_DIRECT_OUTPUT TRUE)