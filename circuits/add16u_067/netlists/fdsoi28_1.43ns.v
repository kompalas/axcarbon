/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:32:08 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n4, n5, n6;
  assign O[6] = 1'b1;
  assign O[1] = 1'b0;
  assign O[12] = 1'b0;
  assign O[3] = A[7];
  assign O[2] = A[8];
  assign O[10] = A[8];
  assign O[14] = B[14];
  assign O[13] = B[10];
  assign O[9] = B[13];
  assign O[11] = B[13];
  assign O[4] = B[11];
  assign O[7] = B[11];
  assign O[8] = B[11];
  assign O[0] = B[2];

  NOR2_X1 U11 ( .A1(A[15]), .A2(B[15]), .ZN(n6) );
  INV_X1 U12 ( .A(A[14]), .ZN(n5) );
  NOR2_X1 U13 ( .A1(n6), .A2(n5), .ZN(O[5]) );
  AOI21_X1 U14 ( .B1(B[15]), .B2(A[15]), .A(O[5]), .ZN(n4) );
  INV_X1 U15 ( .A(n4), .ZN(O[16]) );
  AOI21_X1 U18 ( .B1(n6), .B2(n5), .A(O[5]), .ZN(O[15]) );
endmodule

