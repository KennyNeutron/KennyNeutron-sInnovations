#include<SoftwareSerial.h>
SoftwareSerial pic(2,3);
void setup() {
  Serial.begin(38400);
  pic.begin(38400);
}

void loop() {
  Serial.println("AB1234547890111CD");
  pic.println("AB1234547890111CD");
  delay(50);
}
