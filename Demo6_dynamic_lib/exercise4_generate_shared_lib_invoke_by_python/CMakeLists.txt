cmake_minimum_required (VERSION 3.23)
 
project( hello )

# 只生成动态链接库
add_library(hello SHARED ${PROJECT_SOURCE_DIR}/hello.c)

# 这里调用不用安装
# install(TARGETS hello LIBRARY DESTINATION lib)
 
# INSTALL(FILES ${PROJECT_SOURCE_DIR}/hello.h DESTINATION include)