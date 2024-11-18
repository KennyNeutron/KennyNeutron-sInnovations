/*
  SD card read/write

 This example shows how to read and write data to and from an SD card file
 The circuit:
 * SD card attached to SPI bus as follows:
 ** MOSI - pin 11
 ** MISO - pin 12
 ** CLK - pin 13
 ** CS - pin 4 (for MKRZero SD: SDCARD_SS_PIN)

 created   Nov 2010
 by David A. Mellis
 modified 9 Apr 2012
 by Tom Igoe

 This example code is in the public domain.

 */

#include <SPI.h>
#include <SD.h>

File myFile;

const int sdgnd=2,sdvcc=3;

char inputchar[100]="";



int i=0, j=0,k=0, namej=0, idnumj=0, parentnumj=0;


String studentname="",idnum="",parentnum="";

void setup() {
  // Open serial communications and wait for port to open:
  pinMode(sdgnd,OUTPUT);
  pinMode(sdvcc,OUTPUT);

  digitalWrite(sdgnd,0);
  digitalWrite(sdvcc,1);
  
  Serial.begin(9600);
  


  Serial.print("Initializing SD card...");

  if (!SD.begin(4)) {
    Serial.println("initialization failed!");
    return;
  }
  Serial.println("initialization done.");

  

  
}

void loop() {
  i=0;
  myFile = SD.open("STUDENT1.txt");
  if (myFile) {
    Serial.println("STUDENT1.txt");

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

Serial.print("namej:");
Serial.println(namej);
Serial.print("idnumj:");
Serial.println(idnumj);
Serial.print("parentnumj:");
Serial.println(parentnumj);

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

  
main:
    
    



goto  main;


}
