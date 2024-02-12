cmake_minimum_required(VERSION 3.26.4)

project(INAGraf)

add_executable(${PROJECT_NAME} src/main.cpp)

add_subdirectory(include/Adder)

target_include_directories(${PROJECT_NAME} PUBLIC include/Adder)
target_link_directories(${PROJECT_NAME} PRIVATE include/Adder)
target_link_libraries(${PROJECT_NAME} adder)