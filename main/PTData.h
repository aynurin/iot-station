#ifndef PTData_H
#define PTData_H
#define KNOWN_SENSORS_COUNT 6
enum SENSOR_ID { 
    BME280_TEMP, BME280_HUMI, BME280_PRES, 
    CCS811_TVOC, CCS811_ECO2,
    FC28SL_WATR };
extern const char *SENSOR_NAMES[];
extern const char *SENSOR_NAMES_U[];
struct PTSensorData {
    SENSOR_ID sensor_id;
    float value;
};
#endif