#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>
RF24 radio(7,8);
const byte address[6]="000001";
int counter=24, tens=0, ones=0,i=0;
void setup() {
  Serial.begin(9600);
  radio.begin();
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MIN);
  radio.stopListening();
}   
void loop() {/*
  const char transmita[]="t";
  radio.write(&transmita,sizeof(transmita));radio.write(&transmita,sizeof(transmita));radio.write(&transmita,sizeof(transmita));radio.write(&transmita,sizeof(transmita));
  if(tens==2){
     const char txten2[]="2";radio.write(&txten2,sizeof(txten2));radio.write(&txten2,sizeof(txten2));radio.write(&txten2,sizeof(txten2));radio.write(&txten2,sizeof(txten2));
  }
  if(tens==1){
     const char txten1[]="1";radio.write(&txten1,sizeof(txten1));radio.write(&txten1,sizeof(txten1));radio.write(&txten1,sizeof(txten1));radio.write(&txten1,sizeof(txten1));
  }
  if(tens==0){
     const char txten0[]="0";radio.write(&txten0,sizeof(txten0));radio.write(&txten0,sizeof(txten0));radio.write(&txten0,sizeof(txten0));radio.write(&txten0,sizeof(txten0));
  }
  const char transmitb[]="o";
  radio.write(&transmitb,sizeof(transmitb));radio.write(&transmitb,sizeof(transmitb));radio.write(&transmitb,sizeof(transmitb));radio.write(&transmitb,sizeof(transmitb));
  if(ones==0){
     const char txone0[]="0";radio.write(&txone0,sizeof(txone0));radio.write(&txone0,sizeof(txone0));radio.write(&txone0,sizeof(txone0));radio.write(&txone0,sizeof(txone0));
  }
  if(ones==1){
     const char txone1[]="1";radio.write(&txone1,sizeof(txone1));radio.write(&txone1,sizeof(txone1));radio.write(&txone1,sizeof(txone1));radio.write(&txone1,sizeof(txone1));
  }
  if(ones==2){
     const char txone2[]="2";radio.write(&txone2,sizeof(txone2));radio.write(&txone2,sizeof(txone2));radio.write(&txone2,sizeof(txone2));radio.write(&txone2,sizeof(txone2));
  }
  if(ones==3){
     const char txone3[]="3";radio.write(&txone3,sizeof(txone3));radio.write(&txone3,sizeof(txone3));radio.write(&txone3,sizeof(txone3));radio.write(&txone3,sizeof(txone3));
  }
  if(ones==4){
     const char txone4[]="4";radio.write(&txone4,sizeof(txone4));radio.write(&txone4,sizeof(txone4));radio.write(&txone4,sizeof(txone4));radio.write(&txone4,sizeof(txone4));
  }
  if(ones==5){
     const char txone5[]="5";radio.write(&txone5,sizeof(txone5));radio.write(&txone5,sizeof(txone5));radio.write(&txone5,sizeof(txone5));radio.write(&txone5,sizeof(txone5));
  }
  if(ones==6){
     const char txone6[]="6";radio.write(&txone6,sizeof(txone6));radio.write(&txone6,sizeof(txone6));radio.write(&txone6,sizeof(txone6));radio.write(&txone6,sizeof(txone6));
  }
  if(ones==7){
     const char txone7[]="7";radio.write(&txone7,sizeof(txone7));radio.write(&txone7,sizeof(txone7));radio.write(&txone7,sizeof(txone7));radio.write(&txone7,sizeof(txone7));
  }
  if(ones==8){
     const char txone8[]="8";radio.write(&txone8,sizeof(txone8));radio.write(&txone8,sizeof(txone8));radio.write(&txone8,sizeof(txone8));radio.write(&txone8,sizeof(txone8));
  }
  if(ones==9){
     const char txone9[]="9";radio.write(&txone9,sizeof(txone9));radio.write(&txone9,sizeof(txone9));radio.write(&txone9,sizeof(txone9));radio.write(&txone9,sizeof(txone9));
  }*/
  if(Serial.available()){
    char data=Serial.read();
    radio.write(&data,sizeof(data));
  }
}
