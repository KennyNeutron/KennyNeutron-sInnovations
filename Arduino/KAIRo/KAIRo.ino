//KAIRo
//Kenny's Autonomous and Intelligent Robot
#include<Servo.h>

Servo servox,servoy;

const int sense1=10,sense2=11;

long randx,randy1,randy2,delx,dely,inc,dec,fs;
int  touch1=1, touch2=1;

void setup() {
  servox.attach(11);
  servoy.attach(12);
  delay(100);
  servoy.write(140);
  delay(1000);
  servox.write(90);
  randomSeed(42);
  pinMode(sense1, INPUT);
  pinMode(sense2, INPUT);
  
  
}

void loop() {
  start:
  randx=random(0,185);
  randy1=random(90,185);
  randy2=random(90,185);
  delx=random(100,5000);
  dely=random(10,50);
  inc=random(0,20);
  dec=random(1,2);
  fs=random(1,2);
  if(fs==1){
    goto fcon;
  }

  if(fs==2){
    goto scon;
  }

  goto start;

  fcon:
  servox.write(randx);
  delay(delx);
  if(randy1>randy2&&dec==1){
    for(int i=randy2;i<=randy1;i+=inc){
      servoy.write(i);
      delay(dely);
    }
  }
  if(randy1>randy2&&dec==2){
    for(int i=randy1;i>=randy2;i-=inc){
      servoy.write(i);
      delay(dely);
    }
  }
  if(randy2>randy1&&dec==1){
    for(int i=randy1;i<=randy2;i+=inc){
      servoy.write(i);
      delay(dely);
    }
  }
  if(randy2>randy1&&dec==2){
    for(int i=randy2;i>=randy1;i-=inc){
      servoy.write(i);
      delay(dely);
    }
  }
  goto start;


  scon:
  servoy.write(randx);
  delay(delx);
  if(randy1>randy2&&dec==1){
    for(int i=randy2;i<=randy1;i+=inc){
      servox.write(i);
      delay(dely);
    }
  }
  if(randy1>randy2&&dec==2){
    for(int i=randy1;i>=randy2;i-=inc){
      servox.write(i);
      delay(dely);
    }
  }
  if(randy2>randy1&&dec==1){
    for(int i=randy1;i<=randy2;i+=inc){
      servox.write(i);
      delay(dely);
    }
  }
  if(randy2>randy1&&dec==2){
    for(int i=randy2;i>=randy1;i-=inc){
      servox.write(i);
      delay(dely);
    }
  }
  goto start;
}
