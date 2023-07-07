cmake_minimum_required(VERSION 3.20.0)

project(Floodlight CXX)
set(CMAKE_CXX_STANDARD 17)

include_directories(/nix/store/6lxsnhxas7s9vbph6plvzpvf8vphc67v-devenv-profile/include/imgui)

add_subdirectory(src)
