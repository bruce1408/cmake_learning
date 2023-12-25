# CMake 最低版本号要求
cmake_minimum_required (VERSION 3.10)

# 项目信息
project (Demo3)

# 头文件加载
include_directories(${CMAKE_SOURCE_DIR}/tools)
include_directories(${CMAKE_SOURCE_DIR}/math3_1)

# 源文件加载
file(GLOB TOOLS_SOURCES "tools/*.cpp")
file(GLOB MATH_SOURCES "math3_1/*.cpp")


message(STATUS  ${MATH_SOURCES})
# 指定生成目标，但是文件太多，不利于工程化
add_executable(Demo main.cc ${TOOLS_SOURCES} ${MATH_SOURCES})
