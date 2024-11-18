#include<SoftwareSerial.h>
SoftwareSerial pic(2,3);
void setup() {
  Serial.begin(9600);
  pic.begin(9600);
}

void loop() {
  pic.println("C");
}
