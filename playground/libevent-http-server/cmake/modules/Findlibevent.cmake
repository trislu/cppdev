message(STATUS "using bundled Findlibevent.cmake")

find_path(
    LIBEVENT_INCLUDE_DIR
    event2/bufferevent.h
    /usr/include
    /usr/local/include
)

find_path(
    LIBEVENT_LIB_DIR 
    libevent.so
    /usr/lib/x86_64-linux-gnu
)

#message(STATUS "find LIBEVENT_INCLUDE_DIR = ${LIBEVENT_INCLUDE_DIR}")
#message(STATUS "find LIBEVENT_LIB_DIR = ${LIBEVENT_LIB_DIR}")