
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# axisafety, axisafety, axisafety, i2cSlave, i2c_switch, i2c_switch, i2cSlave, i2c_switch, i2c_switch

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z015clg485-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: ipmc_i2c_1
proc create_hier_cell_ipmc_i2c_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_ipmc_i2c_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2


  # Create pins
  create_bd_pin -dir I -from 7 -to 0 ha
  create_bd_pin -dir IO i2c1_scl
  create_bd_pin -dir IO i2c1_sda
  create_bd_pin -dir O -from 6 -to 0 i2c_addr_received
  create_bd_pin -dir O -type intr iic2intc_irpt
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio_0

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]

  # Create instance: i2cSlave_0, and set properties
  set block_name i2cSlave
  set block_cell_name i2cSlave_0
  if { [catch {set i2cSlave_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2cSlave_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: i2c_switch_0, and set properties
  set block_name i2c_switch
  set block_cell_name i2c_switch_0
  if { [catch {set i2c_switch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2c_switch_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: i2c_switch_1, and set properties
  set block_name i2c_switch
  set block_cell_name i2c_switch_1
  if { [catch {set i2c_switch_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2c_switch_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI2] [get_bd_intf_pins axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins S_AXI1] [get_bd_intf_pins axi_iic_0/S_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins i2c1_sda] [get_bd_pins i2c_switch_1/s]
  connect_bd_net -net Net1 [get_bd_pins i2c1_scl] [get_bd_pins i2c_switch_0/s]
  connect_bd_net -net axi_bram_ctrl_0_bram_addr_a [get_bd_pins axi_bram_ctrl_0/bram_addr_a] [get_bd_pins i2cSlave_0/bram_addr]
  connect_bd_net -net axi_bram_ctrl_0_bram_clk_a [get_bd_pins axi_bram_ctrl_0/bram_clk_a] [get_bd_pins i2cSlave_0/bram_clk]
  connect_bd_net -net axi_bram_ctrl_0_bram_en_a [get_bd_pins axi_bram_ctrl_0/bram_en_a] [get_bd_pins i2cSlave_0/bram_en]
  connect_bd_net -net axi_bram_ctrl_0_bram_rst_a [get_bd_pins axi_bram_ctrl_0/bram_rst_a] [get_bd_pins i2cSlave_0/bram_rst]
  connect_bd_net -net axi_bram_ctrl_0_bram_we_a [get_bd_pins axi_bram_ctrl_0/bram_we_a] [get_bd_pins i2cSlave_0/bram_we]
  connect_bd_net -net axi_bram_ctrl_0_bram_wrdata_a [get_bd_pins axi_bram_ctrl_0/bram_wrdata_a] [get_bd_pins i2cSlave_0/bram_wrdata]
  connect_bd_net -net axi_gpio_0_gpio_io_o1 [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins i2c_switch_0/sel] [get_bd_pins i2c_switch_1/sel]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins iic2intc_irpt] [get_bd_pins axi_iic_0/iic2intc_irpt]
  connect_bd_net -net axi_iic_0_scl_o [get_bd_pins axi_iic_0/scl_o] [get_bd_pins i2c_switch_0/s0_i]
  connect_bd_net -net axi_iic_0_scl_t [get_bd_pins axi_iic_0/scl_t] [get_bd_pins i2c_switch_0/s0_t]
  connect_bd_net -net axi_iic_0_sda_o [get_bd_pins axi_iic_0/sda_o] [get_bd_pins i2c_switch_1/s0_i]
  connect_bd_net -net axi_iic_0_sda_t [get_bd_pins axi_iic_0/sda_t] [get_bd_pins i2c_switch_1/s0_t]
  connect_bd_net -net ha_1 [get_bd_pins ha] [get_bd_pins i2cSlave_0/hardware_address]
  connect_bd_net -net i2cSlave_0_bram_rddata [get_bd_pins axi_bram_ctrl_0/bram_rddata_a] [get_bd_pins i2cSlave_0/bram_rddata]
  connect_bd_net -net i2cSlave_0_i2c_addr_received [get_bd_pins i2c_addr_received] [get_bd_pins i2cSlave_0/i2c_addr_received]
  connect_bd_net -net i2cSlave_0_int [get_bd_pins irq] [get_bd_pins i2cSlave_0/irq]
  connect_bd_net -net i2cSlave_0_sda_out [get_bd_pins i2cSlave_0/sda_out] [get_bd_pins i2c_switch_1/s1_i]
  connect_bd_net -net i2cSlave_0_sda_t [get_bd_pins i2cSlave_0/sda_t] [get_bd_pins i2c_switch_1/s1_t]
  connect_bd_net -net i2c_switch_0_s0_o [get_bd_pins axi_iic_0/scl_i] [get_bd_pins i2c_switch_0/s0_o]
  connect_bd_net -net i2c_switch_0_s1_o [get_bd_pins i2cSlave_0/scl] [get_bd_pins i2c_switch_0/s1_o]
  connect_bd_net -net i2c_switch_1_s0_o [get_bd_pins axi_iic_0/sda_i] [get_bd_pins i2c_switch_1/s0_o]
  connect_bd_net -net i2c_switch_1_s1_o [get_bd_pins i2cSlave_0/sda_in] [get_bd_pins i2c_switch_1/s1_o]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins i2cSlave_0/clk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins i2cSlave_0/rst]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins i2c_switch_0/s1_i] [get_bd_pins i2c_switch_0/s1_t] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ipmc_i2c_0
proc create_hier_cell_ipmc_i2c_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_ipmc_i2c_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2


  # Create pins
  create_bd_pin -dir I -from 7 -to 0 ha
  create_bd_pin -dir IO i2c1_scl
  create_bd_pin -dir IO i2c1_sda
  create_bd_pin -dir O -from 6 -to 0 i2c_addr_received
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir I s0_i
  create_bd_pin -dir I s0_i1
  create_bd_pin -dir O s0_o
  create_bd_pin -dir O s0_o1
  create_bd_pin -dir I s0_t
  create_bd_pin -dir I s0_t1
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio_0

  # Create instance: i2cSlave_0, and set properties
  set block_name i2cSlave
  set block_cell_name i2cSlave_0
  if { [catch {set i2cSlave_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2cSlave_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: i2c_switch_0, and set properties
  set block_name i2c_switch
  set block_cell_name i2c_switch_0
  if { [catch {set i2c_switch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2c_switch_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: i2c_switch_1, and set properties
  set block_name i2c_switch
  set block_cell_name i2c_switch_1
  if { [catch {set i2c_switch_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2c_switch_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI2] [get_bd_intf_pins axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins i2c1_sda] [get_bd_pins i2c_switch_1/s]
  connect_bd_net -net Net1 [get_bd_pins i2c1_scl] [get_bd_pins i2c_switch_0/s]
  connect_bd_net -net axi_bram_ctrl_0_bram_addr_a [get_bd_pins axi_bram_ctrl_0/bram_addr_a] [get_bd_pins i2cSlave_0/bram_addr]
  connect_bd_net -net axi_bram_ctrl_0_bram_clk_a [get_bd_pins axi_bram_ctrl_0/bram_clk_a] [get_bd_pins i2cSlave_0/bram_clk]
  connect_bd_net -net axi_bram_ctrl_0_bram_en_a [get_bd_pins axi_bram_ctrl_0/bram_en_a] [get_bd_pins i2cSlave_0/bram_en]
  connect_bd_net -net axi_bram_ctrl_0_bram_rst_a [get_bd_pins axi_bram_ctrl_0/bram_rst_a] [get_bd_pins i2cSlave_0/bram_rst]
  connect_bd_net -net axi_bram_ctrl_0_bram_we_a [get_bd_pins axi_bram_ctrl_0/bram_we_a] [get_bd_pins i2cSlave_0/bram_we]
  connect_bd_net -net axi_bram_ctrl_0_bram_wrdata_a [get_bd_pins axi_bram_ctrl_0/bram_wrdata_a] [get_bd_pins i2cSlave_0/bram_wrdata]
  connect_bd_net -net axi_gpio_0_gpio_io_o1 [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins i2c_switch_0/sel] [get_bd_pins i2c_switch_1/sel]
  connect_bd_net -net ha_1 [get_bd_pins ha] [get_bd_pins i2cSlave_0/hardware_address]
  connect_bd_net -net i2cSlave_0_bram_rddata [get_bd_pins axi_bram_ctrl_0/bram_rddata_a] [get_bd_pins i2cSlave_0/bram_rddata]
  connect_bd_net -net i2cSlave_0_i2c_addr_received [get_bd_pins i2c_addr_received] [get_bd_pins i2cSlave_0/i2c_addr_received]
  connect_bd_net -net i2cSlave_0_int [get_bd_pins irq] [get_bd_pins i2cSlave_0/irq]
  connect_bd_net -net i2cSlave_0_sda_out [get_bd_pins i2cSlave_0/sda_out] [get_bd_pins i2c_switch_1/s1_i]
  connect_bd_net -net i2cSlave_0_sda_t [get_bd_pins i2cSlave_0/sda_t] [get_bd_pins i2c_switch_1/s1_t]
  connect_bd_net -net i2c_switch_0_s0_o [get_bd_pins s0_o1] [get_bd_pins i2c_switch_0/s0_o]
  connect_bd_net -net i2c_switch_0_s1_o [get_bd_pins i2cSlave_0/scl] [get_bd_pins i2c_switch_0/s1_o]
  connect_bd_net -net i2c_switch_1_s0_o [get_bd_pins s0_o] [get_bd_pins i2c_switch_1/s0_o]
  connect_bd_net -net i2c_switch_1_s1_o [get_bd_pins i2cSlave_0/sda_in] [get_bd_pins i2c_switch_1/s1_o]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins i2cSlave_0/rst]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins i2cSlave_0/clk]
  connect_bd_net -net s0_i1_1 [get_bd_pins s0_i1] [get_bd_pins i2c_switch_0/s0_i]
  connect_bd_net -net s0_i_1 [get_bd_pins s0_i] [get_bd_pins i2c_switch_1/s0_i]
  connect_bd_net -net s0_t1_1 [get_bd_pins s0_t1] [get_bd_pins i2c_switch_0/s0_t]
  connect_bd_net -net s0_t_1 [get_bd_pins s0_t] [get_bd_pins i2c_switch_1/s0_t]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins i2c_switch_0/s1_i] [get_bd_pins i2c_switch_0/s1_t] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: reg_bank
proc create_hier_cell_reg_bank { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_reg_bank() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir O -from 2 -to 0 Dout
  create_bd_pin -dir O -from 0 -to 0 Dout1
  create_bd_pin -dir O -from 2 -to 0 Dout_1
  create_bd_pin -dir I -from 1 -to 0 In0_0
  create_bd_pin -dir I -from 0 -to 0 In1_0
  create_bd_pin -dir I -from 7 -to 0 In2_0
  create_bd_pin -dir I -from 0 -to 0 In3_0
  create_bd_pin -dir I In4
  create_bd_pin -dir I -from 0 -to 0 In5
  create_bd_pin -dir I In6
  create_bd_pin -dir I -from 0 -to 0 In7
  create_bd_pin -dir I -from 0 -to 0 In8_0
  create_bd_pin -dir O -from 1 -to 0 en_ipmb_zynq
  create_bd_pin -dir O -from 0 -to 0 qbv_on_off
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {17} \
   CONFIG.C_GPIO_WIDTH {10} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {2} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {9} \
 ] $xlconcat_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {3} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {6} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {3} \
 ] $xlslice_3

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {9} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_4

  # Create interface connections
  connect_bd_intf_net -intf_net cpu_M13_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net In0_0_1 [get_bd_pins In0_0] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net In1_0_1 [get_bd_pins In1_0] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net In2_0_1 [get_bd_pins In2_0] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net In3_0_1 [get_bd_pins In3_0] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net In4_1 [get_bd_pins In4] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net In5_1 [get_bd_pins In5] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net In6_1 [get_bd_pins In6] [get_bd_pins xlconcat_0/In6]
  connect_bd_net -net In7_1 [get_bd_pins In7] [get_bd_pins xlconcat_0/In7]
  connect_bd_net -net In8_0_1 [get_bd_pins In8_0] [get_bd_pins xlconcat_0/In8]
  connect_bd_net -net Net [get_bd_pins s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din] [get_bd_pins xlslice_4/Din]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins en_ipmb_zynq] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins qbv_on_off] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins axi_gpio_0/gpio2_io_i] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins Dout_1] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins Dout] [get_bd_pins xlslice_3/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins Dout1] [get_bd_pins xlslice_4/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: jtag
proc create_hier_cell_jtag { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_jtag() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi1


  # Create pins
  create_bd_pin -dir O TCK_0
  create_bd_pin -dir O TCK_1
  create_bd_pin -dir O TDI_0
  create_bd_pin -dir O TDI_1
  create_bd_pin -dir I TDO_0
  create_bd_pin -dir I TDO_1
  create_bd_pin -dir O TMS_0
  create_bd_pin -dir O TMS_1
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: axi_jtag_0, and set properties
  set axi_jtag_0 [ create_bd_cell -type ip -vlnv A_Clark:Debug:axi_jtag:1.0 axi_jtag_0 ]

  # Create instance: axi_jtag_1, and set properties
  set axi_jtag_1 [ create_bd_cell -type ip -vlnv A_Clark:Debug:axi_jtag:1.0 axi_jtag_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net s_axi1_1 [get_bd_intf_pins s_axi1] [get_bd_intf_pins axi_jtag_1/s_axi]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_jtag_0/s_axi]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins s_axi_aclk] [get_bd_pins axi_jtag_0/s_axi_aclk] [get_bd_pins axi_jtag_1/s_axi_aclk]
  connect_bd_net -net TDO_0_0_1 [get_bd_pins TDO_0] [get_bd_pins axi_jtag_0/TDO]
  connect_bd_net -net TDO_1_0_1 [get_bd_pins TDO_1] [get_bd_pins axi_jtag_1/TDO]
  connect_bd_net -net ipmc_jtag_TCK_0 [get_bd_pins TCK_0] [get_bd_pins axi_jtag_0/TCK]
  connect_bd_net -net ipmc_jtag_TCK_1 [get_bd_pins TCK_1] [get_bd_pins axi_jtag_1/TCK]
  connect_bd_net -net ipmc_jtag_TDI_0 [get_bd_pins TDI_0] [get_bd_pins axi_jtag_0/TDI]
  connect_bd_net -net ipmc_jtag_TDI_1 [get_bd_pins TDI_1] [get_bd_pins axi_jtag_1/TDI]
  connect_bd_net -net ipmc_jtag_TMS_0 [get_bd_pins TMS_0] [get_bd_pins axi_jtag_0/TMS]
  connect_bd_net -net ipmc_jtag_TMS_1 [get_bd_pins TMS_1] [get_bd_pins axi_jtag_1/TMS]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins axi_jtag_0/s_axi_aresetn] [get_bd_pins axi_jtag_1/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ipmc
proc create_hier_cell_ipmc { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_ipmc() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI3

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI4


  # Create pins
  create_bd_pin -dir I -from 7 -to 0 ha
  create_bd_pin -dir O -from 6 -to 0 i2c_addr_received
  create_bd_pin -dir O -from 6 -to 0 i2c_addr_received1
  create_bd_pin -dir O -type intr iic2intc_irpt
  create_bd_pin -dir IO ipmc_scl_0
  create_bd_pin -dir IO ipmc_scl_1
  create_bd_pin -dir IO ipmc_sda_0
  create_bd_pin -dir IO ipmc_sda_1
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir O -type intr irq1
  create_bd_pin -dir I s0_i
  create_bd_pin -dir I s0_i1
  create_bd_pin -dir O s0_o
  create_bd_pin -dir O s0_o1
  create_bd_pin -dir I s0_t
  create_bd_pin -dir I s0_t1
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: ipmc_i2c_0
  create_hier_cell_ipmc_i2c_0 $hier_obj ipmc_i2c_0

  # Create instance: ipmc_i2c_1
  create_hier_cell_ipmc_i2c_1 $hier_obj ipmc_i2c_1

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI2_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins ipmc_i2c_0/S_AXI]
  connect_bd_intf_net -intf_net S_AXI3_1 [get_bd_intf_pins S_AXI2] [get_bd_intf_pins ipmc_i2c_0/S_AXI2]
  connect_bd_intf_net -intf_net S_AXI4_1 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins ipmc_i2c_1/S_AXI]
  connect_bd_intf_net -intf_net S_AXI5_1 [get_bd_intf_pins S_AXI3] [get_bd_intf_pins ipmc_i2c_1/S_AXI1]
  connect_bd_intf_net -intf_net S_AXI6_1 [get_bd_intf_pins S_AXI4] [get_bd_intf_pins ipmc_i2c_1/S_AXI2]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins s_axi_aclk] [get_bd_pins ipmc_i2c_0/s_axi_aclk] [get_bd_pins ipmc_i2c_1/s_axi_aclk]
  connect_bd_net -net Net1 [get_bd_pins ipmc_sda_0] [get_bd_pins ipmc_i2c_0/i2c1_sda]
  connect_bd_net -net Net2 [get_bd_pins ipmc_scl_0] [get_bd_pins ipmc_i2c_0/i2c1_scl]
  connect_bd_net -net Net3 [get_bd_pins ipmc_scl_1] [get_bd_pins ipmc_i2c_1/i2c1_scl]
  connect_bd_net -net Net4 [get_bd_pins ipmc_sda_1] [get_bd_pins ipmc_i2c_1/i2c1_sda]
  connect_bd_net -net ha_1 [get_bd_pins ha] [get_bd_pins ipmc_i2c_0/ha] [get_bd_pins ipmc_i2c_1/ha]
  connect_bd_net -net ipmc_i2c_0_i2c_addr_received [get_bd_pins i2c_addr_received] [get_bd_pins ipmc_i2c_0/i2c_addr_received]
  connect_bd_net -net ipmc_i2c_1_i2c_addr_received [get_bd_pins i2c_addr_received1] [get_bd_pins ipmc_i2c_1/i2c_addr_received]
  connect_bd_net -net ipmc_jtag_iic2intc_irpt [get_bd_pins iic2intc_irpt] [get_bd_pins ipmc_i2c_1/iic2intc_irpt]
  connect_bd_net -net ipmc_jtag_irq [get_bd_pins irq] [get_bd_pins ipmc_i2c_0/irq]
  connect_bd_net -net ipmc_jtag_irq1 [get_bd_pins irq1] [get_bd_pins ipmc_i2c_1/irq]
  connect_bd_net -net ipmc_jtag_s0_o [get_bd_pins s0_o] [get_bd_pins ipmc_i2c_0/s0_o]
  connect_bd_net -net ipmc_jtag_s0_o1 [get_bd_pins s0_o1] [get_bd_pins ipmc_i2c_0/s0_o1]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins ipmc_i2c_0/s_axi_aresetn] [get_bd_pins ipmc_i2c_1/s_axi_aresetn]
  connect_bd_net -net s0_i1_1 [get_bd_pins s0_i1] [get_bd_pins ipmc_i2c_0/s0_i1]
  connect_bd_net -net s0_i_1 [get_bd_pins s0_i] [get_bd_pins ipmc_i2c_0/s0_i]
  connect_bd_net -net s0_t1_1 [get_bd_pins s0_t1] [get_bd_pins ipmc_i2c_0/s0_t1]
  connect_bd_net -net s0_t_1 [get_bd_pins s0_t] [get_bd_pins ipmc_i2c_0/s0_t]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: i2c
proc create_hier_cell_i2c { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_i2c() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI3

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI4

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_2

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_3

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_4


  # Create pins
  create_bd_pin -dir O -type intr iic2intc_irpt
  create_bd_pin -dir O -type intr iic2intc_irpt1
  create_bd_pin -dir O -type intr iic2intc_irpt2
  create_bd_pin -dir O -type intr iic2intc_irpt3
  create_bd_pin -dir O -type intr iic2intc_irpt4
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.C_SCL_INERTIAL_DELAY {10} \
   CONFIG.C_SDA_INERTIAL_DELAY {10} \
 ] $axi_iic_0

  # Create instance: axi_iic_1, and set properties
  set axi_iic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_1 ]
  set_property -dict [ list \
   CONFIG.C_SCL_INERTIAL_DELAY {10} \
   CONFIG.C_SDA_INERTIAL_DELAY {10} \
 ] $axi_iic_1

  # Create instance: axi_iic_2, and set properties
  set axi_iic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_2 ]
  set_property -dict [ list \
   CONFIG.C_SCL_INERTIAL_DELAY {10} \
   CONFIG.C_SDA_INERTIAL_DELAY {10} \
 ] $axi_iic_2

  # Create instance: axi_iic_3, and set properties
  set axi_iic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_3 ]
  set_property -dict [ list \
   CONFIG.C_SCL_INERTIAL_DELAY {10} \
   CONFIG.C_SDA_INERTIAL_DELAY {10} \
 ] $axi_iic_3

  # Create instance: axi_iic_4, and set properties
  set axi_iic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_4 ]
  set_property -dict [ list \
   CONFIG.C_SCL_INERTIAL_DELAY {10} \
   CONFIG.C_SDA_INERTIAL_DELAY {10} \
 ] $axi_iic_4

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins iic_rtl_3] [get_bd_intf_pins axi_iic_3/IIC]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins iic_rtl_4] [get_bd_intf_pins axi_iic_4/IIC]
  connect_bd_intf_net -intf_net S_AXI3_1 [get_bd_intf_pins S_AXI3] [get_bd_intf_pins axi_iic_3/S_AXI]
  connect_bd_intf_net -intf_net S_AXI4_1 [get_bd_intf_pins S_AXI4] [get_bd_intf_pins axi_iic_4/S_AXI]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_pins iic_rtl_0] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_pins iic_rtl_1] [get_bd_intf_pins axi_iic_1/IIC]
  connect_bd_intf_net -intf_net axi_iic_2_IIC [get_bd_intf_pins iic_rtl_2] [get_bd_intf_pins axi_iic_2/IIC]
  connect_bd_intf_net -intf_net cpu_M10_AXI [get_bd_intf_pins S_AXI2] [get_bd_intf_pins axi_iic_0/S_AXI]
  connect_bd_intf_net -intf_net cpu_M11_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_iic_1/S_AXI]
  connect_bd_intf_net -intf_net cpu_M12_AXI [get_bd_intf_pins S_AXI1] [get_bd_intf_pins axi_iic_2/S_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_iic_1/s_axi_aclk] [get_bd_pins axi_iic_2/s_axi_aclk] [get_bd_pins axi_iic_3/s_axi_aclk] [get_bd_pins axi_iic_4/s_axi_aclk]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins iic2intc_irpt2] [get_bd_pins axi_iic_0/iic2intc_irpt]
  connect_bd_net -net axi_iic_1_iic2intc_irpt [get_bd_pins iic2intc_irpt] [get_bd_pins axi_iic_1/iic2intc_irpt]
  connect_bd_net -net axi_iic_2_iic2intc_irpt [get_bd_pins iic2intc_irpt1] [get_bd_pins axi_iic_2/iic2intc_irpt]
  connect_bd_net -net axi_iic_3_iic2intc_irpt [get_bd_pins iic2intc_irpt3] [get_bd_pins axi_iic_3/iic2intc_irpt]
  connect_bd_net -net axi_iic_4_iic2intc_irpt [get_bd_pins iic2intc_irpt4] [get_bd_pins axi_iic_4/iic2intc_irpt]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_iic_1/s_axi_aresetn] [get_bd_pins axi_iic_2/s_axi_aresetn] [get_bd_pins axi_iic_3/s_axi_aresetn] [get_bd_pins axi_iic_4/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: eth1
proc create_hier_cell_eth1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_eth1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_phy

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type rst ARESETN
  create_bd_pin -dir I -type rst axi_resetn
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -type clk gtx_clk
  create_bd_pin -dir O -type intr interrupt
  create_bd_pin -dir O -type intr mac_irq
  create_bd_pin -dir O -type intr mm2s_introut
  create_bd_pin -dir O -from 0 -to 0 -type rst phy_rst
  create_bd_pin -dir I -type clk ref_clk
  create_bd_pin -dir O -type intr s2mm_introut
  create_bd_pin -dir I -type clk s_axi_lite_aclk

  # Create instance: axi_ethernet_0, and set properties
  set axi_ethernet_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.2 axi_ethernet_0 ]
  set_property -dict [ list \
   CONFIG.PHY_TYPE {RGMII} \
 ] $axi_ethernet_0

  # Create instance: axi_ethernet_0_dma, and set properties
  set axi_ethernet_0_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_ethernet_0_dma ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_sg_length_width {16} \
   CONFIG.c_sg_use_stsapp_length {1} \
 ] $axi_ethernet_0_dma

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {3} \
 ] $axi_mem_intercon

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXIS_CNTRL [get_bd_intf_pins axi_ethernet_0/s_axis_txc] [get_bd_intf_pins axi_ethernet_0_dma/M_AXIS_CNTRL]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXIS_MM2S [get_bd_intf_pins axi_ethernet_0/s_axis_txd] [get_bd_intf_pins axi_ethernet_0_dma/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXI_MM2S [get_bd_intf_pins axi_ethernet_0_dma/M_AXI_MM2S] [get_bd_intf_pins axi_mem_intercon/S01_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXI_S2MM [get_bd_intf_pins axi_ethernet_0_dma/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S02_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXI_SG [get_bd_intf_pins axi_ethernet_0_dma/M_AXI_SG] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_0_m_axis_rxd [get_bd_intf_pins axi_ethernet_0/m_axis_rxd] [get_bd_intf_pins axi_ethernet_0_dma/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net axi_ethernet_0_m_axis_rxs [get_bd_intf_pins axi_ethernet_0/m_axis_rxs] [get_bd_intf_pins axi_ethernet_0_dma/S_AXIS_STS]
  connect_bd_intf_net -intf_net axi_ethernet_0_mdio [get_bd_intf_pins mdio_phy] [get_bd_intf_pins axi_ethernet_0/mdio]
  connect_bd_intf_net -intf_net axi_ethernet_0_rgmii [get_bd_intf_pins rgmii] [get_bd_intf_pins axi_ethernet_0/rgmii]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_ethernet_0/s_axi]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins axi_ethernet_0_dma/S_AXI_LITE]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins ARESETN] [get_bd_pins axi_mem_intercon/ARESETN]
  connect_bd_net -net Net [get_bd_pins s_axi_lite_aclk] [get_bd_pins axi_ethernet_0/s_axi_lite_clk] [get_bd_pins axi_ethernet_0_dma/s_axi_lite_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK]
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_mem_intercon/S02_ARESETN] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_cntrl_reset_out_n [get_bd_pins axi_ethernet_0/axi_txc_arstn] [get_bd_pins axi_ethernet_0_dma/mm2s_cntrl_reset_out_n]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_introut [get_bd_pins mm2s_introut] [get_bd_pins axi_ethernet_0_dma/mm2s_introut]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_prmry_reset_out_n [get_bd_pins axi_ethernet_0/axi_txd_arstn] [get_bd_pins axi_ethernet_0_dma/mm2s_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_introut [get_bd_pins s2mm_introut] [get_bd_pins axi_ethernet_0_dma/s2mm_introut]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_prmry_reset_out_n [get_bd_pins axi_ethernet_0/axi_rxd_arstn] [get_bd_pins axi_ethernet_0_dma/s2mm_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_sts_reset_out_n [get_bd_pins axi_ethernet_0/axi_rxs_arstn] [get_bd_pins axi_ethernet_0_dma/s2mm_sts_reset_out_n]
  connect_bd_net -net axi_ethernet_0_interrupt [get_bd_pins interrupt] [get_bd_pins axi_ethernet_0/interrupt]
  connect_bd_net -net axi_ethernet_0_mac_irq [get_bd_pins mac_irq] [get_bd_pins axi_ethernet_0/mac_irq]
  connect_bd_net -net axi_ethernet_0_phy_rst_n [get_bd_pins phy_rst] [get_bd_pins axi_ethernet_0/phy_rst_n]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_resetn] [get_bd_pins axi_ethernet_0/s_axi_lite_resetn] [get_bd_pins axi_ethernet_0_dma/axi_resetn] [get_bd_pins axi_mem_intercon/M00_ARESETN]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins ref_clk] [get_bd_pins axi_ethernet_0/ref_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins gtx_clk] [get_bd_pins axi_ethernet_0/axis_clk] [get_bd_pins axi_ethernet_0/gtx_clk] [get_bd_pins axi_ethernet_0_dma/m_axi_mm2s_aclk] [get_bd_pins axi_ethernet_0_dma/m_axi_s2mm_aclk] [get_bd_pins axi_ethernet_0_dma/m_axi_sg_aclk] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_mem_intercon/S02_ACLK] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: dbg
