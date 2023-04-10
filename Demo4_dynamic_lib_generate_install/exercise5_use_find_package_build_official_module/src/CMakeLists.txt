ADD_EXECUTABLE(curltest main.c)

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


