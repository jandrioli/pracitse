int servopin=9;
int myangle;
int pulsewidth;
int val;
void servopulse(int servopin,int myangle)
{
pulsewidth=(myangle*11)+500;
digitalWrite(servopin,HIGH);
delayMicroseconds(pulsewidth);
digitalWrite(servopin,LOW);
delay(20-pulsewidth/1000);
}
void setup()
{
pinMode(servopin,OUTPUT);
Serial.begin(9600);
Serial.println("servo=o_seral_simple ready" ) ;
}
void loop()
{
val=Serial.read();
if(val>'0'&&val<='9')
{
val=val-'0';
val=val*(180/9);
Serial.print("moving servo to ");
Serial.print(val,DEC);
Serial.println();
for(int i=0;i<=50;i++) 
{
servopulse(servopin,val);
}
}
}

