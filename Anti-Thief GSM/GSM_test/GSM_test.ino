#include "SIM900.h"
#include <SoftwareSerial.h>
#include "sms.h"
SMSGSM sms;
int numdata;
boolean started=false;
char smsbuffer[160];
char n[20];

void setup(){
  Serial.begin(9600);
  Serial.println("GSM Shield testing.");
  if (gsm.begin(9600)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
  else Serial.println("\nstatus=IDLE");
  
  if(started){
    if (sms.SendSMS("+639104565272", "SAMPLE MESSAGE"))
      Serial.println("\nSMS sent OK");
  }

}

void loop() 
{
  if(started){
    if(gsm.readSMS(smsbuffer, 160, n, 20))
    {
      Serial.println(n);
      Serial.println(smsbuffer);
    }
    delay(1000);
  }
};
