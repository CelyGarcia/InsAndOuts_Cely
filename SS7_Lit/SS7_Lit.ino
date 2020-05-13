//Lit-ty Lit by Cely

#include <Servo.h>
const int potPin = A3;  // create potPin variable, assign pin A0
const int servoPin = 2;  // create servoPin variable, assign 9
const int boo = 13;
const int cat = 11;
const int witch = 9;
const int bat = 7;


int reading = 0; //track potentiometer reading
int angle = 0; // track motor angle between 0-180 degrees

Servo servo; 

void setup() {
  servo.attach(servoPin);  //attach servo variable to control pin
  pinMode (boo, OUTPUT);
  pinMode (cat, OUTPUT);
  pinMode (witch, OUTPUT);
  pinMode (bat, OUTPUT);
  
  Serial.begin(9600);
}

void loop() {
  reading = analogRead(potPin);     // reads pot 0 to 1023
  angle = reading / 6;              // reduces pot value to 0 to 180-ish to match servo range
  
  if (reading >45 && reading <= 215) { // if pot value between 25 and half
  
 
    digitalWrite (boo, HIGH);      
    digitalWrite (cat, LOW);
    digitalWrite (witch, HIGH);
    digitalWrite (bat, LOW);

    
  } else if (reading >215 && reading <= 333) {
  digitalWrite (boo, LOW);
  digitalWrite (cat, HIGH);
  digitalWrite(witch, LOW);
  digitalWrite(bat, HIGH);

  } else if (reading > 512 && reading <= 1023) {

    // sweep 0 to 180
    for (angle = 0; angle < 180; angle++) {
      servo.write(angle);
      delay(3);
    }
    // sweep 180 to 0
    for (angle = 180; angle > 0; angle--) {
      servo.write(angle);
      delay(9);
    }
  } else {
    digitalWrite (boo, LOW);  
  }
  Serial.println(reading); 
}
