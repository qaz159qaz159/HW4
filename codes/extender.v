module extender(
    data_in,
    data_out;
);

input [11:0] data_in,
output [63:0] data_out;

assign data_out = {{53{data_in[11]}},data_in};

endmodule