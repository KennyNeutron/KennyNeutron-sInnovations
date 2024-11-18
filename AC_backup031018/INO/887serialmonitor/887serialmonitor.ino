#include<SoftwareSerial.h>
SoftwareSerial microchip(4,5);
int ser;

void setup() {
  Serial.begin(9600);
  microchip.begin(9600);
  delay(1000);
}

void loop() {
  if(microchip.available()){
    ser=microchip.read();
    Serial.println(ser);
    delay(500);
  }
}

