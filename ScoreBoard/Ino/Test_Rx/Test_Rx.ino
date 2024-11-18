#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>
RF24 radio(7,8);
const byte address[6]="000001";

void setup() {
  Serial.begin(9600);
  Serial.println("START");
  radio.begin();
  radio.openReadingPipe(0,address);
  radio.setPALevel(RF24_PA_MIN);
  radio.startListening();

}

void loop() {
  if(radio.available()){
    const char recieve[4]="";
    radio.read(&recieve,sizeof(recieve));
    Serial.print(recieve);
   }
}
