#include <FAB_LED.h>
#include <OneButton.h>

const uint16_t numPixels = 300;

ws2812b<B,3> myLeds1;
ws2812b<B,0> myLeds2;
ws2812b<B,1> myLeds3;
ws2812b<B,2> myLeds4;
//ws2812b8s<B,0,7> strip_split8;//maybe?

volatile bool test_en = false;

volatile int mode = 0;

volatile unsigned long previousMillis = 0;

// constants won't change:
const long interval = 1000;

OneButton  button = OneButton (
  PIN_PA2,  // Input pin for the button
  true,        // Button is active LOW
  true         // Enable internal pull-up resistor
);

////////////////////////////////////////////////////////////////////////////////
/// @brief Display numPixels with one solid color.
/// We only use a 3 byte array, storing one pixel.
/// We then send the same pixel repeatedly to the LED strip very fast.
/// This demonstrates the ability tocall the library repeatedly.
/// If this feature fails, you may see only 1 pixel lit, or a varying number
/// of pixels glitching on and off.
////////////////////////////////////////////////////////////////////////////////
void color1N(uint8_t red, uint8_t green, uint8_t blue)
{
  rgb pix[1];

  pix[0].r = red;
  pix[0].g = green;
  pix[0].b = blue;

  // Disable interupts, save the old interupt state
  const uint8_t oldSREG = SREG;
  cli();

  // Display the LEDs
  for (uint16_t i = 0; i < numPixels; i++)
  {
    myLeds1.sendPixels(1, pix);
    myLeds2.sendPixels(1, pix);
    myLeds3.sendPixels(1, pix);
    myLeds4.sendPixels(1, pix);
  }

  // Restore the old interrupt state
  SREG = oldSREG;
}

void LongPress(void * /*oneButton*/)
{
  if(test_en)
  {
    myLeds1.clear(numPixels);
    myLeds2.clear(numPixels);
    myLeds3.clear(numPixels);
    myLeds4.clear(numPixels);
    digitalWrite(PIN_PA1, LOW);
    //FAB_PORT(B, 0x00); // all pins low
    PORTB.DIR =    0b00000000;
    PORTB.PIN0CTRL = 0;
    PORTB.PIN1CTRL = 0;
    PORTB.PIN2CTRL = 0;
    PORTB.PIN3CTRL = 0;
    digitalWrite(PIN_PC1, LOW);
  }
  else 
  {
    digitalWrite(PIN_PC1, HIGH);
    digitalWrite(PIN_PA1, HIGH);
    FAB_PORT(B, 0x00); // all pins low
    FAB_DDR(B, 0xFF); // all pins out
    myLeds1.clear(numPixels);
    myLeds2.clear(numPixels);
    myLeds3.clear(numPixels);
    myLeds4.clear(numPixels);
    previousMillis = 0;
  }
  test_en = !test_en;
}

////////////////////////////////////////////////////////////////////////////////
/// @brief This method is automatically called once when the board boots.
////////////////////////////////////////////////////////////////////////////////
void setup()
{
  pinMode(PIN_PC1, OUTPUT);
  pinMode(PIN_PA1, OUTPUT);
  //digitalWrite(PIN_PC1, HIGH);

  // button.attachPress(ShortPress, &button);
  button.attachLongPressStart(LongPress, &button);
  button.setDebounceMs(20);
  button.setLongPressIntervalMs(1000);

  //FAB_PORT(B, 0x00); // all pins low
  PORTB.DIR = 0b00000000;
  PORTB.PIN0CTRL = 0;
  PORTB.PIN1CTRL = 0;
  PORTB.PIN2CTRL = 0;
  PORTB.PIN3CTRL = 0;
  digitalWrite(PIN_PC1, LOW);
  digitalWrite(PIN_PA1, LOW);
}

void loop()
{
  button.tick();
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= interval)
  {
    previousMillis = currentMillis;
    if(test_en)
    {
      switch(mode) {
        case 0:
          color1N(127,0,0);
          mode = 1;
          break;
        case 1:
          color1N(0,127,0);
          mode = 2;
          break;
        case 2:
          color1N(0,0,127);
          mode = 0;
          break;
      }
    }
  }
  delay(10);
}
