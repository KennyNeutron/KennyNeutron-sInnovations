#include <SPI.h>
#include <MFRC522.h>
#include<SoftwareSerial.h>
SoftwareSerial bt(2,3),pic(4,5);
int ser,eqnum,eqstat, store=0,led=13;
char dat[3];
bool flag=0;
const int sol=7;


#define SS_PIN 10
#define RST_PIN 9

MFRC522 rfid(SS_PIN, RST_PIN);
MFRC522::MIFARE_Key key;

int totalcode=0;
int codeRead = 0;
String uidString;


void setup() {
  Serial.begin(9600);
  bt.begin(9600);
  pinMode(sol,OUTPUT);
  digitalWrite(sol,1);
  delay(1000);
  digitalWrite(sol,0);
  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522
  Serial.println("B");
}

void loop() {
  start:
    if(  rfid.PICC_IsNewCardPresent())
  {
      totalcode=0;
      goto rfidread;
  }
  
  if(bt.available()){
    ser=bt.read();
    if(ser=='1'){
      digitalWrite(sol,1);
    }
    if(ser=='2'){
      digitalWrite(sol,0);
      Serial.println("B");
    }
    if(ser=='3'){
      Serial.println("C");
    }
    if(ser=='4'){
      Serial.println("D");//Siren On
    }
    if(ser=='5'){
      Serial.println("E");//Siren off
    }
  }
  if(Serial.available()){
    for(int i=0;i<=2;i++){
        dat[i]=Serial.read();
    }
    bt.print(String(dat[0]+dat[1]+dat[2]));
  }
  goto start;

rfidread:
    rfid.PICC_ReadCardSerial();
  //Serial.println("\n\n============================");Serial.print(F("PICC type: "));
  MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
  //Serial.println(rfid.PICC_GetTypeName(piccType));
  // Check is the PICC of Classic MIFARE type
  if (piccType != MFRC522::PICC_TYPE_MIFARE_MINI &&
    piccType != MFRC522::PICC_TYPE_MIFARE_1K &&
    piccType != MFRC522::PICC_TYPE_MIFARE_4K) {
    //Serial.println(F("Your tag is not of type MIFARE Classic."));
    return;
  }
    //Serial.println("============================");  
    //Serial.println("Scanned PICC's UID:");
    printDec(rfid.uid.uidByte, rfid.uid.size);

   uidString = String(rfid.uid.uidByte[0])+" "+String(rfid.uid.uidByte[1])+" "+String(rfid.uid.uidByte[2])+ " "+String(rfid.uid.uidByte[3]);
   totalcode=5000+rfid.uid.uidByte[0]+rfid.uid.uidByte[1]+rfid.uid.uidByte[2]+rfid.uid.uidByte[3];
  // Serial.println("\n============================");
   //Serial.print("\nIDcode: ");Serial.println(totalcode); 
   bt.print(totalcode);
    // Halt PICC
  rfid.PICC_HaltA();

  // Stop encryption on PCD
  rfid.PCD_StopCrypto1();

  goto start;

}




void printDec(byte *buffer, byte bufferSize) {
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
    Serial.print(buffer[i], DEC);
  }

}

