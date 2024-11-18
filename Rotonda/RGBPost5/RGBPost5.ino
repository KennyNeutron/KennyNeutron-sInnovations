#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7,8);

const byte address[6] = "00001";


#define redPin 3
#define greenPin 5
#define bluePin 6
int ov1,ov2,ov3;
void setup()
{
  radio.begin();
  radio.openReadingPipe(0,address);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.startListening();
  Serial.begin(38400);

  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
}

void loop()
{

  char text[21] = "";
  if (radio.available()) {
    radio.read(&text, sizeof(text));
      String transData = String(text);
    if(text[0]=='P'&&text[1]=='O'&&text[11]=='N'&&text[12]=='G'){
      ov1=((text[2]-48)*100)+((text[3]-48)*10)+(text[4]-48);
      ov2=((text[5]-48)*100)+((text[6]-48)*10)+(text[7]-48);
      ov3=((text[8]-48)*100)+((text[9]-48)*10)+(text[10]-48);
      Serial.print("ov1:");Serial.print(ov1);
      Serial.print("\t ov2:");Serial.print(ov2);
      Serial.print("\t ov3:");Serial.print(ov3);
    }
  }
  analogWrite(redPin,ov1);
  analogWrite(bluePin,ov2);
  analogWrite(greenPin,ov3);

  
}
