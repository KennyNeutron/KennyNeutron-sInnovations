#include <SPI.h>
#include "RF24.h"
#include <SoftwareSerial.h>
SoftwareSerial pic(2,3);

RF24 radio(7,8);
const byte deviceID[6] = "00001";
int dataRx[4];




void setup()
{
  Serial.begin(115200);
  pic.begin(9600);
  radio.begin();
  radio.setDataRate(RF24_250KBPS);
  radio.setPALevel(RF24_PA_MAX);
  radio.openReadingPipe(1,deviceID);
  radio.startListening();
  Serial.println("t2o4");
}




void loop() 
{
pic.println("t2o4");

}
