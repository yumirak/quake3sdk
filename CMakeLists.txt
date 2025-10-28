cmake_minimum_required(VERSION 3.16)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
include(identity)

project(${PROJECT_NAME} VERSION ${PROJECT_VERSION} LANGUAGES C)

option(BUILD_GAME_LIBRARIES "Build game module libraries" ON)
option(BUILD_GAME_QVMS "Build game module qvms" OFF)

option(BUILD_BASEGAME "Build Quake 3 Arena" ON)
option(BUILD_MISSIONPACK "Build Quake 3 Team Arena" ON)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_SHARED_LIBRARY_PREFIX "")

# Release build by default, set externally if you want something else
if(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(SOURCE_DIR ${CMAKE_SOURCE_DIR}/code)

include(compilers/all)
include(platforms/all)

include(basegame)
include(missionpack)
