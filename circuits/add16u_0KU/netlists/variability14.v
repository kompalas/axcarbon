/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:23:34 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39;
  assign O[5] = A[10];
  assign O[1] = A[6];
  assign O[10] = A[6];
  assign O[11] = A[11];
  assign O[8] = B[6];
  assign O[7] = B[9];
  assign O[4] = B[12];
  assign O[2] = B[7];
  assign O[0] = B[13];
  assign O[9] = \O[3] ;
  assign O[3] = \O[3] ;

  NAND2_X1 U11 ( .A1(B[15]), .A2(A[15]), .ZN(n21) );
  NOR2_X1 U12 ( .A1(A[14]), .A2(B[14]), .ZN(n16) );
  INV_X2 U13 ( .I(n29), .ZN(n32) );
  NAND2_X1 U14 ( .A1(A[13]), .A2(B[13]), .ZN(n12) );
  INV_X2 U15 ( .I(B[15]), .ZN(n18) );
  INV_X2 U16 ( .I(A[15]), .ZN(n17) );
  AND2_X1 U17 ( .A1(A[13]), .A2(B[13]), .Z(n11) );
  NOR2_X2 U18 ( .A1(n29), .A2(n35), .ZN(n25) );
  OAI21_X2 U19 ( .A1(A[12]), .A2(B[11]), .B(B[12]), .ZN(n13) );
  NAND2_X2 U20 ( .A1(n13), .A2(n27), .ZN(n14) );
  NAND2_X1 U21 ( .A1(n19), .A2(n27), .ZN(n33) );
  NOR2_X2 U22 ( .A1(A[14]), .A2(B[14]), .ZN(n15) );
  NAND2_X1 U23 ( .A1(n18), .A2(n17), .ZN(n20) );
  NOR2_X2 U24 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  NOR2_X2 U25 ( .A1(A[14]), .A2(B[14]), .ZN(n35) );
  OAI21_X2 U26 ( .A1(A[12]), .A2(B[11]), .B(B[12]), .ZN(n19) );
  NAND2_X2 U27 ( .A1(A[12]), .A2(B[11]), .ZN(n27) );
  NAND3_X1 U28 ( .A1(n20), .A2(n25), .A3(n14), .ZN(n23) );
  NAND2_X2 U29 ( .A1(A[13]), .A2(B[13]), .ZN(n31) );
  NAND2_X2 U30 ( .A1(A[14]), .A2(B[14]), .ZN(n34) );
  OAI21_X2 U31 ( .A1(n15), .A2(n31), .B(n34), .ZN(n24) );
  NAND2_X1 U32 ( .A1(n20), .A2(n24), .ZN(n22) );
  NAND3_X1 U33 ( .A1(n23), .A2(n22), .A3(n21), .ZN(O[16]) );
  XOR2_X1 U34 ( .A1(B[15]), .A2(A[15]), .Z(O[6]) );
  INV_X1 U35 ( .I(O[6]), .ZN(n26) );
  AOI21_X2 U36 ( .A1(n33), .A2(n25), .B(n24), .ZN(n39) );
  NOR2_X1 U37 ( .A1(n26), .A2(n39), .ZN(\O[3] ) );
  OAI21_X1 U38 ( .A1(A[12]), .A2(B[11]), .B(n27), .ZN(n28) );
  XNOR2_X1 U39 ( .A1(n28), .A2(B[12]), .ZN(O[12]) );
  NAND2_X1 U40 ( .A1(n32), .A2(n12), .ZN(n30) );
  XNOR2_X1 U41 ( .A1(n14), .A2(n30), .ZN(O[13]) );
  AOI21_X2 U42 ( .A1(n14), .A2(n32), .B(n11), .ZN(n38) );
  INV_X1 U43 ( .I(n34), .ZN(n36) );
  NOR2_X1 U44 ( .A1(n36), .A2(n16), .ZN(n37) );
  XNOR2_X1 U45 ( .A1(n38), .A2(n37), .ZN(O[14]) );
  XNOR2_X1 U46 ( .A1(n39), .A2(O[6]), .ZN(O[15]) );
endmodule

