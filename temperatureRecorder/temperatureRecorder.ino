// include the library code:
#include <LiquidCrystal.h>

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
int i = 0;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

#include "dht.h"
#define dht_apin A0
 
dht DHT;
 
void setup(){

   // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  Serial.begin(9600);
  delay(1000);
  analogWrite(A1, 30);
 
}
 
void loop(){

    DHT.read11(dht_apin);
    lcd.print("Temp: ");
    lcd.print(DHT.temperature);
    Serial.print(DHT.temperature);
    lcd.print(" %");
    lcd.setCursor(0, 1);
    lcd.print("Humi: ");
    lcd.print(DHT.humidity);
    lcd.print(" %");
        
    delay(5000);
    lcd.clear();
}
