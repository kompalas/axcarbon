/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:42:28 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [3:0] inp;
  output [7:0] out;
  wire   n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;
  assign out[1] = inp[1];
  assign out[0] = inp[0];

  XOR2X1 U5 (.A1(n28), .A2(n41), .Y(n2));
  NAND2X1 U6 (.A1(n17), .A2(n4), .Y(out[2]));
  AND2X1 U7 (.A1(n27), .A2(inp[2]), .Y(n5));
  INVX1 U8 (.A(n5), .Y(n4));
  NAND2X1 U9 (.A1(n43), .A2(n10), .Y(n6));
  NAND2X1 U10 (.A1(n23), .A2(inp[1]), .Y(n7));
  AND2X1 U11 (.A1(n31), .A2(inp[0]), .Y(n8));
  AND2X1 U12 (.A1(n31), .A2(inp[1]), .Y(n9));
  AND2X1 U13 (.A1(n42), .A2(n41), .Y(n44));
  INVX1 U14 (.A(n44), .Y(n10));
  AND2X1 U15 (.A1(n2), .A2(n17), .Y(n21));
  INVX1 U16 (.A(n21), .Y());
  AND2X1 U17 (.A1(n37), .A2(n36), .Y(n38));
  INVX1 U18 (.A(n38), .Y(n12));
  AND2X1 U19 (.A1(n35), .A2(n28), .Y(n29));
  INVX1 U20 (.A(n29), .Y(n13));
  AND2X1 U21 (.A1(n30), .A2(n13), .Y(n33));
  INVX1 U22 (.A(n33), .Y(n14));
  AND2X1 U23 (.A1(n25), .A2(n17), .Y());
  INVX1 U24 (.A(n26), .Y(n15));
  AND2X1 U25 (.A1(n28), .A2(inp[2]), .Y(n39));
  INVX1 U26 (.A(n39), .Y(n16));
  INVX1 U27 (.A(n8), .Y(n17));
  AND2X1 U28 (.A1(n27), .A2(inp[3]), .Y());
  INVX1 U29 (.A(n35), .Y(n18));
  INVX1 U30 (.A(n9), .Y(n19));
  AND2X1 U31 (.A1(n41), .A2(inp[0]), .Y(n34));
  INVX1 U32 (.A(n34), .Y(n20));
  INVX1 U33 (.A(inp[0]), .Y(n27));
  INVX1 U34 (.A(inp[2]), .Y(n31));
  INVX1 U35 (.A(inp[3]), .Y(n41));
  INVX1 U36 (.A(inp[1]), .Y(n28));
  OR2X1 U37 (.A1(n2), .A2(n17), .Y(n22));
  NAND2X1 U38 (.A1(n22), .A2(n11), .Y(out[3]));
  NOR2X1 U39 (.A1(n17), .A2(n41), .Y());
  NOR2X1 U40 (.A1(inp[1]), .A2(inp[3]), .Y());
  XOR2X1 U41 (.A1(n24), .A2(n4), .Y(n25));
  NAND2X1 U42 (.A1(n7), .A2(n15), .Y(out[4]));
  NAND2X1 U43 (.A1(n16), .A2(n18), .Y(n30));
  NAND2X1 U44 (.A1(n34), .A2(n19), .Y(n32));
  NAND2X1 U45 (.A1(n32), .A2(n14), .Y());
  NAND2X1 U46 (.A1(n16), .A2(n20), .Y(n37));
  NAND2X1 U47 (.A1(n39), .A2(n18), .Y(n36));
  NAND2X1 U48 (.A1(n19), .A2(n12), .Y(out[6]));
  NAND2X1 U49 (.A1(n16), .A2(inp[0]), .Y(n40));
  NAND2X1 U50 (.A1(n40), .A2(n19), .Y(n42));
  NAND2X1 U51 (.A1(n19), .A2(inp[3]), .Y(n43));
  XOR2X1 U52 (.A1(out[2]), .A2(n6), .Y(out[7]));

  assign n11 = 1'b0;
  assign n23 = 1'b1;
  assign n24 = 1'b0;
  assign n26 = 1'b1;
  assign n35 = 1'b0;
  assign out[5] = 1'b0;
endmodule


