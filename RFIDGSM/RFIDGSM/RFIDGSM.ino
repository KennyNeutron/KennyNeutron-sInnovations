#include <LiquidCrystal.h>
#include <DS3231.h>
#include <SPI.h>
#include <MFRC522.h>
#include <Adafruit_Fingerprint.h>

SoftwareSerial mySerial(2, 3);

Adafruit_Fingerprint finger = Adafruit_Fingerprint(&mySerial);

DS3231  rtc(SDA, SCL);

const int rs = 6, en = 7, d4 = A0 , d5 = A1, d6 = A2, d7 = A3;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

#define SS_PIN 10
#define RST_PIN 9
 
MFRC522 rfid(SS_PIN, RST_PIN); // Instance of the class

MFRC522::MIFARE_Key key; 

int totalcode=0;
int codeRead = 0;
int fdetect=0;
String uidString, studentid,studentfp;



const int sel=0,down=5,up=4;

int state_sel=1,state_down=1,state_up=1;

int sethour=0,setmin=0,setdate=0,setmonth=0,setday=1,datetimeset;
long int setyear=2000;
int fingercount=0,fingerid=1;
uint8_t id;

void setup() {
  pinMode(sel,INPUT);
  pinMode(down,INPUT);
  pinMode(up,INPUT);
  lcd.begin(16, 4);
  rtc.begin();
  
  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522

  Serial.begin(9600);
  Serial.println("START");
   finger.begin(57600);
  //rtc.setDOW(TUESDAY);     // Set Day-of-Week to SUNDAY
  //rtc.setTime(21, 03, 0);     // Set the time to 12:00:00 (24hr format)
  //rtc.setDate(9, 10, 2019);   // Set the date to January 1st, 2014
}

