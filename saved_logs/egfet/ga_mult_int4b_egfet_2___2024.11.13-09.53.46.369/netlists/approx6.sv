/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 09:53:32 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [3:0] inp;
  output [11:0] out;
  wire   n64, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[10] = out[11];

  NAND2X1 U5 (.A1(n60), .A2(inp[0]), .Y(n2));
  NOR2X1 U6 (.A1(n49), .A2(n50), .Y(n51));
  AND2X1 U7 (.A1(n7), .A2(inp[0]), .Y(n53));
  INVX1 U8 (.A(n53), .Y(n3));
  NAND2X1 U9 (.A1(n57), .A2(n16), .Y(n4));
  NAND2X1 U10 (.A1(n33), .A2(n13), .Y(n5));
  INVX1 U11 (.A(n31), .Y(n6));
  NAND2X1 U12 (.A1(n51), .A2(n9), .Y(n7));
  AND2X1 U13 (.A1(n60), .A2(n23), .Y(n63));
  INVX1 U14 (.A(n63), .Y(n8));
  AND2X1 U15 (.A1(n57), .A2(n60), .Y(n52));
  INVX1 U16 (.A(n52), .Y(n9));
  AND2X1 U17 (.A1(n22), .A2(inp[2]), .Y(n29));
  INVX1 U18 (.A(n29), .Y(n10));
  AND2X1 U19 (.A1(n44), .A2(n57), .Y(n45));
  INVX1 U20 (.A(n45), .Y(n11));
  AND2X1 U21 (.A1(n57), .A2(n24), .Y(n27));
  INVX1 U22 (.A(n27), .Y(n12));
  AND2X1 U23 (.A1(n57), .A2(inp[2]), .Y(n34));
  INVX1 U24 (.A(n34), .Y(n13));
  AND2X1 U25 (.A1(n40), .A2(n60), .Y(n41));
  INVX1 U26 (.A(n41), .Y(n14));
  AND2X1 U27 (.A1(n31), .A2(n59), .Y());
  INVX1 U28 (.A(n32), .Y(n15));
  AND2X1 U29 (.A1(n64), .A2(n6), .Y(n56));
  INVX1 U30 (.A(n56), .Y(n16));
  AND2X1 U31 (.A1(n2), .A2(n55), .Y(n58));
  INVX1 U32 (.A(n58), .Y(n17));
  AND2X1 U33 (.A1(n47), .A2(inp[0]), .Y(n18));
  AND2X1 U34 (.A1(n43), .A2(n20), .Y(n44));
  INVX1 U35 (.A(n44), .Y(n19));
  AND2X1 U36 (.A1(n60), .A2(n47), .Y(n49));
  INVX1 U37 (.A(n49), .Y(n20));
  INVX1 U38 (.A(n18), .Y(n21));
  AND2X1 U39 (.A1(n59), .A2(inp[1]), .Y(n38));
  INVX1 U40 (.A(n38), .Y(n22));
  AND2X1 U41 (.A1(n50), .A2(n59), .Y(n61));
  INVX1 U42 (.A(n61), .Y(n23));
  AND2X1 U43 (.A1(n60), .A2(n59), .Y(n28));
  INVX1 U44 (.A(n28), .Y(n24));
  AND2X1 U45 (.A1(n57), .A2(n47), .Y(n50));
  AND2X1 U46 (.A1(n21), .A2(n22), .Y(n64));
  INVX1 U47 (.A(n64), .Y(out[2]));
  INVX1 U48 (.A(inp[3]), .Y(n57));
  INVX1 U49 (.A(inp[0]), .Y(n59));
  INVX1 U50 (.A(inp[2]), .Y(n60));
  NAND2X1 U51 (.A1(n57), .A2(inp[1]), .Y(n26));
  NAND2X1 U52 (.A1(n26), .A2(n12), .Y(out[11]));
  INVX1 U53 (.A(inp[1]), .Y(n47));
  NAND2X1 U54 (.A1(n28), .A2(inp[1]), .Y(n30));
  NAND2X1 U55 (.A1(n30), .A2(n10), .Y(out[3]));
  AND2X1 U56 (.A1(inp[2]), .A2(inp[1]), .Y(n31));
  NAND2X1 U57 (.A1(n21), .A2(n15), .Y(n35));
  NAND2X1 U58 (.A1(n60), .A2(inp[3]), .Y(n33));
  XOR2X1 U59 (.A1(n35), .A2(n5), .Y());
  NAND2X1 U60 (.A1(n22), .A2(inp[3]), .Y(n36));
  NAND2X1 U61 (.A1(n36), .A2(n21), .Y(n37));
  NAND2X1 U62 (.A1(n37), .A2(inp[2]), .Y(n42));
  NAND2X1 U63 (.A1(n18), .A2(inp[3]), .Y(n39));
  NAND2X1 U64 (.A1(n39), .A2(n22), .Y(n40));
  NAND2X1 U65 (.A1(n42), .A2(n14), .Y(out[5]));
  NAND2X1 U66 (.A1(n2), .A2(inp[1]), .Y(n43));
  NAND2X1 U67 (.A1(n19), .A2(inp[3]), .Y(n46));
  NAND2X1 U68 (.A1(n46), .A2(n11), .Y(out[6]));
  NOR2X1 U69 (.A1(inp[0]), .A2(n50), .Y(n48));
  NAND2X1 U70 (.A1(n48), .A2(inp[2]), .Y(n54));
  NAND2X1 U71 (.A1(n54), .A2(n3), .Y(out[7]));
  NOR2X1 U72 (.A1(inp[1]), .A2(n57), .Y(n55));
  NAND2X1 U73 (.A1(n4), .A2(n17), .Y(out[8]));
  NAND2X1 U74 (.A1(n61), .A2(inp[2]), .Y(n62));
  NAND2X1 U75 (.A1(n62), .A2(n8), .Y(out[9]));

  assign n32 = 1'b1;
  assign out[4] = 1'b1;
endmodule


