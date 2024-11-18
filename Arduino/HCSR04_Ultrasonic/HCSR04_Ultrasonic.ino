const int trigpin=8,echopin=10;
long duration;
int distance;

void setup(){
  Serial.begin(9600);
  pinMode(trigpin,OUTPUT);
  pinMode(echopin,INPUT);
}

void loop(){
    digitalWrite(trigpin,LOW);
    delayMicroseconds(2);
    digitalWrite(trigpin,HIGH);
    delayMicroseconds(10);
    digitalWrite(trigpin,LOW);
    duration=pulseIn(echopin,HIGH);
    distance=(duration/58);
    if(distance<100&&distance>0){
      Serial.print("distance:");
      Serial.print(distance);
      Serial.println("cm");
      delay(500);
    }
    
}
