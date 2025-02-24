/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:22:33 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24;
  assign O[2] = 1'b0;
  assign O[4] = 1'b0;
  assign O[1] = A[4];
  assign O[3] = A[4];
  assign O[0] = B[3];

  AND2_X2 U7 ( .A1(A[5]), .A2(B[5]), .ZN(n13) );
  INV_X8 U8 ( .A(A[5]), .ZN(n8) );
  BUF_X2 U9 ( .A(n18), .Z(n23) );
  NAND2_X2 U10 ( .A1(B[6]), .A2(A[6]), .ZN(n19) );
  INV_X4 U11 ( .A(A[6]), .ZN(n10) );
  NAND2_X4 U12 ( .A1(n11), .A2(n10), .ZN(n9) );
  OR2_X4 U13 ( .A1(n14), .A2(n13), .ZN(O[5]) );
  INV_X2 U14 ( .A(n14), .ZN(n6) );
  NAND2_X2 U15 ( .A1(n18), .A2(n19), .ZN(n17) );
  NAND2_X4 U16 ( .A1(n9), .A2(n15), .ZN(n18) );
  INV_X4 U17 ( .A(B[6]), .ZN(n11) );
  INV_X16 U18 ( .A(B[5]), .ZN(n7) );
  INV_X2 U19 ( .A(n15), .ZN(n14) );
  NAND2_X4 U20 ( .A1(n8), .A2(n7), .ZN(n15) );
  AOI22_X4 U21 ( .A1(n21), .A2(n20), .B1(B[7]), .B2(A[7]), .ZN(n22) );
  OR2_X4 U22 ( .A1(B[7]), .A2(A[7]), .ZN(n21) );
  XNOR2_X2 U23 ( .A(B[7]), .B(A[7]), .ZN(n16) );
  XNOR2_X2 U24 ( .A(B[6]), .B(A[6]), .ZN(n12) );
  XNOR2_X1 U25 ( .A(n6), .B(n12), .ZN(O[6]) );
  XNOR2_X1 U26 ( .A(n17), .B(n16), .ZN(O[7]) );
  INV_X1 U27 ( .A(n21), .ZN(n24) );
  INV_X1 U28 ( .A(n19), .ZN(n20) );
  OAI21_X1 U29 ( .B1(n24), .B2(n23), .A(n22), .ZN(O[8]) );
endmodule

