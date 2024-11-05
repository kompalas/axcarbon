module top(in_a, in_b, out);

input [10:0] in_a, in_b;
output [21:0] out;

assign out = in_a * in_b;
endmodule
