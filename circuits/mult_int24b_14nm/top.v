module top(in_a, in_b, out);

input signed [23:0] in_a, in_b;
output signed [47:0] out;

assign out = in_a * in_b;
endmodule
