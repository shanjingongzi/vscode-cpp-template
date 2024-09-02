cmake_minimum_required(VERSION 3.16.1)

PROJECT(Example)
include(${CMAKE_MODULE_DIR}/BuildExecutable.cmake)

include_directories(
    ${ROOT_DIR}/Shared/Public
)
target_link_libraries(${PROJECT_NAME} PRIVATE Shared)
