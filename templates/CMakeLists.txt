cmake_minimum_required(VERSION 3.16.1)

PROJECT(Template)
include(${CMAKE_MODULE_DIR}/Tools.cmake)
CollectDirectories(TARGET_DIR ${CMAKE_CURRENT_SOURCE_DIR}) 
CollectSources(SRCS "${TARGET_DIR}" ${CMAKE_CURRENT_SOURCE_DIR})


add_executable(${PROJECT_NAME} ${SRCS})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/public)
InstallBinaries(${PROJECT_NAME} ${BINARY_DIR})