set(LIBHELLO_SRC hello.cpp)

# SHARED 表示的是动态库，STATIC表示静态库
add_library(hello_static STATIC ${LIBHELLO_SRC}) 
set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello")
set_target_properties(hello_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

# 安装动态库
add_library(hello_dynamic SHARED  ${LIBHELLO_SRC})
set_target_properties(hello_dynamic PROPERTIES OUTPUT_NAME "hello")
set_target_properties(hello_dynamic PROPERTIES CLEAN_DIRECT_OUTPUT 1)

install(FILES hello.h DESTINATION include/hello)

# 先安装动态库，然后安装静态库, LIBRARY特指动态库 ARCHIVE特指静态库，安装在lib目录下
install(TARGETS hello_dynamic hello_static 
    LIBRARY DESTINATION lib 
    ARCHIVE DESTINATION lib)

