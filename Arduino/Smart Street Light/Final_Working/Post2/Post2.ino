#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>

RF24 radio(7,8);
const byte address[6]="00001";
const int led=2,sensor=6,gnd=3;
int sensorstate=0;

void setup(){
  Serial.begin(9600);
  radio.begin();
  radio.setPALevel(RF24_PA_MIN);
  pinMode(gnd,OUTPUT);
  pinMode(led,OUTPUT);
  pinMode(sensor,INPUT);
  delay(10);
  digitalWrite(gnd,LOW);
}

void loop(){
  digitalWrite(led,LOW);
  start:
  radio.openReadingPipe(0,address);
  radio.startListening();
  if(radio.available()){
    char recievea[32]="";
    radio.read(&recievea,sizeof (recievea));
    delay(10);
    Serial.print("Recieve:");
    Serial.println(recievea);
    if(recievea[0]=='A'){
      digitalWrite(led,HIGH);
      delay(10);
      goto condition_a;
    }
    if(recievea[0]=='3'){
      digitalWrite(led,HIGH);
      delay(10);
      goto condition_b;
    }
  }
goto start;

condition_a:
  sensorstate=digitalRead(sensor);
  if(sensorstate==LOW){
    radio.stopListening();
    radio.openWritingPipe(address);
    const char transmita[]="2";
    for(int i=1;i<5;i++){
      radio.write(&transmita,sizeof(transmita));
      delay(10);
      Serial.print("Sent");
      Serial.println(transmita);
    }
    delay(10);
    while(1){
       radio.openReadingPipe(0,address);
       radio.startListening();
       if(radio.available()){
          char recieveb[32]="";
          radio.read(&recieveb,sizeof(recieveb));
          if(recieveb[0]=='4'){
            digitalWrite(led,LOW);
          }
          if(recieveb[0]=='5'){
            delay(10);
            goto start;
          }
       }
    } 
  }
  goto condition_a;



 condition_b:
  sensorstate=digitalRead(sensor);
  if(sensorstate==LOW){
    radio.stopListening();
    radio.openWritingPipe(address);
    const char transmita[]="2";
    for(int i=1;i<5;i++){
      radio.write(&transmita,sizeof(transmita));
      delay(10);
      Serial.print("Sent");
      Serial.println(transmita);
    }
    delay(10);
    while(1){
       radio.openReadingPipe(0,address);
       radio.startListening();
       if(radio.available()){
          char recieveb[32]="";
          radio.read(&recieveb,sizeof(recieveb));
          if(recieveb[0]=='0'){
            digitalWrite(led,LOW);
            delay(10);
            goto start;
          }
       }
    } 
  }
  goto condition_b;
}
