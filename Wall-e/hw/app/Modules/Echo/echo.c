/*
 * echo.c
 *
 *  Created on: 21 февр. 2016 г.
 *      Author: kruci_000
 */

#include "echo.h"

void FabricIrq1_IRQHandler()
{
	Echo_update_data();
	UART_polled_tx_string(&g_bt, (const uint8_t*)"Receive echo\r\n");
	// NVIC_ClearPendingIRQ();
}

void Echo_init()
{
	// NVIC_EnableIRQ(FabricIrq1_IRQn);

    UART_init( &uart_echo, COREUARTAPB_2_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
}

void Echo_update_data()
{
	uint8_t rx_buf[128];
	uint8_t rx_size;

	uint32_t data;
	uint8_t  index;

	uint8_t* rd_ptr;
	uint8_t i;

	do
	{
		for (i = 0; i < 128; i++)
			rx_buf[i] = 0;

		rx_size = UART_get_rx(&uart_echo, rx_buf, 128);
		rd_ptr = strchr(rx_buf, '\n');

		while (*(rd_ptr + 6) == '\n')
		{
			data = my_atoi(rd_ptr + 1, 4);
			data = (data < 150) ? data : 150; // Normalize distance

			index = *(rd_ptr + 5) - 48;
			echo_data[index] = data;
			rd_ptr += 6;
		}
	} while (rx_size == 128);
	// } while (rx_buf[127] != 145); LOW VOLTAGE Case
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

void Echo_clear_FIFO()
{
	uint8_t rx_buf[1024];
	uint16_t rx_size;

	do
	{
		rx_size = UART_get_rx(&uart_echo, rx_buf, 1024);
	} while (rx_size == 1024);
}
