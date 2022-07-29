message(STATUS "using bundled Findlibevent.cmake")

find_path(
    LIBEVENT_INCLUDE_DIR
    event2/bufferevent.h
    /usr/include
    /usr/local/include
)

find_library(
    LIBEVENT_LIB_DIR 
    libevent.so
)

message(STATUS "set LIBEVENT_INCLUDE_DIR = ${LIBEVENT_INCLUDE_DIR}")
message(STATUS "set LIBEVENT_LIB_DIR = ${LIBEVENT_LIB_DIR}")