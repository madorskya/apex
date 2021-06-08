#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>

#define MAX_MUTEX_COUNT 20
#define MESSAGE "/msg"
#define MUTEX "/mutex_lock"

void
mutex_initialize( void )
{
	pthread_mutex_t* mutex;
	char MUTEX[20]
	int des_mutex[MAX_MUTEX_COUNT];
	int mode = S_IRWXU | S_IRWXG;

	snprintf(I2C_ADAPTER_0, 19, "/dev/i2c-%d", (int) i2c_cadence);
}
