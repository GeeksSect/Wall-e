/*
 * servo.h
 *
 *  Created on: 21 февр. 2016 г.
 *      Author: kruci_000
 */

#ifndef APP_MODULES_ECHO_ECHO_H_
#define APP_MODULES_ECHO_ECHO_H_

#include "../micros/micros.h"
#include <drivers/CoreUARTapb/core_uart_apb.h>
#include <mss_hw_platform.h>
#include <m2sxxx.h>
#include <hal.h>
#include <string.h>

#ifndef BAUD_VALUE_115200
	#define BAUD_VALUE_115200   26
#endif

#define ANGLE_GRANULARITY 16

extern UART_instance_t g_bt;

UART_instance_t uart_echo;
uint32_t echo_data[ANGLE_GRANULARITY];

void Echo_init();

void Echo_update_data();
void Echo_get_data(uint32_t *data);
void Echo_set_angle_range(uint8_t st_angle, uint8_t fn_angle);
void Echo_clear_FIFO();

#endif /* APP_MODULES_ECHO_ECHO_H_ */
