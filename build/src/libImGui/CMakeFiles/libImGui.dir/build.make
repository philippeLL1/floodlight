# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /nix/store/qnvvm1gx29n4kcmz0ly8i7znwl37waaw-cmake-3.25.3/bin/cmake

# The command to remove a file.
RM = /nix/store/qnvvm1gx29n4kcmz0ly8i7znwl37waaw-cmake-3.25.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/drawer/code/floodlight

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/drawer/code/floodlight/build

# Include any dependencies generated for this target.
include src/libImGui/CMakeFiles/libImGui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/libImGui/CMakeFiles/libImGui.dir/compiler_depend.make

# Include the progress variables for this target.
include src/libImGui/CMakeFiles/libImGui.dir/progress.make

# Include the compile flags for this target's objects.
include src/libImGui/CMakeFiles/libImGui.dir/flags.make

src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.o: src/libImGui/CMakeFiles/libImGui.dir/flags.make
src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.o: /Users/drawer/code/floodlight/src/libImGui/ImGui.cpp
src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.o: src/libImGui/CMakeFiles/libImGui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/drawer/code/floodlight/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.o"
	cd /Users/drawer/code/floodlight/build/src/libImGui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.o -MF CMakeFiles/libImGui.dir/ImGui.cpp.o.d -o CMakeFiles/libImGui.dir/ImGui.cpp.o -c /Users/drawer/code/floodlight/src/libImGui/ImGui.cpp

src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libImGui.dir/ImGui.cpp.i"
	cd /Users/drawer/code/floodlight/build/src/libImGui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/drawer/code/floodlight/src/libImGui/ImGui.cpp > CMakeFiles/libImGui.dir/ImGui.cpp.i

src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libImGui.dir/ImGui.cpp.s"
	cd /Users/drawer/code/floodlight/build/src/libImGui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/drawer/code/floodlight/src/libImGui/ImGui.cpp -o CMakeFiles/libImGui.dir/ImGui.cpp.s

# Object files for target libImGui
libImGui_OBJECTS = \
"CMakeFiles/libImGui.dir/ImGui.cpp.o"

# External object files for target libImGui
libImGui_EXTERNAL_OBJECTS =

src/libImGui/liblibImGui.a: src/libImGui/CMakeFiles/libImGui.dir/ImGui.cpp.o
src/libImGui/liblibImGui.a: src/libImGui/CMakeFiles/libImGui.dir/build.make
src/libImGui/liblibImGui.a: src/libImGui/CMakeFiles/libImGui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/drawer/code/floodlight/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibImGui.a"
	cd /Users/drawer/code/floodlight/build/src/libImGui && $(CMAKE_COMMAND) -P CMakeFiles/libImGui.dir/cmake_clean_target.cmake
	cd /Users/drawer/code/floodlight/build/src/libImGui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libImGui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/libImGui/CMakeFiles/libImGui.dir/build: src/libImGui/liblibImGui.a
.PHONY : src/libImGui/CMakeFiles/libImGui.dir/build

src/libImGui/CMakeFiles/libImGui.dir/clean:
	cd /Users/drawer/code/floodlight/build/src/libImGui && $(CMAKE_COMMAND) -P CMakeFiles/libImGui.dir/cmake_clean.cmake
.PHONY : src/libImGui/CMakeFiles/libImGui.dir/clean

src/libImGui/CMakeFiles/libImGui.dir/depend:
	cd /Users/drawer/code/floodlight/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/drawer/code/floodlight /Users/drawer/code/floodlight/src/libImGui /Users/drawer/code/floodlight/build /Users/drawer/code/floodlight/build/src/libImGui /Users/drawer/code/floodlight/build/src/libImGui/CMakeFiles/libImGui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/libImGui/CMakeFiles/libImGui.dir/depend
