int ledpin=11;
int inpin=7;
int val;
void setup()
{
pinMode(ledpin,OUTPUT);
pinMode(inpin,INPUT);
}
void loop()
{
val=digitalRead(inpin);
if(val==LOW)
{ digitalWrite(ledpin,LOW);}
else
{ digitalWrite(ledpin,HIGH);}
}

