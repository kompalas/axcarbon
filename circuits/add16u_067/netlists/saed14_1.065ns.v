/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:32:05 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n2;
  assign O[1] = O[12];
  assign O[3] = A[7];
  assign O[2] = A[8];
  assign O[10] = A[8];
  assign O[14] = B[14];
  assign O[13] = B[10];
  assign O[9] = B[13];
  assign O[11] = B[13];
  assign O[4] = B[11];
  assign O[7] = B[11];
  assign O[8] = B[11];
  assign O[0] = B[2];

  SAEDRVT14_TIE0_V1_2 U9 ( .X(O[12]) );
  SAEDRVT14_TIE1_4 U10 ( .X(O[6]) );
  SAEDRVT14_OAI21_0P5 U11 ( .A1(A[15]), .A2(B[15]), .B(A[14]), .X(n2) );
  SAEDRVT14_INV_0P5 U12 ( .A(n2), .X(O[5]) );
  SAEDRVT14_AO21_U_0P5 U13 ( .A1(B[15]), .A2(A[15]), .B(O[5]), .X(O[16]) );
  SAEDRVT14_OA31_1 U14 ( .A1(A[15]), .A2(B[15]), .A3(A[14]), .B(n2), .X(O[15])
         );
endmodule

