#include<SPI.h>
#include<nRF24L01.h>
#include<RF24.h>

RF24 radio(7,8);

const byte address[6]="00001";
const int sensorpin=6,led=2;
int sensorstate=0;

void setup() {
  Serial.begin(9600);
  radio.begin();
  radio.setPALevel(RF24_PA_MIN);
  pinMode(sensorpin,INPUT);
  pinMode(led,OUTPUT);

}

void loop() {
  start:
  radio.openReadingPipe(0,address);
  radio.startListening();
  if(radio.available()){
    char recieve[32]="";
    radio.read(&recieve,sizeof(recieve));
    if(recieve[0]=='A'){
      //forward
      digitalWrite(led,HIGH);
      radio.openWritingPipe(address);
      radio.stopListening();
      while(1){
        whilestart:
        sensorstate=digitalRead(sensorpin);
        if(sensorstate==LOW){
          for(int i=1;i<5;i=i+1){
            const char transmit[]="2";
            radio.write(&transmit,sizeof(transmit));
            Serial.println(transmit);
            delay(5);
          }
          while(sensorstate==LOW){
            sensorstate=digitalRead(sensorpin);
            if(sensorstate==HIGH){
              goto ending;
            }
          }
        }else{
          goto whilestart;
        }
      }
    }
  }
goto start;
ending:
  radio.openReadingPipe(0,address);
  radio.startListening();
  if(radio.available()){
    char recieve[32]="";
    radio.read(&recieve,sizeof(recieve));
    if(recieve[0]=='4'){
      digitalWrite(led,LOW);
    }
  }
 goto ending;
}
