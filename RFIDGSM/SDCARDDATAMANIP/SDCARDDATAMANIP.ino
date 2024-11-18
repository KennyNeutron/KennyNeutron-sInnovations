

#include <SPI.h>
#include <SD.h>

#include <SoftwareSerial.h>

SoftwareSerial mySerial(9,8);
File myFile;


String phonenumber="";
String message="";

String cmdphone="";
String cmdmssg="";

  
const int sdgnd=2,sdvcc=3;

char inputchar[100]="";



int i=0, j=0,k=0, namej=0, idnumj=0, parentnumj=0;


String studentname="",idnum="",parentnum="";

String filename="";

int FNidx=1;

void setup() {
  // Open serial communications and wait for port to open:
  pinMode(sdgnd,OUTPUT);
  pinMode(sdvcc,OUTPUT);

  digitalWrite(sdgnd,0);
  digitalWrite(sdvcc,1);
  
  Serial.begin(9600);
  
  mySerial.begin(9600);   // Setting the baud rate of GSM Module  


  //Serial.print("Initializing SD card...");

  if (!SD.begin(4)) {
    Serial.println("initialization failed!");
    return;
  }
  //Serial.println("initialization done.");

  

  
}

void loop() {
  i=0;
  filename="";
  FNidx=1;
  filename="STUDENT";
  filename=filename+FNidx;
  filename=filename+".txt";

  
  
  myFile = SD.open(filename);
  if (myFile) {
    Serial.println(filename);

    // read from the file until there's nothing else in it:
    while (myFile.available()) {
      inputchar[i]=myFile.read();
      //Serial.write(myFile.read());
     //Serial.print(inputchar[i]); 
     //Serial.println(i);
      i++;
    }
    // close the file:
    myFile.close();
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening test.txt");
  }


getname:
  j=0;
  while(1){
      //Serial.print(inputchar[j]);
      j++;
      if(inputchar[j]=='#'){
        namej=j;
        goto  getidnumber;   
      }
  }


getidnumber:
      
      j++;
      
while(1){
      //Serial.print(inputchar[j]);
      j++;
      if(inputchar[j]=='#'){
        idnumj=j;
        goto  getparentnum;   
      }
}

getparentnum:
 
j++;


while(1){
      //Serial.print(inputchar[j]);
      j++;
      
      if(inputchar[j]=='#'){
        parentnumj=j;
        goto  initt;   
      }
}

initt:

k=0;



//namej=namej;
idnumj=idnumj-namej-2;
parentnumj=parentnumj-idnumj-namej-5;

//Serial.print("namej=");
//Serial.println(namej);

//Serial.print("namej:");
//Serial.println(namej);
//Serial.print("idnumj:");
//Serial.println(idnumj);
//Serial.print("parentnumj:");
//Serial.println(parentnumj);

while(namej!=0){
      studentname=studentname+inputchar[k];
      namej--;
      k++;
}


k=k+3;

while(idnumj!=1){
      idnum=idnum+inputchar[k];
      idnumj--;
      k++;
}

k=k+3;

while(parentnumj!=0){
      parentnum=parentnum+inputchar[k];
      parentnumj--;
      k++;
}

Serial.println("STUDENTNAME:");
Serial.println(studentname);

Serial.println("ID NUMBER:");
Serial.println(idnum);

Serial.println("PARENT NUMBER:");
Serial.println(parentnum);


i=0;





  phonenumber=parentnum;
  cmdphone="AT+CMGS=\""+phonenumber+"\"\r";
 // Serial.println(cmdphone);

  message="Dear (maam/sir) your (son/daughter) "+ studentname + " went (in/out) of school";

  
  
  
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
    
    



goto  main;


}
