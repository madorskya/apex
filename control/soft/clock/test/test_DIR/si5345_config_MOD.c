/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <sys/mman.h>
#include <linux/limits.h>
#include <pthread.h>
#include "i2c-chip.h"
#include "toml.h"

//#include "Si5345-160p3144-apexsync-Registers.h"
#include "Si5345-160p3144_40p08_in_apexsync-Registers.h"

// Make the SDK console work in the debugger
#define printf(...) \
 fprintf(stdout, __VA_ARGS__); \
 fflush(stdout);

typedef long long int u64;
typedef unsigned int u32;

pthread_spinlock_t lock;

/*int run_command(char* cline, char* output)
{
	FILE *fp;
	int status;
	char path[PATH_MAX];

	output[0] = 0; // clear output string

	fp = popen(cline, "r");
	if (fp == NULL)
	{
	  printf ("cannot popen\n");
	  return (-1);
	}*/
/* Handle error */;


/*	while (fgets(path, PATH_MAX, fp) != NULL)
	{
		strcat(output, path);
//	  printf("%s", path);
	}

	status = pclose(fp);
	if (status == -1)
	{
	  // Error reported by pclose() 

	}
	else
	{
	  // Use macros described under wait() to inspect `status' in order
	  //	 to determine success/failure of command executed by popen() 
	}
	return status;
}*/

// sequence is taken from SI5338 data sheet, page 23

int main(int argc, char * argv[])
{
	pthread_spin_init(&lock, 0);
	pthread_spin_trylock(&lock);

	toml_table_t* config;
	toml_table_t* i2c_chip_addr;
	toml_array_t* arr;
	toml_raw_t raw;

	int n;

	FILE* fp;
	char errbuf[1000];

	/* Open the file. */
	if (0 == (fp = fopen("/root/clock/si5345_config_DIR/CONFIG.toml", "r"))) {
		//return handle_error();
	}

	/* Run the files through the parser. */
	config = toml_parse_file(fp, errbuf, sizeof(errbuf));
	if (0 == config) {
		//return handle_error();
	}

	fclose(fp);

	/* Locate the [I2C_CHIPS] table. */
	if (0 == (i2c_chip_addr = toml_table_in(config, "I2C_CHIPS"))) {
		//return handle_error();
	}

	/* Extract 'i2c_chip' config array. */
	if (0 == (arr = toml_array_in(i2c_chip_addr, "i2c_chip"))) {
		//return handle_error();
	}

	long long int i2c_chip[toml_array_nelem(arr)];

	for (n=0; n<toml_array_nelem(arr); n++) {
		/* Extract 'i2c_chip[n]' config value. */
		if (0 == (raw = toml_raw_at(arr, n))) {
			//return handle_error();
		};
									
		/* Convert the raw value into an int. */
		if (toml_rtoi(raw, &i2c_chip[n])) {
			//return handle_error();
		};
	}		

	toml_free(config);

/////////////////////////////////////////////////////////////////////////////	

	//int bus = 1;
	// i2c addresses for each synth
	//int chip[] = {0x68}; // list of chip addresses to program
	// register arrays for each synth
	si5345_revd_register_t* regs[] = {si5345_revd_registers};
	//char * i2cset = "i2cset -y -m %d %d 0x%02x 0x%02x 0x%02x"; // mask bus chip addr value
	//char output[PATH_MAX], cmd[PATH_MAX];
	int i, j;
	int dwords = sizeof(si5345_revd_registers)/sizeof(si5345_revd_register_t); // size of register dump
	int page_now = -1, page_old = -2;

	i2c_chip_initialize();

	// set multiplexor on WIB
	// TBD, write I2C chain selector into 0xa00c0004, bits 3:0

	for (j = 0; j < sizeof(i2c_chip)/sizeof(int)-1; j++) // chip loop
	{
		// reset page, so it's selected for each chip at the start
		page_now = -1;
		page_old = -2;
		// dump registers
		for (i = 0; i < dwords; i ++)
		{
			si5345_revd_register_t rd = regs[j][i];

			// detect page switches
			page_old = page_now;
			page_now = (rd.address >> 8) & 0xff;
			if (page_now != page_old)
			{
				// page changed, switch
				//sprintf (cmd, i2cset, 0xff, bus, chip[j], 1, page_now);
				//run_command (cmd, output);
				//printf ("%s = %s\n", cmd, output);
				i2c_write(i2c_fd_bus, i2c_chip[j], 1, page_now);
			}

			//sprintf (cmd, i2cset, 0xff, bus, chip[j], rd.address & 0xff, rd.value);
			//run_command (cmd, output);
			//printf ("%s = %s\n", cmd, output);
			i2c_write(i2c_fd_bus, i2c_chip[j], rd.address & 0xff, rd.value);
			if (i == 2) usleep (300000);
//			usleep (20000);
		}
		// set page back to 0
		//sprintf (cmd, i2cset, 0xff, bus, chip[j], 1, 0);
		//run_command (cmd, output);
		//printf ("%s = %s\n", cmd, output);
		i2c_write(i2c_fd_bus, i2c_chip[j], 1, 0);
		printf ("si5345 configuration finished, a = 0x%x\n", i2c_chip[j]);
	}
	
	i2c_chip_deinitialize();

	pthread_spin_unlock(&lock);
	pthread_spin_destroy(&lock);

	return EXIT_SUCCESS;
}
