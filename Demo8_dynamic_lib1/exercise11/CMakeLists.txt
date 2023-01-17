cmake_minimum_required(VERSION 3.20)

project(main VERSION 2.0)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# 定义一个开关，布尔值，是否输出版本好，然后是帮助信息，最后是on或者off开关
option(VERSION_ENABLE "output version" on)

option(DATE_ENABLE "output date" on)
# 如果开关打开就设置日期
if(DATE_ENABLE)
	set(DATE "2017-05-03")
endif()

# 这里config.h.in 自己添加配置文件，然后最后在build输出config.h
configure_file(config.h.in config.h)

# 生成这个库
add_subdirectory(src)

add_executable(main main.cpp)

# 连接这个库
target_link_libraries(main PUBLIC add)


target_include_directories(main PUBLIC ${PROJECT_BINARY_DIR}
${PROJECT_SOURCE_DIR}/src)