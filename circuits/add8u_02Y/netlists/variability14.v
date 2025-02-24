/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:32:14 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;

  assign O[6] = 1'b1;
  assign O[3] = 1'b0;
  assign O[5] = A[5];
  assign O[4] = A[7];
  assign O[1] = A[0];
  assign O[2] = A[0];
  assign O[0] = A[2];

  AND2_X1 U8 ( .A1(A[7]), .A2(B[7]), .Z(O[8]) );
  XOR2_X1 U9 ( .A1(A[7]), .A2(B[7]), .Z(O[7]) );
endmodule

