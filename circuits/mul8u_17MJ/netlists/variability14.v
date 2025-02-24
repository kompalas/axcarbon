/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:28:47 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4, n5, n6, n7, n8;
  assign O[0] = 1'b0;
  assign O[1] = 1'b0;
  assign O[2] = 1'b0;
  assign O[3] = 1'b0;
  assign O[4] = 1'b0;
  assign O[5] = 1'b0;
  assign O[6] = 1'b0;
  assign O[8] = 1'b0;
  assign O[9] = 1'b0;
  assign O[10] = 1'b0;
  assign O[7] = O[12];
  assign O[11] = O[12];

  INV_X4 U9 ( .I(A[6]), .ZN(n6) );
  AND2_X1 U10 ( .A1(A[5]), .A2(B[5]), .Z(O[12]) );
  NAND2_X2 U11 ( .A1(A[7]), .A2(B[7]), .ZN(n3) );
  INV_X1 U12 ( .I(n3), .ZN(O[13]) );
  INV_X1 U13 ( .I(B[6]), .ZN(n4) );
  AOI21_X1 U14 ( .A1(n6), .A2(n4), .B(n3), .ZN(O[15]) );
  INV_X12 U15 ( .I(B[7]), .ZN(n5) );
  NOR2_X2 U16 ( .A1(n6), .A2(n5), .ZN(n7) );
  OAI22_X1 U17 ( .A1(n7), .A2(A[7]), .B1(B[6]), .B2(B[7]), .ZN(n8) );
  NOR2_X1 U18 ( .A1(n8), .A2(O[15]), .ZN(O[14]) );
endmodule

