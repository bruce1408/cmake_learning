set(LIBHELLO_SRC hello.cpp hello.h)

# SHARED 表示的是动态库，STATIC表示静态库
add_library(hello SHARED ${LIBHELLO_SRC}) 