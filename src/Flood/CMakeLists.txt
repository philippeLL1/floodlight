add_subdirectory(libStringUtils)
add_executable(Flood flood.cpp)
target_link_libraries(Flood PRIVATE libStringUtils)
