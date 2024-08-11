module mac_unit (
    weight, inp, partial_sum_in,
    partial_sum_out
);
parameter width = 8;
parameter accwidth = 32;

input   [width-1:0] weight;
input   [width-1:0] inp;
input   [accwidth-1:0] partial_sum_in;
output  [accwidth-1:0] partial_sum_out;

assign partial_sum_out = weight*inp + partial_sum_in;

endmodule
