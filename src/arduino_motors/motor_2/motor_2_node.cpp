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
// std_msgs::String str_msgs;
// ros::Publisher chatter("motor",&str_msgs);
// char hello[10] = "I am M_1.";

#define PWM_pin 3
#define max_speed 90 // max deviation from 90 for Servo
#define encoder 2
int target_angle = 180;
int motor_speed = 18;//30*0.6

bool roll_left = false;
bool roll_right = false;
bool pitch_down = false;
bool pitch_up = false;
bool yaw_left = false;
bool yaw_right = false;

uint16_t ABSposition = 0;
uint16_t ABSposition_last = 0;
uint8_t temp[2];

Servo motor;

struct dir_dist {
  char dir; // direction to rotate motor for shortest path to a target
  unsigned int dist; // shortest distance to target (in encoder counts)
};

//Function Declaration
dir_dist find_dir_dist(unsigned int flip_pos, unsigned int target);
boolean cmd_pololu (char dir, unsigned char mag_speed);
uint8_t SPI_T (uint8_t msg);
unsigned int read_position ();
dir_dist find_dir_dist (unsigned int flip_pos, unsigned int target);
static unsigned int speedToAngle(unsigned int flipSpd);
boolean Bangbang (unsigned int target, unsigned int flipSpd);

///////////////////////////////////////////////////////////////////////////////////////////////////
//The command this node subscribes should be                           ////
//command = {cm_up cm_down roll_left roll_right pitch_up pitch_down yaw_left yaw_right kill_all////
//move+x move-x move-y move+y turn_left turn_right centerOn centerOff}               ////
///////////////////////////////////////////////////////////////////////////////////////////////////
void kbDataCallback(const std_msgs::Int32MultiArray& command){
  //Reset state
  roll_left = false;
  roll_right = false;
  pitch_down = false;
  pitch_up = false;
  yaw_left = false;
  yaw_right = false;

  //If kill all
  if(command.data[8] == 1 || command.data[0] == 1 || command.data[1] == 1){
    cmd_pololu(0,0);
    return;
  }

  //If CCW turnning on surface
  if(command.data[13] == 1){
    cmd_pololu(1,30);//50*0.6
    return;
  }

  //If CW turnning on surface
  if(command.data[14] == 1){
    cmd_pololu(-1,30);//50*0.6
    return;
  }
  
  //If rolling left
  if(command.data[2] == 1){
    roll_left = true;
    return;
  }
  //If rolling right
  if(command.data[3] == 1){
    roll_right = true;
    return;
  }
  //If pitching up
  if(command.data[4] == 1){
    pitch_up = true;
    return;
  }
  //If pitching down
  if(command.data[5] == 1){
    pitch_down = true;
    return;
  }
  //If yawing left
  if(command.data[6] == 1){
    yaw_left = true;
    return;
  }
  //If yawing right
  if(command.data[7] == 1){
    yaw_right = true;
    return;
  }
}

ros::Subscriber<std_msgs::Int32MultiArray> sub("control_command",&kbDataCallback);


void setup(){
  Serial.begin(57600);
  Serial.println("Program Start");

  // Attach software servos to appropriate pin
  motor.attach(PWM_pin);
  // send a signal to the encoder and set up the pins
  pinMode(encoder, OUTPUT);
  digitalWrite(encoder, HIGH);
  SPI.begin();
  SPI.setBitOrder(MSBFIRST);
  SPI.setDataMode(SPI_MODE0);
  SPI.setClockDivider(SPI_CLOCK_DIV32);
  delay(2000);
  SPI.end();


  //Initialize node
  nh.initNode();
  // nh.advertise(chatter);
  nh.subscribe(sub);
}

