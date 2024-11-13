/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 09:40:08 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [2:0] inp;
  output [10:0] out;
  wire   n3, n4, n5, n6, n8, n9, n10, n11, n12, n14, n15, n16, n18, n19, n22,
         n25, n26, n27;
  assign out[9] = inp[2];
  assign out[10] = inp[2];
  assign out[1] = inp[0];
  assign out[0] = 1'b0;

  INVX1 U5 (.A(inp[1]), .Y(n3));
  INVX1 U6 (.A(n8), .Y(n4));
  NOR2X1 U7 (.A1(n4), .A2(n3), .Y(out[8]));
  NAND2X1 U8 (.A1(inp[2]), .A2(inp[0]), .Y(n11));
  INVX1 U9 (.A(inp[0]), .Y(n5));
  NAND2X1 U10 (.A1(n5), .A2(inp[1]), .Y(n12));
  NAND2X1 U11 (.A1(n12), .A2(inp[2]), .Y(n9));
  NAND2X1 U12 (.A1(n16), .A2(inp[2]), .Y(n10));
  NAND2X1 U13 (.A1(n6), .A2(n25), .Y(out[6]));
  NAND2X1 U14 (.A1(n19), .A2(n26), .Y(n6));
  OR2X1 U15 (.A1(inp[0]), .A2(inp[2]), .Y(n8));
  NAND2X1 U16 (.A1(n26), .A2(n27), .Y(n15));
  NAND2X1 U17 (.A1(n15), .A2(n14), .Y());
  INVX1 U18 (.A(inp[2]), .Y(n14));
  NOR2X1 U19 (.A1(inp[0]), .A2(inp[1]), .Y(n16));
  NOR2X1 U20 (.A1(n14), .A2(n27), .Y());
  NAND2X1 U21 (.A1(n27), .A2(inp[0]), .Y(n25));
  NAND2X1 U22 (.A1(n18), .A2(n10), .Y());
  NOR2X1 U23 (.A1(n16), .A2(inp[2]), .Y(out[4]));
  NAND2X1 U24 (.A1(n22), .A2(n9), .Y(out[7]));
  NAND2X1 U25 (.A1(out[4]), .A2(n26), .Y(n22));
  INVX1 U26 (.A(inp[0]), .Y(n26));
  INVX1 U27 (.A(inp[1]), .Y(n27));
  NAND2X1 U28 (.A1(n25), .A2(n12), .Y());
  NAND2X1 U29 (.A1(n22), .A2(n11), .Y(out[5]));

  assign n18 = 1'b0;
  assign n19 = 1'b0;
  assign out[2] = 1'b1;
  assign out[3] = 1'b0;
endmodule


