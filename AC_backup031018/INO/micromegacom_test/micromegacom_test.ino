#include<SoftwareSerial.h>
SoftwareSerial microchip(4,5);
int ser,eqnum,eqstat, store=0,led=13;
bool flag=0;

void setup() {
  Serial.begin(9600);
  microchip.begin(9600);
  pinMode(led,OUTPUT);
}

void loop() {
  if(microchip.available()){
    ser=microchip.read();
  }
  //Serial.println(ser);
  if(ser==69){              // recieve char 'E'
    eqnum=microchip.read();
    while(eqnum==69 || eqnum>58 || eqnum<49){ //while char 'E' or not equal to int 1-9
      eqnum=microchip.read();
    }
    //Serial.println(eqnum);
    eqstat=microchip.read();
    while(eqstat==69 || eqstat<58){ //while char 'E' or int 1-9
      
      eqstat=microchip.read();
    }
    //Serial.println(eqstat);
      char num,stat;
      num=eqnum;
      stat=eqstat;
      Serial.print("Equipment");Serial.print(num);Serial.print(":");
      switch(stat){
        case 'B': microchip.print('K');Serial.println(" has been BORROWED!");
        break;
        case 'P': microchip.print('K');Serial.println(" is PRESENT");
        break;
        case 'R': microchip.print('K');Serial.println(" pattern ERROR");
        break;
      }
  }
}
