#include "SIM900.h"
#include <SoftwareSerial.h>
#include <sms.h>
#include "inetGSM.h"
SoftwareSerial bt(12,11);
SMSGSM sms;
int numdata;
boolean started=false;
char smsbuff[160],m[20], sms_position, phone_number[20], sms_text[100];
const int pir_inside=7,pir_outside=8, led_in=9,led_out=10,teargas=6,fan=5,solenoid=13, ledstatus=A0;
bool pirstate_in=0,pirstate_out=0;
int tearflag=0,tearstate=0,pos = 0,gsmflag=0,i,rxx,rec;

void setup() {
  Serial.begin(9600);
  bt.begin (9600);
  pinMode(pir_inside,INPUT);
  pinMode(pir_outside,INPUT);
  pinMode(led_in,OUTPUT);
  pinMode(led_out,OUTPUT);
  pinMode(teargas,OUTPUT);
  pinMode(fan,OUTPUT);
  pinMode(solenoid,OUTPUT);
  pinMode(ledstatus,OUTPUT);
  delay(1000);
  digitalWrite(teargas,0);
  Serial.println("START");
  digitalWrite(teargas,0);
  digitalWrite(fan,0);
  digitalWrite(solenoid,0);
  for(int z=0;z<=5;z++){
    digitalWrite(ledstatus,1);
    delay(300);
    digitalWrite(ledstatus,0);
    delay(300);
  }
  digitalWrite(ledstatus,0);
}

void loop() {
  bluetooooth:
  if(bt.available()){
    rec=bt.read();
    delay(10);Serial.println(rec);
  }
  if(rec=='A'){
      digitalWrite(ledstatus,1);
      if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
  else Serial.println("\nstatus=IDLE");
  if(started){
    if (sms.SendSMS("+639304979930", "Device is Ready"))
      Serial.println("\nSMS sent OK");
      goto mainstart;
  }
  }if(rec=='B'){
    digitalWrite(ledstatus,0);
  }
  
  goto bluetooooth;

  mainstart:
  bt.begin(9600);
  digitalWrite(ledstatus,1);
  if(bt.available()){
    rxx=bt.read();
    delay(10);Serial.println(rec);
  delay(10);if(rxx=='B'){
    digitalWrite(ledstatus,0);
    delay(100);goto bluetooooth;
  }
  }
  digitalWrite(ledstatus,0);
  started=false;
  pirstate_in=digitalRead(pir_inside);
  pirstate_out=digitalRead(pir_outside);
  if(pirstate_in==1&&tearflag==0){                     //Motion is detected INSIDE
    digitalWrite(led_in,1);
    Serial.println("INTRUDER HAS PENETRATED!");
    while(pirstate_in==1){
      pirstate_in=digitalRead(pir_inside);
      Serial.print(".");
      delay(1000);
    }digitalWrite(led_in,0);Serial.println(".");started=true;
    goto sendmespen;
  }
  if(pirstate_in==0){                 
    digitalWrite(led_in,0);
  }
  if(pirstate_out==1){                   //Motion is detected OUTSIDE
    digitalWrite(led_out,1);
    digitalWrite(ledstatus,0);
    Serial.println("Motion OUTSIDE is Detected!");
    tearflag=1;
    while(pirstate_out==1){
      pirstate_out=digitalRead(pir_outside);
      Serial.print(".");
      delay(1000);
    }digitalWrite(led_out,0);Serial.println(".");started=true;
    goto sendmesout;
  }
  if(pirstate_out==0){ 
    digitalWrite(led_out,0);
  }
   if(pirstate_in==1&&tearflag==1){                     //Motion is detected from OUTSIDE TO INSIDE INTRUDER ALERT
    digitalWrite(led_in,1);
    Serial.println("INTRUDER HAS PENETRATED!");
    while(pirstate_in==1){
      pirstate_in=digitalRead(pir_inside);
      Serial.print(".");
      delay(1000);
    }digitalWrite(led_in,0);Serial.println(".");started=true;
    goto sendmespen;
  }
  if(tearflag==0){
    digitalWrite(teargas,0);
    digitalWrite(fan,0);
  }
  goto mainstart;
  
  sendmesout:
  if(started){
    if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
  else Serial.println("\nstatus=IDLE");
  if(started){
    if (sms.SendSMS("+639304979930", "Detected Motion OUTSIDE"))
      Serial.println("\nSMS sent OK");
      goto mainstart;
  }
  }
  started=false;
  goto mainstart;
     
  sendmespen:
  if(started){
    if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
  else Serial.println("\nstatus=IDLE");
  if(started){
    if (sms.SendSMS("+639304979930", "INTRUDER ALERT! someone has PENETRATED, teargas has been ACTIVATED!"))
      Serial.println("\nSMS sent OK");;
      goto tear;
  }
  }
  tear:
  digitalWrite(fan,0);
  for(int j=0;j<=5;j++){
    digitalWrite(teargas,1);
    delay(500);
    digitalWrite(teargas,0);
    delay(1000);
  }
  digitalWrite(fan,1);
  for(int j=0;j<=5;j++){
    digitalWrite(teargas,1);
    delay(500);
    digitalWrite(teargas,0);
    delay(1000);
  }
  digitalWrite(teargas,0);
  digitalWrite(fan,0);
  sms.SendSMS("+639304979930", "TearGas DEACTIVATED!");
  started=false;
  goto mainstart;
  /*
  if(started){
    sms.SendSMS("+639304979930", "INTRUDER ALERT! someone has PENETRATED, teargas has been ACTIVATED!");
    Serial.println("\nSMS sent OK");
  }
  tearflag=0;
  //////////////////////////////////////////////////// TEAAAAR GASSSS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  digitalWrite(fan,0);
  for(int j=0;j<=5;j++){
    digitalWrite(teargas,1);
    delay(500);
    digitalWrite(teargas,0);
    delay(1000);
  }
  digitalWrite(fan,1);
  for(int j=0;j<=5;j++){
    digitalWrite(teargas,1);
    delay(500);
    digitalWrite(teargas,0);
    delay(1000);
  }
  digitalWrite(teargas,0);
  digitalWrite(fan,0);
  sms.SendSMS("+639304979930", "TearGas DEACTIVATED!");
  started=false;
  goto mainstart;*/

}
