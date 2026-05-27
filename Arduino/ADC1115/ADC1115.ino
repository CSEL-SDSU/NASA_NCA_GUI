#include <Wire.h>
#include <Adafruit_ADS1X15.h>

Adafruit_ADS1115 ads1115;	// Construct an ads1115 

void setup() 
{
  Serial.begin(9600);
  ads1115.begin();
}

void loop() 
{
  ads1115.setGain(GAIN_SIXTEEN);
  int16_t results;

  results = ads1115.readADC_Differential_0_1();
  Serial.println(float(results * (0.125/16)));

  delay(200);
}
