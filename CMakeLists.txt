cmake_minimum_required(VERSION 3.10)

file(GLOB SOURCES src/*.cpp)
add_library(utils STATIC ${SOURCES})

target_include_directories(utils INTERFACE "${CMAKE_CURRENT_SOURCE_DIR}/src")
