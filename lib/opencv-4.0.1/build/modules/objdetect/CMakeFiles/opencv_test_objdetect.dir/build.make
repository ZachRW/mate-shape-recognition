# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/admin/Downloads/opencv-4.0.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/admin/Downloads/opencv-4.0.1/build

# Include any dependencies generated for this target.
include modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/depend.make

# Include the progress variables for this target.
include modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/progress.make

# Include the compile flags for this target's objects.
include modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o: ../modules/objdetect/test/opencl/test_hogdetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Downloads/opencv-4.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o -c /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/opencl/test_hogdetector.cpp

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.i"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/opencl/test_hogdetector.cpp > CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.i

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.s"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/opencl/test_hogdetector.cpp -o CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.s

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o: ../modules/objdetect/test/test_cascadeandhog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Downloads/opencv-4.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o -c /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_cascadeandhog.cpp

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.i"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_cascadeandhog.cpp > CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.i

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.s"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_cascadeandhog.cpp -o CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.s

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o: ../modules/objdetect/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Downloads/opencv-4.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o -c /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_main.cpp

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.i"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_main.cpp > CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.i

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.s"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_main.cpp -o CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.s

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.o: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.o: ../modules/objdetect/test/test_qrcode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Downloads/opencv-4.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.o"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.o -c /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_qrcode.cpp

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.i"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_qrcode.cpp > CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.i

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.s"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/Downloads/opencv-4.0.1/modules/objdetect/test/test_qrcode.cpp -o CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.s

# Object files for target opencv_test_objdetect
opencv_test_objdetect_OBJECTS = \
"CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o" \
"CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o" \
"CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.o"

# External object files for target opencv_test_objdetect
opencv_test_objdetect_EXTERNAL_OBJECTS =

bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_qrcode.cpp.o
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build.make
bin/opencv_test_objdetect: lib/libopencv_ts.a
bin/opencv_test_objdetect: lib/libopencv_objdetect.4.0.1.dylib
bin/opencv_test_objdetect: lib/libopencv_calib3d.4.0.1.dylib
bin/opencv_test_objdetect: 3rdparty/lib/libippiw.a
bin/opencv_test_objdetect: 3rdparty/ippicv/ippicv_mac/icv/lib/intel64/libippicv.a
bin/opencv_test_objdetect: lib/libopencv_features2d.4.0.1.dylib
bin/opencv_test_objdetect: lib/libopencv_flann.4.0.1.dylib
bin/opencv_test_objdetect: lib/libopencv_highgui.4.0.1.dylib
bin/opencv_test_objdetect: lib/libopencv_videoio.4.0.1.dylib
bin/opencv_test_objdetect: lib/libopencv_imgcodecs.4.0.1.dylib
bin/opencv_test_objdetect: lib/libopencv_imgproc.4.0.1.dylib
bin/opencv_test_objdetect: lib/libopencv_core.4.0.1.dylib
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/admin/Downloads/opencv-4.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/opencv_test_objdetect"
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_objdetect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build: bin/opencv_test_objdetect

.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/clean:
	cd /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_objdetect.dir/cmake_clean.cmake
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/clean

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/depend:
	cd /Users/admin/Downloads/opencv-4.0.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Downloads/opencv-4.0.1 /Users/admin/Downloads/opencv-4.0.1/modules/objdetect /Users/admin/Downloads/opencv-4.0.1/build /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect /Users/admin/Downloads/opencv-4.0.1/build/modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/depend

