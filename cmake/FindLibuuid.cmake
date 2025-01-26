set(old_Libuuid_LIBRARIES ${Libuuid_LIBRARIES})
find_path(Libuuid_INCLUDE_DIRS uuid/uuid.h REQUIRED)
find_library(Libuuid_LIBRARIES uuid REQUIRED)

if(NOT old_Libuuid_LIBRARIES STREQUAL Libuuid_LIBRARIES)
    set(Libuuid_FIND_QUIETLY NO)
else()
    set(Libuuid_FIND_QUIETLY YES)
endif()

if (NOT Libuuid_FIND_QUIETLY)
    message(STATUS "Found libuuid: ${Libuuid_LIBRARIES}")
endif ()
