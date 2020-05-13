const int button = 2; //button pin
int Switch = 0; //button state


const int boo = 13;
const int cat = 11;
const int witch = 9;
const int bat = 7;


void setup() {
//pinMode(onoff, INPUT);
pinMode(button,INPUT);
  
pinMode(boo, OUTPUT); // initializes pin as output
pinMode(cat, OUTPUT); 
pinMode(witch, OUTPUT); 
pinMode(bat, OUTPUT);



}

void loop(){

Switch = digitalRead(button);
delay(20);
if (Switch == HIGH){  
  // put your main code here, to run repeatedly:
digitalWrite(boo, HIGH); // sends voltage to the pin
  delay(50); // delays 1000 milliseconds (1 second)
digitalWrite(cat, HIGH); 
  delay(50); 
digitalWrite(witch, HIGH); 
  delay(50); 
digitalWrite(bat, HIGH); 
  delay(50); 
  digitalWrite(boo, LOW); 
  delay(50); 
digitalWrite(cat, LOW); 
  delay(50); 
digitalWrite(witch, LOW); 
  delay(50); 
digitalWrite(bat, LOW); 
  delay(50); 
  
}
else{ 
  digitalWrite(bat, HIGH);
  delay(250);
  digitalWrite(cat, HIGH);
  delay(250);
  digitalWrite(bat, LOW);
  delay(250);
  digitalWrite(cat, LOW);
  delay(250);
  digitalWrite(boo, HIGH);
  delay(250);
  digitalWrite(witch, HIGH);
   delay(250);
   digitalWrite(boo, LOW);
  delay(250);
  digitalWrite(witch, LOW);
   delay(250);
 }
}
