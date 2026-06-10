module mc_sim_metadata
(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF md" *)
    input clk,

    output[511:0] md_tdata,
    output reg    md_tvalid,
    input         md_tready
);

assign md_tdata = 0;

always @(posedge clk) begin
    md_tvalid <= 1;
end

endmodule