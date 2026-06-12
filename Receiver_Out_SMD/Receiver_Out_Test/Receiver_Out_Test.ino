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

// --- WS2812 data detection on PB3, status LED on PA7 ---
const uint8_t DATA_PIN_BM = (1 << 3);    // PB3 bitmask within PORTB
const unsigned long dataTimeoutMs = 250; // consider data "lost" after this idle time
#define WS_DETECT_ISC PORT_ISC_RISING_gc // interrupt on rising edges (line idles low)
volatile bool wsActivity = false;        // set by the pin-change ISR on each edge
unsigned long lastDataMillis = 0;        // last time activity was seen on PB3
bool dataLedOn = false;                  // current state of the PA7 status LED

////////////////////////////////////////////////////////////////////////////////
/// @brief Pin-change ISR for PORTB.
/// The WS2812 line idles low and produces a rising edge for every bit clocked
/// in, so any edge means data is present. We only flag activity here; the loop
/// timestamps it. The PB3 interrupt is disabled while test mode drives PORTB.
////////////////////////////////////////////////////////////////////////////////
ISR(PORTB_PORT_vect)
{
  if (PORTB.INTFLAGS & DATA_PIN_BM)
  {
    PORTB.INTFLAGS = DATA_PIN_BM; // clear the flag (write 1 to clear)
    wsActivity = true;
  }
}

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

  // Display the LEDs. Each strip must be streamed contiguously: the gap
  // between successive sendPixels() calls on the SAME pin is only a few us,
  // well under the WS2812 latch time. Interleaving the four strips would
  // leave each line idle ~90us between its pixels, latching the strip after
  // the first pixel (symptom: only the first LED lights up).
  for (uint16_t i = 0; i < numPixels; i++) { myLeds1.sendPixels(1, pix); }
  for (uint16_t i = 0; i < numPixels; i++) { myLeds2.sendPixels(1, pix); }
  for (uint16_t i = 0; i < numPixels; i++) { myLeds3.sendPixels(1, pix); }
  for (uint16_t i = 0; i < numPixels; i++) { myLeds4.sendPixels(1, pix); }

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
    PORTB.PIN3CTRL = WS_DETECT_ISC; // re-enable WS2812 data-detect interrupt on PB3
    digitalWrite(PIN_PC1, LOW);
  }
  else
  {
    digitalWrite(PIN_PC1, HIGH);
    digitalWrite(PIN_PA1, HIGH);
    FAB_PORT(B, 0x00); // all pins low
    FAB_DDR(B, 0xFF); // all pins out
    PORTB.PIN3CTRL = 0; // disable PB3 interrupt while test mode drives PORTB
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
  pinMode(PIN_PA7, OUTPUT);     // WS2812 data-present status LED
  digitalWrite(PIN_PA7, LOW);
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
  PORTB.PIN3CTRL = WS_DETECT_ISC; // enable WS2812 data-detect interrupt on PB3
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

  // WS2812 data detection (PB3) -> status LED (PA7).
  // Only valid while test mode is off, since test mode drives PORTB as outputs.
  if (!test_en)
  {
    // Atomically read & clear the activity flag set by the pin-change ISR.
    uint8_t oldSREG = SREG;
    cli();
    bool act = wsActivity;
    wsActivity = false;
    SREG = oldSREG;

    if (act)
    {
      lastDataMillis = currentMillis;
    }
    bool present = (currentMillis - lastDataMillis) < dataTimeoutMs;
    if (present != dataLedOn)
    {
      dataLedOn = present;
      digitalWrite(PIN_PA7, present ? HIGH : LOW);
    }
  }
  else if (dataLedOn)
  {
    // Entered test mode: turn the data-present LED off.
    dataLedOn = false;
    digitalWrite(PIN_PA7, LOW);
  }

  delay(10);
}
