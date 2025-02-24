/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:26:09 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40;
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

  INV_X1 U11 ( .A(B[15]), .ZN(n15) );
  AND2_X1 U12 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NOR2_X2 U13 ( .A1(A[12]), .A2(B[11]), .ZN(n37) );
  NOR2_X2 U14 ( .A1(n27), .A2(n26), .ZN(n28) );
  OR3_X2 U15 ( .A1(n22), .A2(n13), .A3(n37), .ZN(n29) );
  NOR2_X1 U16 ( .A1(B[13]), .A2(A[13]), .ZN(n20) );
  INV_X1 U17 ( .A(B[12]), .ZN(n38) );
  OR2_X2 U18 ( .A1(B[13]), .A2(A[13]), .ZN(n34) );
  INV_X2 U19 ( .A(A[15]), .ZN(n14) );
  OR3_X1 U20 ( .A1(n22), .A2(n13), .A3(n37), .ZN(n11) );
  NAND2_X1 U21 ( .A1(n11), .A2(n28), .ZN(n12) );
  OR2_X2 U22 ( .A1(A[14]), .A2(B[14]), .ZN(n18) );
  AND2_X1 U23 ( .A1(B[13]), .A2(A[13]), .ZN(n21) );
  AND2_X1 U24 ( .A1(n18), .A2(n21), .ZN(n27) );
  AOI211_X1 U25 ( .C1(A[15]), .C2(B[15]), .A(n27), .B(n26), .ZN(n17) );
  AND2_X2 U26 ( .A1(A[12]), .A2(B[11]), .ZN(n32) );
  NOR2_X1 U27 ( .A1(B[12]), .A2(n32), .ZN(n22) );
  NAND2_X1 U28 ( .A1(n18), .A2(n34), .ZN(n13) );
  AND2_X1 U29 ( .A1(n15), .A2(n14), .ZN(n16) );
  AOI21_X1 U30 ( .B1(n17), .B2(n11), .A(n16), .ZN(O[16]) );
  INV_X1 U31 ( .A(n26), .ZN(n19) );
  NAND2_X1 U32 ( .A1(n19), .A2(n18), .ZN(n25) );
  OR2_X1 U33 ( .A1(n37), .A2(n20), .ZN(n23) );
  INV_X1 U34 ( .A(n21), .ZN(n35) );
  OAI21_X1 U35 ( .B1(n23), .B2(n22), .A(n35), .ZN(n24) );
  XNOR2_X1 U36 ( .A(n25), .B(n24), .ZN(O[14]) );
  XOR2_X1 U37 ( .A(B[15]), .B(A[15]), .Z(O[6]) );
  NAND2_X1 U38 ( .A1(n29), .A2(n28), .ZN(n31) );
  INV_X1 U39 ( .A(O[6]), .ZN(n30) );
  XNOR2_X1 U40 ( .A(n31), .B(n30), .ZN(O[15]) );
  AND2_X1 U41 ( .A1(n12), .A2(O[6]), .ZN(\O[3] ) );
  NOR2_X1 U42 ( .A1(n32), .A2(n37), .ZN(n33) );
  XNOR2_X1 U43 ( .A(n38), .B(n33), .ZN(O[12]) );
  NAND2_X1 U44 ( .A1(n35), .A2(n34), .ZN(n40) );
  INV_X1 U45 ( .A(n32), .ZN(n36) );
  OAI21_X1 U46 ( .B1(n38), .B2(n37), .A(n36), .ZN(n39) );
  XNOR2_X1 U47 ( .A(n40), .B(n39), .ZN(O[13]) );
endmodule

