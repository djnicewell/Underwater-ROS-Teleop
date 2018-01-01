#include <ros.h>
#include <std_msgs/String.h>
#include <Arduino.h>

ros::NodeHandle nh;

std_msgs::String str_msgs;
ros::Publisher chatter("motor_3",&str_msgs);

char hello[10] = "I am M_3.";

void setup(){
	nh.initNode();
	nh.advertise(chatter);
}

void loop(){
	str_msgs.data = hello;
	chatter.publish(&str_msgs);
	nh.spinOnce();
	delay(1000);
}