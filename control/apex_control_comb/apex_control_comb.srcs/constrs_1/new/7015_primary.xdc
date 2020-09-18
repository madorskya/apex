set_property PACKAGE_PIN D6 [get_ports {rgmii_rd[0]}]
set_property PACKAGE_PIN D7 [get_ports {rgmii_rd[1]}]
set_property PACKAGE_PIN A6 [get_ports {rgmii_rd[2]}]
set_property PACKAGE_PIN A7 [get_ports {rgmii_rd[3]}]
set_property PACKAGE_PIN A2 [get_ports rgmii_rx_ctl]
set_property PACKAGE_PIN D3 [get_ports rgmii_rxc]
set_property PACKAGE_PIN F2 [get_ports {rgmii_td[0]}]
set_property PACKAGE_PIN F1 [get_ports {rgmii_td[1]}]
set_property PACKAGE_PIN H1 [get_ports {rgmii_td[2]}]
set_property PACKAGE_PIN G1 [get_ports {rgmii_td[3]}]
set_property PACKAGE_PIN B2 [get_ports rgmii_tx_ctl]
set_property PACKAGE_PIN B1 [get_ports rgmii_txc]

set_property IOSTANDARD LVCMOS33 [get_ports rgmii_*]

set_property PACKAGE_PIN H5 [get_ports mdio_phy_mdc]
set_property PACKAGE_PIN H3 [get_ports mdio_phy_mdio_io]

set_property IOSTANDARD LVCMOS33 [get_ports mdio_phy_*]

set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports phy_rst]

create_clock -period 8.000 -name rgmii_rxc -add [get_ports rgmii_rxc]

# False path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -of [get_cells -hier -filter { name =~  *idelayctrl_reset_gen/*reset_sync* }] -filter {REF_PIN_NAME ==PRE }]

set_property SLEW FAST [get_ports {rgmii_td[3]}]
set_property SLEW FAST [get_ports {rgmii_td[2]}]
set_property SLEW FAST [get_ports {rgmii_td[1]}]
set_property SLEW FAST [get_ports {rgmii_td[0]}]
set_property SLEW FAST [get_ports rgmii_txc]
set_property SLEW FAST [get_ports rgmii_tx_ctl]

#set_property IDELAY_VALUE 16 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rx_ctl          }]
#set_property IDELAY_VALUE 16 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*            }]
#set_property IODELAY_GROUP gpr1 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rx_ctl          }]
#set_property IODELAY_GROUP gpr1 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*            }]
#set_property IODELAY_GROUP gpr1 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_idelayctrl}]

set_false_path -to [get_pins -hier -nocase -regexp {.*axi_eth_ex_des_data_sync_reg0.*/D}]
set_false_path -to [get_pins -hier -nocase -regexp {.*axi_eth_ex_des_reset_sync.*/PRE}  ]

set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]

# IMPORTANT: how to find pins on MYIR eval board:
# 1. on schematic, find pin label that you need, for example: IO_B13_LP13
# 2. go to SCHEMATIC page 3 with mezzanine connectors
# 3. find that label, and find the connector pin it's connected to (pin 104 in this example)
# 4. go to pin assignment table document
# 5. find that pin by number, find the ball number from table. Pin labels are WRONG in that table
#J14

set_property IOSTANDARD LVCMOS33 [get_ports scf_*]

set_property PULLUP true [get_ports scf_tck_*]
set_property PULLUP true [get_ports scf_tms_*]
set_property PULLUP true [get_ports scf_tdi_*]
set_property PULLUP true [get_ports scf_i2c_*]

set_property IOSTANDARD LVCMOS33 [get_ports ipmc_*]
set_property PULLUP true         [get_ports ipmc_*]

set_property IOSTANDARD LVCMOS33 [get_ports en_ipmb_zynq*]
set_property IOSTANDARD LVCMOS33 [get_ports ready_ipmb_zynq*]
set_property IOSTANDARD LVCMOS33 [get_ports ha*]
set_property IOSTANDARD LVCMOS33 [get_ports id*]
set_property IOSTANDARD LVCMOS33 [get_ports los_10g]
set_property IOSTANDARD LVCMOS33 [get_ports pim_alarm*]


#-------------------- from excel file -------------------------
set_property PACKAGE_PIN G6  [get_ports en_ipmb_zynq[0]]; # J1 pin 39
set_property PACKAGE_PIN B7  [get_ports en_ipmb_zynq[1]]; # J1 pin 49

set_property PACKAGE_PIN A4  [get_ports ready_ipmb_zynq[0]]; # J1 pin 47
set_property PACKAGE_PIN C5  [get_ports ready_ipmb_zynq[1]]; # J1 pin 57

set_property PACKAGE_PIN C3  [get_ports scl_10g]; # J1 pin 54
set_property PACKAGE_PIN F5  [get_ports sda_10g]; # J1 pin 56

