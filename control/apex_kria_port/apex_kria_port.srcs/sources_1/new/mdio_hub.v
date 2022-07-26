`timescale 1ns / 1ps
module mdio_hub
(

    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio0 MDIO_I" *) output mdio0_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio0 MDIO_O" *) input  mdio0_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio0 MDIO_T" *) input  mdio0_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio0 MDC" *)    input  mdc0,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio1 MDIO_I" *) output mdio1_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio1 MDIO_O" *) input  mdio1_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio1 MDIO_T" *) input  mdio1_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio1 MDC" *)    input  mdc1,

    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_I" *) input  mdio_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_O" *) output mdio_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_T" *) output mdio_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDC" *)    output mdc

);

    assign mdc = mdc0 | mdc1; // clock is driven by either of the inputs, inactive =0

    // data pin is driven by either of the inputs
    assign mdio_o = mdio0_o & mdio1_o;
    assign mdio_t = mdio0_t & mdio1_t;

    // all inputs receive the same input from chip
    assign mdio0_i = mdio_i;
    assign mdio1_i = mdio_i;

endmodule
