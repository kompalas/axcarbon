/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:18:22 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25;
  assign O[4] = A[4];
  assign O[2] = A[3];
  assign O[1] = A[2];
  assign O[0] = B[0];

  OR2_X2 U5 ( .A1(A[7]), .A2(B[7]), .ZN(n20) );
  AND2_X2 U6 ( .A1(n6), .A2(n5), .ZN(n18) );
  NAND2_X1 U7 ( .A1(A[7]), .A2(B[7]), .ZN(n21) );
  INV_X1 U8 ( .A(B[5]), .ZN(n16) );
  AND2_X1 U9 ( .A1(n11), .A2(n10), .ZN(n25) );
  INV_X1 U10 ( .A(B[4]), .ZN(O[3]) );
  AOI22_X1 U11 ( .A1(A[5]), .A2(B[4]), .B1(A[6]), .B2(B[6]), .ZN(n4) );
  OAI21_X1 U12 ( .B1(A[5]), .B2(B[4]), .A(B[5]), .ZN(n10) );
  AND2_X1 U13 ( .A1(n4), .A2(n10), .ZN(n7) );
  INV_X1 U14 ( .A(A[6]), .ZN(n6) );
  INV_X1 U15 ( .A(B[6]), .ZN(n5) );
  NOR2_X1 U16 ( .A1(n7), .A2(n18), .ZN(n9) );
  NAND2_X1 U17 ( .A1(n20), .A2(n21), .ZN(n8) );
  XNOR2_X1 U18 ( .A(n9), .B(n8), .ZN(O[7]) );
  AND2_X1 U19 ( .A1(B[4]), .A2(A[5]), .ZN(n14) );
  INV_X1 U20 ( .A(n14), .ZN(n11) );
  AND2_X1 U21 ( .A1(B[6]), .A2(A[6]), .ZN(n19) );
  NOR2_X1 U22 ( .A1(n19), .A2(n18), .ZN(n12) );
  XNOR2_X1 U23 ( .A(n25), .B(n12), .ZN(O[6]) );
  NOR2_X1 U24 ( .A1(B[4]), .A2(A[5]), .ZN(n13) );
  NOR2_X1 U25 ( .A1(n14), .A2(n13), .ZN(n15) );
  XNOR2_X1 U26 ( .A(n16), .B(n15), .ZN(O[5]) );
  INV_X1 U27 ( .A(n20), .ZN(n17) );
  OR2_X1 U28 ( .A1(n18), .A2(n17), .ZN(n24) );
  NAND2_X1 U29 ( .A1(n20), .A2(n19), .ZN(n22) );
  AND2_X1 U30 ( .A1(n22), .A2(n21), .ZN(n23) );
  OAI21_X1 U31 ( .B1(n25), .B2(n24), .A(n23), .ZN(O[8]) );
endmodule

