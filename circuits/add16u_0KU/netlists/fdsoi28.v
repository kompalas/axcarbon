/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:24:47 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41;
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

  NOR2_X1 U11 ( .A1(n21), .A2(n11), .ZN(n27) );
  NAND2_X2 U12 ( .A1(n40), .A2(n35), .ZN(n12) );
  NAND2_X2 U13 ( .A1(B[14]), .A2(A[14]), .ZN(n35) );
  INV_X8 U14 ( .A(A[14]), .ZN(n17) );
  INV_X8 U15 ( .A(B[12]), .ZN(n14) );
  INV_X1 U16 ( .A(n23), .ZN(n26) );
  INV_X2 U17 ( .A(n25), .ZN(n11) );
  OR2_X2 U18 ( .A1(B[15]), .A2(A[15]), .ZN(n36) );
  INV_X2 U19 ( .A(n21), .ZN(n13) );
  AOI21_X2 U20 ( .B1(n28), .B2(n27), .A(n26), .ZN(n31) );
  AOI21_X4 U21 ( .B1(n33), .B2(n34), .A(n12), .ZN(n32) );
  NAND2_X4 U22 ( .A1(n28), .A2(n13), .ZN(n33) );
  XNOR2_X1 U23 ( .A(n32), .B(O[6]), .ZN(O[15]) );
  NAND2_X2 U24 ( .A1(n11), .A2(n29), .ZN(n40) );
  AND2_X4 U25 ( .A1(n29), .A2(n23), .ZN(n34) );
  OR2_X4 U26 ( .A1(n15), .A2(n14), .ZN(n28) );
  AND2_X4 U27 ( .A1(B[11]), .A2(A[12]), .ZN(n21) );
  NOR2_X4 U28 ( .A1(A[12]), .A2(B[11]), .ZN(n15) );
  NOR2_X1 U29 ( .A1(n21), .A2(n15), .ZN(n22) );
  NAND2_X4 U30 ( .A1(n17), .A2(n16), .ZN(n29) );
  INV_X16 U31 ( .A(B[14]), .ZN(n16) );
  XOR2_X2 U32 ( .A(B[15]), .B(A[15]), .Z(O[6]) );
  INV_X8 U33 ( .A(A[13]), .ZN(n19) );
  INV_X16 U34 ( .A(B[13]), .ZN(n18) );
  NAND2_X4 U35 ( .A1(n19), .A2(n18), .ZN(n23) );
  NAND2_X4 U36 ( .A1(B[13]), .A2(A[13]), .ZN(n25) );
  INV_X1 U37 ( .A(O[6]), .ZN(n20) );
  NOR2_X1 U38 ( .A1(n32), .A2(n20), .ZN(\O[3] ) );
  XOR2_X1 U39 ( .A(n22), .B(B[12]), .Z(O[12]) );
  NAND2_X1 U40 ( .A1(n23), .A2(n25), .ZN(n24) );
  XNOR2_X1 U41 ( .A(n33), .B(n24), .ZN(O[13]) );
  NAND2_X1 U42 ( .A1(n29), .A2(n35), .ZN(n30) );
  XNOR2_X1 U43 ( .A(n31), .B(n30), .ZN(O[14]) );
  INV_X1 U44 ( .A(n36), .ZN(n41) );
  NAND3_X1 U45 ( .A1(n33), .A2(n34), .A3(n36), .ZN(n39) );
  INV_X1 U46 ( .A(n35), .ZN(n37) );
  AOI22_X1 U47 ( .A1(n37), .A2(n36), .B1(B[15]), .B2(A[15]), .ZN(n38) );
  OAI211_X1 U48 ( .C1(n41), .C2(n40), .A(n39), .B(n38), .ZN(O[16]) );
endmodule

