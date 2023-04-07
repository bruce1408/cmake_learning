# add_library(hello SHARED ${PROJECT_SOURCE_DIR}/lib/hello.cpp)
# message(STATUS "${PROJECT_SOURCE_DIR}")
# install(TARGETS hello LIBRARY DESTINATION bin)

# install(FILES ${PROJECT_SOURCE_DIR}/lib/hello.h DESTINATION include)

set(LIBHELLO_SRC hello.c)

# 动态链接库
add_library(hello SHARED ${LIBHELLO_SRC})