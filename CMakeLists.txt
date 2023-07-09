cmake_minimum_required(VERSION 3.20.0)

project(Floodlight CXX)
set(CMAKE_CXX_STANDARD 20)

include_directories("$ENV{DEVENV_PROFILE}/include/imgui" "$ENV{DEVENV_PROFILE}/include")
add_subdirectory(src)
