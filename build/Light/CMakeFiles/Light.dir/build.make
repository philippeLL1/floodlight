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
CMAKE_SOURCE_DIR = /Users/drawer/code/floodlight/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/drawer/code/floodlight/build

# Include any dependencies generated for this target.
include Light/CMakeFiles/Light.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Light/CMakeFiles/Light.dir/compiler_depend.make

# Include the progress variables for this target.
include Light/CMakeFiles/Light.dir/progress.make

# Include the compile flags for this target's objects.
include Light/CMakeFiles/Light.dir/flags.make

Light/CMakeFiles/Light.dir/light.o: Light/CMakeFiles/Light.dir/flags.make
Light/CMakeFiles/Light.dir/light.o: /Users/drawer/code/floodlight/src/Light/light.cpp
Light/CMakeFiles/Light.dir/light.o: Light/CMakeFiles/Light.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/drawer/code/floodlight/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Light/CMakeFiles/Light.dir/light.o"
	cd /Users/drawer/code/floodlight/build/Light && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Light/CMakeFiles/Light.dir/light.o -MF CMakeFiles/Light.dir/light.o.d -o CMakeFiles/Light.dir/light.o -c /Users/drawer/code/floodlight/src/Light/light.cpp

Light/CMakeFiles/Light.dir/light.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Light.dir/light.i"
	cd /Users/drawer/code/floodlight/build/Light && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/drawer/code/floodlight/src/Light/light.cpp > CMakeFiles/Light.dir/light.i

Light/CMakeFiles/Light.dir/light.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Light.dir/light.s"
	cd /Users/drawer/code/floodlight/build/Light && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/drawer/code/floodlight/src/Light/light.cpp -o CMakeFiles/Light.dir/light.s

# Object files for target Light
Light_OBJECTS = \
"CMakeFiles/Light.dir/light.o"

# External object files for target Light
Light_EXTERNAL_OBJECTS =

Light/Light: Light/CMakeFiles/Light.dir/light.o
Light/Light: Light/CMakeFiles/Light.dir/build.make
Light/Light: libImGui/liblibImGui.a
Light/Light: Light/CMakeFiles/Light.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/drawer/code/floodlight/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Light"
	cd /Users/drawer/code/floodlight/build/Light && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Light.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Light/CMakeFiles/Light.dir/build: Light/Light
.PHONY : Light/CMakeFiles/Light.dir/build

Light/CMakeFiles/Light.dir/clean:
	cd /Users/drawer/code/floodlight/build/Light && $(CMAKE_COMMAND) -P CMakeFiles/Light.dir/cmake_clean.cmake
.PHONY : Light/CMakeFiles/Light.dir/clean

Light/CMakeFiles/Light.dir/depend:
	cd /Users/drawer/code/floodlight/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/drawer/code/floodlight/src /Users/drawer/code/floodlight/src/Light /Users/drawer/code/floodlight/build /Users/drawer/code/floodlight/build/Light /Users/drawer/code/floodlight/build/Light/CMakeFiles/Light.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Light/CMakeFiles/Light.dir/depend

