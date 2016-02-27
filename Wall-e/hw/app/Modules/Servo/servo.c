/*
 * servo.c
 *
 *  Created on: 21 февр. 2016 г.
 *      Author: kruci_000
 */

#include "servo.h"

void Servo_init(uint32_t prescale, uint32_t period)
{
	servo_prescale = prescale;
	servo_period   = period;
}

void Servo_enable()
{
    PWM_enable(&g_pwm, SERVO_PWM);
}

void Servo_disable()
{
    PWM_disable(&g_pwm, SERVO_PWM);
}

/* setup servo's angle
 * angle: can be from 0 to 180
 */
uint8_t Servo_set_angle(uint8_t angle)
{
	if (angle < 0 || 180 < angle)
		return 1;
	/* Servo period should be about 20 ms
	 * -90 - 1 ms duty cycle
	 *  90 - 2 ms duty cycle
	 */
	uint32_t low_duty_cycle = servo_period / 20;
	uint32_t duty_cycle = low_duty_cycle + (low_duty_cycle * angle) / 180;
	PWM_set_duty_cycle(&g_pwm, SERVO_PWM, duty_cycle);
	return 0;
}
