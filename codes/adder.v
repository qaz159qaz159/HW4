module adder(
    data_in,
    data_out
);

input [63:0] data_in;
output [63:0] data_out;

assign data_out = data_in + 4;

endmodule