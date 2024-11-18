/*
GPRS Connect TCP

This sketch is used to test seeeduino GPRS_Shield's send SMS func.
to make it work, you should insert SIM card to Seeeduino GPRS 
and replace the phoneNumber,enjoy it!

create on 2015/05/14, version: 1.0
by lawliet.zou(lawliet.zou@gmail.com)
*/
#include "sim900.h"

/** GPRS class.
 *  used to realize GPRS communication
 */ 

#include "sms.h"
#define HTTP_DEFAULT_PORT 80u

#include <GPRS_Shield_Arduino.h>
#include <SoftwareSerial.h>
#include <Wire.h>

#define PIN_TX    9
#define PIN_RX    8
#define BAUDRATE  9600


//const char PHONE_NUMBER="+639286707466";
//const char MESSAGE="hello,world";


//String PHONE_NUMBER="";
//String MESSAGE="";



const int vgnd=6,vvcc=7;

GPRS gprs(PIN_TX,PIN_RX,BAUDRATE);//RX,TX,BaudRate

void setup() {
  pinMode(vgnd,OUTPUT);
  pinMode(vvcc,OUTPUT);

  digitalWrite(vgnd,LOW);
  digitalWrite(vvcc,HIGH);
  
  gprs.checkPowerUp();
  Serial.begin(9600);   
  
  while(!gprs.init()) {
      delay(1000);
      Serial.println("Initialization failed!");
  }  

  while(!gprs.isNetworkRegistered())
  {
    delay(1000);
    Serial.println("Network has not registered yet!");
  }

  Serial.println("gprs initialize done!");
  Serial.println("start to send message ...");


if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
  else Serial.println("\nstatus=IDLE");
  
  if(started){
    if (sms.SendSMS("+639286707466", "SAMPLE MESSAGE"))
      Serial.println("\nSMS sent OK");
  }



}

void loop() {
  //nothing to do
}
