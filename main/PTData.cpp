
#include "PTData.h"

const char *SENSOR_NAMES[] = {
    [BME280_TEMP] = "temperature",
    [BME280_HUMI] = "humidity",
    [BME280_PRES] = "pressure",
    [CCS811_TVOC] = "tvoc",
    [CCS811_ECO2] = "eco2",
};

const char *SENSOR_NAMES_U[] = {
    [BME280_TEMP] = "TEMPERATURE",
    [BME280_HUMI] = "HUMIDITY",
    [BME280_PRES] = "PRESSURE",
    [CCS811_TVOC] = "tVOC",
    [CCS811_ECO2] = "eCO2",
};
