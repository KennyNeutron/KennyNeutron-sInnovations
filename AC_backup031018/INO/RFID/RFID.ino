#include <SPI.h>
#include <MFRC522.h>
#include<SoftwareSerial.h>
SoftwareSerial toBT(2,3);

int solenoid=7;

#define SS_PIN 10
#define RST_PIN 9

MFRC522 rfid(SS_PIN, RST_PIN);
MFRC522::MIFARE_Key key;

int totalcode=0;
int codeRead = 0;
String uidString;
void setup() {
  pinMode(solenoid,OUTPUT);
  toBT.begin(9600);
  Serial.begin(9600);
  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522
  delay(1000);
  digitalWrite(solenoid,1);
  delay(2000);
  digitalWrite(solenoid,0);
}

void loop() {
  start:
  if(  rfid.PICC_IsNewCardPresent())
  {
      totalcode=0;
      goto rfidread;
  }
  delay(100);

  if(Serial.available()){
      int dat=Serial.read();
      toBT.write(dat);
  }

  if(toBT.available()){
    int dat=toBT.read();
    if(dat=='3'){
      digitalWrite(solenoid,HIGH);
    }
  }

  goto start;

rfidread:
    rfid.PICC_ReadCardSerial();
  Serial.println("\n\n============================");Serial.print(F("PICC type: "));
  MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
  Serial.println(rfid.PICC_GetTypeName(piccType));
  // Check is the PICC of Classic MIFARE type
  if (piccType != MFRC522::PICC_TYPE_MIFARE_MINI &&
    piccType != MFRC522::PICC_TYPE_MIFARE_1K &&
    piccType != MFRC522::PICC_TYPE_MIFARE_4K) {
    Serial.println(F("Your tag is not of type MIFARE Classic."));
    return;
  }
    Serial.println("============================");  
    Serial.println("Scanned PICC's UID:");
    printDec(rfid.uid.uidByte, rfid.uid.size);

   uidString = String(rfid.uid.uidByte[0])+" "+String(rfid.uid.uidByte[1])+" "+String(rfid.uid.uidByte[2])+ " "+String(rfid.uid.uidByte[3]);
   totalcode=5000+rfid.uid.uidByte[0]+rfid.uid.uidByte[1]+rfid.uid.uidByte[2]+rfid.uid.uidByte[3];
   Serial.println("\n============================");
   Serial.print("\nIDcode: ");Serial.println(totalcode); toBT.print(totalcode);
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
