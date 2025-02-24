/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:29:58 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4, n5;
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
  assign O[11] = O[12];
  assign O[7] = O[12];

  AOI22_X2 U9 ( .A1(A[6]), .A2(B[7]), .B1(B[6]), .B2(A[7]), .ZN(n4) );
  INV_X1 U10 ( .A(n5), .ZN(O[13]) );
  NAND2_X4 U11 ( .A1(B[7]), .A2(A[7]), .ZN(n5) );
  NOR2_X4 U12 ( .A1(A[6]), .A2(B[6]), .ZN(n3) );
  NOR2_X2 U13 ( .A1(n5), .A2(n3), .ZN(O[15]) );
  AND2_X1 U14 ( .A1(A[5]), .A2(B[5]), .ZN(O[12]) );
  AOI21_X1 U15 ( .B1(n5), .B2(n4), .A(O[15]), .ZN(O[14]) );
endmodule

