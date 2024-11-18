//line follower

const int in1=2,in2=3,in3=4,in4=5,ena=9,enb=10,sens=11,rs=6,mid=7,ls=8;
bool rig=0,lef=0,mi=0;

void setup() {
  Serial.begin(9600);
  pinMode(in1,OUTPUT);
  pinMode(in2,OUTPUT);
  pinMode(in3,OUTPUT);
  pinMode(in4,OUTPUT);
  pinMode(ena,OUTPUT);
  pinMode(enb,OUTPUT);
  pinMode(sens,OUTPUT);
  pinMode(rs,INPUT);
  pinMode(mid,INPUT);
  pinMode(lef,INPUT);
}

void loop() {
     digitalWrite(ena,1);
     digitalWrite(enb,1);
     digitalWrite(sens,1);
     rig=digitalRead(rs);
     lef=digitalRead(ls);
     mi=digitalRead(mid);
     if(rig==0 && mi==1 && lef==0){
      digitalWrite(in1,1);
      digitalWrite(in2,0);
      digitalWrite(in3,1);
      digitalWrite(in4,0);
     }
     if(rig==0 && mi==0 && lef==0){
      digitalWrite(in1,1);
      digitalWrite(in2,0);
      digitalWrite(in3,1);
      digitalWrite(in4,0);
     }
     if(rig==0 && mi==0 && lef==1){
        digitalWrite(in1,1);
        digitalWrite(in2,0);
        digitalWrite(in3,0);
        digitalWrite(in4,0);
        while(mi==0){
          mi=digitalRead(mid);
        }
     }
     if(rig==1 && mi==0 && lef==0){
        digitalWrite(in1,0);
        digitalWrite(in2,0);
        digitalWrite(in3,1);
        digitalWrite(in4,0);
        while(mi==0){
          mi=digitalRead(mid);
        }
     }
     if(rig=1 && mi==1 && lef==1){
        digitalWrite(in1,0);
        digitalWrite(in2,0);
        digitalWrite(in3,0);
        digitalWrite(in4,0);
     }
     
     Serial.print("Right:");Serial.println(rig);
     Serial.print("Mid:");Serial.println(mi);
     Serial.print("Left:");Serial.println(lef);
}
