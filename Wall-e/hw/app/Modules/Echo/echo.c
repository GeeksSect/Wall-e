/*
 * echo.c
 *
 *  Created on: 21 февр. 2016 г.
 *      Author: kruci_000
 */

#include "echo.h"

void Echo_init()
{
    UART_init( &uart_echo, COREUARTAPB_2_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
}

void Echo_update_data()
{
	uint8_t rx_buf[128];
	uint8_t rx_size;

	uint32_t data;
	uint8_t  index;

	uint8_t* rd_ptr;

	rx_size = UART_get_rx(&uart_echo, rx_buf, 128);
	rd_ptr = strchr(rx_buf, '\n');

	while (*(rd_ptr + 6) == '\n')
	{
		data = my_atoi(rd_ptr + 1, 4);
		index = my_atoi(rd_ptr + 5, 1);
		echo_data[index] = data;
		rd_ptr += 6;
	}
}

void Echo_get_data(uint32_t *data)
{
	uint8_t i;
	for (i = 0; i < ANGLE_GRANULARITY; i++)
		*(data + i) = echo_data[i];
}

void Echo_set_angle_range(uint8_t st_angle, uint8_t fn_angle)
{
	uint8_t data;

	if (fn_angle > 0xF)
		fn_angle = 0xF;
	if (st_angle > 0xF)
		st_angle = 0xF;

	if (fn_angle > st_angle)
		data = fn_angle * 0x10 + st_angle;
	else
		data = st_angle * 0x10 + fn_angle;

	UART_send(&uart_echo, &data, 1);
}
