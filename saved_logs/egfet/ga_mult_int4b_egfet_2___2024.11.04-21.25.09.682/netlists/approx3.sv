/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:41:43 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [3:0] inp;
  output [7:0] out;
  wire   n1, n2, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18, n19,
         n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;
  assign out[0] = inp[0];
  assign out[7] = out[4];

  INVX1 U5 (.A(n1), .Y(out[6]));
  NOR2X1 U6 (.A1(n46), .A2(n12), .Y(n1));
  NAND2X1 U7 (.A1(n44), .A2(n19), .Y(n10));
  NAND2X1 U8 (.A1(n34), .A2(inp[1]), .Y(n5));
  INVX1 U9 (.A(n2), .Y(n21));
  NAND2X1 U10 (.A1(inp[2]), .A2(inp[0]), .Y(n2));
  AND2X1 U11 (.A1(n7), .A2(n21), .Y(n46));
  AND2X1 U12 (.A1(n2), .A2(n27), .Y(n12));
  NAND2X1 U13 (.A1(n9), .A2(inp[1]), .Y(n7));
  NAND2X1 U14 (.A1(n29), .A2(n15), .Y(n8));
  NOR2X1 U15 (.A1(n23), .A2(n39), .Y(n9));
  AND2X1 U16 (.A1(n5), .A2(n24), .Y(n25));
  INVX1 U17 (.A(n25), .Y(n11));
  NAND2X1 U18 (.A1(n16), .A2(n28), .Y());
  NAND2X1 U19 (.A1(n37), .A2(n26), .Y(out[3]));
  INVX1 U20 (.A(inp[1]), .Y());
  XOR2X1 U21 (.A1(n11), .A2(n14), .Y(n35));
  NAND2X1 U22 (.A1(n5), .A2(n15), .Y(n14));
  INVX1 U23 (.A(n41), .Y(n15));
  NOR2X1 U24 (.A1(inp[1]), .A2(n34), .Y(n41));
  INVX1 U25 (.A(inp[2]), .Y(n34));
  XOR2X1 U26 (.A1(n16), .A2(inp[3]), .Y());
  NAND2X1 U27 (.A1(n19), .A2(n2), .Y());
  NAND2X1 U28 (.A1(n24), .A2(n34), .Y(n19));
  AND2X1 U29 (.A1(n41), .A2(n38), .Y(n43));
  INVX1 U30 (.A(n43), .Y(n18));
  INVX1 U31 (.A(n35), .Y());
  NOR2X1 U32 (.A1(n5), .A2(n24), .Y(n23));
  INVX1 U33 (.A(inp[0]), .Y(n24));
  AND2X1 U34 (.A1(n35), .A2(n39), .Y());
  INVX1 U35 (.A(n36), .Y());
  AND2X1 U36 (.A1(n7), .A2(n10), .Y(n45));
  INVX1 U37 (.A(n45), .Y());
  AND2X1 U38 (.A1(n24), .A2(n32), .Y(n33));
  INVX1 U39 (.A(n33), .Y());
  AND2X1 U40 (.A1(n40), .A2(n5), .Y(n42));
  INVX1 U41 (.A(n42), .Y(n29));
  XOR2X1 U42 (.A1(n30), .A2(n8), .Y());
  NAND2X1 U43 (.A1(inp[0]), .A2(inp[1]), .Y());
  AND2X1 U44 (.A1(n28), .A2(n31), .Y(out[1]));
  NAND2X1 U45 (.A1(n13), .A2(n15), .Y());
  NAND2X1 U46 (.A1(n20), .A2(inp[3]), .Y(n37));
  INVX1 U47 (.A(inp[3]), .Y(n39));
  NOR2X1 U48 (.A1(n39), .A2(n11), .Y(n38));
  NAND2X1 U49 (.A1(n39), .A2(inp[0]), .Y(n40));
  NAND2X1 U50 (.A1(n8), .A2(n18), .Y(out[4]));
  NOR2X1 U51 (.A1(n9), .A2(inp[1]), .Y(n44));

  assign n13 = 1'b0;
  assign n16 = 1'b0;
  assign n20 = 1'b1;
  assign n26 = 1'b1;
  assign n27 = 1'b0;
  assign n28 = 1'b1;
  assign n30 = 1'b1;
  assign n31 = 1'b0;
  assign n32 = 1'b1;
  assign n36 = 1'b0;
  assign out[2] = 1'b0;
  assign out[5] = 1'b1;
endmodule


