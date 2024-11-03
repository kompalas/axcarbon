module top(in_a, in_b, out);

input [9:0] in_a, in_b;
output [19:0] out;

assign out = in_a * in_b;
endmodule
