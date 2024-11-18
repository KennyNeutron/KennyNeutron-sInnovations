

#include <SPI.h>
#include <SD.h>

#include <SoftwareSerial.h>

SoftwareSerial mySerial(9,8);
File myFile;


String phonenumber="";
//String message="";

String cmdphone="";
String cmdmssg="";

String serialin[3]="";
  
const int sdgnd=2,sdvcc=3;

char inputchar[100]="";



int i=0, j=0,k=0, namej=0, idnumj=0, parentnumj=0;


String studentname="",idnum="",parentnum="";

String filename="";

int FNidx=1,s=0;


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
  
//FNidx=2;
//goto  sendmessage;


init0:
phonenumber="";
//message="";

cmdphone="";
cmdmssg="";

  

inputchar[100]="";



i=0;j=0;k=0;namej=0;idnumj=0;parentnumj=0;


studentname="";idnum="";parentnum="";

filename="";

FNidx=1;
s=0;



main:
  if(Serial.available()>0){
      serialin[s]="";
      serialin[s]=Serial.readString();
      //Serial.print(serialin[s]);
      //Serial.print(s);
      s++;
  }

  if(s==2){
      Serial.print("S0:");Serial.println(serialin[0]);
      Serial.print("S1:");Serial.println(serialin[1]);
      s=0;
      if(serialin[0].startsWith("AA")){
        //Serial.println("OK0");
        
        serialin[0].remove(0,2);
        Serial.println(serialin[0]);
      }
      
      if(serialin[1].startsWith("BB")){
        Serial.println("OK1");
        
        Serial.print("brs:");Serial.println(serialin[1]);
        serialin[1].remove(0,2);
        Serial.print("rs:");Serial.println(serialin[1]);
        FNidx=serialin[1].toInt();
        Serial.print("ST#");Serial.println(FNidx);
        delay(2000);
        goto sendmessage;
      }

      
  }
  
   
  

goto  main;


sendmessage:
 i=0;
  filename="";
  //FNidx=2;
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



  Serial.print(serialin[0]);
  Serial.println(serialin[0].length());

  // trim the white space off the string:
  serialin[0].trim();

  studentname.length();
  studentname.trim();

Serial.println("STUDENTNAME:");
Serial.println(studentname);

Serial.print("ID NUMBER:");
Serial.print(idnum);Serial.print(idnum.length());
Serial.print("SCANNED ID:");
Serial.print(serialin[0]);Serial.print(serialin[0].length());;

if(idnum==serialin[0]){
  Serial.println("ID AND FINGER MATCHED!");
}

if(idnum!=serialin[0]){
  Serial.println("ID AND FINGER DID NOT MATCH!");
}

Serial.println("PARENT NUMBER:");
Serial.println(parentnum);


i=0;





  phonenumber=parentnum;
  cmdphone="AT+CMGS=\""+phonenumber+"\"\r";
 // Serial.println(cmdphone);


 String message="";
  
  
  
  
      mySerial.println("AT+CMGF=1");    //Sets the GSM Module in Text Mode
     delay(1000);  // Delay of 1 second
     
     mySerial.println(cmdphone); // Replace x with mobile number
     //mySerial.println("AT+CMGS=\"+639286707466\"\r"); // Replace x with mobile number
     delay(1000);
     
     //Serial.println(message);
     //Serial.println(studentname);


     String stntemp="";
     stntemp=studentname;

    // Serial.println("FLAG!");
     message= stntemp + " went (in/out) of school";
     Serial.println(message);
     mySerial.println(message);// The SMS text you want to send
     delay(100);
     mySerial.println((char)26);// ASCII code of CTRL+Z for saying the end of sms to  the module 
     delay(1000);

 goto init0;

}
