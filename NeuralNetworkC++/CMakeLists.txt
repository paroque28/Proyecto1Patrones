cmake_minimum_required(VERSION 2.6)


project(boost-program-options-sample CXX)
set(PROJECT_EXEC "main")


message(STATUS "Build type: ${CMAKE_BUILD_TYPE}.")

set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -fstack-protector -s")
set(CMAKE_CXX_FLAGS "-std=c++11 -pedantic")

# Find Boost libs.
set(Boost_USE_STATIC_LIBS        ON) # only find static libs
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)
find_package(Boost COMPONENTS program_options iostreams system filesystem)
if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})
endif()

# Find Armadillo
find_package(Armadillo REQUIRED)
include_directories(${ARMADILLO_INCLUDE_DIRS})


set(SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src")
file(GLOB_RECURSE SRC_FILES "${SRC_DIR}/*.*pp")

add_executable("${PROJECT_EXEC}" "${SRC_FILES}")
target_link_libraries("${PROJECT_EXEC}" ${Boost_LIBRARIES})
target_link_libraries("${PROJECT_EXEC}" ${ARMADILLO_LIBRARIES})