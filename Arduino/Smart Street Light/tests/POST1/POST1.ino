#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>

RF24 radio(7,8);
const byte address[6]="00001";
const int led=2,sensor=6;
int sensorstate=0;

void setup() {
  Serial.begin(9600);
  radio.begin();
  radio.openReadingPipe(0,address);
  radio.setPALevel(RF24_PA_MIN);
  radio.startListening();
  pinMode(led,OUTPUT);
  pinMode(sensor,INPUT);
}

void loop() {
  start:
  if(radio.available()){
    char recieve[32]="";
    radio.read(&recieve,sizeof(recieve));
    }
  sensorstate=digitalRead(sensor);
  if(sensorstate==LOW){
    digitalWrite(led,HIGH);
    delay(10);
    radio.openWritingPipe(address);
    radio.stopListening();
    const char transmit[]= "A";
    for(int i=1;i<5;i=i+1){
      radio.write(&transmit,sizeof(transmit));
      Serial.println(transmit);
    }
    delay(10);
    goto wait;
  }
  goto start;
  wait:
  radio.openReadingPipe(0,address);
  radio.startListening();
  if(radio.available()){
    char nrecieve[32]="";
    radio.read(&nrecieve,sizeof(nrecieve));
    if(nrecieve[0]=='3'){
      digitalWrite(led,LOW);
      delay(10);
      goto start;
    }else{
      goto wait;
    }
  }
  goto wait;
}
