#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include<string.h>

RF24 radio(7,8);

const byte address[6] = "00001";

int look,i,minut=10,secon=0,fope=10,hscore=0,ascore=0,shot=24,sc_tens=0,sc_ones=0;
char ar_minut[2],ar_secon[2],ar_fope[3],ar_hscore[3],ar_ascore[3],mssg[21],mssgsc[4],ar_sct[1],ar_sco[1];
String s_minut,s_secon,s_fope,s_hscore,s_ascore,s_sct,s_sco;

//buttons
int win;
const int b_ascore=A0,b_hscore=A1,ss=5,b_hfoul=A2,b_afoul=A3,b_shift=4,b_horn=9,b_rst=6;
bool bascore=1,bhscore=1,bss=1,bhfoul=1,bafoul=1,shift=1,horn=1,brst=1;
bool aflag=0,hflag=0,sflag=0,afflag=0,hfflag=0,game=0;


void setup() {
  radio.begin();
  Serial.begin(9600);
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.stopListening();
  pinMode(ss,INPUT);
  pinMode(b_ascore,INPUT);
  pinMode(b_hscore,INPUT);
  pinMode(b_afoul,INPUT);
  pinMode(b_hfoul,INPUT);
  pinMode(b_shift,INPUT);
  pinMode(b_horn,INPUT);  
  pinMode(b_rst,INPUT);
}

void loop() {
start:
sc_tens=shot/10;
sc_ones=shot%10;
win=hscore-ascore;

s_minut=minut;
s_secon=secon;
s_fope=fope;
s_hscore=hscore;
s_ascore=ascore;
s_sct=sc_tens;
s_sco=sc_ones;

s_minut.toCharArray(ar_minut,2);
s_secon.toCharArray(ar_secon,2);
s_fope.toCharArray(ar_fope,3);
s_hscore.toCharArray(ar_hscore,3);
s_ascore.toCharArray(ar_ascore,3);
s_sct.toCharArray(ar_sct,2);
s_sco.toCharArray(ar_sco,2);

String head= "AB";
String foot="CD";
if(secon<10){
  s_secon="0"+s_secon;
}
if(minut<10){
  s_minut="0"+s_minut;
}
if(fope<100&&fope>0){
  s_fope="0"+s_fope;
}

if(fope<10&&fope>0){
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
String combined=head+s_minut+s_secon+s_fope+s_hscore+s_ascore+foot+"t"+s_sct+"o"+s_sco;;
combined.toCharArray(mssg,22);
/*Serial.println(head);
Serial.println(s_minut);
Serial.println(s_secon);
Serial.println(s_fope);
Serial.println(s_hscore); q
Serial.println(s_ascore);
Serial.println(foot); 
*/
for(int i=0;i<=10;i++){
Serial.print(mssg);
if(Serial.available()){
  int rcvdat=Serial.read();
  if(rcvdat==65){
    sflag=0;
  }
  if(rcvdat==1){
    sflag=1;
  }
}
bascore=digitalRead(b_ascore);
bhscore=digitalRead(b_hscore);
bafoul=digitalRead(b_afoul);
bhfoul=digitalRead(b_hfoul);
bss=digitalRead(ss);
horn=digitalRead(b_horn);
shift=digitalRead(b_shift);
brst=digitalRead(b_rst);
//================================FOUL=========================
if(bhfoul==0&&hfflag==0){
    if(shift==0){
      if(fope>=100){
      fope=fope-100;}else{
        fope=fope;
      }
      
    }else{
    fope=fope+100;
    }afflag=1;hfflag=1;goto start;
  } 
if(bafoul==0&&afflag==0){
  if(shift==0){
    int see;
    see=fope%10;
    if(see==0){
      fope=fope;
    }else{
    fope--;
    }
  }else{
    fope++;
  }afflag=1;hfflag=1;goto start;
  }
//================================================================
//===========================SCORE============================
  if(bascore==0&&aflag==0){
    if(shift==0){
      ascore--;
    }else{
      ascore++;
    }
    aflag=1;goto start;
  }
  if(bhscore==0&&hflag==0){
    if(shift==0){
      hscore--;
    }else{
      hscore++;
    }hflag=1;goto start;
  }
//================================================
  if(brst==0&&sflag==1){
    shot=25;
  }
    if(brst==0&&sflag==0){
    shot=24;
  }
  if(brst==0&&sflag==1&&shift==0){
    shot=15;
  }
  
  if(brst==0&&sflag==0&&shift==0){
    shot=14;
  }
  if(bss==0&&sflag==0){
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
  delay(100);
}
if(sflag==1){
secon--;
shot--;
if(shot<0){
  shot=24;
}
if(shot==0){
  sflag=0;
}
}
aflag=0;
hflag=0;
afflag=0;
hfflag=0;
if(fope<=100&&fope>0){
  look=fope/10;
}
if(fope>=100){
  look=(fope%100)/10;
}
if(fope<10){
  look==0;
}

if(minut==0 && secon<0 && win==0 && look==4){
  minut=0;
  secon=1;
  sflag=0;
  fope=fope-40;
}
if(minut==0 && secon<0 && win==0 && look==0){
  minut=0;
  secon=1;
  sflag=0;
  fope=fope;
}
if(minut==0 && secon<0 && win!=0 && look==4){
  minut=0;
  secon=0;
  sflag=0;
  fope=fope;
  game=1;goto start;
}

if(minut==0 && secon<0 && win!=0 && look==0){ //END of GAME
  minut=0;
  secon=0;
  sflag=0;
  fope=fope;
  game=1;goto start;
}
if(secon<0){
  secon=59;
  minut--;
}
if(game==1){
  goto newgame;
}
goto start;


newgame:
while(shift!=0&&horn!=0){
horn=digitalRead(b_horn);
shift=digitalRead(b_shift);
}
minut=10;secon=0;fope=10;hscore=0;ascore=0;game=0;
goto start;

}
