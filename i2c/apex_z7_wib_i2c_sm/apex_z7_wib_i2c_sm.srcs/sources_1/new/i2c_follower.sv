`timescale 1ns / 1ps

module i2c_follower
(
    input scl,
    input sda,
    input sda_t,
    output reg sda_inh,
    output reg busy,
    // enable signals for bus selection 
    output reg [1:0] scl_en,
    output reg [1:0] sda_en,
    
    input clk
);

    reg [3:0] bit_cnt;
    reg [7:0] clk_cnt;
    enum bit [2:0] 
    {
        IDLE, 
        SDA_F,
        SCL_R,
        START,
        STOP
    } start_stop_st;

    enum bit [2:0]
    {
        I2C_IDLE,
        CHIP_ADDR,
        RDWR_BYTE,
        I2C_STOP
    } i2c_state;
    
    wire scld, sdad, sclr, sclf, sdar, sdaf;
    i2c_debouncer scl_deb (.I(scl), .O(scld), .R(sclr), .F(sclf), .C(clk));
    i2c_debouncer sda_deb (.I(sda), .O(sdad), .R(sdar), .F(sdaf), .C(clk));

    reg start, stop, read, bus_select;

    always @(posedge clk)
    begin
    
        // state follower
        if (stop) 
        begin
            i2c_state = I2C_STOP; // if stop detected at any time, abort everything
            clk_cnt = 0;
        end
        if (start) 
        begin
            bit_cnt = 0;
            i2c_state = CHIP_ADDR; // if start detected at any time, start from CHIP ADDR
            read = 1'b0;
            busy = 1'b1;
        end

        // enable slave to transmit ACK bit
        if (bit_cnt == 4'h8 && sclf) sda_inh = 1'b1;
        if (bit_cnt == 4'h9 && sclf) sda_inh = 1'b0;
        
        if (sclf) sda_inh |= read; // host is reading, disable TX 
            
        case (i2c_state)
            I2C_IDLE:
            begin
                // start/stop logic above will move SM to CHIP_ADDR state
                sda_inh = 1'b0;
                read = 1'b0; 
                scl_en = 2'b11;
                sda_en = 2'b11;
                busy = 1'b0;
            end
            
            CHIP_ADDR:
            begin
                if (sclr) 
                begin
                    if (bit_cnt == 4'h1)
                    begin 
                        bus_select = sdad; // lock bus_select bit
                        // disable unselected bus
                        scl_en [~bus_select] = 1'h0;
                        sda_en [~bus_select] = 1'h0;
                    end
                    if (bit_cnt == 4'h7) read = sdad; // lock RD bit
                    if (bit_cnt == 4'h9)
                    begin
                        bit_cnt = 0;
                        i2c_state = RDWR_BYTE;
                    end
                    bit_cnt++; // increment bit count on rising scl
                end
                if (sclf)
                begin
                    // cut out bus selection bit so it does not corrupt the chip address
                    if (bit_cnt == 4'h1) 
                        sda_en [bus_select] = 1'h0;
                    
                    // enable bus back on the next bit
                    if (bit_cnt == 4'h2) 
                        sda_en [bus_select] = 1'h1;
                end
            end
            
            RDWR_BYTE:
            begin
                if (sclr)
                begin
                    if (bit_cnt == 4'h9) bit_cnt = 4'b0; // continue processing more bytes until start/stop comes
                    bit_cnt++; // increment bit count on rising scl
                end
            end
            
            // stop came from master, generate stop for disabled bus
            // enabled bus will receive stop from master normally
            I2C_STOP:
            begin
                scl_en = 2'b11;
                if (clk_cnt >= 8'd100) i2c_state = I2C_IDLE;
                // sda_en is set to 11 in IDLE state
                clk_cnt++;
            end
        endcase
    
    
        // start/stop detection
        case (start_stop_st)
            IDLE: 
            begin
                if (sdaf) start_stop_st = SDA_F; 
                if (sclr) start_stop_st = SCL_R;
                start = 0;
                stop = 0; 
            end
            
            SDA_F:
            begin
                if (sclf)         start_stop_st = START;
                else if (scld == sdad) start_stop_st = IDLE;
            end
            
            SCL_R:
            begin
                if (sdar)         start_stop_st = STOP;
                else if (scld == sdad) start_stop_st = IDLE;
            end
            
            START:
            begin
                start = 1'b1;
                start_stop_st = IDLE;
            end

            STOP:
            begin
                stop = 1'b1;
                start_stop_st = IDLE;
            end
        endcase
    end

//    ila_i2c ila1
//    (
//        .clk    (clk),
//        .probe0 (bit_cnt),
//        .probe1 (read),
//        .probe2 (scld),
//        .probe3 (sdad),
//        .probe4 (start),
//        .probe5 (stop),
//        .probe6 (i2c_state),
//        .probe7 (sda_t),
//        .probe8 (sda_inh)
//    );

endmodule

module i2c_debouncer 
(
    input I,      // input 
    output reg O, // debounced output 
    output R, // rising edge 
    output F, // falling edge 
    input C
);
    localparam DEBOUNCE = 10; // length of debouncer line
    localparam VOTE = 5; // last bit for debounce voting 
    reg [DEBOUNCE-1:0] d;
    reg r;

    assign R = O && !r;
    assign F = !O && r;
        
    always @(posedge C)
    begin
        r = O;
        if (|d[DEBOUNCE-1:VOTE] == 1'b0) O = 1'b0;
        if (&d[DEBOUNCE-1:VOTE] == 1'b1) O = 1'b1;
        d = {d[DEBOUNCE-2:0], I};        
    end

endmodule