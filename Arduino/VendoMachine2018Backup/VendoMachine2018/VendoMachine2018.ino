#include <Keypad.h>
#include <LiquidCrystal.h>
const int rs = 12, en = 13, d4 = 8, d5 = 9, d6 = 10, d7 = 11, counterpin=A1;
int pr[4],password=1234,convert,x=10,y=0,enterpw,digit[4],a=0,b=0,chprice=0,fbit1=0,fbit2=0,l=0,m=0,n=0,w=0,count,coin,ihap,rowbuy,quant,total,t=0,z=0;
bool flag1=0,coinflag=0;
char customKey;
const byte ROWS = 4;
const byte COLS = 4;
char hexaKeys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'E','0','F','D'}
};
byte rowPins[ROWS] = {0, A0, 2, 3}; 
byte colPins[COLS] = {4, 5, 6, 7};
Keypad customKeypad = Keypad( makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS); 
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);
void setup(){
  pinMode(counterpin,INPUT);
  Serial.begin(9600);
  lcd.begin(20, 4);
  pr[0]=5;
  pr[1]=10;
  pr[2]=15;
  pr[3]=20;
  Serial.print("COIN:");
  Serial.println(coin);
}
  
void loop(){ 
  start:
  fbit1=0,fbit2=0;
  x=10,a=0;ihap=0;z=0;t=0;
  lcd.setCursor(0,0);lcd.print("R1: P");lcd.print(pr[0]);lcd.print(".00");
  lcd.setCursor(0,1);lcd.print("R2: P");lcd.print(pr[1]);lcd.print(".00");
  lcd.setCursor(0,2);lcd.print("R3: P");lcd.print(pr[2]);lcd.print(".00");
  lcd.setCursor(0,3);lcd.print("R4: P");lcd.print(pr[3]);lcd.print(".00");
  lcd.setCursor(11,3);lcd.print("COIN:P");lcd.print(coin);
  customKey = customKeypad.getKey();
  count=digitalRead(counterpin);
  if(count==HIGH){//################################################### COIN ANALYSIS ####################################
    lcd.clear();
    lcd.setCursor(0,0);lcd.print("ANALYZING COIN...");
    ihap=0;z=0;
    delay(100);
    while(z<1000){
      count=digitalRead(counterpin);
      if(count==HIGH){
        coin=coin+10;
        delay(1000);lcd.clear();
        goto start;
    }
    delay(1);
    z++;
  }coin=coin+5;
  lcd.clear();goto start;
  }else{ //###############################################################################################################
  if (customKey){
    Serial.println(customKey);
  }
  if(customKey=='C'){
    lcd.clear();
    goto changeprice;
  }
   if(customKey=='B'){
    lcd.clear();
    goto buy;
  }
  if(customKey=='A'&&l<=5&&m<=5&&n<=5){
    l++;
  }
  if(customKey=='E'){
    m++;
  }
  if(customKey=='F'){
    n++;
  }
  if(customKey=='D'&&l==5&&m==5&&n==5){
    w++;
    if(w==4){
      goto vending;
    }
  }
  goto start;
  }
  
  changeprice: //*****************************************Change Price******************************************
  flag1=0;
  delay(10);
  lcd.setCursor(4,0);lcd.print("Change Price");
  lcd.setCursor(0,2);lcd.print("Enter PIN:____");
  delay(10);
  while(1){
    customKey = customKeypad.getKey();
    if(customKey){
      if(customKey=='A'&& x==14){ //VERIFY PIN
        lcd.clear();delay(10);
        enterpw=(digit[0]*1000)+(digit[1]*100)+(digit[2]*10)+digit[3];
        if(enterpw==password){
          lcd.print("PIN MATCH!"); //PIN IS MATCH!!!!
          delay(1000);
          choose:
          lcd.clear();
          lcd.setCursor(0,0);lcd.print("R1:");lcd.print(pr[0]);
          lcd.setCursor(0,1);lcd.print("R2:");lcd.print(pr[1]);
          lcd.setCursor(0,2);lcd.print("R3:");lcd.print(pr[2]);
          lcd.setCursor(0,3);lcd.print("R4:");lcd.print(pr[3]);
          lcd.setCursor(7,0);lcd.print("Which ROW?");
          lcd.setCursor(7,1);lcd.print("Enter ROW:");lcd.setCursor(17,1);
          flag1==0;
          while(1){
            customKey = customKeypad.getKey();
            if(customKey){
              Serial.println(customKey);
            }
            if(customKey>0&&customKey<53&&flag1==0){
              convert=int(customKey)-48;
              b=convert;
              lcd.print(customKey);flag1=1;
              lcd.setCursor(7,2);lcd.print("Change Row");lcd.print(convert);lcd.print("?");
              lcd.setCursor(7,3);lcd.print("Yes: A  No: B");
            }
            if(customKey=='F'){ //OPERATION CANCELLED
               lcd.clear();
               lcd.setCursor(4,0);lcd.print("CANCELLED!");
               delay(1000);lcd.clear();goto start;
            }
            b=convert;
            if(customKey=='A'&&flag1==1){ //*********************************ENTER NEW PRICE*****************************************************
              newprice:
              lcd.clear();lcd.setCursor(0,0);
              lcd.print("Enter New Price for Row");lcd.print(b);lcd.print(":___");
              a=0;x=5;
              while(1){
                customKey = customKeypad.getKey();
                if(customKey&&customKey<'A'&&x<8){
                  lcd.setCursor(x,2);
                  lcd.print(customKey);
                  convert=int(customKey)-48;
                  digit[a]=convert;
                  x++;a++;
                }
                if(customKey=='A'&&x==8){
                  b--;
                  chprice=(digit[0]*100)+(digit[1]*10)+digit[2];
                  if(chprice%5!=0){
                    lcd.clear();lcd.setCursor(6,0);lcd.print("ERROR!");
                    delay(2000);
                    lcd.setCursor(3,0);lcd.print("Prices Must Be");
                    lcd.setCursor(3,1);lcd.print("Divisible by 5");
                    lcd.setCursor(0,2);lcd.print("Press Any Key");
                    lcd.setCursor(0,3);lcd.print("To Continue...");
                    while(1){
                      customKey = customKeypad.getKey();
                      if(customKey){
                        b++;
                        goto newprice;
                      }
                    }
                  }
                  pr[b]=chprice;
                  b++;
                  lcd.clear();lcd.print("ROW");lcd.print(b);lcd.print(" Price");
                  lcd.setCursor(0,1);lcd.print("Has Been Changed!");
                  delay(1000);
                  lcd.clear();
                  goto start;
                }
                if(customKey=='E'&&x>5&&x){
                  x--;
                  lcd.setCursor(x,2);lcd.print("_");a--;
                }
                if(customKey=='F'){
                  goto cancel;
                }
              }
            }
            if(customKey=='B'&&flag1==1){
              flag1=0;
              goto choose;
            } 
          }
          
        }
        if(enterpw!=password){
          lcd.print("PIN INCORRECT!");
          x=10;a=0;delay(1000);
          goto changeprice;
        }
      }
      if(x<=13 && customKey<'A'){ //ENTER PASSWORD
        convert=int(customKey)-48;
        lcd.setCursor(x,2);
        lcd.print(customKey);
        delay(300);
        digit[a]= convert;
        lcd.setCursor(x,2);
        lcd.print("*");x++;a++;
      }
      if(customKey=='E' && x>10){ //DELETE ENTERED PIN
        x--;
        lcd.setCursor(x,2);
        lcd.print("_");a--;
      }
      if(customKey=='F'){ //OPERATION IS CANCELLED
        cancel:
        lcd.clear();
        lcd.setCursor(4,0);lcd.print("CANCELLED!");
        delay(1000);lcd.clear();goto start;
      }
      //any key is pressed
    }
  }
  goto changeprice;


  buy: //*************************************************BUY*******************************************
  lcd.setCursor(0,0);lcd.print("R1:");lcd.print(pr[0]);
  lcd.setCursor(0,1);lcd.print("R2:");lcd.print(pr[1]);
  lcd.setCursor(0,2);lcd.print("R3:");lcd.print(pr[2]);
  lcd.setCursor(0,3);lcd.print("R4:");lcd.print(pr[3]);
  lcd.setCursor(7,0);lcd.print("Purchasing...");
  lcd.setCursor(7,1);lcd.print("Enter ROW :");lcd.setCursor(18,1);
  customKey = customKeypad.getKey();
  if(customKey>0&&customKey<53){
    lcd.print(customKey);
    rowbuy=customKey-49;
    fbit1++;
  }
  if(customKey=='A'&&fbit1>0){
      itemselect:
      lcd.setCursor(7,2);lcd.print("Quantity  :");lcd.setCursor(18,2);
      customKey = customKeypad.getKey();
      if(customKey>'0'&&customKey<'A'){
        lcd.print(customKey);fbit2++;
        quant=customKey-48;
      }
      if(customKey=='A'&&fbit2>0){
        total=pr[rowbuy]*quant;
        Serial.print("TOTAL:");Serial.println(total);
        if(total>coin){
          lcd.clear();
          lcd.setCursor(0,1);
          lcd.print("INSUFFICIENT COIN!");
          delay(3000);
          lcd.clear();
          goto start;
        }
        lcd.clear();lcd.setCursor(0,0);
        lcd.print("VENDING");
        for(int i=7;i<=12;i++){
          lcd.setCursor(i,0);
          lcd.print(".");
          delay(1000);
        }
        lcd.clear();lcd.setCursor(0,0);lcd.print("THANK YOU FOR BUYING");
        delay(3000);
        lcd.clear();
        l=0;m=0;n=0;w=0;coin=coin-total;total=0;
        goto start;
      }
      if(customKey=='F'){
      goto cancel;
      }
      goto itemselect;
    }
    if(customKey=='F'){
      goto cancel;
    }
  goto buy;
  vending:
   lcd.clear();lcd.setCursor(0,0);
   lcd.print("HACKED! VENDING");
   for(int i=15;i<=19;i++){
          lcd.setCursor(i,0);
          lcd.print(".");
          delay(1000);
    }
    lcd.clear();lcd.setCursor(0,0);lcd.print("AYAW NA USABA!!! :D");
    delay(3000);
    lcd.clear();
    goto start;
}
