#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7,8);

const byte address[6] = "00001";
const int an1=A0,an2=A1,an3=A2,an4=A3;
int sv1=0,sv2=0,sv3=0,sv4=0;
int ov1=0,ov2=0,ov3=0,ov4=0;

char ar_ov1[3],ar_ov2[3],ar_ov3[3],ar_ov4[3],mssg[16];
String s_ov1,s_ov2,s_ov3,s_ov4;

void setup() {
  radio.begin();
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.stopListening();
  Serial.begin(38400);
}

void loop() {
  sv1=analogRead(an1);
  sv2=analogRead(an2);
  sv3=analogRead(an3);
  sv4=analogRead(an4);
  ov1=map(sv1,0,1023,0,255);
  ov2=map(sv2,0,1023,0,255);
  ov3=map(sv3,0,1023,0,255);
  ov4=map(sv4,0,1023,0,255);
  //Serial.print("ov1:");Serial.print(ov1);Serial.print("\t ov2:");Serial.print(ov2);Serial.print("\t ov3:");Serial.print(ov3);Serial.print("\t ov4:");Serial.println(ov4);
  
  s_ov1=ov1; s_ov2=ov2;s_ov3=ov3;s_ov4=ov4;
  s_ov1.toCharArray(ar_ov1,3);
  s_ov2.toCharArray(ar_ov2,3);
  s_ov3.toCharArray(ar_ov3,3);
  s_ov4.toCharArray(ar_ov4,3);

  String head="KE";
  String foot="NY";

  if(ov1<100&&ov1>9){
    s_ov1="0"+s_ov1;
  }if(ov1<10&&ov2>9){
    s_ov1="00"+s_ov1;
  }
  if(ov2<100&&ov2>9){
    s_ov2="0"+s_ov2;
  }if(ov2<10){
    s_ov2="00"+s_ov2;
  }
  if(ov3<100&&ov3>9){
    s_ov3="0"+s_ov3;
  }if(ov3<10){
    s_ov3="00"+s_ov3;
  }
  if(ov4<100&&ov4>9){
    s_ov4="0"+s_ov4;
  }if(ov4<10){
    s_ov4="00"+s_ov4;
  }
  String combined=head+s_ov1+s_ov2+s_ov3+s_ov4+foot;
  combined.toCharArray(mssg,17);
  radio.write(&mssg, sizeof(mssg));
  Serial.println(mssg);
  delay(10);
}
