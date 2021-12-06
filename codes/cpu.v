module cpu #( // Do not modify interface
	parameter ADDR_W = 64,
	parameter INST_W = 32,
	parameter DATA_W = 64
)(
    input                   i_clk,
    input                   i_rst_n,
    input                   i_i_valid_inst, // from instruction memory
    input  [ INST_W-1 : 0 ] i_i_inst,       // from instruction memory
    input                   i_d_valid_data, // from data memory
    input  [ DATA_W-1 : 0 ] i_d_data,       // from data memory
    output                  o_i_valid_addr, // to instruction memory
    output [ ADDR_W-1 : 0 ] o_i_addr,       // to instruction memory
    output [ DATA_W-1 : 0 ] o_d_w_data,     // to data memory
    output [ ADDR_W-1 : 0 ] o_d_w_addr,     // to data memory
    output [ ADDR_W-1 : 0 ] o_d_r_addr,     // to data memory
    output                  o_d_MemRead,    // to data memory
    output                  o_d_MemWrite,   // to data memory
    output                  o_finish
);

always @(posedge i_clk) begin
    if (i_rst_n == 1'b1) begin
        o_i_valid_addr <= 1'b0;
        o_d_w_data <= 0;
        o_d_w_addr <= 0;
        o_d_r_addr <= 0;
        o_d_MemRead <= 1'b0;
        o_d_MemWrite <= 1'b0;
        o_finish <= 1'b0;
    end else begin
        if (i_i_valid_inst == 1'b1) begin
            o_i_valid_addr <= 1'b1;
            o_i_addr <= i_i_inst;
        end else begin
            o_i_valid_addr <= 1'b0;
        end
end


endmodule
