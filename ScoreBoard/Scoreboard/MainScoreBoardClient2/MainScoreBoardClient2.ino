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
  pic.begin(18400);
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
      
    pic.println(":A10B35C234D071E089");

}
