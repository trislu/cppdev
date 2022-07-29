message(STATUS "using bundled Findlibrdkafka.cmake")

find_path(
    LIBRDKAFKA_INCLUDE_DIR
    librdkafka/rdkafka.h
    /usr/include
    /usr/local/include
)

find_library(
    LIBRDKAFKA_LIB_DIR 
    librdkafka.so
)

message(STATUS "set LIBRDKAFKA_INCLUDE_DIR = ${LIBRDKAFKA_INCLUDE_DIR}")
message(STATUS "set LIBRDKAFKA_LIB_DIR = ${LIBRDKAFKA_LIB_DIR}")
