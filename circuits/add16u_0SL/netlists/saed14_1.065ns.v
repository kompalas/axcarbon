/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:28:26 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n7, n8, n9, n10;
  assign O[8] = O[5];
  assign O[1] = O[15];
  assign O[9] = A[15];
  assign O[6] = A[3];
  assign O[3] = A[6];
  assign O[2] = A[7];
  assign O[0] = A[9];
  assign O[12] = A[9];
  assign O[11] = B[11];
  assign O[10] = B[10];
  assign O[4] = B[12];

  SAEDRVT14_TIE0_V1_2 U11 ( .X(O[13]) );
  SAEDRVT14_NR2_1 U12 ( .A1(A[13]), .A2(B[13]), .X(n10) );
  SAEDRVT14_NR2_1 U13 ( .A1(n10), .A2(n9), .X(O[7]) );
  SAEDRVT14_INV_0P5 U14 ( .A(n10), .X(O[5]) );
  SAEDRVT14_ND2_CDC_0P5 U15 ( .A1(A[14]), .A2(B[14]), .X(n7) );
  SAEDRVT14_OAI21_0P5 U16 ( .A1(A[14]), .A2(B[14]), .B(n7), .X(n9) );
  SAEDRVT14_OAI21_0P5 U17 ( .A1(n10), .A2(n9), .B(n7), .X(n8) );
  SAEDRVT14_ADDF_V1_0P5 U18 ( .A(B[15]), .B(A[15]), .CI(n8), .CO(O[16]), .S(
        O[15]) );
  SAEDRVT14_AOI21_0P75 U19 ( .A1(n10), .A2(n9), .B(O[7]), .X(O[14]) );
endmodule

