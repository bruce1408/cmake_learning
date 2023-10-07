cmake_policy(SET CMP0015 NEW)

# 头文件地址
FIND_PATH(HELLO_INCLUDE_DIR hello.h /Users/bruce/CppProjects/cmake_learning/demo/include/hello)

# 库文件地址
FIND_LIBRARY(HELLO_LIBRARY NAMES hello PATHS /Users/bruce/CppProjects/cmake_learning/demo/lib)

# 这里有几个变量名 
# 1. <name>_INCLUDE_DIR 
# 2. <name>_HELLO_LIBRARY
IF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
   SET(HELLO_FOUND TRUE)
ENDIF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)

# 输出打印信息
IF (HELLO_FOUND)
    IF (NOT HELLO_FIND_QUIETLY)
        MESSAGE(STATUS "Found Hello: ${HELLO_LIBRARY}")
    ENDIF (NOT HELLO_FIND_QUIETLY)
ELSE (HELLO_FOUND)
    IF (HELLO_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find hello library")
    ENDIF (HELLO_FIND_REQUIRED)
ENDIF (HELLO_FOUND)
