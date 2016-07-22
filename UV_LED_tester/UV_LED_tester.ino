/*
Copyright 2016 Thomas Rockenbauer, Fablab Leoben, rockenbauer.thomas@gmail.com
http://www.fablab-leoben.at
http://www.github.com/fablab-leoben
This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
*/

#include <elapsedMillis.h>
#include <Wire.h>
#include "Adafruit_VEML6070.h"

#define pwmPin 3

elapsedMillis timeElapsed;
unsigned int interval = 1000;
byte pwmValue = 0;
byte currentDutyCycle = 0;

Adafruit_VEML6070 uv = Adafruit_VEML6070();

void setup() {
  pinMode(pwmPin, OUTPUT);
  analogWrite(pwmPin, 0);
  Serial.begin(9600);
  Serial.println("VEML6070 initialization");
  uv.begin(VEML6070_1_T);  // pass in the integration time constant
  Serial.println("Setup ready!");
}

void loop() {

  if (timeElapsed > interval) 
  {        
      Serial.print("UV light level: "); 
      Serial.println(uv.readUV());
      timeElapsed = 0;              // reset the counter to 0 so the counting starts over...
  }
  
  if (Serial.available() > 0) {
    // read the incoming byte:
    //incomingByte = Serial.read();
    byte dutyCycle = Serial.parseInt();
    if(dutyCycle >100) {
      dutyCycle = 100;
    }

    if(currentDutyCycle != dutyCycle) {
      pwmValue = map(dutyCycle, 0, 100, 0, 255);
      currentDutyCycle = dutyCycle;
      analogWrite(pwmPin, pwmValue);
      Serial.print("Duty cycle: ");
      Serial.print(dutyCycle);
      Serial.print("%");
      Serial.print("\tPWM: ");
      Serial.println(pwmValue);     
    }    
  }
}
