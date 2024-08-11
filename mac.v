module mac_unit (w, i, psi, pso);
parameter width = 8;
parameter accwidth = 32;

input   [width-1:0] w;
input   [width-1:0] i;
input   [accwidth-1:0] psi;

output  [accwidth-1:0] pso;


assign pso = w*i + psi;

endmodule

