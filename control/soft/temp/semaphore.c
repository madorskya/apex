#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include "semaphore.h"

#define MAX_DEVICES 20

int fd_semid[MAX_DEVICES];

int lock_device(int dev_ind)
{
	int sem_id = fd_semid[dev_ind];
	int nsops = 2;
	struct sembuf sops[2];

	/* wait for semaphore to reach zero */
	sops[0].sem_num = 0; /* We only use one track */
	sops[0].sem_op = 0; /* wait for semaphore flag to become zero */
	sops[0].sem_flg = SEM_UNDO; /* take off semaphore asynchronous  */

	sops[1].sem_num = 0;
	sops[1].sem_op = 1; /* increment semaphore -- take control of track */
	sops[1].sem_flg = SEM_UNDO | IPC_NOWAIT; /* take off semaphore */

	if ((semop(sem_id, sops, nsops)) == -1)
	{
		printf("lock semop: semop failed\n");
		return -1;
	}
	return 0;
}

int unlock_device(int dev_ind)
{
	int sem_id = fd_semid[dev_ind];
	int nsops = 1;
	struct sembuf sops[2];

	/* wait for semaphore to reach zero */
	sops[0].sem_num = 0;
	sops[0].sem_op = -1; /* Give UP COntrol of track */
	sops[0].sem_flg = SEM_UNDO | IPC_NOWAIT; /* take off semaphore, asynchronous  */

	if ((semop(sem_id, sops, nsops)) == -1)
	{
		printf("unlock semop: semop failed\n");
		return -1;
	}
	return 0;
}

int create_semaphore (int dev_ind)
{
	int semid;
	key_t sem_key;
	int semflg = IPC_CREAT | 0666;
	int nsems = 1;
	char * sem_fn = (char*)"/tmp/i2c_semaphore_0.txt";
	//char sem_fn[50];
	
	if (dev_ind = 1)
	{
		sem_fn = (char*)"/tmp/i2c_semaphore_1.txt";
	}  

	//snprintf(sem_fn, 49, "/tmp/semaphore-i2c-%n", dev_ind);
	FILE* sem_fd = fopen (sem_fn, "wr"); // create a file for semaphore
	if (sem_fd == NULL)
	{
		printf ("cannot open semaphore file\n");
		return -1;
	}

    /* generate key */
    if ((sem_key = ftok(sem_fn, (char)dev_ind)) == -1)
	{
        printf("ftok failed, dev_ind: %d\n", dev_ind);
		return -2;
	}

    /* set up semaphore */

    //printf("\nsemget: Setting up semaphore: semget(%#lx, %%#o)\n",
	//		sem_key, nsems, semflg);

    if ((semid = semget(sem_key, nsems, semflg)) == -1)
	{
        printf("semget failed\n");
		return -3;
	}
    fd_semid[dev_ind] = semid; // store semaphore ID in map

	return 0;
}


