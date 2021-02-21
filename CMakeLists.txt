cmake_minimum_required(VERSION 3.0)
project(SerialExample)

set(CMAKE_CXX_STANDARD 20)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
find_package(Serial REQUIRED)
include_directories(${Serial_INCLUDE_DIRS})

message(STATUS ${Serial_INCLUDE_DIRS})
message(STATUS ${Serial_LIBRARIES})

add_executable(${PROJECT_NAME} "src/main.cpp")
target_link_libraries(${PROJECT_NAME} ${Serial_LIBRARIES})

