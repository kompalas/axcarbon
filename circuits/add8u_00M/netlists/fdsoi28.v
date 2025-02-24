/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:28:03 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n4, n5, n6, n7, n8;
  assign O[3] = 1'b0;
  assign O[0] = O[8];
  assign O[2] = A[7];
  assign O[1] = A[3];
  assign O[4] = B[7];

  INV_X1 U7 ( .A(O[6]), .ZN(n5) );
  INV_X1 U8 ( .A(B[7]), .ZN(n7) );
  INV_X1 U9 ( .A(A[7]), .ZN(n6) );
  XNOR2_X1 U10 ( .A(n4), .B(n5), .ZN(O[7]) );
  XNOR2_X2 U11 ( .A(A[7]), .B(B[7]), .ZN(n4) );
  NOR2_X4 U12 ( .A1(A[6]), .A2(B[6]), .ZN(O[6]) );
  NOR2_X4 U13 ( .A1(A[7]), .A2(B[7]), .ZN(n8) );
  OAI22_X1 U14 ( .A1(O[6]), .A2(n8), .B1(n7), .B2(n6), .ZN(O[8]) );
  AND2_X4 U15 ( .A1(A[6]), .A2(B[6]), .ZN(O[5]) );
endmodule

