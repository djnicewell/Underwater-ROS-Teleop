cmake_minimum_required(VERSION 2.8.3)

include_directories(${ROS_LIB_DIR})
set(ARDUINO_LIB_FOLDER /usr/share/arduino/libraries)
link_directories(${ARDUINO_LIB_FOLDER})
set(SPI_RECURSE True)

generate_arduino_firmware(m2
	SRCS motor_2_node.cpp ${ROS_LIB_DIR}/time.cpp
	BOARD nano328
	PORT /dev/ttyUSB1
	PROGRAMMER avrispmkii
)
