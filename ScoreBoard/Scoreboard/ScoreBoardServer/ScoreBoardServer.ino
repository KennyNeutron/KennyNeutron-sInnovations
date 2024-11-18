#include <SPI.h>
#include "RF24.h"
#include<SoftwareSerial.h>
SoftwareSerial bt(2,3);

RF24 radio(7,8);
/**********************************************************/
const byte slaveID[6] = "00003";
unsigned long mil = 0;
int dataTx[4];
int dataRx[2];
int dat1[1],dat2[4],dat3[4],dat4[4],counter=24,tenss=0,oness=0,itr=0;
bool btflag=0;

void setup() {
  Serial.begin(115200);
  bt.begin(9600);
  radio.begin();
  radio.setChannel(90);  
  radio.setDataRate(RF24_250KBPS);
  radio.setPALevel(RF24_PA_MAX);
  radio.enableAckPayload();
  radio.setRetries(3,5);

}




void loop(){
  radio.openWritingPipe(slaveID);
  if(Serial.available()){
      dat1[0]=Serial.read();
      radio.write(dat1, sizeof(dat1));
      Serial.print(dat1[0]);
   }
   
   if(bt.available()){
    dat1[0]=bt.read();
    if(dat1[0]=='1'){
      btflag=0;
      bt.println("START");
    }
    if(dat1[0]=='2'){
      btflag=1;
      bt.println("PAUSE");
    }
    if(dat1[0]=='3'){
      counter=24;
      bt.println("RESET");
      tenss=(counter/10)+48;
      oness=(counter%10)+48;
      dat1[0]='t';
      itr=0;
      radio.write(dat1, sizeof(dat1));
      dat1[0]=tenss;
      radio.write(dat1, sizeof(dat1));
      dat1[0]='o';
      radio.write(dat1, sizeof(dat1));
      dat1[0]=oness;
      radio.write(dat1, sizeof(dat1));
    }
   }
   
   if(btflag==0){
    tenss=(counter/10)+48;
    oness=(counter%10)+48;
    dat1[0]='t';
    radio.write(dat1, sizeof(dat1));
    dat1[0]=tenss;
    radio.write(dat1, sizeof(dat1));
    dat1[0]='o';
    radio.write(dat1, sizeof(dat1));
    dat1[0]=oness;
    radio.write(dat1, sizeof(dat1));
    itr++;
    if(itr==10){
      itr=0; counter--;
    }
    delay(100);
   }
   if(counter<0){
    counter=24;
   }
   /*dat1[0]='t';
   dat1[1]='2';
   dat1[2]='o';
   dat1[3]='4';
   radio.write(dat1, sizeof(dat1));
   delay(1000);
   //if(Serial.available()){
      char datatrans=Serial.read();
      radio.openWritingPipe(slaveID);
      radio.write(datatrans, sizeof(datatrans));
   }*/
}
