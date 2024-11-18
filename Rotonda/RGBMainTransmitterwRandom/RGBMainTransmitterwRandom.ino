#include <SoftwareSerial.h>
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7, 8);

const byte address[6] = "00001";
SoftwareSerial BLU(9, 10);

#define redPin 3
#define greenPin 5
#define bluePin 6

bool fb=0;
int redInt, greenInt, blueInt, r, g, b, hd, lampInt,flag=0,lmp=0,col=0;
char ar_red[3], ar_green[3], ar_blue[3], mssg[13];
String s_red, s_green, s_blue;

void setup() {
  Serial.begin(9600);
  radio.begin();
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.stopListening();
  Serial.println("-= HC-05 Bluetooth RGB LED =-");


  BLU.begin(9600);
  BLU.println("-= HC-05 Bluetooth RGB LED =-");


  pinMode(4, OUTPUT);

  digitalWrite(4, HIGH);


  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
}

void loop() {
  String head = "";
  String foot = "";

  while (BLU.available() > 0)
  {
    Serial.println("BT");
    redInt = BLU.parseInt();
    greenInt = BLU.parseInt();
    blueInt = BLU.parseInt();
    lampInt = BLU.parseInt();

    redInt = constrain(redInt, 0, 255);
    greenInt = constrain(greenInt, 0, 255);
    blueInt = constrain(blueInt, 0, 255);
    lampInt = constrain(lampInt, 256, 270);


    if (BLU.available() > 0)
    {
      //Serial.print("Red: "); Serial.print(redInt); Serial.print(" GREEN: "); Serial.print(greenInt); Serial.print(" BLUE: "); Serial.print(blueInt); Serial.println();
      //Serial.print("LAMP:"); Serial.println(lampInt);
      if (lampInt == 256) {
        head = "XX";
        foot = "XX";flag=0;
        setColor(redInt, greenInt, blueInt);
      }
      if (lampInt == 257) {
        head = "KE";
        foot = "NY";flag=0;
      }
      if (lampInt == 258) {
        head = "WA";
        foot = "ER";flag=0;
      }
      if (lampInt == 259) {
        head = "DI";
        foot = "LA";flag=0;
      }
      
      if (lampInt == 260) {
        head = "PO";
        foot = "NG";flag=0;
      }
      if(lampInt==261){
        if(fb==1){
        col=0;lmp=0;fb=0;
      }
        flag=1;col++;
        if(col==1){
        redInt=255;
        greenInt=0;
        blueInt=0;
        }
        if(col==2){
        redInt=0;
        greenInt=255;
        blueInt=0;
       }
        if(col==3){
        redInt=0;
        greenInt=0;
        blueInt=255;col=0;
        }lmp++;
        if(lmp==1){
          setColor(redInt, greenInt, blueInt);
        }
        
        if(lmp==2){
          head = "KE";
          foot = "NY";
        }
        
        if(lmp==3){
          head = "WA";
          foot = "ER";
        }
        
        if(lmp==4){
          head = "DI";
          foot = "LA";
        }
        if(lmp==5){
          head = "PO";
          foot = "NG";
          lmp=0;
        }
      }
       if(lampInt==262){
        if(fb==1){
        col=0;lmp=0;fb=0;
      }
        flag=2;col++;
        if(col==1){
        redInt=255;
        greenInt=150;
        blueInt=0;
        }
        if(col==2){
        redInt=0;
        greenInt=150;
        blueInt=255;
       }
        if(col==3){
        redInt=255;
        greenInt=0;
        blueInt=255;col=0;
        }lmp++;
        if(lmp==1){
          setColor(redInt, greenInt, blueInt);
        }
        
        if(lmp==2){
          head = "KE";
          foot = "NY";
        }
        
        if(lmp==3){
          head = "WA";
          foot = "ER";
        }
        
        if(lmp==4){
          head = "DI";
          foot = "LA";
        }
        if(lmp==5){
          head = "PO";
          foot = "NG";
          lmp=0;
        }
      }
      if(lampInt==263){
        fb=1;
        flag=3;col++;
        if(col==1){
        redInt=255;
        greenInt=0;
        blueInt=0;
        }
        if(col==2){
        redInt=255;
        greenInt=45;
        blueInt=0;
       }
        if(col==3){
        redInt=255;
        greenInt=150;
        blueInt=0;
        }
        if(col==4){
        redInt=0;
        greenInt=255;
        blueInt=0;
        }
        if(col==5){
        redInt=0;
        greenInt=255;
        blueInt=100;
       }
        if(col==6){
        redInt=0;
        greenInt=255;
        blueInt=255;
        }
        if(col==7){
        redInt=0;
        greenInt=0;
        blueInt=255;
        }
        
        if(col==8){
        redInt=150;
        greenInt=0;
        blueInt=255;
        }
        
        if(col==9){
        redInt=255;
        greenInt=0;
        blueInt=255;
        }
        if(col==10){
        redInt=150;
        greenInt=0;
        blueInt=255;
        }
        if(col==11){
        redInt=255;
        greenInt=0;
        blueInt=150;
        }
        if(col==12){
        redInt=255;
        greenInt=0;
        blueInt=100;
        }
        if(col==13){
        redInt=255;
        greenInt=0;
        blueInt=50;col=0;
        }
        lmp++;
        if(lmp==1){
          setColor(redInt, greenInt, blueInt);
        }
        
        if(lmp==2){
          head = "KE";
          foot = "NY";
        }
        
        if(lmp==3){
          head = "WA";
          foot = "ER";
        }
        
        if(lmp==4){
          head = "DI";
          foot = "LA";
        }
        if(lmp==5){
          head = "PO";
          foot = "NG";
          lmp=0;
        }
      }
      //Serial.println(mssg);
      BLU.flush();
      senddat:
      r = redInt; g = greenInt; b = blueInt;
      s_red = r; s_green = g; s_blue = b;
      s_red.toCharArray(ar_red, 3);
      s_green.toCharArray(ar_green, 3);
      s_blue.toCharArray(ar_blue, 3);
      if (redInt < 100 && redInt > 9) {
        s_red = "0" + s_red;
      } if (redInt < 10) {
        s_red = "00" + s_red;
      }
      if (greenInt < 100 && greenInt > 9) {
        s_green = "0" + s_green;
      } if (greenInt < 10) {
        s_green = "00" + s_green;
      }
      if (blueInt < 100 && blueInt > 10) {
        s_blue = "0" + s_blue;
      } if (blueInt < 10) {
        s_blue = "00" + s_blue;
      }
      String combined = head + s_red + s_blue + s_green + foot;
      combined.toCharArray(mssg, 17);
      radio.write(&mssg, sizeof(mssg));
    }
  }

Serial.println("NO-BT");
if(flag==1){
  if(fb==1){
        col=0;lmp=0;fb=0;
      }
  Serial.println(flag);
  col++;
    if(col==1){
        redInt=255;
        greenInt=0;
        blueInt=0;
    }
    if(col==2){
        redInt=0;
        greenInt=255;
        blueInt=0;
    }
    if(col==3){
        redInt=0;
        greenInt=0;
        blueInt=255;col=0;
    }
  lmp++;
  if(lmp==1){
          setColor(redInt, greenInt, blueInt);
        }
        
        if(lmp==2){
          head = "KE";
          foot = "NY";
        }
        
        if(lmp==3){
          head = "WA";
          foot = "ER";
        }
        
        if(lmp==4){
          head = "DI";
          foot = "LA";
        }
        if(lmp==5){
          head = "PO";
          foot = "NG";lmp=0;
        }
  delay(1500);
  goto senddat;
}
if(flag==2){
  if(fb==1){
        col=0;lmp=0;fb=0;
      }
  Serial.println(flag);
  col++;
    if(col==1){
        redInt=255;
        greenInt=150;
        blueInt=0;
    }
    if(col==2){
        redInt=0;
        greenInt=150;
        blueInt=255;
    }
    if(col==3){
        redInt=255;
        greenInt=0;
        blueInt=255;col=0;
    }
  lmp++;
  if(lmp==1){
          setColor(redInt, greenInt, blueInt);
        }
        
        if(lmp==2){
          head = "KE";
          foot = "NY";
        }
        
        if(lmp==3){
          head = "WA";
          foot = "ER";
        }
        
        if(lmp==4){
          head = "DI";
          foot = "LA";
        }
        if(lmp==5){
          head = "PO";
          foot = "NG";lmp=0;
        }
  delay(1500);
  goto senddat;
}

if(flag==3){
  fb=1;
  Serial.println(flag);
  col++;
   if(col==1){
        redInt=255;
        greenInt=0;
        blueInt=0;
        }
        if(col==2){
        redInt=255;
        greenInt=45;
        blueInt=0;
       }
        if(col==3){
        redInt=255;
        greenInt=150;
        blueInt=0;
        }
        if(col==4){
        redInt=0;
        greenInt=255;
        blueInt=0;
        }
        if(col==5){
        redInt=0;
        greenInt=255;
        blueInt=100;
       }
        if(col==6){
        redInt=0;
        greenInt=255;
        blueInt=255;
        }
        if(col==7){
        redInt=0;
        greenInt=0;
        blueInt=255;
        }
        
        if(col==8){
        redInt=150;
        greenInt=0;
        blueInt=255;
        }
        
        if(col==9){
        redInt=255;
        greenInt=0;
        blueInt=255;
        }
        if(col==10){
        redInt=150;
        greenInt=0;
        blueInt=255;
        }
        if(col==11){
        redInt=255;
        greenInt=0;
        blueInt=150;
        }
        if(col==12){
        redInt=255;
        greenInt=0;
        blueInt=100;
        }
        if(col==13){
        redInt=255;
        greenInt=0;
        blueInt=50;col=0;
        }
  lmp++;
  if(lmp==1){
          setColor(redInt, greenInt, blueInt);
        }
        
        if(lmp==2){
          head = "KE";
          foot = "NY";
        }
        
        if(lmp==3){
          head = "WA";
          foot = "ER";
        }
        
        if(lmp==4){
          head = "DI";
          foot = "LA";
        }
        if(lmp==5){
          head = "PO";
          foot = "NG";lmp=0;
        }
  delay(300);
  goto senddat;
}

}

void setColor(int red, int green, int blue)
{
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);
}
