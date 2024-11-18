#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include<string.h>

RF24 radio(7,8);

const byte address[6] = "00001";

int i,minut=10,secon=0,fope=20,hscore=0,ascore=0;
char ar_minut[2],ar_secon[2],ar_fope[3],ar_hscore[3],ar_ascore[3],mssg[17];
String s_minut,s_secon,s_fope,s_hscore,s_ascore;

//buttons
const int b_ascore=A1,ss=5;
bool bascore=1,bss=1,flag=0,sflag=0;


void setup() {
  radio.begin();
  Serial.begin(9600);
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.stopListening();
  Serial.println("START");
  pinMode(b_ascore,INPUT);
}

void loop() {
start:
s_minut=minut;
s_secon=secon;
s_fope=fope;
s_hscore=hscore;
s_ascore=ascore;

s_minut.toCharArray(ar_minut,2);
s_secon.toCharArray(ar_secon,2);
s_fope.toCharArray(ar_fope,3);
s_hscore.toCharArray(ar_hscore,3);
s_ascore.toCharArray(ar_ascore,3);
String head= "AB";
String foot="CD";
if(secon<10){
  s_secon="0"+s_secon;
}
if(minut<10){
  s_minut="0"+s_minut;
}
if(fope<100){
  s_fope="0"+s_fope;
}
if(hscore<100&&hscore<10){
  s_hscore="00"+s_hscore;
}
if(ascore<100&&ascore<10){
  s_ascore="00"+s_ascore;
}

if(hscore<100&&hscore>10){
  s_hscore="0"+s_hscore;
}
if(ascore<100&&ascore>10){
  s_ascore="0"+s_ascore;
}
String combined=head+s_minut+s_secon+s_fope+s_hscore+s_ascore+foot;
combined.toCharArray(mssg,18);
/*Serial.println(head);
Serial.println(s_minut);
Serial.println(s_secon);
Serial.println(s_fope);
Serial.println(s_hscore);
Serial.println(s_ascore);
Serial.println(foot); 
*/Serial.println(mssg);
for(int i=0;i<=100;i++){
  
bascore=digitalRead(b_ascore);
bss=digitalRead(ss);
  if(bascore==0&&flag==0){
    ascore++;flag=1;goto start;
  }if(bss==0&&sflag==0){
    sflag=1;
    while(bss==0){
      bss=digitalRead(ss);
    }
  }if(bss==0&&sflag==1){
    sflag=0;
    while(bss==0){
      bss=digitalRead(ss);
    }goto start;
  }
  radio.write(&mssg, sizeof(mssg));
  delay(10);
} 
if(sflag==1){
secon--;
}
flag=0;
Serial.println(sflag);
if(secon<0){
  secon=59;
  minut--;
}
}
