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
CMAKE_BINARY_DIR = /Users/drawer/code/floodlight

# Include any dependencies generated for this target.
include src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/progress.make

# Include the compile flags for this target's objects.
include src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/flags.make

src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.o: src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/flags.make
src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.o: src/Flood/libStringDistance/StringDistance.cpp
src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.o: src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/drawer/code/floodlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.o"
	cd /Users/drawer/code/floodlight/src/Flood/libStringDistance && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.o -MF CMakeFiles/libStringDistance.dir/StringDistance.cpp.o.d -o CMakeFiles/libStringDistance.dir/StringDistance.cpp.o -c /Users/drawer/code/floodlight/src/Flood/libStringDistance/StringDistance.cpp

src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libStringDistance.dir/StringDistance.cpp.i"
	cd /Users/drawer/code/floodlight/src/Flood/libStringDistance && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/drawer/code/floodlight/src/Flood/libStringDistance/StringDistance.cpp > CMakeFiles/libStringDistance.dir/StringDistance.cpp.i

src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libStringDistance.dir/StringDistance.cpp.s"
	cd /Users/drawer/code/floodlight/src/Flood/libStringDistance && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/drawer/code/floodlight/src/Flood/libStringDistance/StringDistance.cpp -o CMakeFiles/libStringDistance.dir/StringDistance.cpp.s

# Object files for target libStringDistance
libStringDistance_OBJECTS = \
"CMakeFiles/libStringDistance.dir/StringDistance.cpp.o"

# External object files for target libStringDistance
libStringDistance_EXTERNAL_OBJECTS =

src/Flood/libStringDistance/liblibStringDistance.a: src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/StringDistance.cpp.o
src/Flood/libStringDistance/liblibStringDistance.a: src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/build.make
src/Flood/libStringDistance/liblibStringDistance.a: src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/drawer/code/floodlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibStringDistance.a"
	cd /Users/drawer/code/floodlight/src/Flood/libStringDistance && $(CMAKE_COMMAND) -P CMakeFiles/libStringDistance.dir/cmake_clean_target.cmake
	cd /Users/drawer/code/floodlight/src/Flood/libStringDistance && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libStringDistance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/build: src/Flood/libStringDistance/liblibStringDistance.a
.PHONY : src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/build

src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/clean:
	cd /Users/drawer/code/floodlight/src/Flood/libStringDistance && $(CMAKE_COMMAND) -P CMakeFiles/libStringDistance.dir/cmake_clean.cmake
.PHONY : src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/clean

src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/depend:
	cd /Users/drawer/code/floodlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/drawer/code/floodlight /Users/drawer/code/floodlight/src/Flood/libStringDistance /Users/drawer/code/floodlight /Users/drawer/code/floodlight/src/Flood/libStringDistance /Users/drawer/code/floodlight/src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Flood/libStringDistance/CMakeFiles/libStringDistance.dir/depend

