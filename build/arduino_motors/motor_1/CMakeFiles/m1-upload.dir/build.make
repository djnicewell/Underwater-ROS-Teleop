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

# Utility rule file for m1-upload.

# Include the progress variables for this target.
include CMakeFiles/m1-upload.dir/progress.make

CMakeFiles/m1-upload: /home/cerlab/underwater_ws/devel/share/arduino_motors/m1.elf
	/usr/share/arduino/hardware/tools/avrdude -C/usr/share/arduino/hardware/tools/avrdude.conf -patmega328p -carduino -b57600 -P/dev/ttyUSB0 -D -V -Uflash:w:/home/cerlab/underwater_ws/devel/share/arduino_motors/m1.hex -Ueeprom:w:/home/cerlab/underwater_ws/devel/share/arduino_motors/m1.eep:i

m1-upload: CMakeFiles/m1-upload
m1-upload: CMakeFiles/m1-upload.dir/build.make
.PHONY : m1-upload

# Rule to build all files generated by this target.
CMakeFiles/m1-upload.dir/build: m1-upload
.PHONY : CMakeFiles/m1-upload.dir/build

CMakeFiles/m1-upload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/m1-upload.dir/cmake_clean.cmake
.PHONY : CMakeFiles/m1-upload.dir/clean

CMakeFiles/m1-upload.dir/depend:
	cd /home/cerlab/underwater_ws/build/arduino_motors/motor_1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/underwater_ws/src/arduino_motors/motor_1 /home/cerlab/underwater_ws/src/arduino_motors/motor_1 /home/cerlab/underwater_ws/build/arduino_motors/motor_1 /home/cerlab/underwater_ws/build/arduino_motors/motor_1 /home/cerlab/underwater_ws/build/arduino_motors/motor_1/CMakeFiles/m1-upload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/m1-upload.dir/depend

