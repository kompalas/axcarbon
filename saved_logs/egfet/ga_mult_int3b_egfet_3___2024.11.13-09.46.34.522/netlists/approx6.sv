/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 09:46:20 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [2:0] inp;
  output [10:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n10, n11, n13, n14, n15, n16, n17, n18;
  assign out[9] = inp[2];
  assign out[10] = inp[2];
  assign out[1] = inp[1];
  assign out[0] = inp[0];

  NAND2X1 U5 (.A1(n5), .A2(n13), .Y(n4));
  NAND2X1 U6 (.A1(n3), .A2(inp[1]), .Y(n2));
  NOR2X1 U7 (.A1(inp[2]), .A2(n7), .Y(out[4]));
  AND2X1 U8 (.A1(n5), .A2(n6), .Y(n7));
  OR2X1 U9 (.A1(inp[2]), .A2(inp[0]), .Y(n3));
  NAND2X1 U10 (.A1(n2), .A2(n4), .Y(n8));
  INVX1 U11 (.A(inp[1]), .Y(n5));
  INVX1 U12 (.A(inp[0]), .Y(n6));
  NAND2X1 U13 (.A1(n8), .A2(n11), .Y(out[3]));
  NAND2X1 U14 (.A1(n8), .A2(n10), .Y(out[7]));
  AND2X1 U15 (.A1(n3), .A2(inp[1]), .Y(out[8]));
  INVX1 U16 (.A(inp[2]), .Y(n13));
  AND2X1 U17 (.A1(inp[0]), .A2(inp[2]), .Y(n18));
  INVX1 U18 (.A(n18), .Y(n10));
  AND2X1 U19 (.A1(n5), .A2(inp[0]), .Y(n16));
  INVX1 U20 (.A(n16), .Y(n11));
  AND2X1 U21 (.A1(n10), .A2(n3), .Y());
  NAND2X1 U22 (.A1(out[4]), .A2(n6), .Y());
  NAND2X1 U23 (.A1(n14), .A2(n10), .Y(out[5]));
  NOR2X1 U24 (.A1(inp[0]), .A2(n5), .Y(n15));
  NAND2X1 U25 (.A1(n15), .A2(inp[2]), .Y(n17));
  NAND2X1 U26 (.A1(n17), .A2(n11), .Y(out[6]));

  assign n14 = 1'b1;
  assign out[2] = 1'b1;
endmodule


