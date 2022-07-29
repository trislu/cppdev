cmake_minimum_required(VERSION 3.0.0)

project(playground LANGUAGES C)

set(CMAKE_C_FLAGS "-g -Wall -Werror -fPIC ${CMAKE_C_FLAGS}")

add_subdirectory(src)

add_executable(main main.c)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules;${CMAKE_MODULE_PATH}")

find_package(libevent REQUIRED)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${LIBEVENT_INCLUDE_DIR}
)

target_link_libraries(main demo ${LIBEVENT_LIB_DIR})
