# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/zeddling/Applications/clion-2019.3.5/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/zeddling/Applications/clion-2019.3.5/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/zeddling/Documents/Projects/OpenCV Tutorial"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/zeddling/Documents/Projects/OpenCV Tutorial/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/OpenCV_Tutorial3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenCV_Tutorial3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenCV_Tutorial3.dir/flags.make

CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.o: CMakeFiles/OpenCV_Tutorial3.dir/flags.make
CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.o: ../brightness.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zeddling/Documents/Projects/OpenCV Tutorial/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.o -c "/home/zeddling/Documents/Projects/OpenCV Tutorial/brightness.cpp"

CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zeddling/Documents/Projects/OpenCV Tutorial/brightness.cpp" > CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.i

CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zeddling/Documents/Projects/OpenCV Tutorial/brightness.cpp" -o CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.s

# Object files for target OpenCV_Tutorial3
OpenCV_Tutorial3_OBJECTS = \
"CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.o"

# External object files for target OpenCV_Tutorial3
OpenCV_Tutorial3_EXTERNAL_OBJECTS =

OpenCV_Tutorial3: CMakeFiles/OpenCV_Tutorial3.dir/brightness.cpp.o
OpenCV_Tutorial3: CMakeFiles/OpenCV_Tutorial3.dir/build.make
OpenCV_Tutorial3: /usr/local/lib/libopencv_dnn.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_gapi.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_highgui.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_ml.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_objdetect.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_photo.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_stitching.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_video.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_videoio.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_imgcodecs.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_calib3d.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_features2d.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_flann.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_imgproc.so.4.3.0
OpenCV_Tutorial3: /usr/local/lib/libopencv_core.so.4.3.0
OpenCV_Tutorial3: CMakeFiles/OpenCV_Tutorial3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/zeddling/Documents/Projects/OpenCV Tutorial/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OpenCV_Tutorial3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenCV_Tutorial3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenCV_Tutorial3.dir/build: OpenCV_Tutorial3

.PHONY : CMakeFiles/OpenCV_Tutorial3.dir/build

CMakeFiles/OpenCV_Tutorial3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenCV_Tutorial3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenCV_Tutorial3.dir/clean

CMakeFiles/OpenCV_Tutorial3.dir/depend:
	cd "/home/zeddling/Documents/Projects/OpenCV Tutorial/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/zeddling/Documents/Projects/OpenCV Tutorial" "/home/zeddling/Documents/Projects/OpenCV Tutorial" "/home/zeddling/Documents/Projects/OpenCV Tutorial/cmake-build-debug" "/home/zeddling/Documents/Projects/OpenCV Tutorial/cmake-build-debug" "/home/zeddling/Documents/Projects/OpenCV Tutorial/cmake-build-debug/CMakeFiles/OpenCV_Tutorial3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/OpenCV_Tutorial3.dir/depend

