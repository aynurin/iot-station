
#include "PTTime.h"

PTTime::PTTime(){/*nothing to construct*/}
 
//<<destructor>>
PTTime::~PTTime(){/*nothing to destruct*/}
 
//turn the LED on
time_t PTTime::init(){
  time_t epochTime;

  configTime(0, 0, "pool.ntp.org", "time.nist.gov");

  while (true)
  {
    epochTime = time(NULL);

    if (epochTime < MIN_EPOCH)
    {
      delay(5000);
    }
    else
    {
      break;
    }
  }
  return epochTime;
}
