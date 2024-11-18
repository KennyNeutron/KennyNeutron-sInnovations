#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7,8);

const int m_enable=3,lefta=4,leftb=5,righta=6,rightb=2,headlight=A3,breaklight=A5,headgnd=A2;
const byte address[6] = "00001";
int ov1,ov2,ov3,ov4;

void setup() {
  // put your setup code here, to run once:
  pinMode(headlight,OUTPUT);
  pinMode(breaklight,OUTPUT);
  pinMode(m_enable,OUTPUT);
  pinMode(lefta,OUTPUT);
  pinMode(leftb,OUTPUT);
  pinMode(righta,OUTPUT);
  pinMode(rightb,OUTPUT);
  pinMode(headgnd,OUTPUT);
  radio.begin();
  radio.openReadingPipe(0,address);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.startListening();
  Serial.begin(38400);
  digitalWrite(m_enable,1);
    digitalWrite(headlight,1);
    digitalWrite(headgnd,0);
}

void loop() {
  char text[21] = "";
  if (radio.available()) {
    radio.read(&text, sizeof(text));
    String transData = String(text);
    Serial.println(text);
    if(text[0]=='K'&&text[1]=='E'&&text[14]=='N'&&text[15]=='Y'){
      ov1=((text[2]-48)*100)+((text[3]-48)*10)+(text[4]-48);
      ov2=((text[5]-48)*100)+((text[6]-48)*10)+(text[7]-48);
      ov3=((text[8]-48)*100)+((text[9]-48)*10)+(text[10]-48);
      ov4=((text[11]-48)*100)+((text[12]-48)*10)+(text[13]-48);
      Serial.print("ov1:");Serial.print(ov1);
      Serial.print("\t ov2:");Serial.print(ov2);
      Serial.print("\t ov3:");Serial.print(ov3);
      Serial.print("\t ov4:");Serial.println(ov4);
    }
    
       
  }
  analogWrite(m_enable,ov1);
  if(ov1==255){
    digitalWrite(headlight,1);
  }else{
    digitalWrite(headlight,0);
  }
  if(ov2==123&&ov3==125&&ov4==131){
      digitalWrite(lefta,0);
      digitalWrite(leftb,0);
      digitalWrite(righta,0);
      digitalWrite(rightb,0);
      digitalWrite(breaklight,1);
  }
  if(ov2==255){
      digitalWrite(lefta,1);
      digitalWrite(leftb,0);
      digitalWrite(righta,1);
      digitalWrite(rightb,0);
  }
  if(ov2==0){
      digitalWrite(lefta,0);
      digitalWrite(leftb,1);
      digitalWrite(righta,0);
      digitalWrite(rightb,1);
  }
  if(ov4==0){
      digitalWrite(lefta,0);
      digitalWrite(leftb,1);
      digitalWrite(righta,1);
      digitalWrite(rightb,0);
      digitalWrite(breaklight,0);
  }
  if(ov4==255){
      digitalWrite(lefta,1);
      digitalWrite(leftb,0);
      digitalWrite(righta,0);
      digitalWrite(rightb,1);
      digitalWrite(breaklight,0);
  }
  if(ov3==0){
      digitalWrite(lefta,1);
      digitalWrite(leftb,0);
      digitalWrite(righta,1);
      digitalWrite(rightb,0);
      digitalWrite(breaklight,0);
  }
    if(ov3==255){
      digitalWrite(lefta,0);
      digitalWrite(leftb,1);
      digitalWrite(righta,0);
      digitalWrite(rightb,1);
      digitalWrite(breaklight,0);
  }
}
