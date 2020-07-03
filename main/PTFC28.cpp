
#include "PTFC28.h"

PTFC28::PTFC28(unsigned int pin){
  dPin = pin;
}
 
//<<destructor>>
PTFC28::~PTFC28(){/*nothing to destruct*/}
 
// every sensor seems to be unique so it requires calibration
// 380 - 838 at 28C and 40H
// 420 - 834
// 537 - 57%
// 540 - 54%
// 390 - 820 at 22C
int PTFC28::read(){
  Serial.print("Reading FC-28... ");
  double val = (double)analogRead(A0);
  Serial.print(val);
  val = val / 1024;
  // val = map(val,770,440,0,100);
  // val = -((atan(6 * (val - 0.5)) / 2.3) + 0.5) * 100.0;
  val = ((-atan(6 * (val - 0.5))/2.3)+0.5)*100;
  Serial.print(", mapped: ");
  Serial.println(val);
  if (val < 0) {
    val = 0;
  }
  else if (val > 100) {
    val = 100;
  }
  return val;
}

bool PTFC28::available(){
  return true;
}