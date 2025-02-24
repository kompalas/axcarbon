/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:29:18 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n5, n6, n7, n8, n9, n10;
  assign O[3] = 1'b0;
  assign O[0] = O[8];
  assign O[1] = A[3];

  AND2_X1 U7 ( .A1(A[6]), .A2(B[6]), .ZN(O[5]) );
  CLKBUF_X1 U8 ( .A(A[7]), .Z(O[2]) );
  OR2_X1 U9 ( .A1(A[6]), .A2(B[6]), .ZN(n9) );
  NOR2_X1 U10 ( .A1(A[6]), .A2(B[6]), .ZN(O[6]) );
  INV_X1 U11 ( .A(B[7]), .ZN(n5) );
  INV_X1 U12 ( .A(n5), .ZN(O[4]) );
  INV_X1 U13 ( .A(A[7]), .ZN(n6) );
  AND2_X1 U14 ( .A1(n6), .A2(n5), .ZN(n8) );
  NAND2_X1 U15 ( .A1(O[2]), .A2(O[4]), .ZN(n7) );
  OAI21_X1 U16 ( .B1(n8), .B2(O[6]), .A(n7), .ZN(O[8]) );
  XNOR2_X1 U17 ( .A(A[7]), .B(B[7]), .ZN(n10) );
  XNOR2_X1 U18 ( .A(n10), .B(n9), .ZN(O[7]) );
endmodule

