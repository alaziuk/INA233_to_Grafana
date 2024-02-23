cmake_minimum_required(VERSION 3.26.4)

project(INAGraf VERSION 1.0)

file(GLOB_RECURSE SRC_FILES CONFIGURE_DEPENDS "src/*.cpp")

find_library(MPSSE_LIB mpsse PATHS /usr/local/lib)

if(NOT MPSSE_LIB)
    message(FATAL_ERROR "MPSSE library not found")
endif()

find_library(FTD2XX_LIB ftd2xx PATHS /usr/local/lib)

if(NOT FTD2XX_LIB)
    message(FATAL_ERROR "FTD2XX library not found")
endif()

add_subdirectory(lib)
# ${SRC_FILES}
add_executable(${PROJECT_NAME} src/main.cpp)
add_executable(test src/test.cpp)

target_link_libraries(${PROJECT_NAME} PUBLIC INA233)
target_link_libraries(test PRIVATE ${MPSSE_LIB})
target_link_libraries(test PRIVATE ${FTD2XX_LIB})