/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 09:48:56 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [3:0] inp;
  output [11:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[10] = out[11];

  XOR2X1 U5 (.A1(inp[3]), .A2(n38), .Y(n2));
  NAND2X1 U6 (.A1(n41), .A2(n17), .Y(n3));
  NAND2X1 U7 (.A1(n35), .A2(n7), .Y(n4));
  AND2X1 U8 (.A1(n25), .A2(inp[0]), .Y(n5));
  AND2X1 U9 (.A1(n33), .A2(inp[1]), .Y(n18));
  INVX1 U10 (.A(n18), .Y(n6));
  AND2X1 U11 (.A1(n32), .A2(n33), .Y(n36));
  INVX1 U12 (.A(n36), .Y(n7));
  AND2X1 U13 (.A1(n40), .A2(n41), .Y(n42));
  INVX1 U14 (.A(n42), .Y(n8));
  AND2X1 U15 (.A1(n37), .A2(inp[0]), .Y());
  INVX1 U16 (.A(n20), .Y());
  AND2X1 U17 (.A1(n43), .A2(n8), .Y(n45));
  INVX1 U18 (.A(n45), .Y(n10));
  AND2X1 U19 (.A1(n41), .A2(n38), .Y(n23));
  INVX1 U20 (.A(n23), .Y(n11));
  AND2X1 U21 (.A1(inp[1]), .A2(inp[3]), .Y(n29));
  INVX1 U22 (.A(n29), .Y(n12));
  AND2X1 U23 (.A1(n37), .A2(n33), .Y(n40));
  INVX1 U24 (.A(n40), .Y(n13));
  INVX1 U25 (.A(n5), .Y(n14));
  AND2X1 U26 (.A1(n41), .A2(inp[1]), .Y(n21));
  INVX1 U27 (.A(n21), .Y(n15));
  AND2X1 U28 (.A1(n29), .A2(inp[0]), .Y(n39));
  INVX1 U29 (.A(n39), .Y(n16));
  AND2X1 U30 (.A1(n13), .A2(inp[2]), .Y(n26));
  INVX1 U31 (.A(n26), .Y(n17));
  INVX1 U32 (.A(inp[3]), .Y(n33));
  INVX1 U33 (.A(inp[0]), .Y(n41));
  INVX1 U34 (.A(inp[2]), .Y(n38));
  NAND2X1 U35 (.A1(n33), .A2(n11), .Y(n19));
  NAND2X1 U36 (.A1(n19), .A2(n6), .Y(out[11]));
  INVX1 U37 (.A(inp[1]), .Y(n37));
  NAND2X1 U38 (.A1(n15), .A2(n9), .Y(out[2]));
  AND2X1 U39 (.A1(n38), .A2(n15), .Y(n34));
  NOR2X1 U40 (.A1(n15), .A2(n38), .Y(n22));
  NOR2X1 U41 (.A1(n34), .A2(n22), .Y(out[3]));
  NAND2X1 U42 (.A1(n11), .A2(inp[1]), .Y(n24));
  XOR2X1 U43 (.A1(n2), .A2(n24), .Y(out[4]));
  NAND2X1 U44 (.A1(n16), .A2(n17), .Y(n25));
  AND2X1 U45 (.A1(n14), .A2(n3), .Y(out[5]));
  AND2X1 U46 (.A1(n13), .A2(n12), .Y(n27));
  NAND2X1 U47 (.A1(n27), .A2(n14), .Y(n28));
  NAND2X1 U48 (.A1(n28), .A2(n16), .Y(out[6]));
  NAND2X1 U49 (.A1(n41), .A2(n12), .Y(n30));
  NAND2X1 U50 (.A1(n30), .A2(n14), .Y(n31));
  XOR2X1 U51 (.A1(n2), .A2(n31), .Y(out[7]));
  NAND2X1 U52 (.A1(n34), .A2(inp[0]), .Y(n32));
  NAND2X1 U53 (.A1(n34), .A2(inp[3]), .Y(n35));
  XOR2X1 U54 (.A1(n4), .A2(n37), .Y(out[8]));
  AND2X1 U55 (.A1(n38), .A2(n16), .Y(n43));
  NAND2X1 U56 (.A1(n40), .A2(inp[2]), .Y(n44));
  NAND2X1 U57 (.A1(n44), .A2(n10), .Y(out[9]));

  assign n9 = 1'b0;
  assign n20 = 1'b0;
endmodule


