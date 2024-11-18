#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>

RF24 radio(7,8);
const byte address[6]="00001";
const int led=2,sensor=6;
int sensorstate=0;

void setup(){
  Serial.begin(9600);
  radio.begin();
  radio.setPALevel(RF24_PA_MIN);
  pinMode(led,OUTPUT);
  pinMode(sensor,INPUT);
}

void loop() {
start:
  digitalWrite(led,LOW);
  sensorstate=digitalRead(sensor);
  if(sensorstate==LOW){
    digitalWrite(led,HIGH);
    delay(10);
    radio.stopListening();
    radio.openWritingPipe(address);
    const char transmita[]="B";
    for(int i=1;i<5;i++){
      radio.write(&transmita,sizeof(transmita));
      delay(10);
      Serial.print("Sent:");
      Serial.println(transmita);
    }
    //goto condition b
  }
  delay(10);
  radio.openReadingPipe(0,address);
  radio.startListening();
  if(radio.available()){
    char recievea[32]="";
    radio.read(&recievea,sizeof(recievea));
    Serial.print("Recieve:");
    Serial.println(recievea);
    if(recievea[0]=='3'){
      digitalWrite(led,HIGH);
      goto condition_a;
    }
  }
goto start;

condition_a:
   sensorstate=digitalRead(sensor);
   if(sensorstate==LOW){
    radio.stopListening();
    radio.openWritingPipe(address);
    const char transmitb[]="4";
    for(int i=1;i<5;i++){
      radio.write(&transmitb,sizeof(transmitb));
      delay(10);
      Serial.print("Sent:");
      Serial.println(transmitb);
    }
    delay(20);
    while(sensorstate==LOW){
      sensorstate=digitalRead(sensor);
    }
    delay(20);
    const char transmitc[]="5";
    for(int i=1;i<5;i++){
      radio.write(&transmitc,sizeof(transmitc));
      delay(10);
      Serial.print("Sent:");
      Serial.println(transmitc);
    }
    delay(50);
    radio.openReadingPipe(0,address);
    radio.startListening();
    char recieve[32]="";
    for(int i=1;i<10;i++){
      char recievec[32]="";
      if(radio.available()){
        radio.read(&recievec,sizeof(recievec));
        delay(10);
        Serial.print("Recieve:");
        Serial.println(recievec);
      }
      delay(10);
    }
    delay(300);
    digitalWrite(led,HIGH);
    delay(300);
    goto start;
   }
goto condition_a;
}
