add_executable(Light light.cpp)

include_directories()

add_compile_definitions(GL_SILENCE_DEPRECATED)
target_include_directories(Light PUBLIC ./include/)

target_link_libraries(Light PRIVATE libStringDistance GL glfw)
