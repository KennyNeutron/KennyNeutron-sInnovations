int tear=7, fan=8,led=13;

void setup() {
  pinMode(tear,OUTPUT);
  pinMode(fan,OUTPUT);
  pinMode(led,OUTPUT);
  digitalWrite(fan,0);
  delay(1000);
}

void loop() {
  digitalWrite(tear,0);
  digitalWrite(fan,0);
 for(int i=0;i<=5;i++){
    digitalWrite(tear,1);
    delay(500);
    digitalWrite(tear,0);
    delay(1000);
  }
  digitalWrite(tear,0);
  digitalWrite(fan,1);
  digitalWrite(led,1);
  for(int i=0;i<=5;i++){
    digitalWrite(tear,1);
    delay(500);
    digitalWrite(tear,0);
    delay(1000);
  }
  digitalWrite(tear,0);
  delay(3000);
  digitalWrite(fan,0);
  digitalWrite(led,0);
  delay(000);
}
