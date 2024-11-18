#include<SoftwareSerial.h>
SoftwareSerial bt(9,10);

const int red=3,green=5,blue=6;
int rred=0,rblue=0,rgreen=0,i=10;
char rcv;
String val;
void setup(){
  pinMode(red,OUTPUT);
  pinMode(green,OUTPUT);
  pinMode(blue,OUTPUT);
  Serial.begin(9600);
  bt.begin(9600);
}

void loop() {
  rred=random(0,255);
  rblue=random(0,255);
  rgreen=random(0,255);
  analogWrite(red,rred);
  analogWrite(green,rgreen);
  analogWrite(blue,rblue);
  //Serial.print("R:");Serial.print(rred);Serial.print("\t G:");Serial.print(rgreen);Serial.print("\t B:");Serial.println(rblue);
  if(bt.available()){
    rcv=bt.read();
    Serial.println(rcv);
  }
}
