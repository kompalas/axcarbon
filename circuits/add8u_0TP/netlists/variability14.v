/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:21:20 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21;
  assign O[2] = 1'b0;
  assign O[4] = 1'b0;
  assign O[1] = A[4];
  assign O[3] = A[4];
  assign O[0] = B[3];

  NOR2_X1 U8 ( .A1(A[5]), .A2(B[5]), .ZN(n7) );
  NAND2_X1 U9 ( .A1(B[5]), .A2(A[5]), .ZN(n14) );
  NOR2_X1 U10 ( .A1(A[7]), .A2(B[7]), .ZN(n18) );
  OR2_X1 U11 ( .A1(A[5]), .A2(B[5]), .Z(n8) );
  NOR2_X1 U12 ( .A1(A[6]), .A2(B[6]), .ZN(n9) );
  NOR2_X2 U13 ( .A1(A[5]), .A2(B[5]), .ZN(n10) );
  NOR2_X2 U14 ( .A1(A[5]), .A2(B[5]), .ZN(n11) );
  XNOR2_X1 U15 ( .A1(n13), .A2(n12), .ZN(O[7]) );
  XNOR2_X1 U16 ( .A1(A[7]), .A2(B[7]), .ZN(n12) );
  OAI21_X2 U17 ( .A1(n11), .A2(n17), .B(n16), .ZN(n13) );
  NOR2_X2 U18 ( .A1(A[6]), .A2(B[6]), .ZN(n17) );
  NAND2_X2 U19 ( .A1(B[6]), .A2(A[6]), .ZN(n16) );
  NAND2_X1 U20 ( .A1(n8), .A2(n14), .ZN(O[5]) );
  XOR2_X1 U21 ( .A1(A[6]), .A2(B[6]), .Z(n15) );
  XNOR2_X1 U22 ( .A1(n15), .A2(n7), .ZN(O[6]) );
  NAND2_X1 U23 ( .A1(n16), .A2(n10), .ZN(n20) );
  NOR2_X1 U24 ( .A1(n18), .A2(n9), .ZN(n19) );
  AOI22_X1 U25 ( .A1(n20), .A2(n19), .B1(B[7]), .B2(A[7]), .ZN(n21) );
  INV_X1 U26 ( .I(n21), .ZN(O[8]) );
endmodule

