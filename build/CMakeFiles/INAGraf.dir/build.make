# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/adaml/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/adaml/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adaml/Projekty/WUThrust/INA233_to_Grafana

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adaml/Projekty/WUThrust/INA233_to_Grafana/build

# Include any dependencies generated for this target.
include CMakeFiles/INAGraf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/INAGraf.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/INAGraf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/INAGraf.dir/flags.make

CMakeFiles/INAGraf.dir/src/main.cpp.o: CMakeFiles/INAGraf.dir/flags.make
CMakeFiles/INAGraf.dir/src/main.cpp.o: /home/adaml/Projekty/WUThrust/INA233_to_Grafana/src/main.cpp
CMakeFiles/INAGraf.dir/src/main.cpp.o: CMakeFiles/INAGraf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adaml/Projekty/WUThrust/INA233_to_Grafana/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/INAGraf.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/INAGraf.dir/src/main.cpp.o -MF CMakeFiles/INAGraf.dir/src/main.cpp.o.d -o CMakeFiles/INAGraf.dir/src/main.cpp.o -c /home/adaml/Projekty/WUThrust/INA233_to_Grafana/src/main.cpp

CMakeFiles/INAGraf.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/INAGraf.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adaml/Projekty/WUThrust/INA233_to_Grafana/src/main.cpp > CMakeFiles/INAGraf.dir/src/main.cpp.i

CMakeFiles/INAGraf.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/INAGraf.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adaml/Projekty/WUThrust/INA233_to_Grafana/src/main.cpp -o CMakeFiles/INAGraf.dir/src/main.cpp.s

# Object files for target INAGraf
INAGraf_OBJECTS = \
"CMakeFiles/INAGraf.dir/src/main.cpp.o"

# External object files for target INAGraf
INAGraf_EXTERNAL_OBJECTS =

INAGraf: CMakeFiles/INAGraf.dir/src/main.cpp.o
INAGraf: CMakeFiles/INAGraf.dir/build.make
INAGraf: lib/INA233_Cpp-library/libINA233.a
INAGraf: CMakeFiles/INAGraf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adaml/Projekty/WUThrust/INA233_to_Grafana/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable INAGraf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/INAGraf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/INAGraf.dir/build: INAGraf
.PHONY : CMakeFiles/INAGraf.dir/build

CMakeFiles/INAGraf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/INAGraf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/INAGraf.dir/clean

CMakeFiles/INAGraf.dir/depend:
	cd /home/adaml/Projekty/WUThrust/INA233_to_Grafana/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adaml/Projekty/WUThrust/INA233_to_Grafana /home/adaml/Projekty/WUThrust/INA233_to_Grafana /home/adaml/Projekty/WUThrust/INA233_to_Grafana/build /home/adaml/Projekty/WUThrust/INA233_to_Grafana/build /home/adaml/Projekty/WUThrust/INA233_to_Grafana/build/CMakeFiles/INAGraf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/INAGraf.dir/depend

