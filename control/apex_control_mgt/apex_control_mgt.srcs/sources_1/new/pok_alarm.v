`timescale 1ns / 1ps

module pok_alarm_single
(
    // polarity of the pok_change signal, may depend on particular payload module
    // 0 = falling edge is bad news, 1 = rising edge is bad news
    input pok_change_polarity, 
    // pok change enable. 0 = do not react (during power up for example), 1 = react
    input pok_change_enable,
    // alarm signal for status register
    output reg payload_off_alarm,
    
    // payload on/off request from register, 0 = on
    input payload_on_in, 
    // payload on/off control for DC-DC brick, 0 = on
    output reg payload_on_out,
    // bad news signals from payload
    input pok_change,
    
    input clk
);

    always @(posedge clk)
    begin
        if (pok_change_enable == 1'b1) // react to bad news
        begin
            if ((pok_change ^ pok_change_polarity) == 1'b0) // bad news
            begin
                // payload off
                payload_on_out = 1'b1;
                // alarm to CPU
                payload_off_alarm = 1'b1;
            end
        end
        else // don't react
        begin
            payload_off_alarm = 1'b0; // no alarm
            payload_on_out = payload_on_in; // simply repeat
        end
    end

endmodule


// indexes: 0 = bottom payload, 1 = top payload, 2 = QSFP
module pok_alarm
(
    // polarity of the pok_change signal, may depend on particular payload module
    // 0 = falling edge is bad news, 1 = rising edge is bad news
    input [2:0] pok_change_polarity, 
    // pok change enable. 0 = do not react (during power up for example), 1 = react
    input [2:0] pok_change_enable,
    // alarm signal for status register
    output [2:0] payload_off_alarm,
    
    // payload on/off request from register
    input payload_on_in,
    // payload on/off control for DC-DC brick
    output payload_on_out,
    // bad news signals from payload
    input [2:0] pok_change,
    
    input clk
);

    genvar gi;
    wire [2:0] payload_on_out_int;
    assign payload_on_out = |payload_on_out_int; // shut down the brick if any of the modules is unhappy
    generate
        for (gi = 0; gi < 3; gi=gi+1)
        begin:pok_alarm_loop
            pok_alarm_single pas
            (
                .pok_change_polarity (pok_change_polarity [gi]), 
                .pok_change_enable   (pok_change_enable   [gi]),
                .payload_off_alarm   (payload_off_alarm   [gi]),
                .payload_on_in       (payload_on_in           ),
                .payload_on_out      (payload_on_out_int  [gi]),
                .pok_change          (pok_change          [gi]),
                .clk                 (clk                     )
            );
        end
    endgenerate

endmodule
