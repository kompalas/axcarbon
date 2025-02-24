/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:23:54 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
;
  assign O[2] = 1'b0;
  assign O[4] = 1'b0;
  assign O[1] = A[4];
  assign O[3] = A[4];
  assign O[0] = B[3];

  AND2_X1 U7 ( .A1(B[7]), .A2(A[7]), .ZN(n13) );
  OR2_X1 U8 ( .A1(A[6]), .A2(B[6]), .ZN(n15) );
  XOR2_X1 U9 ( .A(B[7]), .B(A[7]), .Z(n17) );
  BUF_X1 U10 ( .A(A[5]), .Z(n8) );
  NOR2_X1 U11 ( .A1(B[5]), .A2(A[5]), .ZN(n6) );
  XOR2_X1 U12 ( .A(A[6]), .B(B[6]), .Z(n20) );
  NAND2_X1 U13 ( .A1(n6), .A2(n7), .ZN(n16) );
  NAND2_X1 U14 ( .A1(B[6]), .A2(A[6]), .ZN(n7) );
  AND2_X1 U15 ( .A1(B[5]), .A2(n8), .ZN(n19) );
  NOR2_X1 U16 ( .A1(B[5]), .A2(n8), .ZN(n9) );
  NOR2_X1 U17 ( .A1(A[6]), .A2(B[6]), .ZN(n11) );
  NOR2_X1 U18 ( .A1(B[7]), .A2(A[7]), .ZN(n10) );
  NOR2_X1 U19 ( .A1(n11), .A2(n10), .ZN(n12) );
  AND2_X1 U20 ( .A1(n16), .A2(n12), .ZN(n14) );
  OR2_X1 U21 ( .A1(n14), .A2(n13), .ZN(O[8]) );
  NAND2_X1 U22 ( .A1(n16), .A2(n15), .ZN(n18) );
  XNOR2_X1 U23 ( .A(n18), .B(n17), .ZN(O[7]) );
  OR2_X1 U24 ( .A1(n19), .A2(n9), .ZN(O[5]) );
  XNOR2_X1 U25 ( .A(n9), .B(n20), .ZN(O[6]) );
endmodule

