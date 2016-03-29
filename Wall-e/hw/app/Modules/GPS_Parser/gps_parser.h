/*
 * gps_parser.h
 *
 *  Created on: 15.02.2016
 *      Author: vetal
 */

#ifndef GPS_PARSER_H_
#define GPS_PARSER_H_

#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include "drivers/CoreUARTapb/core_uart_apb.h"
#include "mss_hw_platform.h"

#define BAUD_VALUE_115200    26
#define RX_BUFF_SIZE 256

UART_instance_t uart_gps;
static char _rx_buff[RX_BUFF_SIZE];
static uint16_t _rx_size = 0;
static uint16_t _rd_pos = 0;
static uint16_t _wr_pos = 0;

uint32_t latitude, longitude, altitude, accuracy, speed, course;
uint32_t latitude0, longitude0, altitude0;
uint32_t gps_x, gps_y, gps_h;
float tmp;

uint8_t gps_checksum(uint8_t * buff, uint16_t st, uint16_t fn);


void init_GPS(void);
void gps_update();
uint8_t isGPGGA(uint8_t * mess);
uint8_t isGPVTG(uint8_t * mess);
uint32_t getDeg(uint8_t s, uint8_t f, uint8_t * buff);
int8_t EW(uint8_t s, uint8_t f, uint8_t * buff);
int8_t NS(uint8_t s, uint8_t f, uint8_t * buff);
uint32_t getFloat(uint8_t s, uint8_t f, uint8_t * buff);
uint8_t get_type(uint8_t * buff);
void GPGGA_parse(uint8_t * buff);
void GPVTG_parse(uint8_t * buff);
void fix_zero_position();



#endif /* GPS_PARSER_H_ */