void loop() {
 //------------- MAIN ----------------
 main:
  fdetect=0;
  if(  rfid.PICC_IsNewCardPresent())
  {
      totalcode=0;
      goto rfidread;
  }
  lcd.setCursor(1,0);
  lcd.print("RFID FP SYSTEM");
  
  lcd.setCursor(4,1);
  lcd.print(rtc.getTimeStr());
  
  lcd.setCursor(1,8);
  lcd.print("  ");

  lcd.setCursor(3,2);
  lcd.print(rtc.getDateStr());
  
  lcd.setCursor(3,3);
  lcd.print(rtc.getDOWStr());



  //READ BUTTONS

  state_sel= digitalRead(sel);
  state_down=digitalRead(down);
  state_up=digitalRead(up);


  if(state_sel==0){
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("SELECT!");
    delay(3000);
    
    state_sel=digitalRead(sel);
    state_down=digitalRead(down);
    state_up=digitalRead(up);
    
    if(state_sel==0&&state_down==1&&state_up==0){
      lcd.clear();
      goto  settime;
    }

    if(state_sel==0&&state_down==1&&state_up==1){
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("ENROLL FINGER");
      delay(1000);
      while(state_sel==0){
        state_sel=digitalRead(sel);
      }
      
      while(state_up==0){
        state_up=digitalRead(up);
      }

      goto enrollfinger;
      
    }


    
    lcd.clear();
  }

  
  if(state_down==0){
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("DOWN!");
    delay(1000);
    lcd.clear();
  }

  
  if(state_up==0){
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("UP!");
    delay(1000);
    lcd.clear();
  }

  goto  main;
//------------------------------------




//---------------------------------- FINGERPRINT ENROLMENT  --------------------------
enrollfinger:
        lcd.clear();
        fingerid=1;
        lcd.setCursor(0,0);
        lcd.print("ENROLL FINGER");
        lcd.setCursor(0,1);
        lcd.print("Enter Finger ID:");
enrollfinger0:    
    state_sel=digitalRead(sel);
    state_down=digitalRead(down);
    state_up=digitalRead(up);

    if(state_down==0){
        fingerid--;
    }

    if(state_up==0){
        fingerid++;
    }

    if(fingerid<1){
      fingerid=127;
    }

    if(fingerid>127){
      fingerid=1;
    }
    if(fingerid<10){
        lcd.setCursor(7,3);
        lcd.print("  ");
    }
    if(fingerid>10&&fingerid<100){
        lcd.setCursor(8,3);
        lcd.print(" ");
    }

    lcd.setCursor(6,3);
    lcd.print(fingerid);
    delay(10);
    while(state_down==0){
        state_down=digitalRead(down);
    }
    while(state_up==0){
        state_up=digitalRead(up);
    }

    if(state_sel==0){
        lcd.clear();
       while(state_sel==0){
          state_sel=digitalRead(sel);
        }
        lcd.setCursor(6,3);
        lcd.print("   ");

        Serial.println("Ready to enroll a fingerprint!");
        Serial.println("Please type in the ID # (from 1 to 127) you want to save this finger as...");
        id = fingerid;

        Serial.print("Enrolling ID #");
        Serial.println(id);
  
        getFingerprintEnroll();
        lcd.clear();
        goto main;
    }
goto  enrollfinger0;



//------------------------------------------------------------------------------------








//----------------------------------  SET DATE/TIME  --------------------------
settime:
    lcd.setCursor(0,0);
    lcd.print("SET TIME:");
    
    sethour=0;
    setmin=0;setdate=1;setmonth=1;setday=1;
    setyear=2000;

    
    while(state_sel==0){
      state_sel=digitalRead(sel);
    }
    lcd.setCursor(8,1);
    lcd.print(":");
    datetimeset=0;
    lcd.setCursor(6,1);
    lcd.print(sethour);
    lcd.setCursor(9,1);
    lcd.print(setmin);
    
        lcd.setCursor(10,1);
        lcd.print("0");
  
 settime0:
 
    lcd.setCursor(0,3);
    lcd.print("VAR=");lcd.print(datetimeset);
    delay(300);

    state_sel= digitalRead(sel);
    state_down=digitalRead(down);
    state_up=digitalRead(up);

    if(state_up==0){
      if(datetimeset==0){
        sethour++;
      }
      if(datetimeset==1){
        setmin++;
      }
      if(datetimeset==3){
        setdate++;
      }
      
      if(datetimeset==4){
        setmonth++;
      }

      if(datetimeset==5){
        setyear++;
      }

      if(datetimeset==7){
        setday++;
      }
      
    }
    

    if(state_down==0){
      
      if(datetimeset==0){
        sethour--;
      }
      if(datetimeset==1){
        setmin--;
      }
      if(datetimeset==3){
        setdate--;
      }
      if(datetimeset==4){
        setmonth--;
      }

      if(datetimeset==5){
         setyear--;
      }

      if(datetimeset==7){
        setday--;
      }
    }

    if(state_sel==0){
      
      datetimeset++;
      while(state_sel==0){
        state_sel=digitalRead(sel);
      }
      
    }


//------------  DISPLAY TIME ----------
    if(datetimeset==0){
      
        lcd.setCursor(6,1);
        lcd.print("  ");
        delay(50);
        
      if(sethour>23){
        sethour=0;
      }

      if(sethour<0){
        sethour=23;
      }

      if(sethour<10){
        lcd.setCursor(6,1);
        lcd.print("0");
        lcd.print(sethour);
      }
      if(sethour>=10){
        lcd.setCursor(6,1);
        lcd.print(sethour);
      }
        

        
      /*while(state_up==0){
        state_up=digitalRead(up);
      }  

      
      while(state_down==0){
        state_down=digitalRead(down);
      }*/

      delay(100);
    }



    if(datetimeset==1){
        lcd.setCursor(9,1);
        lcd.print("  ");
        delay(50);
        
      if(setmin>59){
        setmin=0;
      }

      if(setmin<0){
        setmin=59;
      }

      if(setmin<10){
        lcd.setCursor(9,1);
        lcd.print("0");
        lcd.print(setmin);
      }
      if(setmin>=10){
        lcd.setCursor(9,1);
        lcd.print(setmin);
      }


        

        
      /*while(state_up==0){
        state_up=digitalRead(up);
      }  

      
      while(state_down==0){
        state_down=digitalRead(down);
      }*/

      delay(100);
    }


    
      if(datetimeset==2){
            lcd.clear();
            lcd.setCursor(0,0);
            lcd.print("SET DATE:");
            setdate=1;
            setmonth=1;
            
            lcd.setCursor(0,1);
            lcd.print("0");
            lcd.print(setdate);

            lcd.setCursor(2,1);
            lcd.print(".");

            lcd.setCursor(5,1);
            lcd.print(".");
            
            lcd.setCursor(3,1);
            lcd.print("0");
            lcd.print(setmonth);
            lcd.setCursor(6,1);
            lcd.print(setyear);
            datetimeset++;
      }




      if(datetimeset==3){
            
            lcd.setCursor(0,1);
            lcd.print("  ");
            delay(50);
            if(setdate<10){
                   lcd.setCursor(0,1);
                   lcd.print("0");
                   lcd.setCursor(1,1);
                   lcd.print(setdate);
            }
            if(setdate<1){
                setdate=31;
            }
            if(setdate>31){
                setdate=1;
            }
            if(setdate>=10){
                  lcd.setCursor(0,1);
                  lcd.print(setdate);
            }
            delay(100);
      }


      if(datetimeset==4){
            lcd.setCursor(3,1);
            lcd.print("  ");
            delay(50);
            if(setmonth<10){
                  lcd.setCursor(3,1);
                  lcd.print("0");
                  lcd.setCursor(4,1);
                  lcd.print(setmonth);
            }
            if(setmonth<1){
                 setmonth=12;
            }
            if(setmonth>12){
                setmonth=1;
            }
            if(setmonth>=10){
                  lcd.setCursor(3,1);
                  lcd.print(setmonth);
            }
            delay(100);
      }


      if(datetimeset==5){
            lcd.setCursor(6,1);
            lcd.print("    ");
            delay(50);
            if(setyear<2000){
                setyear=2100;
            }
            if(setyear>2100){
                setyear=2000;
            }
            lcd.setCursor(6,1);
            lcd.print(setyear);
      }


      if(datetimeset==6){
             lcd.clear();
             lcd.setCursor(0,0);
             lcd.print("DAY OF THE WEEK:");
             datetimeset++;
      }

      if(datetimeset==7){
              lcd.setCursor(0,2);
              
              if(setday==1){
                  lcd.print("     MONDAY     ");
              }

              if(setday==2){
                  lcd.print("     TUESDAY    ");
              }

              if(setday==3){
                  lcd.print("   WEDNESDAY   ");
              }

              if(setday==4){
                  lcd.print("    THURSDAY    ");
              }

              if(setday==5){
                  lcd.print("     FRIDAY     ");
              }

              if(setday==6){
                  lcd.print("    SATURDAY    ");
              }

              if(setday==7){
                  lcd.print("     SUNDAY     ");
              }
              if(setday>7){
                setday=1;
              }
              if(setday<1){
                setday=7;
              }
      }

      if(datetimeset==8){
          lcd.clear();
          lcd.setCursor(0,0);
          lcd.print("DATE AND TIME");
          lcd.setCursor(0,1);
          lcd.print("UPDATED!");
          rtc.setTime(sethour, setmin, 0);
          rtc.setDate(setdate, setmonth, setyear);
          if(setday==1){
                  rtc.setDOW(MONDAY); 
              }

              if(setday==2){
                  rtc.setDOW(TUESDAY); 
              }

              if(setday==3){
                  rtc.setDOW(WEDNESDAY); 
              }

              if(setday==4){
                  rtc.setDOW(THURSDAY); 
              }

              if(setday==5){
                  rtc.setDOW(FRIDAY); 
              }

              if(setday==6){
                  rtc.setDOW(SATURDAY); 
              }

              if(setday==7){
                  rtc.setDOW(SUNDAY);
              }

              delay(1000);
              lcd.clear();
              goto main;
      }


      
    
 goto settime0;
 //------------------------------------

  goto  settime;

//----------------------------------  RFID READING  --------------------------
  rfidread:

   lcd.clear();

  
  rfid.PICC_ReadCardSerial();
  MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
  if (piccType != MFRC522::PICC_TYPE_MIFARE_MINI &&
    piccType != MFRC522::PICC_TYPE_MIFARE_1K &&
    piccType != MFRC522::PICC_TYPE_MIFARE_4K) {
    return;
  }

   uidString = String(rfid.uid.uidByte[0])+" "+String(rfid.uid.uidByte[1])+" "+String(rfid.uid.uidByte[2])+ " "+String(rfid.uid.uidByte[3]);
   totalcode=5000+rfid.uid.uidByte[0]+rfid.uid.uidByte[1]+rfid.uid.uidByte[2]+rfid.uid.uidByte[3];

  rfid.PICC_HaltA();


  rfid.PCD_StopCrypto1();

  lcd.setCursor(0,0);
  lcd.print("CARD DETECTED!  ");

  lcd.setCursor(0,1);
  lcd.print("CARD CODE:      ");

  lcd.setCursor(0,2);
  lcd.print(uidString);
  lcd.setCursor(0,3);
  lcd.print("                ");
  //Serial.print("rfidcode:");
  //Serial.println(uidString);

  delay(3000);

  lcd.clear();
  goto fingerprint;


  
  goto  main;
//------------------------------------------------------------------------------

//---------------------------------- FINGERPRINT READING  --------------------------
fingerprint:
  lcd.clear();
  delay(10);
  lcd.setCursor(0,0);
 
  //Serial.begin(9600);
  while (!Serial);  // For Yun/Leo/Micro/Zero/...
  delay(100);
  //Serial.println("\n\nAdafruit finger detect test");

  // set the data rate for the sensor serial port
  finger.begin(57600);
  
  if (finger.verifyPassword()) {
    //Serial.println("Found fingerprint sensor!");
  } else {
    //Serial.println("Did not find fingerprint sensor :(");
    while (1) { delay(1); }
  }

  finger.getTemplateCount();
  //Serial.print("Sensor contains "); Serial.print(finger.templateCount); Serial.println(" templates");
  //Serial.println("Waiting for valid finger...");
finger0:
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("PUT YOUR FINGER");
  fingercount=0;
finger1:
  finger.getTemplateCount();
  getFingerprintIDez();
  if(fdetect>0){
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("ATTENDANCE");
    lcd.setCursor(0,1);
    lcd.print("COMPLETED!");
    lcd.setCursor(4,2);
    lcd.print(rtc.getTimeStr());
    lcd.setCursor(3,3);
    lcd.print(rtc.getDateStr());
    
    //Serial.print("Fingerprint ID#:");
    //Serial.println(finger.fingerID);
    studentid="";
    studentfp="";
    int x=finger.fingerID;
    String y="";
    y=String(x);
    studentid="AA"+uidString;
    studentfp="BB"+y;


    Serial.println(studentid);
    delay(2000);
    Serial.println(studentfp);
    
    delay(1000);
    lcd.clear();
    fdetect=0;
    goto  main;
  }
  delay(1);
  fingercount++;
  lcd.setCursor(0,3);
  lcd.print(fingercount);
  if(fingercount==100){
    
    lcd.clear();
    
    lcd.setCursor(0,0);
    lcd.print("NO FINGER FOUND!");
    lcd.setCursor(0,1);
    lcd.print("TRY AGAIN!");
    delay(1500);
    lcd.clear();
    goto main;
  }
  goto  finger1;
//------------------------------------------------------------------------------
  
} 






