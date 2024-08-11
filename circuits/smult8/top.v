module top(a_i_0, a_i_1, p_o);

input signed [7:0] a_i_0, a_i_1;
output signed [15:0] p_o;

assign p_o = a_i_0 * a_i_1;
endmodule
