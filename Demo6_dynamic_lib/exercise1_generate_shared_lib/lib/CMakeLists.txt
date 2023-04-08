set(LIBHELLO_SRC hello.cpp hello.h)

# 这个也可以使用
# aux_source_directory(. LIBHELLO_SRC)

# SHARED 表示的是动态库，STATIC表示静态库
add_library(hello SHARED ${LIBHELLO_SRC}) 