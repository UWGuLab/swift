# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gulab/swift/Arthur

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gulab/swift/Arthur

# Include any dependencies generated for this target.
include CMakeFiles/get_called_barcode_map.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/get_called_barcode_map.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/get_called_barcode_map.dir/flags.make

CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o: CMakeFiles/get_called_barcode_map.dir/flags.make
CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o: get_called_barcode_map.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gulab/swift/Arthur/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o -c /home/gulab/swift/Arthur/get_called_barcode_map.cpp

CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gulab/swift/Arthur/get_called_barcode_map.cpp > CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.i

CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gulab/swift/Arthur/get_called_barcode_map.cpp -o CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.s

CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.requires:

.PHONY : CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.requires

CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.provides: CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.requires
	$(MAKE) -f CMakeFiles/get_called_barcode_map.dir/build.make CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.provides.build
.PHONY : CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.provides

CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.provides.build: CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o


# Object files for target get_called_barcode_map
get_called_barcode_map_OBJECTS = \
"CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o"

# External object files for target get_called_barcode_map
get_called_barcode_map_EXTERNAL_OBJECTS =

get_called_barcode_map: CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o
get_called_barcode_map: CMakeFiles/get_called_barcode_map.dir/build.make
get_called_barcode_map: CMakeFiles/get_called_barcode_map.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gulab/swift/Arthur/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable get_called_barcode_map"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/get_called_barcode_map.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/get_called_barcode_map.dir/build: get_called_barcode_map

.PHONY : CMakeFiles/get_called_barcode_map.dir/build

CMakeFiles/get_called_barcode_map.dir/requires: CMakeFiles/get_called_barcode_map.dir/get_called_barcode_map.cpp.o.requires

.PHONY : CMakeFiles/get_called_barcode_map.dir/requires

CMakeFiles/get_called_barcode_map.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/get_called_barcode_map.dir/cmake_clean.cmake
.PHONY : CMakeFiles/get_called_barcode_map.dir/clean

CMakeFiles/get_called_barcode_map.dir/depend:
	cd /home/gulab/swift/Arthur && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gulab/swift/Arthur /home/gulab/swift/Arthur /home/gulab/swift/Arthur /home/gulab/swift/Arthur /home/gulab/swift/Arthur/CMakeFiles/get_called_barcode_map.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/get_called_barcode_map.dir/depend