# scl_zynq[1:0] and sda_zynq[1:0] on schematics
set_property PACKAGE_PIN F6  [get_ports ipmc_scl_0]; # J1 pin 41
set_property PACKAGE_PIN B6  [get_ports ipmc_scl_1]; # J1 pin 51
set_property PACKAGE_PIN A5  [get_ports ipmc_sda_0]; # J1 pin 45
set_property PACKAGE_PIN C6  [get_ports ipmc_sda_1]; # J1 pin 55

set_property PACKAGE_PIN W13  [get_ports los_10g]; # J2 pin 103
set_property PACKAGE_PIN AA9  [get_ports axi_rx_p[0]]; # J2 pin 117
set_property PACKAGE_PIN AA7  [get_ports axi_rx_p[1]]; # J2 pin 129
set_property PACKAGE_PIN W8  [get_ports axi_rx_p[2]]; # J2 pin 120
set_property PACKAGE_PIN W6  [get_ports axi_rx_p[3]]; # J2 pin 132
set_property PACKAGE_PIN Y4  [get_ports axi_tx_p[0]]; # J2 pin 116
set_property PACKAGE_PIN Y2  [get_ports axi_tx_p[1]]; # J2 pin 128
set_property PACKAGE_PIN AB5  [get_ports axi_tx_p[2]]; # J2 pin 113
set_property PACKAGE_PIN AB3  [get_ports axi_tx_p[3]]; # J2 pin 125

set_property PACKAGE_PIN J7  [get_ports ha[0]]; # J2 pin 18
set_property PACKAGE_PIN J6  [get_ports ha[1]]; # J2 pin 20
set_property PACKAGE_PIN J5  [get_ports ha[2]]; # J2 pin 24
set_property PACKAGE_PIN K5  [get_ports ha[3]]; # J2 pin 26
set_property PACKAGE_PIN M8  [get_ports ha[4]]; # J2 pin 28
set_property PACKAGE_PIN M7  [get_ports ha[5]]; # J2 pin 30
set_property PACKAGE_PIN N8  [get_ports ha[6]]; # J2 pin 32
set_property PACKAGE_PIN P8  [get_ports ha[7]]; # J2 pin 34
set_property PACKAGE_PIN Y18  [get_ports id[0]]; # J2 pin 68
set_property PACKAGE_PIN Y19  [get_ports id[1]]; # J2 pin 70
set_property PACKAGE_PIN V18  [get_ports id[2]]; # J2 pin 72

set_property PACKAGE_PIN AA20  [get_ports pim_alarm]; # J2 pin 77
#set_property PACKAGE_PIN W12  [get_ports qbv_on_off]; # J2 pin 101 ??

set_property PACKAGE_PIN N1  [get_ports scf_i2c_0_scl_io]; # J2 pin 9 
set_property PACKAGE_PIN N6  [get_ports scf_i2c_1_scl_io]; # J2 pin 13
set_property PACKAGE_PIN K4  [get_ports scf_i2c_2_scl_io]; # J2 pin 27
set_property PACKAGE_PIN R8  [get_ports scf_i2c_0_sda_io]; # J2 pin 7
set_property PACKAGE_PIN P1  [get_ports scf_i2c_1_sda_io]; # J2 pin 11
set_property PACKAGE_PIN P2  [get_ports scf_i2c_2_sda_io]; # J2 pin 25

set_property PACKAGE_PIN L7  [get_ports scf_tck_0]; # J2 pin 16
set_property PACKAGE_PIN P3  [get_ports scf_tck_1]; # J2 pin 23
set_property PACKAGE_PIN J8  [get_ports scf_tdi_0]; # J2 pin 10
set_property PACKAGE_PIN N5  [get_ports scf_tdi_1]; # J2 pin 15
set_property PACKAGE_PIN K8  [get_ports scf_tdo_0]; # J2 pin 12
set_property PACKAGE_PIN L5  [get_ports scf_tdo_1]; # J2 pin 17
set_property PACKAGE_PIN K7  [get_ports scf_tms_0]; # J2 pin 14
set_property PACKAGE_PIN L4  [get_ports scf_tms_1]; # J2 pin 19

# payload I2C from Elma chip
#set_property PACKAGE_PIN R2  [get_ports scl_zynq[2]]; # J2 pin 56
#set_property PACKAGE_PIN R3  [get_ports sda_zynq[2]]; # J2 pin 54
# local I2C from Elma chip (talking to its slaves)
#set_property PACKAGE_PIN P5  [get_ports scl_zynq[3]]; # J2 pin 50
#set_property PACKAGE_PIN P6  [get_ports sda_zynq[3]]; # J2 pin 48
# DAC I2C for spoofing Elma chip sensors
#set_property PACKAGE_PIN W11  [get_ports scl_zynq[4]]; # J2 pin 110
#set_property PACKAGE_PIN V11  [get_ports sda_zynq[4]]; # J2 pin 108

set_property PACKAGE_PIN T16  [get_ports tach]; # J2 pin 84
