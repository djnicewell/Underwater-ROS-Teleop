#include <ros.h>
#include <std_msgs/String.h>

#include <Arduino.h>
#include <SPI.h>
#include <Servo.h>
#include <SoftwareSerial.h>


#include <std_msgs/Int32MultiArray.h>
#include <std_msgs/MultiArrayLayout.h>
#include <std_msgs/MultiArrayDimension.h>
//Declare ROS node handler
ros::NodeHandle nh;

//Define string msgs for debugging publisher
std_msgs::String str_msgs;
ros::Publisher chatter("motor",&str_msgs);
char hello[10] = "I am M_1.";

#define PWM_pin 3
#define max_speed 90 // max deviation from 90 for Servo
#define encoder 2
#define motor_basespeed 91
int target_angle = 180;
int motor_speed = 30;
int state = 0;

uint16_t ABSposition = 0;
uint16_t ABSposition_last = 0;
uint8_t temp[2];

Servo motor;


//Function Declaration
boolean cmd_pololu (char dir, unsigned char mag_speed);

///////////////////////////////////////////////////////////////////////////////////////////////////
//The command this node subscribes should be 												   ////
//command = {cm_up cm_dowadwqn roll_left roll_right pitch_up pitch_down yaw_left yaw_right kill_all////
//move+x move-x move-y move+y turn_left turn_right centerOn centerOff}						   ////
///////////////////////////////////////////////////////////////////////////////////////////////////
bool constOn = false;
void kbDataCallback(const std_msgs::Int32MultiArray& command){
  int dir = 0;
  if(command.data[15] == 1){
    constOn = true;
  }
  if(command.data[16] == 1){
    constOn = false;
  }

  //If kill all
  if(command.data[8] == 1 && !constOn){
    cmd_pololu(0,motor_speed);
    return;
  }

  if(constOn){
    dir = 1;
    cmd_pololu(dir,motor_speed);
    return;
  }
  else{

    cmd_pololu(0,motor_speed);
    if(command.data[0] == 1){     
      dir = 1;
      cmd_pololu(dir,motor_speed);
      return;
    }
    if(command.data[1] == 1){
      dir = -1;
      cmd_pololu(dir,motor_speed);
      return;
    }
  }
    
  return;
}

ros::Subscriber<std_msgs::Int32MultiArray> sub("control_command",&kbDataCallback);


void setup(){
	Serial.begin(57600);
	Serial.println("Program Start");

	// Attach software servos to appropriate pin
	motor.attach(PWM_pin);
  delay(2000);
  
  //Initialize node
	nh.initNode();
	// nh.advertise(chatter);
	nh.subscribe(sub);
}

void loop(){
  //cmd_pololu(1,motor_speed);
  nh.spinOnce();
  delay(1);
}


//////////////////////////////////////////////////////////////////////////
boolean cmd_pololu (char dir, unsigned char mag_speed) {
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
    motor.write(motor_basespeed + mag_speed);
  }
  else if (dir == -1) {
    // if reverse
    //Serial.println("Reverse.");
    motor.write(motor_basespeed - mag_speed);
  
  }
  else if (dir == 0) {
    motor.write(motor_basespeed);
  }
  else {
    Serial.println("Invalid direction.");
    return false;
  }
}




