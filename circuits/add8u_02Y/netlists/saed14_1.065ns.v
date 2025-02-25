/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:31:59 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;

  assign O[5] = A[5];
  assign O[4] = A[7];
  assign O[1] = A[0];
  assign O[2] = A[0];
  assign O[0] = A[2];

  SAEDRVT14_AN2_MM_1 U7 ( .A1(B[7]), .A2(A[7]), .X(O[8]) );
  SAEDRVT14_TIE0_V1_2 U8 ( .X(O[3]) );
  SAEDRVT14_TIE1_4 U9 ( .X(O[6]) );
  SAEDRVT14_OA21B_1 U10 ( .A1(B[7]), .A2(A[7]), .B(O[8]), .X(O[7]) );
endmodule

