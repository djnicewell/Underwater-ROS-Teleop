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
CMAKE_SOURCE_DIR = /home/cerlab/underwater_ws/src/arduino_motors/center_motor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cerlab/underwater_ws/build/arduino_motors/center_motor

# Include any dependencies generated for this target.
include CMakeFiles/cm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cm.dir/flags.make

CMakeFiles/cm.dir/center_motor_node.cpp.obj: CMakeFiles/cm.dir/flags.make
CMakeFiles/cm.dir/center_motor_node.cpp.obj: /home/cerlab/underwater_ws/src/arduino_motors/center_motor/center_motor_node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cerlab/underwater_ws/build/arduino_motors/center_motor/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cm.dir/center_motor_node.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cm.dir/center_motor_node.cpp.obj -c /home/cerlab/underwater_ws/src/arduino_motors/center_motor/center_motor_node.cpp

CMakeFiles/cm.dir/center_motor_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cm.dir/center_motor_node.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cerlab/underwater_ws/src/arduino_motors/center_motor/center_motor_node.cpp > CMakeFiles/cm.dir/center_motor_node.cpp.i

CMakeFiles/cm.dir/center_motor_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cm.dir/center_motor_node.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cerlab/underwater_ws/src/arduino_motors/center_motor/center_motor_node.cpp -o CMakeFiles/cm.dir/center_motor_node.cpp.s

CMakeFiles/cm.dir/center_motor_node.cpp.obj.requires:
.PHONY : CMakeFiles/cm.dir/center_motor_node.cpp.obj.requires

CMakeFiles/cm.dir/center_motor_node.cpp.obj.provides: CMakeFiles/cm.dir/center_motor_node.cpp.obj.requires
	$(MAKE) -f CMakeFiles/cm.dir/build.make CMakeFiles/cm.dir/center_motor_node.cpp.obj.provides.build
.PHONY : CMakeFiles/cm.dir/center_motor_node.cpp.obj.provides

CMakeFiles/cm.dir/center_motor_node.cpp.obj.provides.build: CMakeFiles/cm.dir/center_motor_node.cpp.obj

CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj: CMakeFiles/cm.dir/flags.make
CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj: /home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cerlab/underwater_ws/build/arduino_motors/center_motor/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj -c /home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp

CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp > CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.i

CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp -o CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.s

CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.requires:
.PHONY : CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.requires

CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.provides: CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.requires
	$(MAKE) -f CMakeFiles/cm.dir/build.make CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.provides.build
.PHONY : CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.provides

CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.provides.build: CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj

# Object files for target cm
cm_OBJECTS = \
"CMakeFiles/cm.dir/center_motor_node.cpp.obj" \
"CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj"

# External object files for target cm
cm_EXTERNAL_OBJECTS =

/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: CMakeFiles/cm.dir/center_motor_node.cpp.obj
/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj
/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: CMakeFiles/cm.dir/build.make
/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: libnano328_SPI.a
/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: libnano328_Servo.a
/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: libnano328_SoftwareSerial.a
/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: libnano328_CORE.a
/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf: CMakeFiles/cm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cm.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating EEP image"
	/usr/bin/avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 /home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf /home/cerlab/underwater_ws/devel/share/arduino_motors/cm.eep
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating HEX image"
	/usr/bin/avr-objcopy -O ihex -R .eeprom /home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf /home/cerlab/underwater_ws/devel/share/arduino_motors/cm.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating image size"
	/usr/bin/cmake -DFIRMWARE_IMAGE=/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf -DMCU=atmega328p -DEEPROM_IMAGE=/home/cerlab/underwater_ws/devel/share/arduino_motors/cm.eep -P /home/cerlab/underwater_ws/build/arduino_motors/center_motor/CMakeFiles/FirmwareSize.cmake

# Rule to build all files generated by this target.
CMakeFiles/cm.dir/build: /home/cerlab/underwater_ws/devel/share/arduino_motors/cm.elf
.PHONY : CMakeFiles/cm.dir/build

CMakeFiles/cm.dir/requires: CMakeFiles/cm.dir/center_motor_node.cpp.obj.requires
CMakeFiles/cm.dir/requires: CMakeFiles/cm.dir/home/cerlab/underwater_ws/build/arduino_motors/ros_lib/time.cpp.obj.requires
.PHONY : CMakeFiles/cm.dir/requires

CMakeFiles/cm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cm.dir/clean

CMakeFiles/cm.dir/depend:
	cd /home/cerlab/underwater_ws/build/arduino_motors/center_motor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/underwater_ws/src/arduino_motors/center_motor /home/cerlab/underwater_ws/src/arduino_motors/center_motor /home/cerlab/underwater_ws/build/arduino_motors/center_motor /home/cerlab/underwater_ws/build/arduino_motors/center_motor /home/cerlab/underwater_ws/build/arduino_motors/center_motor/CMakeFiles/cm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cm.dir/depend
