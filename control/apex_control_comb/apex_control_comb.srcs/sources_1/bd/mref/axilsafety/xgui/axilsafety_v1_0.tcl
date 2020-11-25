# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LGDEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LGTIMEOUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OPT_MIN_RESET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OPT_SELF_RESET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OPT_TIMEOUT" -parent ${Page_0}


}

proc update_PARAM_VALUE.AW { PARAM_VALUE.AW } {
	# Procedure called to update AW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AW { PARAM_VALUE.AW } {
	# Procedure called to validate AW
	return true
}

proc update_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DW { PARAM_VALUE.DW } {
	# Procedure called to update DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW { PARAM_VALUE.DW } {
	# Procedure called to validate DW
	return true
}

proc update_PARAM_VALUE.LGDEPTH { PARAM_VALUE.LGDEPTH } {
	# Procedure called to update LGDEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LGDEPTH { PARAM_VALUE.LGDEPTH } {
	# Procedure called to validate LGDEPTH
	return true
}

proc update_PARAM_VALUE.LGTIMEOUT { PARAM_VALUE.LGTIMEOUT } {
	# Procedure called to update LGTIMEOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LGTIMEOUT { PARAM_VALUE.LGTIMEOUT } {
	# Procedure called to validate LGTIMEOUT
	return true
}

proc update_PARAM_VALUE.MAX_DEPTH { PARAM_VALUE.MAX_DEPTH } {
	# Procedure called to update MAX_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_DEPTH { PARAM_VALUE.MAX_DEPTH } {
	# Procedure called to validate MAX_DEPTH
	return true
}

proc update_PARAM_VALUE.OPT_MIN_RESET { PARAM_VALUE.OPT_MIN_RESET } {
	# Procedure called to update OPT_MIN_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OPT_MIN_RESET { PARAM_VALUE.OPT_MIN_RESET } {
	# Procedure called to validate OPT_MIN_RESET
	return true
}

proc update_PARAM_VALUE.OPT_SELF_RESET { PARAM_VALUE.OPT_SELF_RESET } {
	# Procedure called to update OPT_SELF_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OPT_SELF_RESET { PARAM_VALUE.OPT_SELF_RESET } {
	# Procedure called to validate OPT_SELF_RESET
	return true
}

proc update_PARAM_VALUE.OPT_TIMEOUT { PARAM_VALUE.OPT_TIMEOUT } {
	# Procedure called to update OPT_TIMEOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OPT_TIMEOUT { PARAM_VALUE.OPT_TIMEOUT } {
	# Procedure called to validate OPT_TIMEOUT
	return true
}


proc update_MODELPARAM_VALUE.C_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.OPT_TIMEOUT { MODELPARAM_VALUE.OPT_TIMEOUT PARAM_VALUE.OPT_TIMEOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OPT_TIMEOUT}] ${MODELPARAM_VALUE.OPT_TIMEOUT}
}

proc update_MODELPARAM_VALUE.MAX_DEPTH { MODELPARAM_VALUE.MAX_DEPTH PARAM_VALUE.MAX_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_DEPTH}] ${MODELPARAM_VALUE.MAX_DEPTH}
}

proc update_MODELPARAM_VALUE.AW { MODELPARAM_VALUE.AW PARAM_VALUE.AW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AW}] ${MODELPARAM_VALUE.AW}
}

proc update_MODELPARAM_VALUE.DW { MODELPARAM_VALUE.DW PARAM_VALUE.DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW}] ${MODELPARAM_VALUE.DW}
}

proc update_MODELPARAM_VALUE.LGTIMEOUT { MODELPARAM_VALUE.LGTIMEOUT PARAM_VALUE.LGTIMEOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LGTIMEOUT}] ${MODELPARAM_VALUE.LGTIMEOUT}
}

proc update_MODELPARAM_VALUE.LGDEPTH { MODELPARAM_VALUE.LGDEPTH PARAM_VALUE.LGDEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LGDEPTH}] ${MODELPARAM_VALUE.LGDEPTH}
}

proc update_MODELPARAM_VALUE.OPT_SELF_RESET { MODELPARAM_VALUE.OPT_SELF_RESET PARAM_VALUE.OPT_SELF_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OPT_SELF_RESET}] ${MODELPARAM_VALUE.OPT_SELF_RESET}
}

proc update_MODELPARAM_VALUE.OPT_MIN_RESET { MODELPARAM_VALUE.OPT_MIN_RESET PARAM_VALUE.OPT_MIN_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OPT_MIN_RESET}] ${MODELPARAM_VALUE.OPT_MIN_RESET}
}

