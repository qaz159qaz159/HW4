module mux(
    in_data_1, // input data 1
    in_data_2, // input data 2
    in_sel,    // select (0 for data 1 and 1 for data 2)
    out_data   // output data
);

input [63:0] in_data_1;
input [63:0] in_data_2;
input in_sel;
output [63:0] out_data;

assign out_data = (in_sel == 0) ? in_data_1 : in_data_2;

endmodule