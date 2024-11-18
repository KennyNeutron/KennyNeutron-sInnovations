#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>
RF24 radio(7,8);
const byte address[6]="000001";
void setup() {
  radio.begin();
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MAX);
  radio.stopListening();
}   
void loop() {
  const char transmit[]="A";
  radio.write(&transmit,sizeof(transmit));
}
