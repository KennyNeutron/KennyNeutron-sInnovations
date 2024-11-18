#include<SoftwareSerial.h>
SoftwareSerial pic(2,3);

const byte address[6]="000001";

int counter=24, tens=0,ones=0;

void setup() {  
  Serial.begin(9600);
  pic.begin(9600);
  pic.println("t2o4");
}

void loop() {
  tens=counter/10;
  ones=counter%10;
  pic.print("t");pic.print(tens);pic.print("o");pic.println(ones);
  counter--;
  if(counter<0){
    counter=24;
  }
  delay(1000);
}
