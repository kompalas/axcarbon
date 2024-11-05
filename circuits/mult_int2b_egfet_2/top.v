// Multiply a number with a constant
module top(inp, out);
parameter width=2;
parameter outwidth=width*2;
parameter constant=-105;

input signed [width-1:0] inp;
output signed [outwidth-1:0] out;

assign out = inp * constant;

endmodule