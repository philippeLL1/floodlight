add_executable(Light 
  light.cpp
  components.cpp
  )

set(IMGUI_DIR "$ENV{DEVENV_PROFILE}/include/imgui")
add_library(imgui 
  "${IMGUI_DIR}/imgui.cpp"
  "${IMGUI_DIR}/imgui_draw.cpp"
  "${IMGUI_DIR}/imgui_tables.cpp"
  "${IMGUI_DIR}/imgui_widgets.cpp"
  "${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp"
  "${IMGUI_DIR}/backends/imgui_impl_glfw.cpp"
  )

add_compile_definitions(GL_SILENCE_DEPRECATED)

target_include_directories(Light PUBLIC ./include/)

target_link_libraries(Light PRIVATE libStringUtils Gl glfw imgui)
