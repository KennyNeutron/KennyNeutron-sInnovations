#include<SoftwareSerial.h>
SoftwareSerial bluetooth(2,3);
int vpos=7, vneg=6;

void setup() {
  Serial.begin(9600);
  bluetooth.begin(9600);
  pinMode(vpos,OUTPUT);
  pinMode(vneg,OUTPUT);
  delay(1000);
  digitalWrite(vpos,HIGH);
  digitalWrite(vneg,LOW);
}

void loop() {
  if(bluetooth.available()){
    char data=bluetooth.read();
    Serial.print(data);
  }
  if(Serial.available()){
    char data=Serial.read();
    bluetooth.print(data);
  }

}
