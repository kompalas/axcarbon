/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:27:44 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n3, n4;
  assign O[6] = 1'b1;
  assign O[3] = 1'b0;
  assign O[5] = A[5];
  assign O[4] = A[7];
  assign O[1] = A[0];
  assign O[2] = A[0];
  assign O[0] = A[2];

  INV_X1 U11 ( .A(A[7]), .ZN(n4) );
  INV_X1 U12 ( .A(B[7]), .ZN(n3) );
  NOR2_X1 U13 ( .A1(n4), .A2(n3), .ZN(O[8]) );
  AOI21_X1 U14 ( .B1(n4), .B2(n3), .A(O[8]), .ZN(O[7]) );
endmodule

