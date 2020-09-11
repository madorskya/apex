`timescale 1ns / 1ps

module rgmii_buffers
(
    input [3:0] rxd, output [3:0] rxdb,
    input rx_ctl, output rx_ctlb,
    input rxc, output rxcb,
    input [3:0] txdb, output [3:0] txd,
    input tx_ctlb, output tx_ctl,
    input txcb, output txc
    
);

    (* dont_touch *) IBUF rxd_buf[3:0] (.I(rxd),    .O(rxdb));
    (* dont_touch *) IBUF rx_ctl_buf   (.I(rx_ctl), .O(rx_ctlb));
    (* dont_touch *) IBUF rxc_buf      (.I(rxc),    .O(rxcb));

//    (* dont_touch *) OBUF txd_buf[3:0] (.I(txdb),    .O(txd));
//    (* dont_touch *) OBUF tx_ctl_buf   (.I(tx_ctlb), .O(tx_ctl));
//    (* dont_touch *) OBUF txc_buf      (.I(txcb),    .O(txc));

    assign txd = txdb;
    assign tx_ctl = tx_ctlb;
    assign txc = txcb;

endmodule
