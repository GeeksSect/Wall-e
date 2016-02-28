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

#include "../hal/hal.h"
#include "../mss_hw_platform.h"
#include "../CMSIS/m2sxxx.h"

#include "../drivers/CoreI2C/core_i2c.h"
#include "../drivers/CorePWM/core_pwm.h"
#include "../drivers/CoreUARTapb/core_uart_apb.h"
#include "../drivers_config/sys_config/sys_config.h"

#include <stdlib.h>
#include <string.h>
#include <math.h>

#define BAUD_VALUE_115200   26
#define PWM_PRESCALE        1
#define PWM_PERIOD          1000
#define threshold           20
#define magn_skip_val       10

UART_instance_t g_bt;
pwm_instance_t  g_pwm;
pwm_id_t pwms[8] = {PWM_1, PWM_2, PWM_3, PWM_4, PWM_5, PWM_6, PWM_7, PWM_8};

void press_any_key_to_continue(void);
void setup();

int main(void)
{
    uint8_t rx_buff[128];
    uint8_t rx_size = 0;

    uint32_t dist_data[ANGLE_GRANULARITY];

    uint8_t i = 0;

    uint32_t motor[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    uint32_t duty_c;
    uint8_t servo_angle;

    setup();

    press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Hello, I am Rover!\n");
    press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Send anything for calibration!\n");
    press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Okay, let's burn it!\n");
    press_any_key_to_continue();

    while (1 == 1)
    {
        rx_size = UART_get_rx(&g_bt, rx_buff, sizeof(rx_buff));
        for (i = 0; i < rx_size; i++) // if something ready to read
        {
			switch (rx_buff[i])
			{
				case 'w':
				{
					for (i = 0; i < 8; i++)
						PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? 0 : PWM_PERIOD);
					break;
				}
				case 's':
				{
					for (i = 0; i < 8; i++)
						PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? PWM_PERIOD : 0);
					break;
				}
				case 'd':
				{
					for (i = 0; i < 4; i++)
						PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? 0 : PWM_PERIOD);
					for (i = 4; i < 8; i++)
						PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? PWM_PERIOD : 0);
					break;
				}
				case 'a':
				{
					for (i = 0; i < 4; i++)
						PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? PWM_PERIOD : 0);
					for (i = 4; i < 8; i++)
						PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? 0 : PWM_PERIOD);
					break;
				}
				case 'e':
				{
					for (i = 0; i < 8; i++)
						PWM_set_duty_cycle(&g_pwm, pwms[i], 0);
					break;
				}
				case 'q':
				{
					/*
					uint8_t str[80];
					uint8_t value[4];

					strcat(str, "|");

					Echo_update_data();
					Echo_get_data(&dist_data);
					for (i = 0; i < ANGLE_GRANULARITY; i++)
					{
						itoa(dist_data[i], value, 10);
						strcat(str, value);
						strcat(str, "|");
					}
					strcat(str, "\r\n");
					UART_send(&g_bt, str, strlen(str));
					*/
					break;
				}
				case '1':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_1);
					PWM_set_duty_cycle(&g_pwm, PWM_1, duty_c ? 0 : PWM_PERIOD);
					break;
				}
				case '2':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_2);
					PWM_set_duty_cycle(&g_pwm, PWM_2, duty_c ? 0 : PWM_PERIOD);
					break;
				}
				case '3':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_3);
					PWM_set_duty_cycle(&g_pwm, PWM_3, duty_c ? 0 : PWM_PERIOD);
					break;
				}
				case '4':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_4);
					PWM_set_duty_cycle(&g_pwm, PWM_4, duty_c ? 0 : PWM_PERIOD);
					break;
				}
				case '5':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_5);
					PWM_set_duty_cycle(&g_pwm, PWM_5, duty_c ? 0 : PWM_PERIOD);
					break;
				}
				case '6':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_6);
					PWM_set_duty_cycle(&g_pwm, PWM_6, duty_c ? 0 : PWM_PERIOD);
					break;
				}
				case '7':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_7);
					PWM_set_duty_cycle(&g_pwm, PWM_7, duty_c ? 0 : PWM_PERIOD);
					break;
				}
				case '8':
				{
					duty_c = PWM_get_duty_cycle(&g_pwm, PWM_8);
					PWM_set_duty_cycle(&g_pwm, PWM_8, duty_c ? 0 : PWM_PERIOD);
					break;
				}
			}
        }
    }
    return 0;
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

    PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
    Echo_init();
    UART_init( &g_bt, COREUARTAPB_2_2, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
    i2c_init(1); // argument no matter
    BMP_calibrate();
    MPU6050_initialize();
    MPU6050_setDLPFMode(0);
    MPU6050_setFullScaleGyroRange(1); // it's must set range of gyro's data     +-500(deg/sec)
    HMC_init();

    for (i = 0; i < 8; i++)
    	PWM_enable(&g_pwm, pwms[i]);

    for (i = 0; i < 8; i++)
    	PWM_set_duty_cycle(&g_pwm, pwms[i], 0);

    MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);
    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);
    init_timer();// run timer for micros();

}


