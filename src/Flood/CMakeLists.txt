add_subdirectory(libStringDistance)
add_executable(Flood flood.cpp)
target_link_libraries(Flood PRIVATE libStringDistance)
