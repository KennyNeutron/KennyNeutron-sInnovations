#include<SoftwareSerial.h>
SoftwareSerial pic(2,3);
int counter=24, tens=0,ones=0;

void setup() {  
  Serial.begin(9600);
  pic.begin(9600);
  pic.println("t2o4");
}

void loop() {
  tens=counter/10;
  ones=counter%10;
  counter--;
  for(int i=0;i<=10;i++){
      pic.print("t");pic.print(tens);pic.print("o");pic.print(ones);
      delay(100); 
  }
  if(counter<0){
    counter=24;
  }
}