void loop(){

  // Serial.print("The encoder reading is:");
  // Serial.println(read_position());

  if(roll_left){
    Bangbang(0,motor_speed);
  }
  //If pitching down
  if(roll_right){
    Bangbang(180,motor_speed);
  }

  if(pitch_up){
    Bangbang(180,motor_speed);
  }
  //If pitching down
  if(pitch_down){
    Bangbang(0,motor_speed);
  }
  //If yawing left
  if(yaw_left){
    Bangbang(90,motor_speed);
  }
  //If yawing right
  if(yaw_right){
    Bangbang(270,motor_speed);
  }

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


/*
 *  read_position - returns the value of the encoder
 */
unsigned int read_position () {

  uint8_t recieved = 0xA5;    //just a temp vairable
  ABSposition = 0;    //reset position vairable

  SPI.begin();    //start transmition
  digitalWrite(encoder, LOW);

  SPI_T(0x10);   //issue read command

  recieved = SPI_T(0x00);    //issue NOP to check if encoder is ready to send

  while (recieved != 0x10)    //loop while encoder is not ready to send
  {
    recieved = SPI_T(0x00);    //cleck again if encoder is still working
    delay(2);    //wait a bit
  }

  temp[0] = SPI_T(0x00);    //Recieve MSB
  temp[1] = SPI_T(0x00);    // recieve LSB

  digitalWrite(encoder, HIGH); //just to make sure
  SPI.end();    //end transmition

  temp[0] &= ~ 0xF0;   //mask out the first 4 bits

  ABSposition = temp[0] << 8;    //shift MSB to correct ABSposition in ABSposition message
  ABSposition += temp[1];    // add LSB to ABSposition message to complete message

  // if (ABSposition != ABSposition_last)    //if nothing has changed dont wast time sending position
  //{
  ABSposition_last = ABSposition;    //set last position to current position
  unsigned int data = ABSposition;
  //deg = deg * 0.08789;    // aprox 360/4096
  // Serial.println(data);     //send position in degrees
  //}

  delay(5);    //wait a bit till next check
  return data;
}

//changes added by Prasanth
uint8_t SPI_T (uint8_t msg)    //Repetive SPI transmit sequence
{
  uint8_t msg_temp = 0;  //vairable to hold recieved data
  digitalWrite(encoder, LOW);    //select spi device
  msg_temp = SPI.transfer(msg);    //send and recieve
  digitalWrite(encoder, HIGH);   //deselect spi device
  return (msg_temp);     //return recieved byte
}
///////////////////////////////////////////////////////////////////////////////////////////////////
// find direction and distance
dir_dist find_dir_dist (unsigned int flip_pos, unsigned int target) {
  // gives: nothing
  // takes: target location
  // prints through the serial interface the direction to turn and the distance to the target
  //unsigned int flip_pos = read_position(enc_num_for_motor(motor_num));
  /*
    Serial.print("Begin find_dir_dist, motor_num: ");
   Serial.print(motor_num, DEC);
   Serial.print(", flip_pos: ");
   Serial.print(flip_pos, DEC);
   Serial.print(", target: ");
   Serial.println(target, DEC);
   */
  dir_dist temp;
  temp.dir = 0;
  temp.dist = 0;
  if ((target > flip_pos) && (target - flip_pos <= 2048)) {
    temp.dir = 1;
    temp.dist = target - flip_pos;
  }
  else if ((target > flip_pos) && (target - flip_pos > 2048)) {
    temp.dir = -1;
    temp.dist = flip_pos + 4096 - target;
  }
  else if ((target < flip_pos) && (flip_pos - target <= 2048)) {
    temp.dir = -1;
    temp.dist = flip_pos - target;
  }
  else if ((target < flip_pos) && (flip_pos - target > 2048)) {
    temp.dir = 1;
    temp.dist = target + 4096 - flip_pos;
  }
  else {
    temp.dir = 0;
    //Serial.println("On target, direction is 0.");
  }

  return temp;
}
////////////////////////////////////////////////////////////////////////////////////////////////
//Bang Bang controller
static unsigned int speedToAngle(unsigned int flipSpd){
  return flipSpd/10;
}


boolean Bangbang (unsigned int target, unsigned int flipSpd) {
  
  unsigned int encoder_value = read_position();
  float transfer_angle = 4096 - encoder_value; 
  unsigned int current_angle = transfer_angle * 360/4096; 
  int dir; 
  int diff_angle;
  if(target > current_angle){
    dir = 1;
    diff_angle = target - current_angle;
  }
  else{
    dir = -1;
    diff_angle = current_angle - target;
  }
  if(diff_angle > 180){
    dir = -dir;
  }
  cmd_pololu(dir,motor_speed);

  return true;
}