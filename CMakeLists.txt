cmake_minimum_required(VERSION 3.26.4)

project(INAGraf)

add_executable(${PROJECT_NAME} src/main.cpp)

add_subdirectory(include/Adder)
add_subdirectory(include/INA233_Cpp-library)

target_include_directories(${PROJECT_NAME} PUBLIC include/Adder)
target_link_directories(${PROJECT_NAME} PRIVATE include/Adder)
target_link_libraries(${PROJECT_NAME} adder)

target_include_directories(${PROJECT_NAME} PUBLIC include/INA233_Cpp-library)
target_link_directories(${PROJECT_NAME} PRIVATE include/INA233_Cpp-library)
target_link_libraries(${PROJECT_NAME} INA233_Cpp-library)
