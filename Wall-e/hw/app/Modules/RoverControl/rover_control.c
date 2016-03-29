/*
 * rover_control.c
 *
 *  Created on: 05 марта 2016 г.
 *      Author: kruci_000
 */

#include "rover_control.h"

pwm_instance_t  g_pwm;
pwm_id_t pwms[8]= {PWM_1, PWM_2, PWM_3, PWM_4, PWM_5, PWM_6, PWM_7, PWM_8};


void Rover_init() {
	uint32_t i;

    PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);

    for (i = 0; i < 8; i++)
    	PWM_enable(&g_pwm, pwms[i]);

    Rover_go(STOP);
}

void Rover_go(RoverDirections dir) {
	uint32_t i;

	switch (dir) {
		case FORWARD: {
			for (i = 0; i < 8; i++)
				PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? 0 : PWM_MAX);
			break;
		}
		case BACKWARD: {
			for (i = 0; i < 8; i++)
				PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? PWM_MAX : 0);
			break;
		}
		case ROUND_LEFT: {
			for (i = 0; i < 4; i++)
				PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? PWM_MAX : 0);
			for (i = 4; i < 8; i++)
				PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? 0 : PWM_MAX);
			break;
		}
		case ROUND_RIGHT: {
			for (i = 0; i < 4; i++)
				PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? 0 : PWM_MAX);
			for (i = 4; i < 8; i++)
				PWM_set_duty_cycle(&g_pwm, pwms[i], (i % 2) ? PWM_MAX : 0);
			break;
		}
		case STOP: {
			for (i = 0; i < 8; i++)
				PWM_set_duty_cycle(&g_pwm, pwms[i], 0);
			break;
		}
	}
}
