cmake_minimum_required(VERSION 3.15.0)

project(Hello_World_With_Jenkins VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

set(SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)

add_executable(Hello_World_With_Jenkins ${SOURCES})