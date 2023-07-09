#include "imgui.h"

// ImGUI
#include "imgui.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"

// graphics library
#include <GLFW/glfw3.h> // Will drag system OpenGL headers

class LightGui {

public:
  LightGui();
  int run();

private:

  static const int default_width = 1700;
  static const int default_height = 24;

  const char* glsl_version;
  static const char* glPlatform();

  GLFWwindow* windowSetup();
  ImGuiIO& ioConfig();  
  ImGuiWindowFlags windowConfig();

};
