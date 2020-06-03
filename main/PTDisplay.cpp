
#include "PTDisplay.h"

int __text_lns[]{TEXT_LN_1, TEXT_LN_2, TEXT_LN_3, TEXT_LN_4, TEXT_LN_5, TEXT_LN_6};

char * ftostr(float num) {
  char outstr[15];
  dtostrf(num, 7, 2, outstr);
  return outstr;
}

char buff[15];

Adafruit_SSD1306 __display(SCREEN_WIDTH, SCREEN_HEIGHT,
                         OLED_MOSI, OLED_CLK, OLED_DC, OLED_RESET, OLED_CS);

PTDisplay::PTDisplay(){/*nothing to construct*/}
 
//<<destructor>>
PTDisplay::~PTDisplay(){/*nothing to destruct*/}
 
bool PTDisplay::begin(){
  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if (__display.begin(SSD1306_SWITCHCAPVCC)) {
    // clear the display buffer.
    __display.clearDisplay();

    __display.setTextSize(1);             // text size = 1
    __display.setTextColor(WHITE, BLACK); // set text color to white and black background

    __display.setTextWrap(false); // disable text wrap

    __display.setCursor(0, 8);    // move cursor to position (0, 4) pixel
    __display.print("W\nE\nA\nT\nH\nE\nR");

    this->update();
    
    return true;
  }
  return false;
}

void PTDisplay::println(int line, const char * left, const char * right) {
  __display.setCursor(13, line);
  __display.print(left);
  __display.setCursor(SCREEN_WIDTH - strlen(right) * CHAR_WIDTH, line);
  __display.print(right);
  this->update();
}

void PTDisplay::alert(const char *message_line_1, const char *message_line_2) {
  // clear the display buffer
  __display.clearDisplay();
  // display the message
  __display.setCursor(46, 13);
  __display.print(message_line_1);
  __display.setCursor(34, 23);
  __display.print(message_line_2);
  // update the display
  this->update();
}

Adafruit_SSD1306 PTDisplay::display(){
  return __display;
}

int PTDisplay::readings(PTSensorData * readings, unsigned int length)
{
  for( unsigned int a = 0; a < length; a = a + 1 ) {
    dtostrf(readings[a].value, 7, 2, buff);
    this->println(__text_lns[a], SENSOR_NAMES_U[a], buff);
  }
  this->update();
}

void PTDisplay::update() {
  __display.display();
}