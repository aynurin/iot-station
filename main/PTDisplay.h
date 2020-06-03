#ifndef PTDisplay_H
#define PTDisplay_H
    
// #include <Arduino.h> // include Adafruit SSD1306 OLED display driver
#include <SPI.h>
#include <Adafruit_SSD1306.h> // include Adafruit SSD1306 OLED display driver

#include "PTData.h"
#include "nmcu.h"

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define OLED_MOSI D7
#define OLED_CLK D5
#define OLED_DC D4
#define OLED_CS D8
#define OLED_RESET D6

#define TEXT_LN_H 11
#define TEXT_LN_1 0
#define TEXT_LN_2 TEXT_LN_1 + TEXT_LN_H
#define TEXT_LN_3 TEXT_LN_2 + TEXT_LN_H
#define TEXT_LN_4 TEXT_LN_3 + TEXT_LN_H
#define TEXT_LN_5 TEXT_LN_4 + TEXT_LN_H
#define TEXT_LN_6 TEXT_LN_5 + TEXT_LN_H

#define CHAR_WIDTH 6

char * ftostr(float num);

extern Adafruit_SSD1306 __display;

class PTDisplay {
public:
    PTDisplay();
    ~PTDisplay();

    bool begin();

    int readings(PTSensorData * readings, unsigned int length);
    void println(int line, const char * left, const char * right);
    void alert(const char *message_line_1, const char *message_line_2);
    void update();

    Adafruit_SSD1306 display();
};
    
#endif
