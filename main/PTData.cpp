
#include "PTData.h"

const char *SENSOR_NAMES[] = {
    [BME280_TEMP] = "temperature",
    [BME280_HUMI] = "humidity",
    [BME280_PRES] = "pressure",
    [CCS811_TVOC] = "tvoc",
    [CCS811_ECO2] = "eco2",
    [FC28SL_WATR] = "soilMoisture",
};

const char *SENSOR_NAMES_U[] = {
    [BME280_TEMP] = "T:",
    [BME280_HUMI] = "H:",
    [BME280_PRES] = "P:",
    [CCS811_TVOC] = "V:",
    [CCS811_ECO2] = "C:",
    [FC28SL_WATR] = "S:",
};
