/*
 * rover_control.h
 *
 *  Created on: 05 марта 2016 г.
 *      Author: kruci_000
 */

#ifndef APP_MODULES_ROVERCONTROL_ROVER_CONTROL_H_
#define APP_MODULES_ROVERCONTROL_ROVER_CONTROL_H_

#include "drivers/CorePWM/core_pwm.h"
#include "mss_hw_platform.h"

#define PWM_PRESCALE        1
#define PWM_PERIOD          1000
#define PWM_MAX PWM_PERIOD

typedef enum {
	FORWARD,
	BACKWARD,
	ROUND_LEFT,
	ROUND_RIGHT,
	STOP
} RoverDirections;

void Rover_init();
void Rover_go(RoverDirections dir);

#endif /* APP_MODULES_ROVERCONTROL_ROVER_CONTROL_H_ */
