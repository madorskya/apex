#!/bin/bash
# IMPORTANT: run exp_reg_config.sh before using
# disable CDR in 26G channels
# registers in expansion register for each FF
reg=(0x50 0x50 0x40 0x40 0x48 0x48 0x48 0x48)

# values of registers for each FF
val=(0xdf 0xbf 0xfd 0xfb 0xef 0xfe 0xbf 0xfb)

i2cset -y 2 0x71 1 # switch to exp reg branch

for i in 1 1
do
	i2cset -y 2 0x45 ${reg[$i]} ${val[$i]} # select one FF

	i2cset -y 2 0x71 2 # switch to FF branch

	i2cget -y 2 0x50 0    # read FF ID
	i2cget -y 2 0x50 98   # read CDR enable reg
	i2cset -y 2 0x50 98 0xff # enable
	i2cget -y 2 0x50 98   # read again

	i2cset -y 2 0x71 1 # switch to exp reg branch

#	i2cset -y 2 0x45 ${reg[$i]} 0xff # unselect all FFs

done;
