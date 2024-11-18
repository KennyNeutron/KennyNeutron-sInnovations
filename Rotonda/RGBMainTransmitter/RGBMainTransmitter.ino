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


int redInt, greenInt, blueInt, r, g, b, hd, lampInt;
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
      Serial.print("Red: "); Serial.print(redInt); Serial.print(" GREEN: "); Serial.print(greenInt); Serial.print(" BLUE: "); Serial.print(blueInt); Serial.println();
      Serial.print("LAMP:"); Serial.println(lampInt);
      if (lampInt == 256) {
        head = "XX";
        foot = "XX";
        setColor(redInt, greenInt, blueInt);
      }
      if (lampInt == 257) {
        head = "KE";
        foot = "NY";
      }
      if (lampInt == 258) {
        head = "WA";
        foot = "ER";
      }
      if (lampInt == 259) {
        head = "DI";
        foot = "LA";
      }
      
      if (lampInt == 260) {
        head = "PO";
        foot = "NG";
      }
      
      //Serial.println(mssg);
      BLU.flush();
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


}

void setColor(int red, int green, int blue)
{
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);
}
