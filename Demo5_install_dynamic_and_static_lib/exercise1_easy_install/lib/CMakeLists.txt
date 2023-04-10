# 生成动态库文件
add_library(hello SHARED ${PROJECT_SOURCE_DIR}/lib/hello.c)

message(STATUS "${PROJECT_SOURCE_DIR}")

# 安装动态库到bin文件
install(TARGETS hello LIBRARY DESTINATION bin)

# 安装头文件
install(FILES ${PROJECT_SOURCE_DIR}/lib/hello.h DESTINATION include)

