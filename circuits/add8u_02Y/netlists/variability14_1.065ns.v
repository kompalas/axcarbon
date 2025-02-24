/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:27:22 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n2;
  assign O[6] = 1'b1;
  assign O[3] = 1'b0;
  assign O[5] = A[5];
  assign O[4] = A[7];
  assign O[1] = A[0];
  assign O[2] = A[0];
  assign O[0] = A[2];

  AND2_X1 U10 ( .A1(A[7]), .A2(B[7]), .Z(O[8]) );
  NOR2_X1 U11 ( .A1(A[7]), .A2(B[7]), .ZN(n2) );
  NOR2_X1 U12 ( .A1(O[8]), .A2(n2), .ZN(O[7]) );
endmodule

