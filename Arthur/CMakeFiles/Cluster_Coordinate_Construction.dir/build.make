# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
include CMakeFiles/Cluster_Coordinate_Construction.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Cluster_Coordinate_Construction.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Cluster_Coordinate_Construction.dir/flags.make

CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o: CMakeFiles/Cluster_Coordinate_Construction.dir/flags.make
CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o: ClusterConstruction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gulab/swift/Arthur/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o -c /home/gulab/swift/Arthur/ClusterConstruction.cpp

CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gulab/swift/Arthur/ClusterConstruction.cpp > CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.i

CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gulab/swift/Arthur/ClusterConstruction.cpp -o CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.s

CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.requires:

.PHONY : CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.requires

CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.provides: CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.requires
	$(MAKE) -f CMakeFiles/Cluster_Coordinate_Construction.dir/build.make CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.provides.build
.PHONY : CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.provides

CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.provides.build: CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o


# Object files for target Cluster_Coordinate_Construction
Cluster_Coordinate_Construction_OBJECTS = \
"CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o"

# External object files for target Cluster_Coordinate_Construction
Cluster_Coordinate_Construction_EXTERNAL_OBJECTS =

Cluster_Coordinate_Construction: CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o
Cluster_Coordinate_Construction: CMakeFiles/Cluster_Coordinate_Construction.dir/build.make
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_dnn.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_ml.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_objdetect.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_shape.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_stitching.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_superres.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_videostab.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_calib3d.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_features2d.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_flann.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_highgui.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_photo.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_video.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_videoio.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_imgcodecs.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_imgproc.so.4.0.0
Cluster_Coordinate_Construction: /usr/local/lib/libopencv_core.so.4.0.0
Cluster_Coordinate_Construction: CMakeFiles/Cluster_Coordinate_Construction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gulab/swift/Arthur/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Cluster_Coordinate_Construction"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Cluster_Coordinate_Construction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Cluster_Coordinate_Construction.dir/build: Cluster_Coordinate_Construction

.PHONY : CMakeFiles/Cluster_Coordinate_Construction.dir/build

CMakeFiles/Cluster_Coordinate_Construction.dir/requires: CMakeFiles/Cluster_Coordinate_Construction.dir/ClusterConstruction.cpp.o.requires

.PHONY : CMakeFiles/Cluster_Coordinate_Construction.dir/requires

CMakeFiles/Cluster_Coordinate_Construction.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Cluster_Coordinate_Construction.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Cluster_Coordinate_Construction.dir/clean

CMakeFiles/Cluster_Coordinate_Construction.dir/depend:
	cd /home/gulab/swift/Arthur && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gulab/swift/Arthur /home/gulab/swift/Arthur /home/gulab/swift/Arthur /home/gulab/swift/Arthur /home/gulab/swift/Arthur/CMakeFiles/Cluster_Coordinate_Construction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Cluster_Coordinate_Construction.dir/depend
