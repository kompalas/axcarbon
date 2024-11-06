module top(in_a, in_b, out);

input [7:0] in_a, in_b;
output [15:0] out;

assign out = in_a * in_b;
endmodule
