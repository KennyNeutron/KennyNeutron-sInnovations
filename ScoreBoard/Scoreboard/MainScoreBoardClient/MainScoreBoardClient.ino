#include <SPI.h>
#include "RF24.h"
#include <SoftwareSerial.h>
SoftwareSerial pic(2,3);

RF24 radio(7,8);
const uint64_t deviceID = 0xE8E8F0F0E1LL;
int dataRx[4];




void setup()
{
  Serial.begin(115200);
  pic.begin(9600);
  radio.begin();
  radio.setChannel(90);  
  radio.setDataRate(RF24_250KBPS);
  radio.setPALevel(RF24_PA_MAX);
  radio.openReadingPipe(1,deviceID);
  radio.enableAckPayload();
  radio.startListening();
}




void loop() 
{
    radio.openReadingPipe(0,deviceID);
   if(radio.available())
   {    

       radio.read(dataRx,sizeof(dataRx));
       char recv[4] = "";
        //Serial.print("RX:");
        for (int i = 0; i < 4;i++){
          recv[i] = dataRx[i];
        /*  if(i==3){
            Serial.println(String(recv[i]));
          }*/
          Serial.print(String(recv[i]));
          pic.print(String(recv[i]));
        }
      // Serial.println("ack receive: " + String (recv[0]+recv[1]+recv[2]+recv[3]));
       delay(50);
   }


}
