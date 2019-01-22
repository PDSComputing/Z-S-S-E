void setup() {
  pinMode(12, OUTPUT); //Initiates Motor Channel A pin
}

void loop(){
  digitalWrite(12, HIGH); //HIGH is forward and LOW is backward
  analogWrite(3, 255); //Spins the motor from 70 (minimum speed) to 255 (maximum speed)
}
