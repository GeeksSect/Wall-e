/*
 * main.c
 *
 *  Created on: 14 февр. 2016 г.
 *      Author: kruci_000
 */

#include "Modules/telemetry/telemetry.h"
#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/HMC/HMC.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/micros/micros.h"
#include "Modules/Echo/echo.h"
#include "Modules/RoverControl/rover_control.h"
#include "Modules/GPS_Parser/gps_parser.h"

#include "../hal/hal.h"
#include "../mss_hw_platform.h"
#include "../CMSIS/m2sxxx.h"

#include "../drivers/CoreI2C/core_i2c.h"
#include "../drivers/CoreUARTapb/core_uart_apb.h"
#include "../drivers_config/sys_config/sys_config.h"

#include <stdlib.h>
#include <string.h>
#include <math.h>

#define BAUD_VALUE_115200   26
#define threshold           20
#define magn_skip_val       10

UART_instance_t g_bt;


void press_any_key_to_continue(void);
void setup();

void automotion();
RoverDirections make_decision(uint32_t* data);

int main(void)
{
    uint8_t rx_buff[128];
    char print_buf[16];
    uint8_t rx_size = 0;
    uint16_t gps_skip_counter;

    uint32_t dist_data[ANGLE_GRANULARITY];

    uint8_t i = 0, j = 0;

    uint32_t duty_c;
    uint8_t servo_angle;

    int16_t m_vec[3];
    float heading;

    setup();

    // Infinity Loop
    // automotion();

    // press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Hello, I am Rover!\n");
    // press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Send anything for calibration!\n");
    // press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Okay, let's burn it!\n");
    // press_any_key_to_continue();

    while (1 == 1)
    {
        rx_size = UART_get_rx(&g_bt, rx_buff, sizeof(rx_buff));
        for (i = 0; i < rx_size; i++) // if something ready to read
        {
			switch (rx_buff[i])
			{
				case '!':
				{
					Echo_set_angle_range(0x7, 0x7);
					break;
				}
				case '@':
				{
					Echo_set_angle_range(0x0, 0x7);
					break;
				}
				case '#':
				{
					Echo_set_angle_range(0x7, 0xF);
					break;
				}
				case '$':
				{
					Echo_set_angle_range(0x0, 0xF);
					break;
				}
				case 'w':
				{
					Rover_go(FORWARD);
					break;
				}
				case 's':
				{
					Rover_go(BACKWARD);
					break;
				}
				case 'd':
				{
					Rover_go(ROUND_RIGHT);
					break;
				}
				case 'a':
				{
					Rover_go(ROUND_LEFT);
					break;
				}
				case 'e':
				{
					Rover_go(STOP);
					break;
				}
				case 'q':
				{
					uint8_t j;
					uint8_t value[4];

					Echo_update_data();
					Echo_get_data(&dist_data);
					for (i = 0; i < ANGLE_GRANULARITY; i++)
					{
						for (j = 0; j < 4; j++) {
							value[j] = 0;
						}
						itoa(dist_data[i], value, 10);
						UART_send(&g_bt, value, 4);
						UART_polled_tx_string(&g_bt, (const uint8_t*)"\t");
					}
					UART_polled_tx_string(&g_bt, (const uint8_t*)"\r\n");
					break;
				}
				case 'A':
				{
					automotion();
					break;
				}
			}
        }
        HMC_get_true_Data(&(m_vec[0]), &(m_vec[1]), &(m_vec[2]));
        /* MAGNETOMER RAW DATA TEST
        for (j = 0; j < 3; j++)
        {
			for (i = 0; i < 6; i++)
				print_buf[i] = 0;
			itoa(m_vec[j], print_buf, 10);
			UART_send(&g_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_bt, (const uint8_t *)";");
        }
        UART_polled_tx_string(&g_bt, (const uint8_t *)"\r\n");
        */

        /* HMC TEST
        send_telemetry(&g_bt, 0x7, m_vec[0], m_vec[1], m_vec[2]
								 , 0, 0, 0
								 , 0, 0, 0
								 , 0, 0, 0
								 , 0);
		*/
        /* HEADING TEST
        heading = atan2(m_vec[2], m_vec[0]);
        if(heading < 0)
        	heading += 2 * M_PI;
        if(heading > 2 * M_PI)
        	heading -= 2 * M_PI;
        heading *= (180 / M_PI);
		for (i = 0; i < 6; i++)
			print_buf[i] = 0;
		itoa(heading, print_buf, 10);
		UART_send(&g_bt, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(&g_bt, (const uint8_t *)"\r\n");
		*/

        /* GPS TEST */
		gps_update();

		if (gps_skip_counter == 1000)
		{
			// Send altitude
			for (i = 0; i < 16; i++)
				print_buf[i] = 0;
			itoa(latitude, print_buf, 10);
			UART_send(&g_bt, (const uint8_t *)print_buf, 16);
			UART_polled_tx_string(&g_bt, (const uint8_t *)" : ");
			// Send longitude
			for (i = 0; i < 16; i++)
				print_buf[i] = 0;
			itoa(longitude, print_buf, 10);
			UART_send(&g_bt, (const uint8_t *)print_buf, 16);
			UART_polled_tx_string(&g_bt, (const uint8_t *)"\r\n");

			gps_skip_counter = 0;
		}
			gps_skip_counter++;
    }
    return 0;
}

