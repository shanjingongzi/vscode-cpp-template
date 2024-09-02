cmake_minimum_required(VERSION 3.16.0)

Project(#{NAME})
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/config.cmake)

#this is a example
add_subdirectory(Example)

#add your module
add_subdirectory(Shared)

