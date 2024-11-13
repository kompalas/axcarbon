/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 09:41:49 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [2:0] inp;
  output [10:0] out;
  wire   n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[9] = out[10];

  AND2X1 U5 ( .A1(n2), .A2(n3), .Y(n18) );
  NAND2X1 U6 ( .A1(n3), .A2(inp[1]), .Y(n2) );
  NAND2X1 U7 ( .A1(n8), .A2(n17), .Y(out[6]) );
  NAND2X1 U8 ( .A1(n5), .A2(n15), .Y(n4) );
  NAND2X1 U9 ( .A1(n13), .A2(inp[1]), .Y(n5) );
  NOR2X1 U10 ( .A1(inp[0]), .A2(n15), .Y(n3) );
  INVX1 U11 ( .A(inp[0]), .Y(n13) );
  AND2X1 U12 ( .A1(inp[1]), .A2(inp[2]), .Y(n20) );
  INVX1 U13 ( .A(n20), .Y(n7) );
  INVX1 U14 ( .A(n18), .Y(n8) );
  AND2X1 U15 ( .A1(n15), .A2(inp[0]), .Y(n19) );
  INVX1 U16 ( .A(n19), .Y(n9) );
  AND2X1 U17 ( .A1(n12), .A2(inp[0]), .Y(n21) );
  INVX1 U18 ( .A(n21), .Y(n10) );
  INVX1 U19 ( .A(inp[2]), .Y(n15) );
  NAND2X1 U20 ( .A1(n15), .A2(inp[1]), .Y(n11) );
  NAND2X1 U21 ( .A1(n11), .A2(n9), .Y(out[10]) );
  INVX1 U22 ( .A(inp[1]), .Y(n12) );
  NAND2X1 U23 ( .A1(n5), .A2(n10), .Y(out[2]) );
  AND2X1 U24 ( .A1(n2), .A2(n4), .Y(out[3]) );
  NAND2X1 U25 ( .A1(n15), .A2(n13), .Y(n14) );
  AND2X1 U26 ( .A1(inp[1]), .A2(n14), .Y(out[4]) );
  OR2X1 U27 ( .A1(inp[0]), .A2(n15), .Y(n16) );
  NAND2X1 U28 ( .A1(n16), .A2(n9), .Y(out[5]) );
  NAND2X1 U29 ( .A1(n2), .A2(inp[1]), .Y(n17) );
  NAND2X1 U30 ( .A1(n2), .A2(n9), .Y(out[7]) );
  NAND2X1 U31 ( .A1(n4), .A2(n7), .Y(n22) );
  NAND2X1 U32 ( .A1(n22), .A2(n10), .Y(out[8]) );
endmodule

