/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:04:46 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;
  assign O[0] = 1'b1;

  INV_X2 U12 ( .I(B[1]), .ZN(n17) );
  INV_X2 U13 ( .I(B[2]), .ZN(n19) );
  INV_X1 U14 ( .I(A[3]), .ZN(n22) );
  NOR2_X1 U15 ( .A1(B[6]), .A2(A[6]), .ZN(n13) );
  NAND2_X2 U16 ( .A1(n38), .A2(n8), .ZN(n49) );
  INV_X4 U17 ( .I(A[2]), .ZN(n18) );
  INV_X4 U18 ( .I(A[1]), .ZN(n16) );
  NOR2_X2 U19 ( .A1(B[7]), .A2(A[7]), .ZN(n41) );
  AND2_X1 U20 ( .A1(B[7]), .A2(A[7]), .Z(n44) );
  NAND2_X1 U21 ( .A1(B[1]), .A2(B[2]), .ZN(n21) );
  AND2_X1 U22 ( .A1(A[5]), .A2(B[5]), .Z(n9) );
  NOR2_X1 U23 ( .A1(A[4]), .A2(B[4]), .ZN(n10) );
  NAND2_X1 U24 ( .A1(A[1]), .A2(A[2]), .ZN(n20) );
  OR2_X1 U25 ( .A1(A[4]), .A2(B[4]), .Z(n8) );
  NAND2_X1 U26 ( .A1(n27), .A2(n26), .ZN(n11) );
  NAND2_X1 U27 ( .A1(n27), .A2(n26), .ZN(n12) );
  NAND2_X1 U28 ( .A1(n27), .A2(n26), .ZN(n38) );
  AOI21_X2 U29 ( .A1(n29), .A2(n11), .B(n9), .ZN(n32) );
  NOR2_X2 U30 ( .A1(B[6]), .A2(A[6]), .ZN(n14) );
  AOI21_X2 U31 ( .A1(n15), .A2(n12), .B(n46), .ZN(n40) );
  OAI21_X2 U32 ( .A1(n14), .A2(n36), .B(n35), .ZN(n46) );
  NAND2_X2 U33 ( .A1(B[6]), .A2(A[6]), .ZN(n35) );
  NAND2_X2 U34 ( .A1(A[5]), .A2(B[5]), .ZN(n36) );
  NAND2_X2 U35 ( .A1(A[3]), .A2(B[3]), .ZN(n26) );
  NAND2_X2 U36 ( .A1(A[4]), .A2(B[4]), .ZN(n27) );
  NOR3_X2 U37 ( .A1(n33), .A2(n34), .A3(n37), .ZN(n15) );
  NOR2_X2 U38 ( .A1(B[6]), .A2(A[6]), .ZN(n37) );
  NOR2_X2 U39 ( .A1(A[4]), .A2(B[4]), .ZN(n34) );
  NOR2_X2 U40 ( .A1(A[5]), .A2(B[5]), .ZN(n33) );
  NOR2_X1 U41 ( .A1(n24), .A2(n34), .ZN(n25) );
  NAND2_X1 U42 ( .A1(n17), .A2(n16), .ZN(O[1]) );
  NAND2_X1 U43 ( .A1(n19), .A2(n18), .ZN(O[2]) );
  OAI21_X1 U44 ( .A1(n21), .A2(n20), .B(n22), .ZN(n23) );
  MUX2_X1 U45 ( .I0(n23), .I1(n22), .S(B[3]), .Z(O[3]) );
  INV_X1 U46 ( .I(n27), .ZN(n24) );
  XNOR2_X1 U47 ( .A1(n25), .A2(n26), .ZN(O[4]) );
  INV_X1 U48 ( .I(n33), .ZN(n42) );
  NAND2_X1 U49 ( .A1(n42), .A2(n36), .ZN(n28) );
  XOR2_X1 U50 ( .A1(n49), .A2(n28), .Z(O[5]) );
  NOR2_X1 U51 ( .A1(n10), .A2(n33), .ZN(n29) );
  INV_X1 U52 ( .I(n35), .ZN(n30) );
  NOR2_X1 U53 ( .A1(n30), .A2(n13), .ZN(n31) );
  XNOR2_X1 U54 ( .A1(n32), .A2(n31), .ZN(O[6]) );
  NOR2_X1 U55 ( .A1(n44), .A2(n41), .ZN(n39) );
  XNOR2_X1 U56 ( .A1(n40), .A2(n39), .ZN(O[7]) );
  INV_X1 U57 ( .I(n41), .ZN(n45) );
  INV_X1 U58 ( .I(n13), .ZN(n43) );
  NAND3_X1 U59 ( .A1(n45), .A2(n43), .A3(n42), .ZN(n48) );
  AOI21_X1 U60 ( .A1(n45), .A2(n46), .B(n44), .ZN(n47) );
  OAI21_X1 U61 ( .A1(n49), .A2(n48), .B(n47), .ZN(O[8]) );
endmodule

