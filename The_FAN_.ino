void setup() {
  pinMode(12, OUTPUT); //Initiates Motor Channel A pin
  pinMode(9, OUTPUT); //Initiates Brake Channel A pin
  
}

void loop(){
  
  //Motor direction
  digitalWrite(12, HIGH); //HIGH is forward and LOW is backward
  digitalWrite(9, LOW);   //Disengage the Brake
  analogWrite(3, 255);   //Spins the motor from 70 (minimum speed) to 255 (maximum speed)
}
