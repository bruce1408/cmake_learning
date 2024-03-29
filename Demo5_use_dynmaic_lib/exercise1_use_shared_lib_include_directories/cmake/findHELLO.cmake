cmake_policy(SET CMP0015 NEW)

FIND_PATH(HELLO_INCLUDE_DIR hello.h ../../p4-library/lib)
FIND_LIBRARY(HELLO_LIBRARY NAMES hello PATHS ../../p4-library/build/lib)

IF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
   SET(HELLO_FOUND TRUE)
ENDIF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)

IF (HELLO_FOUND)
   IF (NOT HELLO_FIND_QUIETLY)
      MESSAGE(STATUS "Found Hello: ${HELLO_LIBRARY}")
ENDIF (NOT HELLO_FIND_QUIETLY)
ELSE (HELLO_FOUND)
   IF (HELLO_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find hello library")
   ENDIF (HELLO_FIND_REQUIRED)
ENDIF (HELLO_FOUND)
