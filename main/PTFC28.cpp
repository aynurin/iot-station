
#include "PTFC28.h"

PTFC28::PTFC28(unsigned int pin){
  dPin = pin;
}
 
//<<destructor>>
PTFC28::~PTFC28(){/*nothing to destruct*/}
 
int PTFC28::read(){
  Serial.print("Reading FC-28... ");
  int val = analogRead(A0);
  Serial.print(val);
  val = map(val,1024,0,0,100);
  Serial.print(", mapped: ");
  Serial.println(val);
  // if (val < 0) {
  //   val = 0;
  // }
  // else if (val > 100) {
  //   val = 100;
  // }
  return val;
}

bool PTFC28::available(){
  return true;
}