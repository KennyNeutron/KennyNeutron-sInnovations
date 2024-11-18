#include <SPI.h>
#include "RF24.h"


RF24 radio(7,8);
/**********************************************************/
const uint64_t slaveID = 0xE8E8F0F0E1LL;
unsigned long mil = 0;
int dataTx[2];
int dataRx[2];




void setup() {
  Serial.begin(115200);
  radio.begin();
  radio.setChannel(90);  
  radio.setDataRate(RF24_250KBPS);
  radio.setPALevel(RF24_PA_MAX);
  radio.enableAckPayload();
  radio.setRetries(3,5);

}




void loop() 
{
  String theMessage = ":A12B34C234D072E089";
  int messageSize = theMessage.length();
  for (int i = 0; i < messageSize; i++) {
    int charToSend[1];
    charToSend[0] = theMessage.charAt(i);
    radio.write(charToSend,1);
    Serial.print(charToSend[i]);
  } 
}
