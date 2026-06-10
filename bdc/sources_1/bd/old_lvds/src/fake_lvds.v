module fake_lvds
(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_out, ASSOCIATED_RESET resetn" *)
    input   clk,
    input   resetn,

    // The number of 4MB frames to send
    input[31:0] frame_count,

    // When this strobes high, we start sending
    input       start_stb,
    
    // This is asserted while we're busy sending data
    output      busy,

    // The is the output stream of fake LVDS data 
    output[511:0] axis_out_tdata,
    output        axis_out_tvalid,
    input         axis_out_tready
);


reg[31:0] frames_sent;
reg[31:0] data;
reg[15:0] beat;

reg[1:0] fsm_state;

localparam FSM_IDLE       = 0;
localparam FSM_NEXT_FRAME = 1;
localparam FSM_SEND_FRAME = 2;

always @(posedge clk) begin

    if (resetn == 0) begin
        frames_sent <= 0;
        fsm_state   <= FSM_IDLE;
    end

    else case (fsm_state)

        FSM_IDLE:
            if (start_stb) begin
                frames_sent <= 0;
                data        <= 0;
                fsm_state   <= FSM_NEXT_FRAME;
            end
        
        FSM_NEXT_FRAME:
            if (frames_sent == frame_count)
                fsm_state <= FSM_IDLE;
            else begin
                beat      <= 0;
                fsm_state <= FSM_SEND_FRAME;
            end

        FSM_SEND_FRAME:
            if (axis_out_tvalid & axis_out_tready) begin
                if (beat == 16'hFFFF) begin
                    frames_sent <= frames_sent + 1;
                    fsm_state   <= FSM_NEXT_FRAME;
                end
                beat <= beat + 1;
                data <= data + 1;
            end

    endcase

end

// The data in our output stream is just replications of our 32-bit counter
assign axis_out_tdata = {16{data}};

// Our output stream is valid whenever we're in state FSM_SEND_FRAME
assign axis_out_tvalid = (fsm_state == FSM_SEND_FRAME);

assign busy = (fsm_state == FSM_IDLE) & (start_stb == 0);

endmodule
