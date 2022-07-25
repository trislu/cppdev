message(STATUS "using bundled Findlibrdkafka.cmake")

find_path(
    LIBRDKAFKA_INCLUDE_DIR
    librdkafka/rdkafka.h
    /usr/include
    /usr/local/include
)

find_path(
    LIBRDKAFKA_LIB_DIR 
    librdkafka.so
    /usr/lib/x86_64-linux-gnu
)