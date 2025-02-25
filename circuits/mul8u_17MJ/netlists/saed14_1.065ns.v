/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:29:12 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4;
  assign O[0] = O[10];
  assign O[1] = O[10];
  assign O[2] = O[10];
  assign O[3] = O[10];
  assign O[4] = O[10];
  assign O[5] = O[10];
  assign O[6] = O[10];
  assign O[8] = O[10];
  assign O[9] = O[10];
  assign O[7] = O[12];
  assign O[11] = O[12];

  SAEDRVT14_TIE0_V1_2 U9 ( .X(O[10]) );
  SAEDRVT14_AN2_MM_0P5 U10 ( .A1(A[7]), .A2(B[7]), .X(O[13]) );
  SAEDRVT14_OA21_1 U11 ( .A1(A[6]), .A2(B[6]), .B(O[13]), .X(O[15]) );
  SAEDRVT14_ND2_CDC_0P5 U12 ( .A1(A[7]), .A2(B[6]), .X(n4) );
  SAEDRVT14_OAI21_0P5 U13 ( .A1(A[7]), .A2(A[6]), .B(B[7]), .X(n3) );
  SAEDRVT14_AOI21_0P75 U14 ( .A1(n4), .A2(n3), .B(O[15]), .X(O[14]) );
  SAEDRVT14_AN2_MM_0P5 U15 ( .A1(A[5]), .A2(B[5]), .X(O[12]) );
endmodule

