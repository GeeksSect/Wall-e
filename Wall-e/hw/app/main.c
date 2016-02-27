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

#include "../hal/hal.h"
#include "../mss_hw_platform.h"
#include "../CMSIS/m2sxxx.h"

#include "../drivers/CoreI2C/core_i2c.h"
#include "../drivers/CorePWM/core_pwm.h"
#include "../drivers/CoreUARTapb/core_uart_apb.h"
#include "../drivers_config/sys_config/sys_config.h"

#include <stdlib.h>
#include <math.h>

#define BAUD_VALUE_115200   26
#define PWM_PRESCALE        249
#define PWM_PERIOD          3999
#define threshold           20
#define magn_skip_val       10

UART_instance_t g_bt;
<<<<<<< HEAD
UART_instance_t g_servo;
=======
>>>>>>> bf846f70c8c7d64ec2a087407add25a0b98e4c40
pwm_instance_t  g_pwm;

void press_any_key_to_continue(void);
void setup();

int main(void)
{
    uint8_t rx_buff[128];
    uint8_t rx_size = 0;
    uint8_t i = 0;

    uint32_t motor[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    uint8_t dist_buf[128];
    uint8_t dist_buf_size;

    setup();

    PWM_enable(&g_pwm, PWM_9);
    PWM_set_duty_cycle(&g_pwm, PWM_9, 300);

    press_any_key_to_continue();
<<<<<<< HEAD
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Hello, I am Rover!\n");
    press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Send anything for calibration!\n");
    press_any_key_to_continue();
=======
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Hello, I am Rover! (Press to continue)\n");
    press_any_key_to_continue();
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Press to calibration!\n");
    press_any_key_to_continue();

    MPU6050_calibration();

>>>>>>> bf846f70c8c7d64ec2a087407add25a0b98e4c40
    UART_polled_tx_string(&g_bt, (const uint8_t *)"Okay, let's burn it!\n");
    press_any_key_to_continue();

    while (1 == 1)
    {
<<<<<<< HEAD
        rx_size = UART_get_rx(&g_bt, rx_buff, sizeof(rx_buff));
        for (i = 0; i < rx_size; i++) // if something ready to read
=======
        rx_size = UART_get_rx(&g_bt, rx_buff + wr_pos, sizeof(rx_buff) - wr_pos);
        wr_pos += rx_size;
        while(wr_pos - rd_pos > 6) // if something ready to read
        {
            if(rx_buff[rd_pos + 6] == 10)
            {
                switch (rx_buff[rd_pos])
                {
                    case 'p':
                    {
                        pitch0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500) * 2;
                        break;
                    }
                    case 'r':
                    {
                        roll0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500) * 2;
                        break;
                    }
                    case 'y':
                    {
                        yaw0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500);
                        break;
                    }
                    case 'f':
                    {
                        force = (my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'P':
                    {
                        set_P(my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'I':
                    {
                        set_I(my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'D':
                    {
                        set_D(my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'x':
                    {
                        setLim_P(my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'z':
                    {
                        setLim_D(my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'w':
                    {
                        setLim_I(my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'a':
                    {
                        motor_mask = (my_atoi (rx_buff + rd_pos + 1, 5));
                        break;
                    }
                    case 'm':
                    {
                        print_mask = (my_atoi (rx_buff + rd_pos + 1, 5));
                        telemetry_skip = 0;
                        for(i = 0; i < 13; i++)
                            if(print_mask & (1<<i))
                                telemetry_skip++;
                        break;
                    }
                }
            }
            rd_pos++;
        }

        if(wr_pos > 90) // if read buffer come full
        {
            rd_pos=wr_pos = 0;
        }

        if(magn_skip > magn_skip_val)
>>>>>>> bf846f70c8c7d64ec2a087407add25a0b98e4c40
        {
			switch (rx_buff[i])
			{
				case 'w':
				{
					break;
				}
				case 's':
				{
					break;
				}
				case 'a':
				{
					break;
				}
				case 'd':
				{
					break;
				}
				case 'q':
				{
					break;
				}
				case '1':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_1, PWM_PERIOD);
					break;
				}
				case '2':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_2, PWM_PERIOD);
					break;
				}
				case '3':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_3, PWM_PERIOD);
					break;
				}
				case '4':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_4, PWM_PERIOD);
					break;
				}
				case '5':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_5, PWM_PERIOD);
					break;
				}
				case '6':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_6, PWM_PERIOD);
					break;
				}
				case '7':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_7, PWM_PERIOD);
					break;
				}
				case '8':
				{
					PWM_set_duty_cycle(&g_pwm, PWM_8, PWM_PERIOD);
					break;
				}
			}
        }
<<<<<<< HEAD
=======
        else
            magn_skip++;
        MPU6050_getMotion6(&az, &ay, &ax, &gz, &gy, &gx, 1); // get raw data
        acell_angle(&ax, &ay, &az, &acell_pitch, &acell_roll);
        d_t = micros() - t_prev;
        t_prev = micros();
        if(d_t > 50000) // if shit happened and delta time is so big
        {
            d_t = 0;
        }
        my_angle(&gx, &gy, &gz, &acell_pitch, &acell_roll, &magn_yaw, &pitch, &roll, &yaw, d_t);
        my_yaw(&mx, &my, &mz, &magn_yaw, &pitch, &roll);

        pitch += pitch0;
        roll += roll0;
        my_PID(&pitch, &roll, &yaw, m_power, &force, &gx, &gy, &gz, d_t);

//------------------ send telemetry
        if(telemetry_skip_counter > telemetry_skip)
        {
            telemetry_skip_counter = 0;

            send_telemetry( &g_bt,
                            print_mask,
                            pitch, roll, yaw,
                            get_P_p(), get_I_p(), get_D_p(),
                            get_P_r(), get_I_r(), get_D_r(),
                            get_P_y(), get_I_y(), get_D_y(),
                            d_t);
        }
        else
            telemetry_skip_counter++;
//------------------ send telemetry finished
>>>>>>> bf846f70c8c7d64ec2a087407add25a0b98e4c40
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
    PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
<<<<<<< HEAD
    UART_init( &g_servo, COREUARTAPB_2_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
    UART_init( &g_bt, COREUARTAPB_2_2, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
=======
    UART_init(&g_bt, COREUARTAPB_2_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY));
>>>>>>> bf846f70c8c7d64ec2a087407add25a0b98e4c40
    i2c_init(1); // argument no matter
    BMP_calibrate();
    MPU6050_initialize();
    MPU6050_setDLPFMode(0);
    MPU6050_setFullScaleGyroRange(1); // it's must set range of gyro's data     +-500(deg/sec)
    HMC_init();

<<<<<<< HEAD
    PWM_enable(&g_pwm, PWM_1);
    PWM_enable(&g_pwm, PWM_2);
    PWM_enable(&g_pwm, PWM_3);
    PWM_enable(&g_pwm, PWM_4);
    PWM_enable(&g_pwm, PWM_5);
    PWM_enable(&g_pwm, PWM_6);
    PWM_enable(&g_pwm, PWM_7);
    PWM_enable(&g_pwm, PWM_8);

    PWM_set_duty_cycle(&g_pwm, PWM_1, 0);

=======
>>>>>>> bf846f70c8c7d64ec2a087407add25a0b98e4c40
    MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);
    init_timer();// run timer for micros();
}


