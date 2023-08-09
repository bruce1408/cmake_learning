cmake_minimum_required(VERSION 3.23)

PROJECT(CONSTANT)

message(STATUS "=====================" ${CMAKE_CURRENT_SOURCE_DIR})
# /Users/bruce/CppProjects/cmake_learning/Demo6_cmake_constant/build
MESSAGE(STATUS "CMAKE_BINARY_DIR=" ${CMAKE_BINARY_DIR})

# /Users/bruce/CppProjects/cmake_learning/Demo6_cmake_constant/build
MESSAGE(STATUS "PROJECT_BINARY_DIR=" ${PROJECT_BINARY_DIR})

# /Users/bruce/CppProjects/cmake_learning/Demo6_cmake_constant/build
MESSAGE(STATUS "CONSTANT_BINARY_DIR=" ${CONSTANT_BINARY_DIR})

#当前CMakeLists.txt路径
# /Users/bruce/CppProjects/cmake_learning/Demo6_cmake_constant
MESSAGE(STATUS "CMAKE_CURRENT_SOURCE_DIR=" ${CMAKE_CURRENT_SOURCE_DIR})

# 
MESSAGE(STATUS "CMAKE_CURRRENT_BINARY_DIR=" ${CMAKE_CURRRENT_BINARY_DIR})

# /Users/bruce/CppProjects/cmake_learning/Demo6_cmake_constant/CMakeLists.txt
MESSAGE(STATUS "CMAKE_CURRENT_LIST_FILE=" ${CMAKE_CURRENT_LIST_FILE})

# 10
MESSAGE(STATUS "CMAKE_CURRENT_LIST_LINE=" ${CMAKE_CURRENT_LIST_LINE})

# 
MESSAGE(STATUS "CMAKE_MODULE_PATH=" ${CMAKE_MODULE_PATH})

ADD_SUBDIRECTORY(src)
ADD_SUBDIRECTORY(anthor)