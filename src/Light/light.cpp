// STD
#include <algorithm>
#include <functional>
#include <stdio.h>
#include <string>
#include <iostream>
#include <vector>
#include <functional>
#include <map>

// ImGUI
#include "imgui.h"
#include "imgui/backends/imgui_impl_glfw.h"
#include "imgui/backends/imgui_impl_opengl3.h"

// graphics library
#include <GLFW/glfw3.h> // Will drag system OpenGL headers
#include <vector>

// helper functions
#include "StringDistance.h"
#include "components.h"

#define GL_SILENCE_DEPRECATION

// Floodlight Options
#define WIDTH 1700
#define HEIGHT 24
#define BG_COLOR 0.2, 0.2, 0.2, 1.0
#define SEARCHBOX_SIZE 200
#define SEARCHBOX_COLOR 0.16, 0.16, 0.16, 0.6
#define TEXT_FG 0., 0.7, 0.9, 1.0
#define TEXT_BG 36, 36, 36, 255
#define TEXT_PADDING 50.0
#define TEXT_PADDING_FACTOR 8.0
#define FONT_PATH "/Users/drawer/code/imlight/resources/fonts/HasklugNerdFontMono-Medium.otf"
#define FONT_SIZE 20.0

static void glfw_error_callback(int error, const char* description)
{
    fprintf(stderr, "GLFW Error %d: %s\n", error, description);
}

void SelectableColor(ImU32 color) {
  ImVec2 pMax = ImGui::GetItemRectMax();
  ImVec2 pMin = ImGui::GetItemRectMin();
  ImGui::GetWindowDrawList()->AddRectFilled(pMin, pMax, color);
}



static auto glPlatform() -> const char* {

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

auto windowSetup() -> GLFWwindow* {

    glfwWindowHint(GLFW_DECORATED, GLFW_FALSE);

    GLFWwindow* window = glfwCreateWindow(WIDTH, HEIGHT, "Floodlight", nullptr, nullptr);

    if (window == nullptr) {
      return nullptr;
    }

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1); // Enable vsync
    glfwSetWindowPos(window, 0, 0);

    return window;
}

auto ioConfig() -> ImGuiIO& {

    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;      // Enable Gamepad Controls

    return io;
}

auto windowConfig() -> ImGuiWindowFlags {

    ImGuiWindowFlags windowFlags = 0;
    windowFlags |= ImGuiWindowFlags_NoTitleBar;
    windowFlags |= ImGuiWindowFlags_NoDecoration;
    windowFlags |= ImGuiWindowFlags_NoScrollbar;
    windowFlags |= ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize;

    return windowFlags;
}


bool CustomSelectable(const char* label, bool* p_selected, ImU32 bg_color, ImGuiSelectableFlags flags, const ImVec2& size_arg) {

  ImDrawList* draw_list = ImGui::GetWindowDrawList();
  draw_list->ChannelsSplit(2);

  // Channel number is like z-order. Widgets in higher channels are rendered above widgets in lower channels.
  draw_list->ChannelsSetCurrent(1);

  bool result = ImGui::Selectable(label, p_selected, flags, size_arg);

  if (!ImGui::IsItemHovered() && !ImGui::IsItemActive() && !*p_selected) {
    // Render background behind Selectable().
    draw_list->ChannelsSetCurrent(0);
    SelectableColor(bg_color);
  }

  // Commit changes.
  draw_list->ChannelsMerge();
  return result;
}
// Main code
int main(int argc, char** argv)
{
    glfwSetErrorCallback(glfw_error_callback);
    if (!glfwInit())
        return 1;
 
    // Get OpenGL version based on platform
    const char* glsl_version = glPlatform();


    const ImVec2 textbox_size(2.0, 1.0);

    // Create GLFW window
    GLFWwindow* window = windowSetup();
    if (window == nullptr)
        return 1;
     
    ImGuiIO& io = ioConfig();

    // Setup Dear ImGui style
    ImGui::StyleColorsDark();

    ImGuiWindowFlags windowFlags = windowConfig();

    // Setup Platform/Renderer backends
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init(glsl_version);

    // Load Fonts
    ImFont* iosevka = io.Fonts->AddFontFromFileTTF(FONT_PATH, FONT_SIZE);
    IM_ASSERT(iosevka != nullptr);

    // Our state
    ImVec4 clear_color = ImVec4(0.2, 1.0, 0.60f, 1.00f);

    // Input arguments 
    std::vector<std::string> args;
    for (int i = 1; i < argc; ++i) {
      args.push_back(argv[i]);
    }

    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();

        // Start the Dear ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        // Start the main window 
        ImGui::Begin("Search", NULL, windowFlags);
        ImGui::SetWindowPos(ImVec2(0, 0));
        ImGui::SetWindowSize(ImVec2(WIDTH, HEIGHT));
        ImGui::SetKeyboardFocusHere();

        // Add input text box
        static char buf[20];
        std::string userSearch(buf);
        ImGui::PushStyleColor(ImGuiCol_FrameBg, ImVec4(SEARCHBOX_COLOR));
        ImGui::SetNextItemWidth(SEARCHBOX_SIZE);
        ImGui::InputText("##search_box", buf, sizeof(buf), ImGuiInputTextFlags_AutoSelectAll);
        ImGui::PopStyleColor();
        
        
        // Sort search results
        auto compareDistance = [&](std::string fst, std::string snd) { 

          int fstDistance = StringDistance::Levenshtein(userSearch, fst);
          int sndDistance = StringDistance::Levenshtein(userSearch, snd);
          return fstDistance < sndDistance;
        };
        std::sort(args.begin(), args.end(), compareDistance);       

        bool select = true;
        
        // Display search results
        for (std::string s : args) {
          
          ImGui::SameLine();
          // ImGui::Selectable(s.c_str(), select, 0, ImVec2(TEXT_PADDING , HEIGHT));
          Components::resultBox(s.c_str(), 
              select, 
              ImVec4(TEXT_FG), 
              ImVec4(TEXT_BG), 
              TEXT_PADDING + (s.size() * TEXT_PADDING_FACTOR), 
              HEIGHT);

          select = false;
        }

        
        if (ImGui::IsKeyDown(ImGuiKey_Enter)) {
          std::cout << args[0] << std::endl;
          return 0;
        }

        // General window styles
        ImGuiStyle& style = ImGui::GetStyle();
        style.WindowBorderSize = 0;
        style.WindowPadding = ImVec2(0., 0.);
        style.Colors[ImGuiCol_WindowBg] = ImVec4(BG_COLOR);
        ImGui::End();
        
        // Rendering
        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(
            clear_color.x * clear_color.w, 
            clear_color.y * clear_color.w, 
            clear_color.z * clear_color.w, 
            clear_color.w);

        glClear(GL_COLOR_BUFFER_BIT);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        glfwSwapBuffers(window);
    }
    
    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}
