const int led=10,PIRin=6;
int PIRstate=0;

void setup() {
  pinMode(PIRin,INPUT);
  pinMode(led,OUTPUT);
}

void loop() {
  PIRstate=digitalRead(PIRin);
  delay(10);
  if(PIRstate==HIGH){
    digitalWrite(led,HIGH);
  }
  if(PIRstate==LOW){
    digitalWrite(led,LOW);
  }
} 