proc create_hier_cell_dbg { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_dbg() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: debug_bridge_0, and set properties
  set debug_bridge_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:debug_bridge:3.0 debug_bridge_0 ]
  set_property -dict [ list \
   CONFIG.C_BSCAN_MUX {1} \
   CONFIG.C_DEBUG_MODE {2} \
   CONFIG.C_NUM_BS_MASTER {1} \
   CONFIG.C_XVC_HW_ID {0x0001} \
 ] $debug_bridge_0

  # Create instance: debug_bridge_1, and set properties
  set debug_bridge_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:debug_bridge:3.0 debug_bridge_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net debug_bridge_0_m0_bscan [get_bd_intf_pins debug_bridge_0/m0_bscan] [get_bd_intf_pins debug_bridge_1/S_BSCAN]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins debug_bridge_0/S_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins clk] [get_bd_pins debug_bridge_0/s_axi_aclk] [get_bd_pins debug_bridge_1/clk]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins debug_bridge_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: cpu
proc create_hier_cell_cpu { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_cpu() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M07_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M09_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M10_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M11_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M12_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M13_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M14_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M15_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M16_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M17_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M18_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP0


  # Create pins
  create_bd_pin -dir O -type clk FCLK_CLK0
  create_bd_pin -dir O -type clk FCLK_CLK1
  create_bd_pin -dir O -type clk FCLK_CLK2
  create_bd_pin -dir I I2C1_SCL_I
  create_bd_pin -dir O I2C1_SCL_O
  create_bd_pin -dir O I2C1_SCL_T
  create_bd_pin -dir I I2C1_SDA_I
  create_bd_pin -dir O I2C1_SDA_O
  create_bd_pin -dir O I2C1_SDA_T
  create_bd_pin -dir I -from 0 -to 0 In0
  create_bd_pin -dir I -from 0 -to 0 In1
  create_bd_pin -dir I -from 0 -to 0 In2
  create_bd_pin -dir I -from 0 -to 0 In3
  create_bd_pin -dir I -from 0 -to 0 In4
  create_bd_pin -dir I -from 0 -to 0 In5
  create_bd_pin -dir I -from 0 -to 0 In6
  create_bd_pin -dir I -type intr In7
  create_bd_pin -dir I -type intr In8
  create_bd_pin -dir I -type intr In9
  create_bd_pin -dir I -type intr In10
  create_bd_pin -dir I -type intr In11
  create_bd_pin -dir O -from 0 -to 0 -type rst S00_ARESETN
  create_bd_pin -dir O -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
   CONFIG.PCW_CAN1_CAN1_IO {MIO 8 .. 9} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {200000000} \
   CONFIG.PCW_CLK2_FREQ {125000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CORE0_FIQ_INTR {0} \
   CONFIG.PCW_CORE0_IRQ_INTR {0} \
   CONFIG.PCW_CORE1_FIQ_INTR {0} \
   CONFIG.PCW_CORE1_IRQ_INTR {0} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
   CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
   CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
   CONFIG.PCW_ENET1_ENET1_IO {<Select>} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_GRP_MDIO_IO {<Select>} \
   CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {1} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_CLK2_PORT {1} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CAN0 {0} \
   CONFIG.PCW_EN_EMIO_CAN1 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {1} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {1} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_ENET1 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {0} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_I2C1 {1} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
   CONFIG.PCW_EN_EMIO_PJTAG {0} \
   CONFIG.PCW_EN_EMIO_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_SPI0 {0} \
   CONFIG.PCW_EN_EMIO_SPI1 {0} \
   CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
   CONFIG.PCW_EN_EMIO_TRACE {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {0} \
   CONFIG.PCW_EN_EMIO_TTC1 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {0} \
   CONFIG.PCW_EN_EMIO_WDT {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {1} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {1} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_ENET1 {0} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_I2C1 {1} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_MODEM_UART1 {0} \
   CONFIG.PCW_EN_PJTAG {0} \
   CONFIG.PCW_EN_PTP_ENET0 {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_SDIO1 {1} \
   CONFIG.PCW_EN_SMC {0} \
   CONFIG.PCW_EN_SPI0 {0} \
   CONFIG.PCW_EN_SPI1 {0} \
   CONFIG.PCW_EN_TRACE {0} \
   CONFIG.PCW_EN_TTC0 {0} \
   CONFIG.PCW_EN_TTC1 {0} \
   CONFIG.PCW_EN_UART0 {0} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_EN_USB1 {0} \
   CONFIG.PCW_EN_WDT {0} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {4} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {125} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_FTM_CTI_IN0 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN1 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN2 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN3 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT0 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT1 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT2 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT3 {<Select>} \
   CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {0} \
   CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {0} \
   CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
   CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C1_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
   CONFIG.PCW_I2C1_I2C1_IO {EMIO} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
   CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
   CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {fast} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {fast} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {fast} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {fast} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {fast} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {fast} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {fast} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {fast} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {fast} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {fast} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {fast} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {fast} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {enabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {enabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {enabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {enabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {enabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {enabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {inout} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {disabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {disabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {disabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {disabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {in} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {disabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#USB Reset#CAN 1#CAN 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#GPIO#UART 1#UART 1#I2C 0#I2C 0#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#reset#tx#rx#data[0]#cmd#clk#data[1]#data[2]#data[3]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#gpio[46]#gpio[47]#tx#rx#scl#sda#mdc#mdio} \
   CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {1} \
   CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {6} \
   CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_NAND_CYCLES_T_AR {1} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
   CONFIG.PCW_NAND_CYCLES_T_RC {2} \
   CONFIG.PCW_NAND_CYCLES_T_REA {1} \
   CONFIG.PCW_NAND_CYCLES_T_RR {1} \
   CONFIG.PCW_NAND_CYCLES_T_WC {2} \
   CONFIG.PCW_NAND_CYCLES_T_WP {1} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {2} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {2} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {2} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {2} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {2} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {2} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {2} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {2} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_P2F_CAN0_INTR {0} \
   CONFIG.PCW_P2F_CAN1_INTR {0} \
   CONFIG.PCW_P2F_CTI_INTR {0} \
   CONFIG.PCW_P2F_DMAC0_INTR {0} \
   CONFIG.PCW_P2F_DMAC1_INTR {0} \
   CONFIG.PCW_P2F_DMAC2_INTR {0} \
   CONFIG.PCW_P2F_DMAC3_INTR {0} \
   CONFIG.PCW_P2F_DMAC4_INTR {0} \
   CONFIG.PCW_P2F_DMAC5_INTR {0} \
   CONFIG.PCW_P2F_DMAC6_INTR {0} \
   CONFIG.PCW_P2F_DMAC7_INTR {0} \
   CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
   CONFIG.PCW_P2F_ENET0_INTR {0} \
   CONFIG.PCW_P2F_ENET1_INTR {0} \
   CONFIG.PCW_P2F_GPIO_INTR {0} \
   CONFIG.PCW_P2F_I2C0_INTR {0} \
   CONFIG.PCW_P2F_I2C1_INTR {0} \
   CONFIG.PCW_P2F_QSPI_INTR {0} \
   CONFIG.PCW_P2F_SDIO0_INTR {0} \
   CONFIG.PCW_P2F_SDIO1_INTR {0} \
   CONFIG.PCW_P2F_SMC_INTR {0} \
   CONFIG.PCW_P2F_SPI0_INTR {0} \
   CONFIG.PCW_P2F_SPI1_INTR {0} \
   CONFIG.PCW_P2F_UART0_INTR {0} \
   CONFIG.PCW_P2F_UART1_INTR {0} \
   CONFIG.PCW_P2F_USB0_INTR {0} \
   CONFIG.PCW_P2F_USB1_INTR {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.080} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.063} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.057} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.068} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.047} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.025} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.017} \
   CONFIG.PCW_PACKAGE_NAME {clg485} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PERIPHERAL_BOARD_PRESET {None} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {EMIO} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {EMIO} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD1_GRP_CD_IO {EMIO} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD1_GRP_WP_IO {EMIO} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD1_SD1_IO {MIO 10 .. 15} \
   CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
   CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
   CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
   CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_CYCLE_T0 {NA} \
   CONFIG.PCW_SMC_CYCLE_T1 {NA} \
   CONFIG.PCW_SMC_CYCLE_T2 {NA} \
   CONFIG.PCW_SMC_CYCLE_T3 {NA} \
   CONFIG.PCW_SMC_CYCLE_T4 {NA} \
   CONFIG.PCW_SMC_CYCLE_T5 {NA} \
   CONFIG.PCW_SMC_CYCLE_T6 {NA} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
   CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
   CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
   CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.271} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.259} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.219} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.207} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {101.239} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {79.5025} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {60.536} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {71.7715} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.229} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.250} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.121} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.146} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {104.5365} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {70.676} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {59.1615} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {81.319} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
   CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
   CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {1} \
   CONFIG.PCW_USB0_RESET_IO {MIO 7} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
   CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CORESIGHT {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_CR_FABRIC {1} \
   CONFIG.PCW_USE_DDR_BYPASS {0} \
   CONFIG.PCW_USE_DEBUG {0} \
   CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
   CONFIG.PCW_USE_DMA0 {0} \
   CONFIG.PCW_USE_DMA1 {0} \
   CONFIG.PCW_USE_DMA2 {0} \
   CONFIG.PCW_USE_DMA3 {0} \
   CONFIG.PCW_USE_EXPANDED_IOP {0} \
   CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_HIGH_OCM {0} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
   CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_S_AXI_ACP {0} \
   CONFIG.PCW_USE_S_AXI_GP0 {0} \
   CONFIG.PCW_USE_S_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP2 {0} \
   CONFIG.PCW_USE_S_AXI_HP3 {0} \
   CONFIG.PCW_USE_TRACE {0} \
   CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
   CONFIG.PCW_VALUE_SILVERSION {3} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {4} \
   CONFIG.M01_HAS_REGSLICE {4} \
   CONFIG.M02_HAS_REGSLICE {4} \
   CONFIG.M03_HAS_REGSLICE {4} \
   CONFIG.NUM_MI {19} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.STRATEGY {2} \
 ] $ps7_0_axi_periph

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {12} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M10_AXI] [get_bd_intf_pins ps7_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M11_AXI] [get_bd_intf_pins ps7_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M12_AXI] [get_bd_intf_pins ps7_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M13_AXI] [get_bd_intf_pins ps7_0_axi_periph/M13_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins M14_AXI] [get_bd_intf_pins ps7_0_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins M15_AXI] [get_bd_intf_pins ps7_0_axi_periph/M15_AXI]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins M18_AXI] [get_bd_intf_pins ps7_0_axi_periph/M18_AXI]
  connect_bd_intf_net -intf_net S_AXI2_1 [get_bd_intf_pins M05_AXI] [get_bd_intf_pins ps7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net S_AXI3_1 [get_bd_intf_pins M06_AXI] [get_bd_intf_pins ps7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net S_AXI4_1 [get_bd_intf_pins M07_AXI] [get_bd_intf_pins ps7_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net S_AXI5_1 [get_bd_intf_pins M08_AXI] [get_bd_intf_pins ps7_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net S_AXI6_1 [get_bd_intf_pins M09_AXI] [get_bd_intf_pins ps7_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins S_AXI_HP0] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_pins DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_pins FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins M02_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M16_AXI [get_bd_intf_pins M16_AXI] [get_bd_intf_pins ps7_0_axi_periph/M16_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M17_AXI [get_bd_intf_pins M17_AXI] [get_bd_intf_pins ps7_0_axi_periph/M17_AXI]
  connect_bd_intf_net -intf_net s_axi1_1 [get_bd_intf_pins M04_AXI] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins M03_AXI] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins interconnect_aresetn] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net In10_1 [get_bd_pins In10] [get_bd_pins xlconcat_0/In10]
  connect_bd_net -net In11_1 [get_bd_pins In11] [get_bd_pins xlconcat_0/In11]
  connect_bd_net -net In7_1 [get_bd_pins In7] [get_bd_pins xlconcat_0/In7]
  connect_bd_net -net In8_1 [get_bd_pins In8] [get_bd_pins xlconcat_0/In8]
  connect_bd_net -net In9_1 [get_bd_pins In9] [get_bd_pins xlconcat_0/In9]
  connect_bd_net -net Net [get_bd_pins FCLK_CLK0] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/M05_ACLK] [get_bd_pins ps7_0_axi_periph/M06_ACLK] [get_bd_pins ps7_0_axi_periph/M07_ACLK] [get_bd_pins ps7_0_axi_periph/M08_ACLK] [get_bd_pins ps7_0_axi_periph/M09_ACLK] [get_bd_pins ps7_0_axi_periph/M10_ACLK] [get_bd_pins ps7_0_axi_periph/M11_ACLK] [get_bd_pins ps7_0_axi_periph/M12_ACLK] [get_bd_pins ps7_0_axi_periph/M13_ACLK] [get_bd_pins ps7_0_axi_periph/M14_ACLK] [get_bd_pins ps7_0_axi_periph/M15_ACLK] [get_bd_pins ps7_0_axi_periph/M16_ACLK] [get_bd_pins ps7_0_axi_periph/M17_ACLK] [get_bd_pins ps7_0_axi_periph/M18_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_introut [get_bd_pins In0] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_introut [get_bd_pins In1] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_ethernet_0_interrupt [get_bd_pins In3] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net axi_ethernet_0_mac_irq [get_bd_pins In2] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net ipmc_jtag_iic2intc_irpt [get_bd_pins In5] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net ipmc_jtag_irq [get_bd_pins In4] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net ipmc_jtag_irq1 [get_bd_pins In6] [get_bd_pins xlconcat_0/In6]
  connect_bd_net -net ipmc_jtag_s0_o [get_bd_pins I2C1_SDA_I] [get_bd_pins processing_system7_0/I2C1_SDA_I]
  connect_bd_net -net ipmc_jtag_s0_o1 [get_bd_pins I2C1_SCL_I] [get_bd_pins processing_system7_0/I2C1_SCL_I]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins S00_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/M05_ARESETN] [get_bd_pins ps7_0_axi_periph/M06_ARESETN] [get_bd_pins ps7_0_axi_periph/M07_ARESETN] [get_bd_pins ps7_0_axi_periph/M08_ARESETN] [get_bd_pins ps7_0_axi_periph/M09_ARESETN] [get_bd_pins ps7_0_axi_periph/M10_ARESETN] [get_bd_pins ps7_0_axi_periph/M11_ARESETN] [get_bd_pins ps7_0_axi_periph/M12_ARESETN] [get_bd_pins ps7_0_axi_periph/M13_ARESETN] [get_bd_pins ps7_0_axi_periph/M14_ARESETN] [get_bd_pins ps7_0_axi_periph/M15_ARESETN] [get_bd_pins ps7_0_axi_periph/M16_ARESETN] [get_bd_pins ps7_0_axi_periph/M17_ARESETN] [get_bd_pins ps7_0_axi_periph/M18_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins peripheral_reset] [get_bd_pins proc_sys_reset_0/peripheral_reset]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins FCLK_CLK1] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins FCLK_CLK2] [get_bd_pins processing_system7_0/FCLK_CLK2]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins ext_reset_in] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net s0_i1_1 [get_bd_pins I2C1_SCL_O] [get_bd_pins processing_system7_0/I2C1_SCL_O]
  connect_bd_net -net s0_i_1 [get_bd_pins I2C1_SDA_O] [get_bd_pins processing_system7_0/I2C1_SDA_O]
  connect_bd_net -net s0_t1_1 [get_bd_pins I2C1_SCL_T] [get_bd_pins processing_system7_0/I2C1_SCL_T]
  connect_bd_net -net s0_t_1 [get_bd_pins I2C1_SDA_T] [get_bd_pins processing_system7_0/I2C1_SDA_T]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins processing_system7_0/SDIO0_CDN] [get_bd_pins processing_system7_0/SDIO0_WP] [get_bd_pins processing_system7_0/SDIO1_CDN] [get_bd_pins processing_system7_0/SDIO1_WP] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: chip2chip_top_ff
