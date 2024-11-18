#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>
#include<SoftwareSerial.h>
SoftwareSerial pic(2,3);

RF24 radio(7,8);
const byte address[6]="000001";

void setup() {
  Serial.begin(9600);
  pic.begin(9600);
  radio.begin();
  radio.openReadingPipe(0,address);
  radio.setPALevel(RF24_PA_MAX);
  radio.startListening();
  Serial.println("START");delay(10);
}

void loop() {
  if(radio.available()){
    char recieve[1]="";
    radio.read(&recieve,sizeof(recieve));
    pic.print(recieve);
    Serial.print(recieve);
   }
}
