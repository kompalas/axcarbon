/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:23:51 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n7, n8, n9;
  assign O[2] = 1'b0;
  assign O[4] = 1'b0;
  assign O[1] = A[4];
  assign O[3] = A[4];
  assign O[0] = B[3];

  OR2_X1 U9 ( .A1(B[5]), .A2(A[5]), .Z(n9) );
  FA_X1 U10 ( .A(A[7]), .B(B[7]), .CI(n7), .CO(O[8]), .S(O[7]) );
  NAND2_X1 U11 ( .A1(B[5]), .A2(A[5]), .ZN(n8) );
  NAND2_X1 U12 ( .A1(n9), .A2(n8), .ZN(O[5]) );
  FA_X1 U13 ( .A(B[6]), .B(A[6]), .CI(n9), .CO(n7), .S(O[6]) );
endmodule