proc create_hier_cell_chip2chip_top_ff { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_chip2chip_top_ff() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX_rtl:1.0 GT_SERIAL_TX

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX_rtl:1.0 c2c_0


  # Create pins
  create_bd_pin -dir O -type rst M_AXI_ARESETN
  create_bd_pin -dir I -type clk aurora_init_clk
  create_bd_pin -dir I -type rst aurora_pma_init_in
  create_bd_pin -dir O axi_c2c_link_status_out
  create_bd_pin -dir O -from 0 -to 0 channel_up
  create_bd_pin -dir O gt0_pll0outclk_out
  create_bd_pin -dir O gt0_pll0outrefclk_out
  create_bd_pin -dir O gt0_pll0refclklost_out
  create_bd_pin -dir O gt0_pll1outclk_out
  create_bd_pin -dir O gt0_pll1outrefclk_out
  create_bd_pin -dir O gt0_rxcommadet_out
  create_bd_pin -dir O gt0_rxprbserr_out
  create_bd_pin -dir I -from 2 -to 0 gt0_txprbssel_in
  create_bd_pin -dir I -type clk gt_refclk1
  create_bd_pin -dir O o_read_fault
  create_bd_pin -dir O o_write_fault
  create_bd_pin -dir O -type rst pll_not_locked_out
  create_bd_pin -dir O quad1_common_lock_out
  create_bd_pin -dir I -type rst s_aresetn
  create_bd_pin -dir O -type clk sync_clk_out
  create_bd_pin -dir O -type clk user_clk_out

  # Create instance: axi_chip2chip_0, and set properties
  set axi_chip2chip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_chip2chip:5.0 axi_chip2chip_0 ]
  set_property -dict [ list \
   CONFIG.C_AURORA_WIDTH {1} \
   CONFIG.C_ECC_ENABLE {false} \
   CONFIG.C_INCLUDE_AXILITE {0} \
   CONFIG.C_INTERFACE_MODE {1} \
   CONFIG.C_INTERFACE_TYPE {3} \
 ] $axi_chip2chip_0

  # Create instance: axi_chip2chip_0_aurora8, and set properties
  set axi_chip2chip_0_aurora8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:aurora_8b10b:11.1 axi_chip2chip_0_aurora8 ]
  set_property -dict [ list \
   CONFIG.C_AURORA_LANES {1} \
   CONFIG.C_DRP_IF {false} \
   CONFIG.C_GT_LOC_3 {X} \
   CONFIG.C_GT_LOC_4 {X} \
   CONFIG.C_LANE_WIDTH {4} \
   CONFIG.C_LINE_RATE {3.75} \
   CONFIG.C_REFCLK_FREQUENCY {250.000} \
   CONFIG.Interface_Mode {Streaming} \
   CONFIG.SINGLEEND_GTREFCLK {true} \
   CONFIG.SINGLEEND_INITCLK {true} \
   CONFIG.SupportLevel {1} \
   CONFIG.TransceiverControl {true} \
 ] $axi_chip2chip_0_aurora8

  # Create instance: axisafety_1, and set properties
  set block_name axisafety
  set block_cell_name axisafety_1
  if { [catch {set axisafety_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axisafety_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_S_AXI_ADDR_WIDTH {27} \
   CONFIG.C_S_AXI_ID_WIDTH {6} \
   CONFIG.OPT_SELF_RESET {1} \
   CONFIG.OPT_TIMEOUT {10000} \
 ] $axisafety_1

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {6} \
   CONFIG.C_NUM_MONITOR_SLOTS {2} \
 ] $system_ila_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net GT_SERIAL_RX_1 [get_bd_intf_pins c2c_0] [get_bd_intf_pins axi_chip2chip_0_aurora8/GT_SERIAL_RX]
  connect_bd_intf_net -intf_net S_AXI1_1 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins axisafety_1/S_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXI1_1] [get_bd_intf_pins S_AXI1] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net axi_chip2chip_0_AXIS_TX [get_bd_intf_pins axi_chip2chip_0/AXIS_TX] [get_bd_intf_pins axi_chip2chip_0_aurora8/USER_DATA_S_AXI_TX]
  connect_bd_intf_net -intf_net axi_chip2chip_0_aurora8_GT_SERIAL_TX [get_bd_intf_pins GT_SERIAL_TX] [get_bd_intf_pins axi_chip2chip_0_aurora8/GT_SERIAL_TX]
  connect_bd_intf_net -intf_net axi_chip2chip_0_aurora8_USER_DATA_M_AXI_RX [get_bd_intf_pins axi_chip2chip_0/AXIS_RX] [get_bd_intf_pins axi_chip2chip_0_aurora8/USER_DATA_M_AXI_RX]
  connect_bd_intf_net -intf_net axisafety_1_M_AXI [get_bd_intf_pins axi_chip2chip_0/s_axi] [get_bd_intf_pins axisafety_1/M_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets axisafety_1_M_AXI] [get_bd_intf_pins axisafety_1/M_AXI] [get_bd_intf_pins system_ila_0/SLOT_1_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins aurora_init_clk] [get_bd_pins axi_chip2chip_0/aurora_init_clk] [get_bd_pins axi_chip2chip_0/s_aclk] [get_bd_pins axi_chip2chip_0_aurora8/drpclk_in] [get_bd_pins axi_chip2chip_0_aurora8/init_clk_in] [get_bd_pins axisafety_1/S_AXI_ACLK] [get_bd_pins system_ila_0/clk]
  connect_bd_net -net Net1 [get_bd_pins gt0_txprbssel_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_rxprbssel_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_txprbssel_in]
  connect_bd_net -net axi_chip2chip_0_aurora8_channel_up [get_bd_pins channel_up] [get_bd_pins axi_chip2chip_0/axi_c2c_aurora_channel_up] [get_bd_pins axi_chip2chip_0_aurora8/channel_up]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_pll0outclk_out [get_bd_pins gt0_pll0outclk_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll0outclk_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_pll0outrefclk_out [get_bd_pins gt0_pll0outrefclk_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll0outrefclk_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_pll0refclklost_out [get_bd_pins gt0_pll0refclklost_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll0refclklost_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_pll1outclk_out [get_bd_pins gt0_pll1outclk_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll1outclk_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_pll1outrefclk_out [get_bd_pins gt0_pll1outrefclk_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll1outrefclk_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_rxcommadet_out [get_bd_pins gt0_rxcommadet_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_rxcommadet_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_rxprbserr_out [get_bd_pins gt0_rxprbserr_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_rxprbserr_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_pll_not_locked_out [get_bd_pins pll_not_locked_out] [get_bd_pins axi_chip2chip_0/aurora_mmcm_not_locked] [get_bd_pins axi_chip2chip_0_aurora8/pll_not_locked_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_quad1_common_lock_out [get_bd_pins quad1_common_lock_out] [get_bd_pins axi_chip2chip_0_aurora8/quad1_common_lock_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_sync_clk_out [get_bd_pins sync_clk_out] [get_bd_pins axi_chip2chip_0_aurora8/sync_clk_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_user_clk_out [get_bd_pins user_clk_out] [get_bd_pins axi_chip2chip_0/axi_c2c_phy_clk] [get_bd_pins axi_chip2chip_0_aurora8/user_clk_out]
  connect_bd_net -net axi_chip2chip_0_aurora_pma_init_out [get_bd_pins axi_chip2chip_0/aurora_pma_init_out] [get_bd_pins axi_chip2chip_0_aurora8/gt_reset]
  connect_bd_net -net axi_chip2chip_0_aurora_reset_pb [get_bd_pins axi_chip2chip_0/aurora_reset_pb] [get_bd_pins axi_chip2chip_0_aurora8/reset]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_link_status_out [get_bd_pins axi_c2c_link_status_out] [get_bd_pins axi_chip2chip_0/axi_c2c_link_status_out]
  connect_bd_net -net axisafety_1_M_AXI_ARESETN [get_bd_pins M_AXI_ARESETN] [get_bd_pins axi_chip2chip_0/s_aresetn] [get_bd_pins axisafety_1/M_AXI_ARESETN]
  connect_bd_net -net axisafety_1_o_read_fault [get_bd_pins o_read_fault] [get_bd_pins axisafety_1/o_read_fault]
  connect_bd_net -net axisafety_1_o_write_fault [get_bd_pins o_write_fault] [get_bd_pins axisafety_1/o_write_fault]
  connect_bd_net -net cpu_peripheral_reset [get_bd_pins aurora_pma_init_in] [get_bd_pins axi_chip2chip_0/aurora_pma_init_in]
  connect_bd_net -net s_aresetn_1 [get_bd_pins s_aresetn] [get_bd_pins axisafety_1/S_AXI_ARESETN] [get_bd_pins system_ila_0/resetn]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins gt_refclk1] [get_bd_pins axi_chip2chip_0_aurora8/gt_refclk1]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_chip2chip_0_aurora8/gt0_txpolarity_in] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: chip2chip_bot_ff
proc create_hier_cell_chip2chip_bot_ff { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_chip2chip_bot_ff() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX_rtl:1.0 GT_SERIAL_TX

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX_rtl:1.0 c2c_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aurora_init_clk
  create_bd_pin -dir I -type rst aurora_mmcm_not_locked
  create_bd_pin -dir I -type rst aurora_pma_init_in
  create_bd_pin -dir O axi_c2c_link_status_out
  create_bd_pin -dir O -from 0 -to 0 channel_up
  create_bd_pin -dir I gt0_pll0outclk_in
  create_bd_pin -dir I gt0_pll0outrefclk_in
  create_bd_pin -dir I gt0_pll0refclklost_in
  create_bd_pin -dir I gt0_pll1outclk_in
  create_bd_pin -dir I gt0_pll1outrefclk_in
  create_bd_pin -dir O gt0_rxcommadet_out
  create_bd_pin -dir O gt0_rxprbserr_out
  create_bd_pin -dir I -from 2 -to 0 gt0_rxprbssel_in
  create_bd_pin -dir I -type clk gt_refclk1
  create_bd_pin -dir I quad1_common_lock_in
  create_bd_pin -dir I -type rst s_aresetn
  create_bd_pin -dir I -type clk sync_clk
  create_bd_pin -dir I -type clk user_clk

  # Create instance: axi_chip2chip_0, and set properties
  set axi_chip2chip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_chip2chip:5.0 axi_chip2chip_0 ]
  set_property -dict [ list \
   CONFIG.C_AURORA_WIDTH {1} \
   CONFIG.C_ECC_ENABLE {false} \
   CONFIG.C_INCLUDE_AXILITE {0} \
   CONFIG.C_INTERFACE_MODE {1} \
   CONFIG.C_INTERFACE_TYPE {3} \
 ] $axi_chip2chip_0

  # Create instance: axi_chip2chip_0_aurora8, and set properties
  set axi_chip2chip_0_aurora8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:aurora_8b10b:11.1 axi_chip2chip_0_aurora8 ]
  set_property -dict [ list \
   CONFIG.C_AURORA_LANES {1} \
   CONFIG.C_DRP_IF {false} \
   CONFIG.C_GT_CLOCK_1 {GTPQ0} \
   CONFIG.C_GT_LOC_1 {X} \
   CONFIG.C_GT_LOC_2 {X} \
   CONFIG.C_GT_LOC_3 {1} \
   CONFIG.C_GT_LOC_4 {X} \
   CONFIG.C_LANE_WIDTH {4} \
   CONFIG.C_LINE_RATE {3.75} \
   CONFIG.C_REFCLK_FREQUENCY {250.000} \
   CONFIG.Interface_Mode {Streaming} \
   CONFIG.SINGLEEND_GTREFCLK {false} \
   CONFIG.SINGLEEND_INITCLK {false} \
   CONFIG.SupportLevel {0} \
   CONFIG.TransceiverControl {true} \
 ] $axi_chip2chip_0_aurora8

  # Create instance: axisafety_1, and set properties
  set block_name axisafety
  set block_cell_name axisafety_1
  if { [catch {set axisafety_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axisafety_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_S_AXI_ADDR_WIDTH {27} \
   CONFIG.C_S_AXI_ID_WIDTH {6} \
   CONFIG.OPT_SELF_RESET {1} \
   CONFIG.OPT_TIMEOUT {10000} \
 ] $axisafety_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net GT_SERIAL_RX_1 [get_bd_intf_pins c2c_0] [get_bd_intf_pins axi_chip2chip_0_aurora8/GT_SERIAL_RX]
  connect_bd_intf_net -intf_net axi_chip2chip_0_AXIS_TX [get_bd_intf_pins axi_chip2chip_0/AXIS_TX] [get_bd_intf_pins axi_chip2chip_0_aurora8/USER_DATA_S_AXI_TX]
  connect_bd_intf_net -intf_net axi_chip2chip_0_aurora8_GT_SERIAL_TX [get_bd_intf_pins GT_SERIAL_TX] [get_bd_intf_pins axi_chip2chip_0_aurora8/GT_SERIAL_TX]
  connect_bd_intf_net -intf_net axi_chip2chip_0_aurora8_USER_DATA_M_AXI_RX [get_bd_intf_pins axi_chip2chip_0/AXIS_RX] [get_bd_intf_pins axi_chip2chip_0_aurora8/USER_DATA_M_AXI_RX]
  connect_bd_intf_net -intf_net axisafety_1_M_AXI [get_bd_intf_pins axi_chip2chip_0/s_axi] [get_bd_intf_pins axisafety_1/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axisafety_1/S_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins aurora_init_clk] [get_bd_pins axi_chip2chip_0/aurora_init_clk] [get_bd_pins axi_chip2chip_0/s_aclk] [get_bd_pins axi_chip2chip_0_aurora8/drpclk_in] [get_bd_pins axi_chip2chip_0_aurora8/init_clk_in] [get_bd_pins axisafety_1/S_AXI_ACLK]
  connect_bd_net -net Net1 [get_bd_pins gt0_rxprbssel_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_rxprbssel_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_txprbssel_in]
  connect_bd_net -net aurora_mmcm_not_locked_1 [get_bd_pins aurora_mmcm_not_locked] [get_bd_pins axi_chip2chip_0/aurora_mmcm_not_locked]
  connect_bd_net -net axi_chip2chip_0_aurora8_channel_up [get_bd_pins channel_up] [get_bd_pins axi_chip2chip_0/axi_c2c_aurora_channel_up] [get_bd_pins axi_chip2chip_0_aurora8/channel_up]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_rxcommadet_out [get_bd_pins gt0_rxcommadet_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_rxcommadet_out]
  connect_bd_net -net axi_chip2chip_0_aurora8_gt0_rxprbserr_out [get_bd_pins gt0_rxprbserr_out] [get_bd_pins axi_chip2chip_0_aurora8/gt0_rxprbserr_out]
  connect_bd_net -net axi_chip2chip_0_aurora_pma_init_out [get_bd_pins axi_chip2chip_0/aurora_pma_init_out] [get_bd_pins axi_chip2chip_0_aurora8/gt_reset]
  connect_bd_net -net axi_chip2chip_0_aurora_reset_pb [get_bd_pins axi_chip2chip_0/aurora_reset_pb] [get_bd_pins axi_chip2chip_0_aurora8/reset]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_link_status_out [get_bd_pins axi_c2c_link_status_out] [get_bd_pins axi_chip2chip_0/axi_c2c_link_status_out]
  connect_bd_net -net axisafety_1_M_AXI_ARESETN [get_bd_pins axi_chip2chip_0/s_aresetn] [get_bd_pins axisafety_1/M_AXI_ARESETN]
  connect_bd_net -net cpu_peripheral_reset [get_bd_pins aurora_pma_init_in] [get_bd_pins axi_chip2chip_0/aurora_pma_init_in]
  connect_bd_net -net gt0_pll0outclk_in_1 [get_bd_pins gt0_pll0outclk_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll0outclk_in]
  connect_bd_net -net gt0_pll0outrefclk_in_1 [get_bd_pins gt0_pll0outrefclk_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll0outrefclk_in]
  connect_bd_net -net gt0_pll0refclklost_in_1 [get_bd_pins gt0_pll0refclklost_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll0refclklost_in]
  connect_bd_net -net gt0_pll1outclk_in_1 [get_bd_pins gt0_pll1outclk_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll1outclk_in]
  connect_bd_net -net gt0_pll1outrefclk_in_1 [get_bd_pins gt0_pll1outrefclk_in] [get_bd_pins axi_chip2chip_0_aurora8/gt0_pll1outrefclk_in]
  connect_bd_net -net quad1_common_lock_in_1 [get_bd_pins quad1_common_lock_in] [get_bd_pins axi_chip2chip_0_aurora8/quad1_common_lock_in]
  connect_bd_net -net s_aresetn_1 [get_bd_pins s_aresetn] [get_bd_pins axisafety_1/S_AXI_ARESETN]
  connect_bd_net -net sync_clk_1 [get_bd_pins sync_clk] [get_bd_pins axi_chip2chip_0_aurora8/sync_clk]
  connect_bd_net -net user_clk_1 [get_bd_pins user_clk] [get_bd_pins axi_chip2chip_0/axi_c2c_phy_clk] [get_bd_pins axi_chip2chip_0_aurora8/user_clk]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins gt_refclk1] [get_bd_pins axi_chip2chip_0_aurora8/gt_refclk1]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_chip2chip_0_aurora8/gt0_txpolarity_in] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: bram_loopback
proc create_hier_cell_bram_loopback { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_bram_loopback() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk S_AXI_ACLK
  create_bd_pin -dir I -type rst S_AXI_ARESETN

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axisafety_0, and set properties
  set block_name axisafety
  set block_cell_name axisafety_0
  if { [catch {set axisafety_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axisafety_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_S_AXI_ADDR_WIDTH {13} \
   CONFIG.C_S_AXI_ID_WIDTH {6} \
   CONFIG.OPT_SELF_RESET {1} \
   CONFIG.OPT_TIMEOUT {512} \
 ] $axisafety_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axisafety_0_M_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axisafety_0/M_AXI]
  connect_bd_intf_net -intf_net cpu_M18_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axisafety_0/S_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins S_AXI_ACLK] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axisafety_0/S_AXI_ACLK]
  connect_bd_net -net axisafety_0_M_AXI_ARESETN [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axisafety_0/M_AXI_ARESETN]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins S_AXI_ARESETN] [get_bd_pins axisafety_0/S_AXI_ARESETN]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  set c2c_rx_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX_rtl:1.0 c2c_rx_0 ]

  set c2c_rx_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX_rtl:1.0 c2c_rx_1 ]

  set c2c_tx_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX_rtl:1.0 c2c_tx_0 ]

  set c2c_tx_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX_rtl:1.0 c2c_tx_1 ]

  set i2c_10g [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 i2c_10g ]

  set local_i2c [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 local_i2c ]

  set mdio_phy [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_phy ]

  set mgtrefclk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 mgtrefclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   ] $mgtrefclk

  set rgmii [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii ]

  set scf_i2c_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 scf_i2c_0 ]

  set scf_i2c_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 scf_i2c_1 ]

  set scf_i2c_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 scf_i2c_2 ]


  # Create ports
  set en_ipmb_zynq [ create_bd_port -dir O -from 1 -to 0 en_ipmb_zynq ]
  set ha [ create_bd_port -dir I -from 7 -to 0 ha ]
  set hot_swap_sw [ create_bd_port -dir I -from 0 -to 0 hot_swap_sw ]
  set id [ create_bd_port -dir O -from 2 -to 0 id ]
  set ipmc_scl_0 [ create_bd_port -dir IO ipmc_scl_0 ]
  set ipmc_scl_1 [ create_bd_port -dir IO ipmc_scl_1 ]
  set ipmc_sda_0 [ create_bd_port -dir IO ipmc_sda_0 ]
  set ipmc_sda_1 [ create_bd_port -dir IO ipmc_sda_1 ]
  set los_10g [ create_bd_port -dir I -from 0 -to 0 los_10g ]
  set phy_rst [ create_bd_port -dir O -from 0 -to 0 -type rst phy_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $phy_rst
  set pim_alarm [ create_bd_port -dir I -from 0 -to 0 pim_alarm ]
  set qbv_on_off [ create_bd_port -dir O -from 0 -to 0 qbv_on_off ]
  set ready_ipmb_zynq [ create_bd_port -dir I -from 1 -to 0 ready_ipmb_zynq ]
  set scf_tck_0 [ create_bd_port -dir O scf_tck_0 ]
  set scf_tck_1 [ create_bd_port -dir O scf_tck_1 ]
  set scf_tdi_0 [ create_bd_port -dir O scf_tdi_0 ]
  set scf_tdi_1 [ create_bd_port -dir O scf_tdi_1 ]
  set scf_tdo_0 [ create_bd_port -dir I scf_tdo_0 ]
  set scf_tdo_1 [ create_bd_port -dir I scf_tdo_1 ]
  set scf_tms_0 [ create_bd_port -dir O scf_tms_0 ]
  set scf_tms_1 [ create_bd_port -dir O scf_tms_1 ]

  # Create instance: bram_loopback
  create_hier_cell_bram_loopback [current_bd_instance .] bram_loopback

  # Create instance: chip2chip_bot_ff
  create_hier_cell_chip2chip_bot_ff [current_bd_instance .] chip2chip_bot_ff

  # Create instance: chip2chip_top_ff
  create_hier_cell_chip2chip_top_ff [current_bd_instance .] chip2chip_top_ff

  # Create instance: cpu
  create_hier_cell_cpu [current_bd_instance .] cpu

  # Create instance: dbg
  create_hier_cell_dbg [current_bd_instance .] dbg

  # Create instance: eth1
  create_hier_cell_eth1 [current_bd_instance .] eth1

  # Create instance: i2c
  create_hier_cell_i2c [current_bd_instance .] i2c

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {9} \
   CONFIG.C_PROBE4_WIDTH {7} \
   CONFIG.C_PROBE5_WIDTH {7} \
 ] $ila_0

  # Create instance: ipmc
  create_hier_cell_ipmc [current_bd_instance .] ipmc

  # Create instance: jtag
  create_hier_cell_jtag [current_bd_instance .] jtag

  # Create instance: reg_bank
  create_hier_cell_reg_bank [current_bd_instance .] reg_bank

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create interface connections
  connect_bd_intf_net -intf_net CLK_IN_D_0_1 [get_bd_intf_ports mgtrefclk] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net GT_SERIAL_RX_1 [get_bd_intf_ports c2c_rx_0] [get_bd_intf_pins chip2chip_top_ff/c2c_0]
  connect_bd_intf_net -intf_net S_AXI2_1 [get_bd_intf_pins cpu/M05_AXI] [get_bd_intf_pins ipmc/S_AXI]
  connect_bd_intf_net -intf_net S_AXI3_1 [get_bd_intf_pins cpu/M06_AXI] [get_bd_intf_pins ipmc/S_AXI2]
  connect_bd_intf_net -intf_net S_AXI4_1 [get_bd_intf_pins cpu/M07_AXI] [get_bd_intf_pins ipmc/S_AXI1]
  connect_bd_intf_net -intf_net S_AXI5_1 [get_bd_intf_pins cpu/M08_AXI] [get_bd_intf_pins ipmc/S_AXI3]
  connect_bd_intf_net -intf_net S_AXI6_1 [get_bd_intf_pins cpu/M09_AXI] [get_bd_intf_pins ipmc/S_AXI4]
  connect_bd_intf_net -intf_net axi_chip2chip_0_aurora8_GT_SERIAL_TX [get_bd_intf_ports c2c_tx_0] [get_bd_intf_pins chip2chip_top_ff/GT_SERIAL_TX]
  connect_bd_intf_net -intf_net axi_ethernet_0_mdio [get_bd_intf_ports mdio_phy] [get_bd_intf_pins eth1/mdio_phy]
  connect_bd_intf_net -intf_net axi_ethernet_0_rgmii [get_bd_intf_ports rgmii] [get_bd_intf_pins eth1/rgmii]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports scf_i2c_0] [get_bd_intf_pins i2c/iic_rtl_0]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports scf_i2c_1] [get_bd_intf_pins i2c/iic_rtl_1]
  connect_bd_intf_net -intf_net axi_iic_2_IIC [get_bd_intf_ports scf_i2c_2] [get_bd_intf_pins i2c/iic_rtl_2]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins cpu/S_AXI_HP0] [get_bd_intf_pins eth1/M00_AXI]
  connect_bd_intf_net -intf_net c2c_0_0_1 [get_bd_intf_ports c2c_rx_1] [get_bd_intf_pins chip2chip_bot_ff/c2c_0]
  connect_bd_intf_net -intf_net chip2chip_1_GT_SERIAL_TX [get_bd_intf_ports c2c_tx_1] [get_bd_intf_pins chip2chip_bot_ff/GT_SERIAL_TX]
  connect_bd_intf_net -intf_net cpu_M10_AXI [get_bd_intf_pins cpu/M10_AXI] [get_bd_intf_pins i2c/S_AXI2]
  connect_bd_intf_net -intf_net cpu_M11_AXI [get_bd_intf_pins cpu/M11_AXI] [get_bd_intf_pins i2c/S_AXI]
  connect_bd_intf_net -intf_net cpu_M12_AXI [get_bd_intf_pins cpu/M12_AXI] [get_bd_intf_pins i2c/S_AXI1]
  connect_bd_intf_net -intf_net cpu_M13_AXI [get_bd_intf_pins cpu/M13_AXI] [get_bd_intf_pins reg_bank/S_AXI]
  connect_bd_intf_net -intf_net cpu_M14_AXI [get_bd_intf_pins chip2chip_top_ff/S_AXI1] [get_bd_intf_pins cpu/M14_AXI]
  connect_bd_intf_net -intf_net cpu_M16_AXI [get_bd_intf_pins cpu/M16_AXI] [get_bd_intf_pins i2c/S_AXI3]
  connect_bd_intf_net -intf_net cpu_M17_AXI [get_bd_intf_pins cpu/M17_AXI] [get_bd_intf_pins i2c/S_AXI4]
  connect_bd_intf_net -intf_net cpu_M18_AXI [get_bd_intf_pins bram_loopback/S_AXI] [get_bd_intf_pins cpu/M18_AXI]
  connect_bd_intf_net -intf_net i2c_iic_rtl_3 [get_bd_intf_ports i2c_10g] [get_bd_intf_pins i2c/iic_rtl_3]
  connect_bd_intf_net -intf_net i2c_iic_rtl_4 [get_bd_intf_ports local_i2c] [get_bd_intf_pins i2c/iic_rtl_4]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins cpu/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins cpu/FIXED_IO]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins cpu/M00_AXI] [get_bd_intf_pins eth1/s_axi]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins cpu/M01_AXI] [get_bd_intf_pins dbg/S_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins cpu/M02_AXI] [get_bd_intf_pins eth1/S_AXI_LITE]
  connect_bd_intf_net -intf_net s_axi1_1 [get_bd_intf_pins cpu/M04_AXI] [get_bd_intf_pins jtag/s_axi1]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins cpu/M03_AXI] [get_bd_intf_pins jtag/s_axi]
  connect_bd_intf_net -intf_net s_axi_2 [get_bd_intf_pins chip2chip_bot_ff/s_axi] [get_bd_intf_pins cpu/M15_AXI]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins cpu/interconnect_aresetn] [get_bd_pins eth1/ARESETN]
  connect_bd_net -net In0_0_1 [get_bd_ports ready_ipmb_zynq] [get_bd_pins reg_bank/In0_0]
  connect_bd_net -net In1_0_1 [get_bd_ports los_10g] [get_bd_pins reg_bank/In1_0]
  connect_bd_net -net In2_0_1 [get_bd_ports ha] [get_bd_pins ipmc/ha] [get_bd_pins reg_bank/In2_0]
  connect_bd_net -net In3_0_1 [get_bd_ports pim_alarm] [get_bd_pins reg_bank/In3_0]
  connect_bd_net -net In5_1 [get_bd_pins chip2chip_top_ff/channel_up] [get_bd_pins reg_bank/In5]
  connect_bd_net -net In7_1 [get_bd_pins chip2chip_bot_ff/channel_up] [get_bd_pins reg_bank/In7]
  connect_bd_net -net In8_0_1 [get_bd_ports hot_swap_sw] [get_bd_pins reg_bank/In8_0]
  connect_bd_net -net Net [get_bd_pins bram_loopback/S_AXI_ACLK] [get_bd_pins chip2chip_bot_ff/aurora_init_clk] [get_bd_pins chip2chip_top_ff/aurora_init_clk] [get_bd_pins cpu/FCLK_CLK0] [get_bd_pins dbg/clk] [get_bd_pins eth1/s_axi_lite_aclk] [get_bd_pins i2c/s_axi_aclk] [get_bd_pins ipmc/s_axi_aclk] [get_bd_pins jtag/s_axi_aclk] [get_bd_pins reg_bank/s_axi_aclk]
  connect_bd_net -net Net1 [get_bd_ports ipmc_sda_0] [get_bd_pins ipmc/ipmc_sda_0]
  connect_bd_net -net Net2 [get_bd_ports ipmc_scl_0] [get_bd_pins ipmc/ipmc_scl_0]
  connect_bd_net -net Net3 [get_bd_ports ipmc_scl_1] [get_bd_pins ipmc/ipmc_scl_1]
  connect_bd_net -net Net4 [get_bd_ports ipmc_sda_1] [get_bd_pins ipmc/ipmc_sda_1]
  connect_bd_net -net TDO_0_0_1 [get_bd_ports scf_tdo_0] [get_bd_pins jtag/TDO_0]
  connect_bd_net -net TDO_1_0_1 [get_bd_ports scf_tdo_1] [get_bd_pins jtag/TDO_1]
  connect_bd_net -net aurora_mmcm_not_locked_1 [get_bd_pins chip2chip_bot_ff/aurora_mmcm_not_locked] [get_bd_pins chip2chip_top_ff/pll_not_locked_out]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_introut [get_bd_pins cpu/In0] [get_bd_pins eth1/mm2s_introut]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_introut [get_bd_pins cpu/In1] [get_bd_pins eth1/s2mm_introut]
  connect_bd_net -net axi_ethernet_0_interrupt [get_bd_pins cpu/In3] [get_bd_pins eth1/interrupt]
  connect_bd_net -net axi_ethernet_0_mac_irq [get_bd_pins cpu/In2] [get_bd_pins eth1/mac_irq]
  connect_bd_net -net axi_ethernet_0_phy_rst_n [get_bd_ports phy_rst] [get_bd_pins eth1/phy_rst]
  connect_bd_net -net chip2chip_0_axi_c2c_link_status_out [get_bd_pins chip2chip_top_ff/axi_c2c_link_status_out] [get_bd_pins reg_bank/In4]
  connect_bd_net -net chip2chip_0_gt0_rxcommadet_out [get_bd_pins chip2chip_top_ff/gt0_rxcommadet_out] [get_bd_pins ila_0/probe0]
  connect_bd_net -net chip2chip_0_gt0_rxprbserr_out [get_bd_pins chip2chip_top_ff/gt0_rxprbserr_out] [get_bd_pins ila_0/probe1]
  connect_bd_net -net chip2chip_0_sync_clk_out [get_bd_pins chip2chip_bot_ff/sync_clk] [get_bd_pins chip2chip_top_ff/sync_clk_out]
  connect_bd_net -net chip2chip_1_axi_c2c_link_status_out [get_bd_pins chip2chip_bot_ff/axi_c2c_link_status_out] [get_bd_pins reg_bank/In6]
  connect_bd_net -net chip2chip_1_gt0_rxcommadet_out [get_bd_pins chip2chip_bot_ff/gt0_rxcommadet_out] [get_bd_pins ila_0/probe2]
  connect_bd_net -net chip2chip_1_gt0_rxprbserr_out [get_bd_pins chip2chip_bot_ff/gt0_rxprbserr_out] [get_bd_pins ila_0/probe3]
  connect_bd_net -net chip2chip_top_ff_M_AXI_ARESETN [get_bd_pins chip2chip_top_ff/M_AXI_ARESETN] [get_bd_pins ila_0/probe8]
  connect_bd_net -net chip2chip_top_ff_o_read_fault [get_bd_pins chip2chip_top_ff/o_read_fault] [get_bd_pins ila_0/probe6]
  connect_bd_net -net chip2chip_top_ff_o_write_fault [get_bd_pins chip2chip_top_ff/o_write_fault] [get_bd_pins ila_0/probe7]
  connect_bd_net -net cpu_peripheral_reset [get_bd_pins chip2chip_bot_ff/aurora_pma_init_in] [get_bd_pins chip2chip_top_ff/aurora_pma_init_in] [get_bd_pins reg_bank/Dout1]
  connect_bd_net -net gt0_pll0outclk_in_1 [get_bd_pins chip2chip_bot_ff/gt0_pll0outclk_in] [get_bd_pins chip2chip_top_ff/gt0_pll0outclk_out]
  connect_bd_net -net gt0_pll0outrefclk_in_1 [get_bd_pins chip2chip_bot_ff/gt0_pll0outrefclk_in] [get_bd_pins chip2chip_top_ff/gt0_pll0outrefclk_out]
  connect_bd_net -net gt0_pll0refclklost_in_1 [get_bd_pins chip2chip_bot_ff/gt0_pll0refclklost_in] [get_bd_pins chip2chip_top_ff/gt0_pll0refclklost_out]
  connect_bd_net -net gt0_pll1outclk_in_1 [get_bd_pins chip2chip_bot_ff/gt0_pll1outclk_in] [get_bd_pins chip2chip_top_ff/gt0_pll1outclk_out]
  connect_bd_net -net gt0_pll1outrefclk_in_1 [get_bd_pins chip2chip_bot_ff/gt0_pll1outrefclk_in] [get_bd_pins chip2chip_top_ff/gt0_pll1outrefclk_out]
  connect_bd_net -net i2c_iic2intc_irpt [get_bd_pins cpu/In7] [get_bd_pins i2c/iic2intc_irpt]
  connect_bd_net -net i2c_iic2intc_irpt1 [get_bd_pins cpu/In8] [get_bd_pins i2c/iic2intc_irpt1]
  connect_bd_net -net i2c_iic2intc_irpt2 [get_bd_pins cpu/In9] [get_bd_pins i2c/iic2intc_irpt2]
  connect_bd_net -net i2c_iic2intc_irpt3 [get_bd_pins cpu/In10] [get_bd_pins i2c/iic2intc_irpt3]
  connect_bd_net -net i2c_iic2intc_irpt4 [get_bd_pins cpu/In11] [get_bd_pins i2c/iic2intc_irpt4]
  connect_bd_net -net ipmc_i2c_addr_received [get_bd_pins ila_0/probe4] [get_bd_pins ipmc/i2c_addr_received]
  connect_bd_net -net ipmc_i2c_addr_received1 [get_bd_pins ila_0/probe5] [get_bd_pins ipmc/i2c_addr_received1]
  connect_bd_net -net ipmc_jtag_TCK_0 [get_bd_ports scf_tck_0] [get_bd_pins jtag/TCK_0]
  connect_bd_net -net ipmc_jtag_TCK_1 [get_bd_ports scf_tck_1] [get_bd_pins jtag/TCK_1]
  connect_bd_net -net ipmc_jtag_TDI_0 [get_bd_ports scf_tdi_0] [get_bd_pins jtag/TDI_0]
  connect_bd_net -net ipmc_jtag_TDI_1 [get_bd_ports scf_tdi_1] [get_bd_pins jtag/TDI_1]
  connect_bd_net -net ipmc_jtag_TMS_0 [get_bd_ports scf_tms_0] [get_bd_pins jtag/TMS_0]
  connect_bd_net -net ipmc_jtag_TMS_1 [get_bd_ports scf_tms_1] [get_bd_pins jtag/TMS_1]
  connect_bd_net -net ipmc_jtag_iic2intc_irpt [get_bd_pins cpu/In5] [get_bd_pins ipmc/iic2intc_irpt]
  connect_bd_net -net ipmc_jtag_irq [get_bd_pins cpu/In4] [get_bd_pins ipmc/irq]
  connect_bd_net -net ipmc_jtag_irq1 [get_bd_pins cpu/In6] [get_bd_pins ipmc/irq1]
  connect_bd_net -net ipmc_jtag_s0_o [get_bd_pins cpu/I2C1_SDA_I] [get_bd_pins ipmc/s0_o]
  connect_bd_net -net ipmc_jtag_s0_o1 [get_bd_pins cpu/I2C1_SCL_I] [get_bd_pins ipmc/s0_o1]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins bram_loopback/S_AXI_ARESETN] [get_bd_pins chip2chip_bot_ff/s_aresetn] [get_bd_pins chip2chip_top_ff/s_aresetn] [get_bd_pins cpu/S00_ARESETN] [get_bd_pins dbg/s_axi_aresetn] [get_bd_pins eth1/axi_resetn] [get_bd_pins i2c/s_axi_aresetn] [get_bd_pins ipmc/s_axi_aresetn] [get_bd_pins jtag/s_axi_aresetn] [get_bd_pins reg_bank/s_axi_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins cpu/FCLK_CLK1] [get_bd_pins eth1/ref_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins cpu/FCLK_CLK2] [get_bd_pins eth1/gtx_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins cpu/ext_reset_in] [get_bd_pins eth1/ext_reset_in]
  connect_bd_net -net quad1_common_lock_in_1 [get_bd_pins chip2chip_bot_ff/quad1_common_lock_in] [get_bd_pins chip2chip_top_ff/quad1_common_lock_out]
  connect_bd_net -net reg_bank_Dout [get_bd_pins chip2chip_bot_ff/gt0_rxprbssel_in] [get_bd_pins chip2chip_top_ff/gt0_txprbssel_in] [get_bd_pins reg_bank/Dout]
  connect_bd_net -net reg_bank_en_ipmb_zynq [get_bd_ports en_ipmb_zynq] [get_bd_pins reg_bank/en_ipmb_zynq]
  connect_bd_net -net reg_bank_qbv_on_off [get_bd_ports qbv_on_off] [get_bd_pins reg_bank/qbv_on_off]
  connect_bd_net -net s0_i1_1 [get_bd_pins cpu/I2C1_SCL_O] [get_bd_pins ipmc/s0_i1]
  connect_bd_net -net s0_i_1 [get_bd_pins cpu/I2C1_SDA_O] [get_bd_pins ipmc/s0_i]
  connect_bd_net -net s0_t1_1 [get_bd_pins cpu/I2C1_SCL_T] [get_bd_pins ipmc/s0_t1]
  connect_bd_net -net s0_t_1 [get_bd_pins cpu/I2C1_SDA_T] [get_bd_pins ipmc/s0_t]
  connect_bd_net -net user_clk_1 [get_bd_pins chip2chip_bot_ff/user_clk] [get_bd_pins chip2chip_top_ff/user_clk_out] [get_bd_pins ila_0/clk]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins chip2chip_bot_ff/gt_refclk1] [get_bd_pins chip2chip_top_ff/gt_refclk1] [get_bd_pins util_ds_buf_0/IBUF_OUT]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports id] [get_bd_pins reg_bank/Dout_1]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces bram_loopback/axisafety_0/M_AXI] [get_bd_addr_segs bram_loopback/axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces chip2chip_bot_ff/axisafety_1/M_AXI] [get_bd_addr_segs chip2chip_bot_ff/axi_chip2chip_0/s_axi/Mem0] -force
  assign_bd_address -offset 0x00000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces chip2chip_top_ff/axisafety_1/M_AXI] [get_bd_addr_segs chip2chip_top_ff/axi_chip2chip_0/s_axi/Mem0] -force
  assign_bd_address -offset 0x40000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs ipmc/ipmc_i2c_0/axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x42000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs ipmc/ipmc_i2c_1/axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x41000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs eth1/axi_ethernet_0/s_axi/Reg0] -force
  assign_bd_address -offset 0x40400000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs eth1/axi_ethernet_0_dma/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs ipmc/ipmc_i2c_0/axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41210000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs ipmc/ipmc_i2c_1/axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41220000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs reg_bank/axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs ipmc/ipmc_i2c_1/axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41610000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs i2c/axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41620000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs i2c/axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x41630000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs i2c/axi_iic_2/S_AXI/Reg] -force
  assign_bd_address -offset 0x41640000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs i2c/axi_iic_3/S_AXI/Reg] -force
  assign_bd_address -offset 0x41650000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs i2c/axi_iic_4/S_AXI/Reg] -force
  assign_bd_address -offset 0x43C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs jtag/axi_jtag_0/s_axi/reg0] -force
  assign_bd_address -offset 0x43C10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs jtag/axi_jtag_1/s_axi/reg0] -force
  assign_bd_address -offset 0x43C30000 -range 0x00002000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs bram_loopback/axisafety_0/S_AXI/reg0] -force
  assign_bd_address -offset 0x58000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs chip2chip_bot_ff/axisafety_1/S_AXI/reg0] -force
  assign_bd_address -offset 0x50000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs chip2chip_top_ff/axisafety_1/S_AXI/reg0] -force
  assign_bd_address -offset 0x43C20000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/processing_system7_0/Data] [get_bd_addr_segs dbg/debug_bridge_0/S_AXI/Reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces eth1/axi_ethernet_0_dma/Data_SG] [get_bd_addr_segs cpu/processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces eth1/axi_ethernet_0_dma/Data_MM2S] [get_bd_addr_segs cpu/processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces eth1/axi_ethernet_0_dma/Data_S2MM] [get_bd_addr_segs cpu/processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

