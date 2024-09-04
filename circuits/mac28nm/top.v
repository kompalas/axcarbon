module top (
    weight, inp, partial_sum_in,
    partial_sum_out
);
parameter width = 8;
parameter accwidth = 32;

input   [width-1:0] weight;
input   [width-1:0] inp;
input   [accwidth-1:0] partial_sum_in;
output  [accwidth-1:0] partial_sum_out;

// Ensure the multiplication result is the correct width before addition
wire [2*width-1:0] product;
assign product = weight * inp;
assign partial_sum_out = product + partial_sum_in;

endmodule
