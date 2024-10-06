module top(in_a, in_b, out);

input signed [15:0] in_a, in_b;
output signed [16:0] out;

assign out = in_a + in_b;
endmodule
