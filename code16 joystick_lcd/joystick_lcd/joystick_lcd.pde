#include <LiquidCrystal.h>   
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
int xpotPin = 0;  
int ypotPin = 1;  
int bpotPin = 2;  
int xval=0;    
int yval=0;
int bval=0;
void setup()
{
lcd.begin(16, 2);  
delay(1000); 
}
void loop ()
{

xval = analogRead(xpotPin);   
yval = analogRead(ypotPin);   
bval = analogRead(bpotPin);   
lcd.clear(); 
lcd.setCursor(0, 0) ; 
lcd.print("X=");      
lcd.print(xval);
lcd.setCursor(7, 0) ; 
lcd.print("Y=");      
lcd.print(yval);
if (bval<500)
{
lcd.setCursor(0, 1) ;   
lcd.print("Button ON"); 
}
else
{
lcd.setCursor(0, 1) ;
lcd.print("Button OFF"); 
}
delay(100);                    

}

