  #include<SoftwareSerial.h>
  SoftwareSerial bt(2,3);
  const int sol=7;
  int ser;
  
  void setup() {
    Serial.begin(9600);
    bt.begin(9600);
    pinMode(sol,OUTPUT);
    digitalWrite(sol,1);
    delay(1000);
    digitalWrite(sol,0);
  }
  
  void loop() {
    if(bt.available()){
      ser=bt.read();
      Serial.println(ser);
      if(ser=='1'){
        digitalWrite(sol,1);
        bt.println("ON");
      }
      if(ser=='2'){
        digitalWrite(sol,0);
        bt.println("OFF");
      }
    }
  }

