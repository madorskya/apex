#!/bin/bash
# disable CDR in 16G channels
# registers in expansion register for each FF
reg=(0x50 0x40 0x50 0x50 0x50 0x50 0x50 0x48 0x48 0x48 0x48)

# values of registers for each FF
val=(0x7f 0xf7 0xef 0xf7 0xfb 0xfd 0xfe 0x7f 0xf7 0xfd 0xdf)

for i in 0 1 2 3 4 5 6 7 8 9 10
do
	i2cset -y 1 0x45 ${reg[$i]} ${val[$i]} # select one FF

	i2cset -y 1 0x71 2 # switch to FF branch

	i2cget -y 1 0x50 0    # read FF ID
	i2cget -y 1 0x50 98   # read CDR enable reg
	i2cset -y 1 0x50 98 0 # disable
	i2cget -y 1 0x50 98   # read again

	i2cset -y 1 0x71 1 # switch to exp reg branch

	i2cset -y 1 0x45 ${reg[$i]} 0xff # unselect all FFs

done;
