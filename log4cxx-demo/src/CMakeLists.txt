cmake_minimum_required(VERSION 3.10)
project(log4cxx-demo CXX)
SET(APP_NAME log4cxx-demo)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(log4cxx REQUIRED)
find_package(fmt REQUIRED)

add_executable(${APP_NAME} main.cpp)

target_link_libraries(${APP_NAME} PRIVATE log4cxx)

install(TARGETS ${APP_NAME} DESTINATION bin)
