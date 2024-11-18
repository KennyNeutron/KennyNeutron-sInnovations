#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include<SoftwareSerial.h>
SoftwareSerial pic(2,3);

RF24 radio(7,8);

const int buzzer = 2;
const byte address[6] = "00000";

void setup() {  
  pic.begin(9600);
  Serial.begin(9600);
  radio.begin();
  radio.openReadingPipe(0,address);
  radio.setPALevel(RF24_PA_MAX);  
  radio.setDataRate(RF24_250KBPS);
  radio.startListening();
  Serial.print("TEST");
  delay(1000);
}

void loop() {

  char text[32] = "";
  
  if (radio.available()) {
    radio.read(&text, sizeof(text));
    String transData = String(text);
    pic.print(text);
    Serial.println(text);
  }
//  Serial.println(text);
}
