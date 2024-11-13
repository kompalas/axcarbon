/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 09:58:11 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [3:0] inp;
  output [11:0] out;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47;
  assign out[10] = inp[3];
  assign out[11] = inp[3];
  assign out[2] = inp[0];
  assign out[0] = 1'b0;
  assign out[1] = 1'b0;

  INVX1 U5 (.A(n6), .Y(n4));
  NAND2X1 U6 (.A1(n26), .A2(n7), .Y(n5));
  OR2X1 U7 (.A1(inp[3]), .A2(inp[1]), .Y(n6));
  AND2X1 U8 (.A1(n20), .A2(inp[1]), .Y(n8));
  INVX1 U9 (.A(n8), .Y(n7));
  NAND2X1 U10 (.A1(n30), .A2(n31), .Y(n9));
  AND2X1 U11 (.A1(n7), .A2(n40), .Y(n10));
  AND2X1 U12 (.A1(n40), .A2(inp[2]), .Y(n41));
  INVX1 U13 (.A(n41), .Y(n11));
  AND2X1 U14 (.A1(n6), .A2(n19), .Y(n43));
  INVX1 U15 (.A(n43), .Y(n12));
  AND2X1 U16 (.A1(n6), .A2(inp[2]), .Y(n46));
  INVX1 U17 (.A(n46), .Y(n13));
  AND2X1 U18 (.A1(n24), .A2(n25), .Y(n29));
  INVX1 U19 (.A(n29), .Y());
  AND2X1 U20 (.A1(n9), .A2(n32), .Y(n38));
  INVX1 U21 (.A(n38), .Y(n15));
  AND2X1 U22 (.A1(n35), .A2(n36), .Y(n37));
  INVX1 U23 (.A(n37), .Y(n16));
  AND2X1 U24 (.A1(n42), .A2(n12), .Y(n45));
  INVX1 U25 (.A(n45), .Y(n17));
  INVX1 U26 (.A(n10), .Y(n18));
  AND2X1 U27 (.A1(n20), .A2(inp[0]), .Y(n39));
  INVX1 U28 (.A(n39), .Y(n19));
  XOR2X1 U29 (.A1(inp[1]), .A2(inp[0]), .Y(out[3]));
  INVX1 U30 (.A(inp[0]), .Y(n40));
  INVX1 U31 (.A(inp[2]), .Y(n20));
  NAND2X1 U32 (.A1(n18), .A2(n19), .Y(n21));
  NOR2X1 U33 (.A1(inp[1]), .A2(n20), .Y(n24));
  INVX1 U34 (.A(n24), .Y(n27));
  NAND2X1 U35 (.A1(n21), .A2(n27), .Y());
  NAND2X1 U36 (.A1(n7), .A2(n27), .Y(n22));
  XOR2X1 U37 (.A1(n22), .A2(inp[3]), .Y(n23));
  XOR2X1 U38 (.A1(n23), .A2(n18), .Y(out[5]));
  INVX1 U39 (.A(inp[3]), .Y(n32));
  NOR2X1 U40 (.A1(n32), .A2(n18), .Y(n25));
  NAND2X1 U41 (.A1(n32), .A2(inp[0]), .Y(n26));
  NAND2X1 U42 (.A1(n5), .A2(n27), .Y(n28));
  NAND2X1 U43 (.A1(n28), .A2(n14), .Y(out[6]));
  NOR2X1 U44 (.A1(inp[1]), .A2(inp[2]), .Y(n34));
  NOR2X1 U45 (.A1(inp[0]), .A2(n34), .Y(n33));
  INVX1 U46 (.A(n33), .Y(n31));
  NAND2X1 U47 (.A1(inp[1]), .A2(inp[2]), .Y(n30));
  NOR2X1 U48 (.A1(n33), .A2(n32), .Y(n36));
  NAND2X1 U49 (.A1(n34), .A2(inp[0]), .Y(n35));
  NAND2X1 U50 (.A1(n15), .A2(n16), .Y(out[7]));
  NAND2X1 U51 (.A1(n4), .A2(n11), .Y(n42));
  NAND2X1 U52 (.A1(inp[3]), .A2(inp[1]), .Y(n44));
  NAND2X1 U53 (.A1(n44), .A2(n17), .Y(out[8]));
  NAND2X1 U54 (.A1(inp[2]), .A2(inp[0]), .Y(n47));
  NAND2X1 U55 (.A1(n47), .A2(n13), .Y(out[9]));

  assign n14 = 1'b1;
  assign out[4] = 1'b0;
endmodule


