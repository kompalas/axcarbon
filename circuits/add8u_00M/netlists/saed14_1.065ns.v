/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:28:23 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n4;
  assign O[0] = O[8];
  assign O[2] = A[7];
  assign O[1] = A[3];
  assign O[4] = B[7];

  SAEDRVT14_TIE0_V1_2 U7 ( .X(O[3]) );
  SAEDRVT14_NR2_1 U8 ( .A1(B[6]), .A2(A[6]), .X(O[6]) );
  SAEDRVT14_INV_0P5 U9 ( .A(O[6]), .X(n4) );
  SAEDRVT14_ADDF_V1_0P5 U10 ( .A(B[7]), .B(A[7]), .CI(n4), .CO(O[8]), .S(O[7])
         );
  SAEDRVT14_AN2_MM_0P5 U11 ( .A1(B[6]), .A2(A[6]), .X(O[5]) );
endmodule

