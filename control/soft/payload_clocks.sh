# IPMC turns power on now, no need to set this bit
#distrib/busybox-armv7l devmem 0x41220000 32 0x20
#sleep 1
clock/apex-async-250M-i2c1.sh
clock/si5345_config

