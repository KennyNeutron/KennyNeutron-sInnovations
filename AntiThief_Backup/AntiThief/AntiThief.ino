#include "SIM900.h"
#include <SoftwareSerial.h>
#include <sms.h>
#include "inetGSM.h"
#include<Servo.h>
SMSGSM sms;
Servo myservo;
int numdata;
boolean started=false;
char smsbuff[160],m[20], sms_position, phone_number[20], sms_text[100];
const int pir_inside=7,pir_outside=8, led_in=9,led_out=10,teargas=6,fan=13,solenoid=5;
bool pirstate_in=0,pirstate_out=0;
int tearflag=0,tearstate=0,pos = 0,gsmflag=0,i;

void setup() {
  Serial.begin(9600);
  pinMode(pir_inside,INPUT);
  pinMode(pir_outside,INPUT);
  pinMode(led_in,OUTPUT);
  pinMode(led_out,OUTPUT);
  pinMode(teargas,OUTPUT);
  delay(1000);
  digitalWrite(teargas,0);
  Serial.println("START");
  myservo.attach(5);
  for (pos = 0; pos <= 180; pos += 1) { // goes from 180 degrees to 0 degrees
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
  delay(1000);
  if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
  else Serial.println("\nstatus=IDLE");
  if(started){
    if (sms.SendSMS("+639286707466", "Device is Ready"))
      Serial.println("\nSMS sent OK");
  }
  
}

void loop() {
  mainstart:
  started=false;
  pirstate_in=digitalRead(pir_inside);
  pirstate_out=digitalRead(pir_outside);
  if(pirstate_in==1&&tearflag==0){                     //Motion is detected INSIDE
    digitalWrite(led_in,1);
    Serial.println("Motion inside is Detected!");
    while(pirstate_in==1){
      pirstate_in=digitalRead(pir_inside);
      Serial.print(".");
      delay(1000);
    }digitalWrite(led_in,0);Serial.println(".");started=true;
    sms.SendSMS("+639286707466", "Motion INSIDE is Detected, TearGas NOT yet ACTIVATED, waiting for permission to activate..."); gsmflag=0;goto waitreply;
  }
  if(pirstate_in==0){                 
    digitalWrite(led_in,0);
  }
  if(pirstate_out==1){                   //Motion is detected OUTSIDE
    digitalWrite(led_out,1);
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
    }digitalWrite(teargas,1);digitalWrite(led_in,0);Serial.println(".");started=true;
    goto sendmespen;
  }
  if(tearflag==0){
    digitalWrite(teargas,0);
  }
  delay(100);
  goto mainstart;
  
  sendmesout:
  if(started){
    sms.SendSMS("+639286707466", "Detected Motion OUTSIDE");
    Serial.println("\nSMS sent OK");
  }
  started=false;
  goto mainstart;    

  sendmespen:
  if(started){
    sms.SendSMS("+639286707466", "INTRUDER ALERT! someone has PENETRATED, teargas has been ACTIVATED!");
    Serial.println("\nSMS sent OK");
  }
     for (pos = pos; pos > 0; pos -= 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
   }
  tearflag=0;
  delay(10000);                       ////////////////////////////////////////////////////SET TIMER TO TURN OFF THE TEAR GAS
  digitalWrite(teargas,0);
     for (pos = 0; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
   }
  sms.SendSMS("+639286707466", "TearGas DEACTIVATED!");
  started=false;
  goto mainstart;

  waitreply:
  if (gsm.begin(9600)&&gsmflag==0){
    Serial.println("\nstatus=READY");
    started=true; gsmflag=1;
  }
  Serial.println("Waiting for reply..."); //////////////////////////////////////NOTE!!!!!!!!!!!!: SET TIME TO WAIT REPLY
  startwait:
  if(started){
   sms_position=sms.IsSMSPresent(SMS_UNREAD);
        if (sms_position) 
        {
            Serial.print("SMS postion:");
            Serial.println(sms_position,DEC);
            sms.GetSMS(sms_position, phone_number, sms_text, 100);
            Serial.println(phone_number);
            Serial.println(sms_text);
            goto checkreply;
        }      
        delay(2000);
  }
  delay(1000);
  goto startwait;
  goto waitreply;




  
  checkreply:
    if(sms_text[0]=='R'&&sms_text[1]=='1'&&tearflag==0){
      delay(1000);
      if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
      Serial.println("TearGas Activate"); digitalWrite(teargas,1);
      sms.SendSMS("+639286707466", "TearGas ACTIVATED!");
      tearflag=1;
      for (pos = 180; pos >= 0; pos -= 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
   }
      gsmflag=0;goto waitreply;
    }
    if(sms_text[0]=='R'&&sms_text[1]=='0'&&tearflag==1){
      delay(1000);
      if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
      Serial.println("TearGas Deactivate"); digitalWrite(teargas,0);
      sms.SendSMS("+639286707466", "TearGas DEACTIVATED!"); tearflag=0;
       for (pos = 0; pos <= 180; pos += 1) { // goes from 180 degrees to 0 degrees
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
      goto mainstart;
    }
  gsmflag=0;
  goto waitreply;
}
