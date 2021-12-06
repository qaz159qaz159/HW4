`define REG_WIDTH 64

module regfile(
    input [REG_WIDTH-1:0] reg_addr,
    input [REG_WIDTH-1:0] reg_data,
    input reg_wr_en,
    input reg_rd_en,
    output [REG_WIDTH-1:0] reg_rd_data
);

endmodule