cmake_minimum_required(VERSION 3.0)
project(SerialExample)

set(CMAKE_CXX_STANDARD 20)
add_subdirectory(dependencies)

add_executable(example "src/main.cpp")
target_link_libraries(example serial)
