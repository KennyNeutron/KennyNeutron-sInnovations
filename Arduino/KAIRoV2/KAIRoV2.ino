#include<Servo.h>

Servo servox,servoy;
const int sense1=11,sense2=12;
int touch1,touch2;

void setup() {
  servox.attach(7);
  servoy.attach(6);
  delay(100);
  pinMode(sense1,INPUT);
  pinMode(sense2,INPUT);
}

void loop() {
  start:
  touch1=digitalRead(sense1);
  delayMicroseconds(10);
  if(touch1==HIGH){
    for(int a=0;a<=100;a+=1){
      touch2=digitalRead(sense2);
      if(touch2==HIGH){
        goto tando;
      }else{
        delay(10);
      }
    }
  }
  servox.write(90);
  delay(1000);
  servoy.write(140);
  delay(1000);

  goto start;

  diliko:
  for(int a=1;a<=4;a+=1){
    servox.write(55);
    delay(400);
    servox.write(135);
    delay(400);
  }
  servox.write(95);
  delay(2000);

  tando:
  for(int a=1;a<=4;a+=1){
    servoy.write(110);
    delay(400);
    servoy.write(170);
    delay(400);
  }
  servoy.write(140);
  delay(2000);
  goto start;
}
