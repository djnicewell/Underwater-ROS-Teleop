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
CMAKE_SOURCE_DIR = /home/cerlab/underwater_ws/src/arduino_motors/motor_1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cerlab/underwater_ws/build/arduino_motors/motor_1

# Include any dependencies generated for this target.
include CMakeFiles/nano328_SoftwareSerial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nano328_SoftwareSerial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nano328_SoftwareSerial.dir/flags.make

CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj: CMakeFiles/nano328_SoftwareSerial.dir/flags.make
CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj: /usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cerlab/underwater_ws/build/arduino_motors/motor_1/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj -c /usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp

CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp > CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.i

CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp -o CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.s

CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.requires:
.PHONY : CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.requires

CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.provides: CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.requires
	$(MAKE) -f CMakeFiles/nano328_SoftwareSerial.dir/build.make CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.provides.build
.PHONY : CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.provides

CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.provides.build: CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj

# Object files for target nano328_SoftwareSerial
nano328_SoftwareSerial_OBJECTS = \
"CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj"

# External object files for target nano328_SoftwareSerial
nano328_SoftwareSerial_EXTERNAL_OBJECTS =

libnano328_SoftwareSerial.a: CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj
libnano328_SoftwareSerial.a: CMakeFiles/nano328_SoftwareSerial.dir/build.make
libnano328_SoftwareSerial.a: CMakeFiles/nano328_SoftwareSerial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libnano328_SoftwareSerial.a"
	$(CMAKE_COMMAND) -P CMakeFiles/nano328_SoftwareSerial.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nano328_SoftwareSerial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nano328_SoftwareSerial.dir/build: libnano328_SoftwareSerial.a
.PHONY : CMakeFiles/nano328_SoftwareSerial.dir/build

CMakeFiles/nano328_SoftwareSerial.dir/requires: CMakeFiles/nano328_SoftwareSerial.dir/usr/share/arduino/libraries/SoftwareSerial/SoftwareSerial.cpp.obj.requires
.PHONY : CMakeFiles/nano328_SoftwareSerial.dir/requires

CMakeFiles/nano328_SoftwareSerial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nano328_SoftwareSerial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nano328_SoftwareSerial.dir/clean

CMakeFiles/nano328_SoftwareSerial.dir/depend:
	cd /home/cerlab/underwater_ws/build/arduino_motors/motor_1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/underwater_ws/src/arduino_motors/motor_1 /home/cerlab/underwater_ws/src/arduino_motors/motor_1 /home/cerlab/underwater_ws/build/arduino_motors/motor_1 /home/cerlab/underwater_ws/build/arduino_motors/motor_1 /home/cerlab/underwater_ws/build/arduino_motors/motor_1/CMakeFiles/nano328_SoftwareSerial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nano328_SoftwareSerial.dir/depend

