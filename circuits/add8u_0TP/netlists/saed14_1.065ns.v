/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:24:46 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n6, n7;
  assign O[2] = O[4];
  assign O[1] = A[4];
  assign O[3] = A[4];
  assign O[0] = B[3];

  SAEDRVT14_ADDF_V1_0P5 U7 ( .A(A[7]), .B(B[7]), .CI(n6), .CO(O[8]), .S(O[7])
         );
  SAEDRVT14_TIE0_V1_2 U8 ( .X(O[4]) );
  SAEDRVT14_ADDF_V1_1 U9 ( .A(B[6]), .B(A[6]), .CI(n7), .CO(n6), .S(O[6]) );
  SAEDRVT14_OR2_MM_1 U10 ( .A1(A[5]), .A2(B[5]), .X(n7) );
  SAEDRVT14_AO21B_0P5 U11 ( .A1(B[5]), .A2(A[5]), .B(n7), .X(O[5]) );
endmodule