//---------------------------------- FINGERPRINT READING  --------------------------
uint8_t getFingerprintID() {
  uint8_t p = finger.getImage();
  switch (p) {
    case FINGERPRINT_OK:
      //Serial.println("Image taken");
      break;
    case FINGERPRINT_NOFINGER:
      //Serial.println("No finger detected");
      return p;
    case FINGERPRINT_PACKETRECIEVEERR:
      //Serial.println("Communication error");
      return p;
    case FINGERPRINT_IMAGEFAIL:
      //Serial.println("Imaging error");
      return p;
    default:
      //Serial.println("Unknown error");
      return p;
  }

  // OK success!

  p = finger.image2Tz();
  switch (p) {
    case FINGERPRINT_OK:
      //Serial.println("Image converted");
      break;
    case FINGERPRINT_IMAGEMESS:
      //Serial.println("Image too messy");
      return p;
    case FINGERPRINT_PACKETRECIEVEERR:
      //Serial.println("Communication error");
      return p;
    case FINGERPRINT_FEATUREFAIL:
      //Serial.println("Could not find fingerprint features");
      return p;
    case FINGERPRINT_INVALIDIMAGE:
      //Serial.println("Could not find fingerprint features");
      return p;
    default:
      //Serial.println("Unknown error");
      return p;
  }
  
  // OK converted!
  p = finger.fingerFastSearch();
  if (p == FINGERPRINT_OK) {
    //Serial.println("Found a print match!");
  } else if (p == FINGERPRINT_PACKETRECIEVEERR) {
    //Serial.println("Communication error");
    return p;
  } else if (p == FINGERPRINT_NOTFOUND) {
    //Serial.println("Did not find a match");
    return p;
  } else {
    //Serial.println("Unknown error");
    return p;
  }   
  
  // found a match!
  
  //Serial.print("Found ID #"); Serial.print(finger.fingerID); 
  //Serial.print(" with confidence of "); Serial.println(finger.confidence); 
  fdetect=1;

  return finger.fingerID;
}

