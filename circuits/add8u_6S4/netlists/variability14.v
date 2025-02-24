/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:10:16 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n67, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65;
  assign O[0] = 1'b1;

  INV_X2 U11 ( .I(B[2]), .ZN(n40) );
  INV_X2 U12 ( .I(A[3]), .ZN(n42) );
  AND2_X1 U13 ( .A1(B[7]), .A2(A[7]), .Z(n60) );
  NOR2_X1 U14 ( .A1(n12), .A2(A[5]), .ZN(n33) );
  INV_X4 U15 ( .I(A[2]), .ZN(n39) );
  INV_X4 U16 ( .I(B[3]), .ZN(n41) );
  INV_X4 U17 ( .I(A[3]), .ZN(n12) );
  CLKBUF_X2 U18 ( .I(n51), .Z(n8) );
  NAND2_X2 U19 ( .A1(B[5]), .A2(A[5]), .ZN(n53) );
  INV_X2 U20 ( .I(n9), .ZN(n30) );
  NAND2_X2 U21 ( .A1(n36), .A2(n10), .ZN(n9) );
  INV_X2 U22 ( .I(n8), .ZN(n10) );
  NOR2_X2 U23 ( .A1(A[5]), .A2(B[5]), .ZN(n51) );
  NAND2_X2 U24 ( .A1(n11), .A2(n52), .ZN(n36) );
  INV_X2 U25 ( .I(n54), .ZN(n11) );
  NAND2_X2 U26 ( .A1(n17), .A2(A[2]), .ZN(n35) );
  NAND2_X2 U27 ( .A1(n15), .A2(n13), .ZN(n67) );
  NOR2_X2 U28 ( .A1(n14), .A2(A[5]), .ZN(n13) );
  INV_X2 U29 ( .I(n17), .ZN(n14) );
  NOR2_X2 U30 ( .A1(n34), .A2(n16), .ZN(n15) );
  NAND2_X2 U31 ( .A1(A[2]), .A2(A[3]), .ZN(n16) );
  NAND2_X2 U32 ( .A1(B[2]), .A2(B[3]), .ZN(n34) );
  INV_X4 U33 ( .I(B[7]), .ZN(n17) );
  INV_X12 U34 ( .I(B[7]), .ZN(n21) );
  NOR2_X1 U35 ( .A1(n35), .A2(n34), .ZN(n18) );
  INV_X1 U36 ( .I(n45), .ZN(n29) );
  NOR2_X2 U37 ( .A1(n50), .A2(n19), .ZN(n25) );
  NAND2_X2 U38 ( .A1(n20), .A2(A[3]), .ZN(n19) );
  INV_X12 U39 ( .I(A[5]), .ZN(n20) );
  NOR2_X2 U40 ( .A1(B[4]), .A2(A[4]), .ZN(n50) );
  NAND2_X2 U41 ( .A1(n21), .A2(A[2]), .ZN(n24) );
  NAND2_X2 U42 ( .A1(n25), .A2(n22), .ZN(n45) );
  NOR2_X2 U43 ( .A1(n24), .A2(n23), .ZN(n22) );
  NAND2_X2 U44 ( .A1(B[2]), .A2(B[3]), .ZN(n23) );
  NAND2_X1 U45 ( .A1(n18), .A2(n33), .ZN(O[1]) );
  NAND2_X2 U46 ( .A1(n67), .A2(n49), .ZN(n57) );
  XNOR2_X1 U47 ( .A1(O[1]), .A2(n44), .ZN(O[4]) );
  OAI22_X1 U48 ( .A1(n30), .A2(n31), .B1(n29), .B2(n27), .ZN(n38) );
  NAND2_X1 U49 ( .A1(n36), .A2(n28), .ZN(n27) );
  AND2_X1 U50 ( .A1(n53), .A2(n49), .Z(n28) );
  NOR2_X1 U51 ( .A1(n32), .A2(n36), .ZN(n31) );
  NAND2_X2 U52 ( .A1(A[6]), .A2(B[6]), .ZN(n52) );
  OAI21_X1 U53 ( .A1(n51), .A2(n49), .B(n53), .ZN(n32) );
  NOR2_X2 U54 ( .A1(B[6]), .A2(A[6]), .ZN(n54) );
  NAND2_X2 U55 ( .A1(B[4]), .A2(A[4]), .ZN(n49) );
  NOR3_X1 U56 ( .A1(n45), .A2(n8), .A3(n36), .ZN(n37) );
  NOR2_X1 U57 ( .A1(n38), .A2(n37), .ZN(O[6]) );
  NAND2_X1 U58 ( .A1(n40), .A2(n39), .ZN(O[2]) );
  NAND2_X1 U59 ( .A1(n42), .A2(n41), .ZN(O[3]) );
  INV_X1 U60 ( .I(n49), .ZN(n43) );
  NOR2_X1 U61 ( .A1(n43), .A2(n50), .ZN(n44) );
  NAND2_X1 U62 ( .A1(n45), .A2(n49), .ZN(n48) );
  INV_X1 U63 ( .I(n53), .ZN(n46) );
  NOR2_X1 U64 ( .A1(n46), .A2(n8), .ZN(n47) );
  XOR2_X1 U65 ( .A1(n48), .A2(n47), .Z(O[5]) );
  NOR3_X2 U66 ( .A1(n51), .A2(n50), .A3(n54), .ZN(n59) );
  OAI21_X1 U67 ( .A1(n54), .A2(n53), .B(n52), .ZN(n62) );
  AOI21_X2 U68 ( .A1(n57), .A2(n59), .B(n62), .ZN(n56) );
  NOR2_X2 U69 ( .A1(B[7]), .A2(A[7]), .ZN(n58) );
  NOR2_X1 U70 ( .A1(n60), .A2(n58), .ZN(n55) );
  XNOR2_X1 U71 ( .A1(n56), .A2(n55), .ZN(O[7]) );
  INV_X1 U72 ( .I(n57), .ZN(n65) );
  INV_X1 U73 ( .I(n58), .ZN(n61) );
  NAND2_X1 U74 ( .A1(n59), .A2(n61), .ZN(n64) );
  AOI21_X1 U75 ( .A1(n62), .A2(n61), .B(n60), .ZN(n63) );
  OAI21_X1 U76 ( .A1(n65), .A2(n64), .B(n63), .ZN(O[8]) );
endmodule

