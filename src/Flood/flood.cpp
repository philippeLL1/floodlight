#include <__ranges/filter_view.h>
#include <iostream>
#include <filesystem>
#include <algorithm>
#include <ranges>
#include <map>
#include <regex>
#include "StringUtils.h"

namespace fs = std::filesystem;
namespace views = std::ranges::views;

int main(int argc, char** argv) {

  std::vector<const char*> searchDirectories(argv + 1, argv + argc);

  auto replace = [](const char* x) { return fs::is_directory(x); };
 
  auto existingDirectories = searchDirectories | views::filter(replace);

  std::map<std::string, std::string> results;

  for (const auto & directory : existingDirectories) {
    for (const auto & file : fs::directory_iterator(directory)) {
        try {
          if ((fs::status(file).permissions() & fs::perms::owner_exec) != fs::perms::none && !fs::is_directory(file)) {

            results[file.path()] = trimPath(file.path());

          }
        } catch (fs::filesystem_error e) {
          std::cerr << "Error: " << e.what() << ". Could not read file: " << file << std::endl;
        }
    }
  }
  
  for (auto item : results) {
    std::cout << item.second;
  }
  return 0;
}
