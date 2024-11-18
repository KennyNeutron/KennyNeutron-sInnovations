
const int red=3,green=5,blue=6;
int rred=0,rblue=0,rgreen=0,i=10;
void setup() {
  // put your setup code here, to run once:
  pinMode(red,OUTPUT);
  pinMode(green,OUTPUT);
  pinMode(blue,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  rred=random(0,255);
  rblue=random(0,255);
  rgreen=random(0,255);
  analogWrite(red,rred);
  analogWrite(green,rgreen);
  analogWrite(blue,rblue);
  delay(500);
  //Serial.print("R:");Serial.print(rred);Serial.print("\t G:");Serial.print(rgreen);Serial.print("\t B:");Serial.println(rblue);
}
