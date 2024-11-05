/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:40:40 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [3:0] inp;
  output [7:0] out;
  wire   n2, n3, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48;
  assign out[0] = inp[0];

  XOR2X1 U5 (.A1(n2), .A2(inp[3]), .Y(n27));
  NAND2X1 U6 (.A1(n9), .A2(n10), .Y(n2));
  AND2X1 U7 (.A1(inp[2]), .A2(n8), .Y());
  AND2X1 U8 (.A1(n23), .A2(n24), .Y(n26));
  INVX1 U9 (.A(n26), .Y());
  NAND2X1 U10 (.A1(n11), .A2(n24), .Y(n6));
  INVX1 U11 (.A(n11), .Y(n7));
  NAND2X1 U12 (.A1(inp[2]), .A2(n8), .Y(n9));
  INVX1 U13 (.A(inp[1]), .Y());
  AND2X1 U14 (.A1(n28), .A2(n3), .Y(n31));
  NAND2X1 U15 (.A1(n9), .A2(n16), .Y(n13));
  NAND2X1 U16 (.A1(n9), .A2(n5), .Y());
  NAND2X1 U17 (.A1(n25), .A2(inp[1]), .Y());
  OR2X1 U18 (.A1(inp[3]), .A2(inp[1]), .Y(n11));
  NAND2X1 U19 (.A1(n32), .A2(n33), .Y(n14));
  AND2X1 U20 (.A1(n10), .A2(n42), .Y(n15));
  AND2X1 U21 (.A1(n10), .A2(n29), .Y(n30));
  INVX1 U22 (.A(n30), .Y());
  AND2X1 U23 (.A1(n42), .A2(inp[2]), .Y(n43));
  INVX1 U24 (.A(n43), .Y(n17));
  AND2X1 U25 (.A1(n11), .A2(inp[2]), .Y(n47));
  INVX1 U26 (.A(n47), .Y(n18));
  INVX1 U27 (.A(n31), .Y());
  AND2X1 U28 (.A1(n14), .A2(n34), .Y(n40));
  INVX1 U29 (.A(n40), .Y(n20));
  AND2X1 U30 (.A1(n37), .A2(n38), .Y(n39));
  INVX1 U31 (.A(n39), .Y(n21));
  AND2X1 U32 (.A1(n44), .A2(n6), .Y());
  INVX1 U33 (.A(n46), .Y());
  INVX1 U34 (.A(n15), .Y(n23));
  AND2X1 U35 (.A1(n25), .A2(inp[0]), .Y(n41));
  INVX1 U36 (.A(n41), .Y());
  XOR2X1 U37 (.A1(inp[1]), .A2(inp[0]), .Y());
  INVX1 U38 (.A(inp[0]), .Y(n42));
  INVX1 U39 (.A(inp[2]), .Y());
  XOR2X1 U40 (.A1(n27), .A2(n23), .Y(out[3]));
  INVX1 U41 (.A(inp[3]), .Y(n34));
  NOR2X1 U42 (.A1(n34), .A2(n23), .Y(n28));
  NAND2X1 U43 (.A1(n34), .A2(inp[0]), .Y(n29));
  NAND2X1 U44 (.A1(n13), .A2(n19), .Y(out[4]));
  NOR2X1 U45 (.A1(inp[1]), .A2(inp[2]), .Y());
  NOR2X1 U46 (.A1(inp[0]), .A2(n36), .Y(n35));
  INVX1 U47 (.A(n35), .Y(n33));
  NAND2X1 U48 (.A1(inp[1]), .A2(inp[2]), .Y(n32));
  NOR2X1 U49 (.A1(n35), .A2(n34), .Y(n38));
  NAND2X1 U50 (.A1(n36), .A2(inp[0]), .Y(n37));
  NAND2X1 U51 (.A1(n21), .A2(n20), .Y(out[5]));
  NAND2X1 U52 (.A1(n7), .A2(n17), .Y(n44));
  NAND2X1 U53 (.A1(inp[3]), .A2(inp[1]), .Y(n45));
  NAND2X1 U54 (.A1(n45), .A2(n22), .Y(out[6]));
  NAND2X1 U55 (.A1(inp[2]), .A2(inp[0]), .Y(n48));
  NAND2X1 U56 (.A1(n48), .A2(n18), .Y(out[7]));

  assign n3 = 1'b1;
  assign n5 = 1'b0;
  assign n8 = 1'b1;
  assign n10 = 1'b1;
  assign n16 = 1'b1;
  assign n19 = 1'b1;
  assign n22 = 1'b1;
  assign n24 = 1'b1;
  assign n25 = 1'b0;
  assign n36 = 1'b0;
  assign n46 = 1'b0;
  assign out[1] = 1'b1;
  assign out[2] = 1'b1;
endmodule


