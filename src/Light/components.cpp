#include "components.h"
#include "imgui.h"

void Components::resultBox(const char* name, 
                           bool selected, 
                           ImVec4 foreground, 
                           ImVec4 background,
                           float width, 
                           float height) 
{

  ImDrawList* draw = ImGui::GetWindowDrawList();

  draw->ChannelsSplit(2);


  ImGui::PushStyleColor(ImGuiCol_Text, foreground);
  ImGui::PushStyleVar(ImGuiStyleVar_SelectableTextAlign, ImVec2(0.5, 0));

  ImGui::SameLine();

  draw->ChannelsSetCurrent(1);
  // Core Widget
  ImGui::Selectable(name,
                    selected,
                    0, 
                    ImVec2(width, height));


  ImGui::AlignTextToFramePadding();
  ImGui::PopStyleColor();
  ImGui::PopStyleVar();
  
  // Add a different background color
  draw->ChannelsSetCurrent(0);
  ImVec2 p_min = ImGui::GetItemRectMin();
  ImVec2 p_max = ImGui::GetItemRectMax();
  ImGui::GetWindowDrawList()->AddRectFilled(p_min, p_max, IM_COL32(background.x, background.y, background.z, background.w));
  

  draw->ChannelsMerge();


}
