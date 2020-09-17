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
set_property PACKAGE_PIN AA11 [get_ports TCK_0]; # pin 2
set_property PACKAGE_PIN AB11 [get_ports TMS_0]; # pin 4
set_property PACKAGE_PIN R17  [get_ports TDI_0]; # pin 6
set_property PACKAGE_PIN T17  [get_ports TDO_0]; # pin 8

# pinout of J15 connector reworked for apex adapter
set_property PACKAGE_PIN W11 [get_ports TCK_1]; # pin 1
set_property PACKAGE_PIN V11 [get_ports TMS_1]; # pin 3
set_property PACKAGE_PIN U12 [get_ports TDI_1]; # pin 5
set_property PACKAGE_PIN U11 [get_ports TDO_1]; # pin 7

set_property PACKAGE_PIN U19  [get_ports ipmc_scl_0]; # J13 pin 1
set_property PACKAGE_PIN V19  [get_ports ipmc_sda_0]; # J13 pin 3
set_property PACKAGE_PIN AB16 [get_ports ipmc_scl_1]; # J13 pin 5
set_property PACKAGE_PIN AB17 [get_ports ipmc_sda_1]; # J13 pin 7

set_property IOSTANDARD LVCMOS33 [get_ports TCK_*]
set_property IOSTANDARD LVCMOS33 [get_ports TMS_*]
set_property IOSTANDARD LVCMOS33 [get_ports TDI_*]
set_property IOSTANDARD LVCMOS33 [get_ports TDO_*]

set_property PULLUP true [get_ports TCK_*]
set_property PULLUP true [get_ports TMS_*]
set_property PULLUP true [get_ports TDI_*]

set_property IOSTANDARD LVCMOS33 [get_ports ipmc_*]
set_property PULLUP true         [get_ports ipmc_*]
