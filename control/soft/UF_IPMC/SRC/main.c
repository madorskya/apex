/*
    UF_IPMC/main.c

    Original work Copyright (C) 2007-2008 Gokhan Sozmen
    http://www.coreipm.com

    Modified work Copyright 2020 Aleksei Greshilov
    aleksei.greshilov@cern.ch

    UF_IPMC is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    UF_IPMC is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with UF_IPMC.  If not, see <https://www.gnu.org/licenses/>.
*/
#include "ipmi.h"
#include "debug.h"
#include "ws.h"
#include "timer.h"
#include "ipmc.h"
#include "i2c.h"
#include "i2c-sensor.h"
#include "user-sensor.h"
#include "picmg.h"
#include "toml.h"

extern unsigned long long int lbolt;

/*==============================================================
 * main()
 *==============================================================*/
int main()
{
	unsigned long time;

	/* Initialize system */
	ws_init();
	timer_initialize();
	semaphore_initialize();
	i2c_initialize();
	i2c_sensor_initialize();
	module_init();

    dbprintf( DBG_I2C | DBG_LVL1, "Hello World\n");
	
    time = lbolt;

//	picmg_m1_state( 0 );
	
	/* Do forever */
	while( 1 )
	{
		/* Blink system activity LEDs once every second */
        /*if( ( time + 2 ) < lbolt ) {
			time = lbolt;
			gpio_toggle_activity_led();
        }*/
		ws_process_work_list_0();
		//usleep(500000);
		ws_process_work_list_1();
		//usleep(500000);
		timer_process_callout_queue();
	}

	i2c_deinitialize();
	i2c_sensor_deinitialize();
}

