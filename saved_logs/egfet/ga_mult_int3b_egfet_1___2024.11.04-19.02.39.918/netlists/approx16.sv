/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:02:23 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [2:0] inp;
  output [5:0] out;
  wire   n20, n2, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n18;
  assign out[0] = inp[0];

  NAND2X1 U5 (.A1(n14), .A2(n2), .Y());
  NAND2X1 U6 (.A1(n13), .A2(inp[2]), .Y(n2));
  NAND2X1 U7 (.A1(n11), .A2(inp[1]), .Y(n5));
  OR2X1 U8 (.A1(n17), .A2(n16), .Y(out[5]));
  AND2X1 U9 (.A1(n8), .A2(inp[0]), .Y());
  INVX1 U10 (.A(n18), .Y(n6));
  OR2X1 U11 (.A1(inp[1]), .A2(n10), .Y());
  NAND2X1 U12 (.A1(n9), .A2(n6), .Y());
  INVX1 U13 (.A(inp[1]), .Y());
  OR2X1 U14 (.A1(n5), .A2(n10), .Y(n9));
  INVX1 U15 (.A(inp[2]), .Y(n10));
  INVX1 U16 (.A(inp[0]), .Y(n11));
  NOR2X1 U17 (.A1(n11), .A2(n10), .Y(n16));
  INVX1 U18 (.A(n15), .Y(n13));
  NAND2X1 U19 (.A1(n15), .A2(n10), .Y(n14));
  OR2X1 U20 (.A1(inp[1]), .A2(inp[0]), .Y(n15));
  NAND2X1 U21 (.A1(n7), .A2(n20), .Y());
  NOR2X1 U22 (.A1(n17), .A2(n16), .Y());
  NOR2X1 U23 (.A1(n5), .A2(inp[2]), .Y(n17));
  NAND2X1 U24 (.A1(n5), .A2(n6), .Y());

  assign n20 = 1'b0;
  assign n7 = 1'b0;
  assign n8 = 1'b1;
  assign n18 = 1'b0;
  assign out[1] = 1'b0;
  assign out[2] = 1'b0;
  assign out[3] = 1'b0;
  assign out[4] = 1'b1;
endmodule


