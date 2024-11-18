#include<SoftwareSerial.h>
SoftwareSerial pic(2,3);

int counter=24;

void setup() {  
  Serial.begin(9600);
  pic.begin(9600);
}

void loop() {
  if(Serial.available()){
    char data;
    data=Serial.read();
    pic.print(data);
  }

}
