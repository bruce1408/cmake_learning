add_library(hello SHARED ${PROJECT_SOURCE_DIR}/lib/hello.cpp)
message(STATUS "${PROJECT_SOURCE_DIR}")
install(TARGETS hello LIBRARY DESTINATION bin)

install(FILES ${PROJECT_SOURCE_DIR}/lib/hello.h DESTINATION include)

