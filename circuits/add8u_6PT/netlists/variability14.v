/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:53:37 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69;

  AND2_X1 U11 ( .A1(B[7]), .A2(A[7]), .Z(n67) );
  NAND2_X1 U12 ( .A1(A[4]), .A2(B[4]), .ZN(n54) );
  NOR2_X1 U13 ( .A1(A[3]), .A2(B[3]), .ZN(n10) );
  NOR2_X1 U14 ( .A1(A[6]), .A2(B[6]), .ZN(n13) );
  NAND2_X1 U15 ( .A1(A[5]), .A2(B[5]), .ZN(n57) );
  INV_X8 U16 ( .I(A[3]), .ZN(n32) );
  INV_X2 U17 ( .I(A[5]), .ZN(n36) );
  NAND2_X1 U18 ( .A1(A[1]), .A2(B[1]), .ZN(n23) );
  AND2_X1 U19 ( .A1(A[2]), .A2(B[2]), .Z(n19) );
  NOR2_X2 U20 ( .A1(A[6]), .A2(B[6]), .ZN(n12) );
  NAND2_X2 U21 ( .A1(A[6]), .A2(B[6]), .ZN(n59) );
  NOR2_X1 U22 ( .A1(n51), .A2(n27), .ZN(n26) );
  AND2_X1 U23 ( .A1(n58), .A2(n57), .Z(n8) );
  OR2_X1 U24 ( .A1(A[2]), .A2(B[2]), .Z(n9) );
  INV_X12 U25 ( .I(B[4]), .ZN(n11) );
  NOR2_X2 U26 ( .A1(n30), .A2(n29), .ZN(n20) );
  INV_X12 U27 ( .I(A[4]), .ZN(n30) );
  NOR2_X1 U28 ( .A1(n32), .A2(n31), .ZN(n14) );
  NOR2_X1 U29 ( .A1(n32), .A2(n31), .ZN(n15) );
  NAND2_X2 U30 ( .A1(n30), .A2(n11), .ZN(n16) );
  INV_X4 U31 ( .I(B[5]), .ZN(n35) );
  AOI21_X1 U32 ( .A1(n22), .A2(n14), .B(n20), .ZN(n17) );
  NAND2_X1 U33 ( .A1(n30), .A2(n29), .ZN(n53) );
  NAND2_X1 U34 ( .A1(n30), .A2(n29), .ZN(n21) );
  OR2_X1 U35 ( .A1(n32), .A2(n31), .Z(n18) );
  INV_X12 U36 ( .I(B[3]), .ZN(n31) );
  NAND2_X2 U37 ( .A1(n44), .A2(n21), .ZN(n34) );
  INV_X2 U38 ( .I(n58), .ZN(n27) );
  AOI21_X1 U39 ( .A1(n26), .A2(n25), .B(n24), .ZN(n63) );
  NAND2_X2 U40 ( .A1(n30), .A2(n29), .ZN(n22) );
  INV_X1 U41 ( .I(n28), .ZN(n40) );
  OAI21_X2 U42 ( .A1(n34), .A2(n51), .B(n33), .ZN(n28) );
  OAI21_X1 U43 ( .A1(n17), .A2(n27), .B(n57), .ZN(n24) );
  INV_X1 U44 ( .I(n34), .ZN(n25) );
  AOI21_X2 U45 ( .A1(n28), .A2(n65), .B(n64), .ZN(n69) );
  XNOR2_X1 U46 ( .A1(n40), .A2(n8), .ZN(O[5]) );
  OR2_X1 U47 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  NOR2_X2 U48 ( .A1(A[2]), .A2(B[2]), .ZN(n45) );
  NOR2_X2 U49 ( .A1(A[3]), .A2(B[3]), .ZN(n47) );
  OR2_X2 U50 ( .A1(n45), .A2(n47), .Z(n51) );
  NAND2_X2 U51 ( .A1(A[2]), .A2(B[2]), .ZN(n41) );
  NAND2_X2 U52 ( .A1(A[1]), .A2(B[1]), .ZN(n42) );
  NAND2_X2 U53 ( .A1(n41), .A2(n42), .ZN(n44) );
  INV_X12 U54 ( .I(B[4]), .ZN(n29) );
  NOR2_X2 U55 ( .A1(n32), .A2(n31), .ZN(n50) );
  AOI21_X2 U56 ( .A1(n16), .A2(n50), .B(n20), .ZN(n33) );
  NAND2_X2 U57 ( .A1(n36), .A2(n35), .ZN(n58) );
  NOR2_X1 U58 ( .A1(A[6]), .A2(B[6]), .ZN(n60) );
  NOR2_X2 U59 ( .A1(n27), .A2(n12), .ZN(n65) );
  NOR2_X2 U60 ( .A1(B[7]), .A2(A[7]), .ZN(n66) );
  INV_X1 U61 ( .I(n66), .ZN(n37) );
  NAND2_X1 U62 ( .A1(n65), .A2(n37), .ZN(n39) );
  OAI21_X1 U63 ( .A1(n60), .A2(n57), .B(n59), .ZN(n64) );
  AOI21_X1 U64 ( .A1(n64), .A2(n37), .B(n67), .ZN(n38) );
  OAI21_X1 U65 ( .A1(n40), .A2(n39), .B(n38), .ZN(O[8]) );
  XOR2_X1 U66 ( .A1(A[1]), .A2(B[1]), .Z(O[1]) );
  NOR2_X1 U67 ( .A1(n19), .A2(n45), .ZN(n43) );
  XNOR2_X1 U68 ( .A1(n43), .A2(n23), .ZN(O[2]) );
  INV_X1 U69 ( .I(n44), .ZN(n52) );
  INV_X1 U70 ( .I(n52), .ZN(n46) );
  NAND2_X1 U71 ( .A1(n46), .A2(n9), .ZN(n49) );
  NOR2_X1 U72 ( .A1(n15), .A2(n10), .ZN(n48) );
  XNOR2_X1 U73 ( .A1(n49), .A2(n48), .ZN(O[3]) );
  OAI21_X1 U74 ( .A1(n52), .A2(n51), .B(n18), .ZN(n56) );
  NAND2_X1 U75 ( .A1(n54), .A2(n53), .ZN(n55) );
  XNOR2_X1 U76 ( .A1(n56), .A2(n55), .ZN(O[4]) );
  INV_X1 U77 ( .I(n59), .ZN(n61) );
  NOR2_X1 U78 ( .A1(n61), .A2(n13), .ZN(n62) );
  XNOR2_X1 U79 ( .A1(n63), .A2(n62), .ZN(O[6]) );
  NOR2_X1 U80 ( .A1(n67), .A2(n66), .ZN(n68) );
  XNOR2_X1 U81 ( .A1(n69), .A2(n68), .ZN(O[7]) );
endmodule

