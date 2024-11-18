#include<SoftwareSerial.h>
SoftwareSerial toPIC(2,3);

int counter=24, tens=0,ones=0;

void setup() {
  Serial.begin(9600);
  toPIC.begin(9600);
}

void loop() {
  start:
  tens=counter/10;
  ones=counter%10;
  for (int i=0;i<=100;i++){
    toPIC.print("t"); toPIC.print(tens); toPIC.print("o"); toPIC.println(ones);
    delay(10);
    if(Serial.available()){
      int dat=Serial.read();
      Serial.print(dat);
      if(dat='2'){
        goto paus;
      }
    }
  }
  counter--;
  if(counter==-1){
    counter=24;
  }
  goto start;
  paus:
  if(Serial.available()){
      int dat=Serial.read();
      Serial.print(dat);
      if(dat='1'){
        counter--;
        goto start;
      }
    }
  goto paus;
}
