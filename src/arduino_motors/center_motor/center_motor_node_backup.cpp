#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32MultiArray.h>
#include <std_msgs/MultiArrayLayout.h>
#include <std_msgs/MultiArrayDimension.h>
#include <Arduino.h>
#include <Servo.h>
#define motor_pin 3
#define motor_speed 85
#define max_speed 90

ros::NodeHandle nh;

std_msgs::String str_msgs;
ros::Publisher chatter("center_motor",&str_msgs);


Servo motor;

void kbDataCallback(const std_msgs::Int32MultiArray& command);

ros::Subscriber<std_msgs::Int32MultiArray> sub("control_command",&kbDataCallback);

char hello[24] = "I am center motor node.";
bool z_thrust(char dir);
bool cmd_pololu(char dir,unsigned char mag_speed);

void setup(){
  Serial.begin(57600);
	nh.initNode();
	//nh.advertise(chatter);
  nh.subscribe(sub);
  motor.attach(motor_pin);
  //motor.write(91);
}

void loop(){
  int dir;
  /* Read input */
  // dir = fjijfdif
  dir = 1;

  //z_thrust(dir);
  Serial.println("loop");
  cmd_pololu(dir,motor_speed);
	nh.spinOnce();
	delay(1000);
}

bool z_thrust(char dir){
  if(dir > 0){
    motor.write(91 + motor_speed);
  }
  else if(dir < 0){
    motor.write(91 - motor_speed);
  }
  else{
    motor.write(91);
  }
}



void kbDataCallback(const std_msgs::Int32MultiArray& command){

}


bool cmd_pololu (char dir, unsigned char mag_speed) {
  /* gives: 1. true if successfully sent motor driving data
     takes: 1. motor box number
            2. direction, see below for directions
            3. speed or braking amount

     dir = 1 for forward
     dir = -1 for reverse
     dir = 0 for brake
  */

  // if (motor_num == 1)
  // {
  //   mag_speed *= 0.6; //Scale down the speed of motor box 1
  // }
  
  if (mag_speed > max_speed) {
    Serial.println("Exceeds motor speed range.");
    mag_speed = max_speed;
  }
  if (dir == 1) {
    // if forward
    //Serial.println("Forward.");
    motor.write(90 + mag_speed);
  }
  else if (dir == -1) {
    // if reverse
    //Serial.println("Reverse.");
    motor.write(90 - mag_speed);
  
  }
  else if (dir == 0) {
    motor.write(90);
  }
  else {
    Serial.println("Invalid direction.");
    return false;
  }
}


