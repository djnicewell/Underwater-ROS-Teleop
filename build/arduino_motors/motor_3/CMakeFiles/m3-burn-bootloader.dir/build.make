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
CMAKE_SOURCE_DIR = /home/cerlab/underwater_ws/src/arduino_motors/motor_3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cerlab/underwater_ws/build/arduino_motors/motor_3

# Utility rule file for m3-burn-bootloader.

# Include the progress variables for this target.
include CMakeFiles/m3-burn-bootloader.dir/progress.make

CMakeFiles/m3-burn-bootloader: /home/cerlab/underwater_ws/devel/share/arduino_motors/m3.elf
	cd /usr/share/arduino/hardware/arduino/bootloaders/atmega && /usr/share/arduino/hardware/tools/avrdude -C/usr/share/arduino/hardware/tools/avrdude.conf -cstk500v2 -Pusb -patmega328p -V -e -Ulock:w:0x3F:m -Uefuse:w:0x05:m -Uhfuse:w:0xDA:m -Ulfuse:w:0xFF:m -Uflash:w:ATmegaBOOT_168_atmega328.hex:i -Ulock:w:0x0F:m

m3-burn-bootloader: CMakeFiles/m3-burn-bootloader
m3-burn-bootloader: CMakeFiles/m3-burn-bootloader.dir/build.make
.PHONY : m3-burn-bootloader

# Rule to build all files generated by this target.
CMakeFiles/m3-burn-bootloader.dir/build: m3-burn-bootloader
.PHONY : CMakeFiles/m3-burn-bootloader.dir/build

CMakeFiles/m3-burn-bootloader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/m3-burn-bootloader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/m3-burn-bootloader.dir/clean

CMakeFiles/m3-burn-bootloader.dir/depend:
	cd /home/cerlab/underwater_ws/build/arduino_motors/motor_3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/underwater_ws/src/arduino_motors/motor_3 /home/cerlab/underwater_ws/src/arduino_motors/motor_3 /home/cerlab/underwater_ws/build/arduino_motors/motor_3 /home/cerlab/underwater_ws/build/arduino_motors/motor_3 /home/cerlab/underwater_ws/build/arduino_motors/motor_3/CMakeFiles/m3-burn-bootloader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/m3-burn-bootloader.dir/depend

