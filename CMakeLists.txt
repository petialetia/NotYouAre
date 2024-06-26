cmake_minimum_required(VERSION 3.14)

project(NotYouAre LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake-scripts")

include(code-coverage)

add_code_coverage()

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_EXECUTABLE_SUFFIX ".out")
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

set(CMAKE_CXX_FLAGS "-Wall -Wextra -pedantic -O2")

set(CMAKE_CXX_FLAGS_DEBUG "-fsanitize=undefined -fsanitize=address")

include_directories(${PROJECT_SOURCE_DIR}/include)

add_subdirectory(src)
add_subdirectory(tests)
