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

create_clock -period 8.000 -name rgmii_rxc -waveform {0.000 4.000} [get_ports rgmii_rxc]


# False path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -of [get_cells -hier -filter { name =~  *idelayctrl_reset_gen/*reset_sync* }] -filter {REF_PIN_NAME ==PRE }]

set_property SLEW FAST [get_ports {rgmii_td[3]}]
set_property SLEW FAST [get_ports {rgmii_td[2]}]
set_property SLEW FAST [get_ports {rgmii_td[1]}]
set_property SLEW FAST [get_ports {rgmii_td[0]}]
set_property SLEW FAST [get_ports rgmii_txc]
set_property SLEW FAST [get_ports rgmii_tx_ctl]

set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp1 [get_cells -hier -filter {name =~ *_i/gmii_to_rgmii_0/U0/*_gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*            }]
set_property IDELAY_VALUE 16 [get_cells -hier -filter {name =~ *_i/gmii_to_rgmii_0/U0/*_gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*}]
set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp1 [get_cells *_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/*_gmii_to_rgmii_0_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/gen_rgmii_rx_zq.delay_rgmii_rx_ctl]
set_property IDELAY_VALUE 16 [get_cells *_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/*_gmii_to_rgmii_0_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/gen_rgmii_rx_zq.delay_rgmii_rx_ctl]
# IODELAY group for GMII-to-RGMII block
set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp1 [get_cells *_i/gmii_to_rgmii_0/U0/i_*_gmii_to_rgmii_0_0_idelayctrl]

# Rename the gmii_to_rgmii_0_gmii_clk_125m_out clock to gmii_clk_125m_out so that the in-built constraints will find it
# Based on AR57197: http://www.xilinx.com/support/answers/57197.html
create_clock -period 8.000 -name gmii_clk_125m_out [get_pins *_i/gmii_to_rgmii_0/U0/i_*_gmii_to_rgmii_0_0_clocking/mmcm_adv_inst/CLKOUT0]


#set_property IDELAY_VALUE 16 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rx_ctl          }]
#set_property IDELAY_VALUE 16 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*            }]
#set_property IODELAY_GROUP gpr1 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rx_ctl          }]
#set_property IODELAY_GROUP gpr1 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*            }]
#set_property IODELAY_GROUP gpr1 [get_cells -hier -filter {name =~ *gmii_to_rgmii_0_0_idelayctrl}]

#set_false_path -to [get_pins -hier -nocase -regexp {.*axi_eth_ex_des_data_sync_reg0.*/D}]
#set_false_path -to [get_pins -hier -nocase -regexp {.*axi_eth_ex_des_reset_sync.*/PRE}  ]

#set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]

