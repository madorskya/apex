‘client_zynq_xvc.cc’ - Zynq compatible client tool to load connected Kintex7 bitstream using JTAG XVC protocol

To compile client_zynq_xvc for Zynq ‘make_arm client_zynq_xvc’
(‘make client_zynq_xvc’ to compile x86 linux compatible version)
Copy compiled binary to Zynq board along with bitstream BIN file for uploading to FPGA
Make sure that XVC server is running 
To run ‘client_zynq_xvc hostname port binfile’
(for example ‘./client_zynq_xvc localhost 2543 emtf_control_bm.bin’)
Note that Zynq locally running XVC client version is noticeably slower than remotely running x86 version

‘client_zynq_ioctl.cc’ - Zynq compatible client tool to load connected Kintex7 bitstream using JTAG device driver on Zynq board

To compile client_zynq_ioctl for Zynq ‘make_arm client_zynq_ioctl’
Copy compiled binary to Zynq board along with bitstream BIN file for uploading to FPGA
Make sure that xilinx_xvc_driver.ko is loaded
To run ‘client_zynq_ioctl /dev/device binfile’
    (for example ‘client_zynq_ioctl /dev/xilinx_xvc_driver_0 emtf_control_bm.bin’)

