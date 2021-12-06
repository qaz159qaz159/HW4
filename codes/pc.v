`define DATA_W 64 

module pc(
    input i_clk,
    input i_rst,
    input [DATA_W-1:0] i_addr,
    output [DATA_W-1:0] o_addr,
    output o_i_valid_address
);

    reg [DATA_W-1:0] r_addr;
    reg o_i_valid_address;

    always @(posedge i_clk) begin
        if (i_rst) begin
            r_addr <= 0;
            o_i_valid_address <= 0;
        end else begin
            r_addr <= i_addr;
            o_i_valid_address <= 1;
        end
    end

    assign o_addr = r_addr;

endmodule