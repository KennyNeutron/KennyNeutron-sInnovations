#include <SPI.h>
#include "RF24.h"

RF24 radio(7,8);
const uint64_t deviceID = 0xE8E8F0F0E1LL;
int dataRx[2];




void setup()
{
  Serial.begin(115200);
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
   if(radio.available())
   {    

       radio.read(dataRx,sizeof(dataRx));
       radio.writeAckPayload(1, dataRx,2);
       Serial.println("ack receive: " + String(dataRx[0]));
       delay(50);
   }


}
