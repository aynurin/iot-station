#ifndef PTDisplay_H
#define PTDisplay_H
    
// #include <Arduino.h> // include Adafruit SSD1306 OLED display driver
#include <SPI.h>
#include <Adafruit_SSD1306.h> // include Adafruit SSD1306 OLED display driver

#include "PTData.h"
#include "pins.h"

#define TP_SCR_WIDTH 128 // OLED display width, in pixels
#define TP_SCR_HEIGHT 64 // OLED display height, in pixels
#define OLED_MOSI WROOM_IO12
#define OLED_CLK WROOM_IO14
#define OLED_DC WROOM_IO2
#define OLED_CS WROOM_IO15
#define OLED_RESET WROOM_IO12

#define TP_SCR_LINE_H 11
#define TP_SCR_LINE_1 0
#define TP_SCR_LINE_2 TP_SCR_LINE_1 + TP_SCR_LINE_H
#define TP_SCR_LINE_3 TP_SCR_LINE_2 + TP_SCR_LINE_H
#define TP_SCR_LINE_4 TP_SCR_LINE_3 + TP_SCR_LINE_H
#define TP_SCR_LINE_5 TP_SCR_LINE_4 + TP_SCR_LINE_H
#define TP_SCR_LINE_6 TP_SCR_LINE_5 + TP_SCR_LINE_H

#define TP_SCR_GUTTER 3

#define TP_SCR_COL_SPAN -1
#define TP_SCR_COL_1 0
#define TP_SCR_COL_2 1

#define TP_SCR_COL_1_START 13
#define TP_SCR_COL_1_END (((TP_SCR_WIDTH-TP_SCR_COL_1_START) / 2)+TP_SCR_COL_1_START-(TP_SCR_GUTTER/2))
#define TP_SCR_COL_2_START (TP_SCR_COL_1_END+TP_SCR_GUTTER)
#define TP_SCR_COL_2_END TP_SCR_WIDTH

#define CHAR_WIDTH 6

char * ftostr(float num);

extern Adafruit_SSD1306 __display;

class PTDisplay {
public:
    PTDisplay();
    ~PTDisplay();

    bool begin();

    int readings(PTSensorData * readings, unsigned int length);
    void println(unsigned int line, unsigned int col, const char * left, const char * right);
    void alert(const char *message_line_1, const char *message_line_2);
    void update();

    Adafruit_SSD1306 display();
};
    
#endif
