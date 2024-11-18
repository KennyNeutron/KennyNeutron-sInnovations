/* Code Written by DPV TECHNOLOGY. WE have explained all the code in the grey comments.
we recommend you to go over the code, examine it, play with it, improve it and modify it according to your needs. 
SUBSCRIBE DPV TECHNOLOGY: 
https://www.youtube.com/dpvtechnology?sub_confirmation=1

*/
 
 #include <SoftwareSerial.h>

SoftwareSerial mySerial(9,8);

String phonenumber="";
String message="";

String cmdphone="";
String cmdmssg="";

String serialin="";


void setup()
{
  mySerial.begin(9600);   // Setting the baud rate of GSM Module  
  Serial.begin(9600);    // Setting the baud rate of Serial Monitor (Arduino)
  delay(100);
  Serial.print("START");
}


void loop()
{
  phonenumber="+639286707466";
  cmdphone="AT+CMGS=\""+phonenumber+"\"\r";
 // Serial.println(cmdphone);

  message="hello world";

  
  
  
      mySerial.println("AT+CMGF=1");    //Sets the GSM Module in Text Mode
     delay(1000);  // Delay of 1 second
     
     mySerial.println(cmdphone); // Replace x with mobile number
     //mySerial.println("AT+CMGS=\"+639286707466\"\r"); // Replace x with mobile number
     delay(1000);
     mySerial.println(message);// The SMS text you want to send
     delay(100);
     mySerial.println((char)26);// ASCII code of CTRL+Z for saying the end of sms to  the module 
      delay(1000);
      

main:

  serialin="";
  if(Serial.available()>0){
      serialin=Serial.readString();
      Serial.print(serialin);
  }

goto main;




   
}



