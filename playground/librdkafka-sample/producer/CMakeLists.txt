cmake_minimum_required(VERSION 3.0.0)

project(producer LANGUAGES C)

set(CMAKE_C_FLAGS "-g -Wall -Werror -fPIC ${CMAKE_C_FLAGS}")

add_executable(producer producer.c)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../cmake/modules;${CMAKE_MODULE_PATH}")

find_package(librdkafka REQUIRED)

mark_as_advanced(
    LIBRDKAFKA_INCLUDE_DIR
    LIBRDKAFKA_LIB_DIR
)

message(STATUS "find LIBRDKAFKA_INCLUDE_DIR = ${LIBRDKAFKA_INCLUDE_DIR}")
message(STATUS "find LIBRDKAFKA_LIB_DIR = ${LIBRDKAFKA_LIB_DIR}")

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${LIBRDKAFKA_INCLUDE_DIR}
)

target_link_libraries(producer rdkafka)