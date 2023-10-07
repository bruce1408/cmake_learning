# 方法 1 使用include_directories 
# INCLUDE_DIRECTORIES(/opt/local/include)

# ADD_EXECUTABLE(curltest main.c)

# TARGET_LINK_LIBRARIES(curltest /opt/local/lib/libcurl.dylib)


# 方法 2 使用find_package 指令
FIND_PACKAGE(CURL)
IF(CURL_FOUND)
    message(STATUS "curl found" ${curl_found})
    message(STATUS "curl include dir" ${CURL_INCLUDE_DIR})
    message(STATUS "curl include dir" ${CURL_LIBRARY})
    INCLUDE_DIRECTORIES(${CURL_INCLUDE_DIR})
    TARGET_LINK_LIBRARIES(curltest ${CURL_LIBRARY})
ELSE(CURL_FOUND)
    MESSAGE(STATUS "CURL library not found")
    INCLUDE_DIRECTORIES(/usr/include) 
    TARGET_LINK_LIBRARIES(curltest curl)
ENDIF(CURL_FOUND)


