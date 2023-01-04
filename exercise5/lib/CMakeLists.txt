set(LIBHELLO_SRC hello.cpp)

# SHARED 表示的是动态库，STATIC表示静态库
add_library(hello SHARED ${LIBHELLO_SRC}) 

set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello")

set_target_properties(hello_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

add_library(hello_dynamic )