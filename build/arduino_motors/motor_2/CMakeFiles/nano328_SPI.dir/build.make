# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/cerlab/underwater_ws/src/arduino_motors/motor_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cerlab/underwater_ws/build/arduino_motors/motor_2

# Include any dependencies generated for this target.
include CMakeFiles/nano328_SPI.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nano328_SPI.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nano328_SPI.dir/flags.make

CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj: CMakeFiles/nano328_SPI.dir/flags.make
CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj: /usr/share/arduino/libraries/SPI/SPI.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cerlab/underwater_ws/build/arduino_motors/motor_2/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj -c /usr/share/arduino/libraries/SPI/SPI.cpp

CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usr/share/arduino/libraries/SPI/SPI.cpp > CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.i

CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usr/share/arduino/libraries/SPI/SPI.cpp -o CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.s

CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.requires:
.PHONY : CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.requires

CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.provides: CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.requires
	$(MAKE) -f CMakeFiles/nano328_SPI.dir/build.make CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.provides.build
.PHONY : CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.provides

CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.provides.build: CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj

# Object files for target nano328_SPI
nano328_SPI_OBJECTS = \
"CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj"

# External object files for target nano328_SPI
nano328_SPI_EXTERNAL_OBJECTS =

libnano328_SPI.a: CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj
libnano328_SPI.a: CMakeFiles/nano328_SPI.dir/build.make
libnano328_SPI.a: CMakeFiles/nano328_SPI.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libnano328_SPI.a"
	$(CMAKE_COMMAND) -P CMakeFiles/nano328_SPI.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nano328_SPI.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nano328_SPI.dir/build: libnano328_SPI.a
.PHONY : CMakeFiles/nano328_SPI.dir/build

CMakeFiles/nano328_SPI.dir/requires: CMakeFiles/nano328_SPI.dir/usr/share/arduino/libraries/SPI/SPI.cpp.obj.requires
.PHONY : CMakeFiles/nano328_SPI.dir/requires

CMakeFiles/nano328_SPI.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nano328_SPI.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nano328_SPI.dir/clean

CMakeFiles/nano328_SPI.dir/depend:
	cd /home/cerlab/underwater_ws/build/arduino_motors/motor_2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/underwater_ws/src/arduino_motors/motor_2 /home/cerlab/underwater_ws/src/arduino_motors/motor_2 /home/cerlab/underwater_ws/build/arduino_motors/motor_2 /home/cerlab/underwater_ws/build/arduino_motors/motor_2 /home/cerlab/underwater_ws/build/arduino_motors/motor_2/CMakeFiles/nano328_SPI.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nano328_SPI.dir/depend

