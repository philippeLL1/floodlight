#include "include/lightGui.h"

// ImGUI
#include "imgui.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"

// graphics library
#include <GLFW/glfw3.h> // Will drag system OpenGL headers
LightGui::LightGui() {
  this->glsl_version = glPlatform();
}
int LightGui::run() {
  return 4; 
}


ImGuiWindowFlags LightGui::windowConfig() {

    ImGuiWindowFlags windowFlags = 0;
    windowFlags |= ImGuiWindowFlags_NoTitleBar;
    windowFlags |= ImGuiWindowFlags_NoDecoration;
    windowFlags |= ImGuiWindowFlags_NoScrollbar;
    windowFlags |= ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize;

    return windowFlags;
}

ImGuiIO& LightGui::ioConfig() {

    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;      // Enable Gamepad Controls

    return io;
}
GLFWwindow* LightGui::windowSetup() {

    glfwWindowHint(GLFW_DECORATED, GLFW_FALSE);

    GLFWwindow* window = glfwCreateWindow(LightGui::default_width, LightGui::default_height, "Floodlight", nullptr, nullptr);

    if (window == nullptr) {
      return nullptr;
    }

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1); // Enable vsync
    glfwSetWindowPos(window, 0, 0);

    return window;
}
const char* LightGui::glPlatform() {

    // Decide GL+GLSL versions
#if defined(IMGUI_IMPL_OPENGL_ES2)
    // GL ES 2.0 + GLSL 100
    const char* glsl_version = "#version 100";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
    glfwWindowHint(GLFW_CLIENT_API, GLFW_OPENGL_ES_API);
#elif defined(__APPLE__)
    // GL 3.2 + GLSL 150
    const char* glsl_version = "#version 150";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+ only
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);            // Required on Mac
#else
    // GL 3.0 + GLSL 130
    const char* glsl_version = "#version 130";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
    //glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+ only
    //glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);            // 3.0+ only
#endif

    return glsl_version;
}