// returns -1 if failed, otherwise returns ID #
int getFingerprintIDez() {
  uint8_t p = finger.getImage();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.image2Tz();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.fingerFastSearch();
  if (p != FINGERPRINT_OK)  return -1;
  
  // found a match!
  //Serial.print("Found ID #"); Serial.print(finger.fingerID); 
  //Serial.print(" with confidence of "); Serial.println(finger.confidence);
  fdetect=1;
  return finger.fingerID; 
}




uint8_t getFingerprintEnroll() {

  int p = -1;
  Serial.print("Waiting for valid finger to enroll as #"); Serial.println(id);
        lcd.setCursor(0,0);
        lcd.print("PUT YOUR FINGER");
  while (p != FINGERPRINT_OK) {
    p = finger.getImage();
    switch (p) {
    case FINGERPRINT_OK:
      Serial.println("Image taken");
          lcd.setCursor(0,0);
          lcd.print("IMAGE TAKEN!   ");
      
      break;
    case FINGERPRINT_NOFINGER:
      Serial.println(".");
      break;
    case FINGERPRINT_PACKETRECIEVEERR:
      Serial.println("Communication error");
      break;
    case FINGERPRINT_IMAGEFAIL:
      Serial.println("Imaging error");
      break;
    default:
      Serial.println("Unknown error");
      break;
    }
  }

  // OK success!

  p = finger.image2Tz(1);
  switch (p) {
    case FINGERPRINT_OK:
      Serial.println("Image converted");
      break;
    case FINGERPRINT_IMAGEMESS:
      Serial.println("Image too messy");
      return p;
    case FINGERPRINT_PACKETRECIEVEERR:
      Serial.println("Communication error");
      return p;
    case FINGERPRINT_FEATUREFAIL:
      Serial.println("Could not find fingerprint features");
      return p;
    case FINGERPRINT_INVALIDIMAGE:
      Serial.println("Could not find fingerprint features");
      return p;
    default:
      Serial.println("Unknown error");
      return p;
  }
  lcd.setCursor(0,2);
  lcd.print("Remove Finger");
  Serial.println("Remove finger");
  delay(3000);
  p = 0;
  while (p != FINGERPRINT_NOFINGER) {
    p = finger.getImage();
  }
  Serial.print("ID "); Serial.println(id);
  p = -1;
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Place the same");
  lcd.setCursor(0,1);
  lcd.print("finger again..");
  Serial.println("Place same finger again");
  while (p != FINGERPRINT_OK) {
    p = finger.getImage();
    switch (p) {
    case FINGERPRINT_OK:
      lcd.clear();
      
      lcd.setCursor(0,0);
      lcd.print("IMAGE TAKEN!   ");
      Serial.println("Image taken");
      break;
    case FINGERPRINT_NOFINGER:
      Serial.print(".");
      break;
    case FINGERPRINT_PACKETRECIEVEERR:
      Serial.println("Communication error");
      break;
    case FINGERPRINT_IMAGEFAIL:
      Serial.println("Imaging error");
      break;
    default:
      Serial.println("Unknown error");
      break;
    }
  }

  // OK success!

  p = finger.image2Tz(2);
  switch (p) {
    case FINGERPRINT_OK:
      Serial.println("Image converted");
      break;
    case FINGERPRINT_IMAGEMESS:
      Serial.println("Image too messy");
      return p;
    case FINGERPRINT_PACKETRECIEVEERR:
      Serial.println("Communication error");
      return p;
    case FINGERPRINT_FEATUREFAIL:
      Serial.println("Could not find fingerprint features");
      return p;
    case FINGERPRINT_INVALIDIMAGE:
      Serial.println("Could not find fingerprint features");
      return p;
    default:
      Serial.println("Unknown error");
      return p;
  }
  
  // OK converted!
  Serial.print("Creating model for #");  Serial.println(id);
  
  p = finger.createModel();
  if (p == FINGERPRINT_OK) {
    lcd.setCursor(0,1);
    lcd.print("Matched!");
    Serial.println("Prints matched!");
  } else if (p == FINGERPRINT_PACKETRECIEVEERR) {
    Serial.println("Communication error");
    return p;
  } else if (p == FINGERPRINT_ENROLLMISMATCH) {
    
    lcd.setCursor(0,1);
    lcd.print("Did not match!");
    delay(3000);
    Serial.println("Fingerprints did not match");
    return p;
  } else {
    Serial.println("Unknown error");
    return p;
  }   
  
  Serial.print("ID "); Serial.println(id);
  p = finger.storeModel(id);
  if (p == FINGERPRINT_OK) {
    Serial.println("Stored!");
    
    lcd.setCursor(0,2);
    lcd.print("Stored on id#");lcd.print(id);
    delay(4000);
  } else if (p == FINGERPRINT_PACKETRECIEVEERR) {
    Serial.println("Communication error");
    return p;
  } else if (p == FINGERPRINT_BADLOCATION) {
    Serial.println("Could not store in that location");
    return p;
  } else if (p == FINGERPRINT_FLASHERR) {
    Serial.println("Error writing to flash");
    return p;
  } else {
    Serial.println("Unknown error");
    return p;
  }   
}
