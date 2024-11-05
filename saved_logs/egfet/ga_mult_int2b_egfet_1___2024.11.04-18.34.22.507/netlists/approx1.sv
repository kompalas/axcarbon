/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 18:34:07 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [1:0] inp;
  output [3:0] out;
  wire   n2, n4, n5, n6;
  assign out[0] = inp[0];

  NAND2X1 U5 (.A1(n6), .A2(inp[1]), .Y(n2));
  AND2X1 U6 (.A1(n4), .A2(inp[0]), .Y(out[2]));
  NAND2X1 U7 (.A1(n5), .A2(n2), .Y(out[1]));
  NAND2X1 U8 (.A1(n4), .A2(inp[0]), .Y());
  INVX1 U9 (.A(inp[1]), .Y(n4));
  INVX1 U10 (.A(inp[0]), .Y(n6));
  AND2X1 U11 (.A1(inp[0]), .A2(inp[1]), .Y(out[3]));

  assign n5 = 1'b1;
endmodule