void automotion() {
	uint32_t dist_data[ANGLE_GRANULARITY];
	uint8_t angle = 0x7;
	uint32_t left_sum = 0, right_sum = 0;
	uint8_t i;

	Echo_set_angle_range(angle, angle);

	while (1)
	{
		delay(10000, 50);
		Echo_update_data();
		Echo_get_data(&dist_data);
		if (dist_data[angle] < 30)
		{
			Rover_go(STOP);
			Echo_set_angle_range(0x0, 0xF);
			Echo_clear_FIFO();

			delay(100000, 50);

			Echo_update_data();
			Echo_get_data(&dist_data);

			for (i = 0; i < ANGLE_GRANULARITY; i++)
				if (i < ANGLE_GRANULARITY / 2)
					right_sum += dist_data[i];
				else
					left_sum += dist_data[i];

			if (left_sum < right_sum)
			{
				Rover_go(ROUND_RIGHT);
				angle = 0xF;
			}
			else
			{
				Rover_go(ROUND_LEFT);
				angle = 0x0;
			}
			Echo_set_angle_range(angle, angle);

			do
			{
				delay(20000, 50);
				Echo_update_data();
				Echo_get_data(&dist_data);
			} while (dist_data[angle] < 30);

			Rover_go(STOP);

			angle = 0x7;
			Echo_set_angle_range(angle, angle);
		}
		else
			Rover_go(FORWARD);

		// Rover_go(make_decision(&dist_data));
	}
}

RoverDirections make_decision(uint32_t* data)
{
	uint32_t forward_let = 0;
	uint32_t right_sum = 0;
	uint32_t left_sum = 0;
	uint8_t i;

	for (i = 0; i < ANGLE_GRANULARITY; i++)
	{
		if (i < ANGLE_GRANULARITY / 2)
			left_sum += data[i];
		else
			right_sum += data[i];

		if (5 <= i && i < 9)
			forward_let += data[i];
	}
	return STOP;
}

void press_any_key_to_continue(void)
{
    size_t rx_size;
    uint8_t rx_char;
    do {
        rx_size = UART_get_rx(&g_bt, &rx_char, sizeof(rx_char));
    } while(rx_size == 0);

}
/*------------------------------------------------------------------------------
 * Service the I2C timeout functionality.
 */
void SysTick_Handler(void)
{
    I2C_system_tick(&g_core_i2c0, 10);
}
void FabricIrq0_IRQHandler(void)
{
    I2C_isr(&g_core_i2c0);
}
void setup()
{
	uint32_t i;

	Rover_init();
    Echo_init();
    init_GPS();
    UART_init( &g_bt, COREUARTAPB_2_2, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
    i2c_init(1); // argument no matter
    BMP_calibrate();
    MPU6050_initialize();
    MPU6050_setDLPFMode(0);
    MPU6050_setFullScaleGyroRange(1); // it's must set range of gyro's data     +-500(deg/sec)
    HMC_init();

    MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);
    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);
    init_timer();// run timer for micros();
}


