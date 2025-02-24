/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:25:58 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n4;
  assign O[3] = 1'b0;
  assign O[0] = O[8];
  assign O[2] = A[7];
  assign O[1] = A[3];
  assign O[4] = B[7];

  AND2_X1 U7 ( .A1(B[6]), .A2(A[6]), .ZN(O[5]) );
  NOR2_X1 U8 ( .A1(B[6]), .A2(A[6]), .ZN(O[6]) );
  INV_X1 U10 ( .A(O[6]), .ZN(n4) );
  FA_X1 U11 ( .A(B[7]), .B(A[7]), .CI(n4), .CO(O[8]), .S(O[7]) );
endmodule

