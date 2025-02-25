/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:21:13 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2;
  assign O[0] = O[8];
  assign O[2] = O[8];
  assign O[14] = O[1];
  assign O[11] = O[5];
  assign O[9] = A[8];
  assign O[3] = A[6];
  assign O[7] = B[9];

  SAEDRVT14_ADDF_V1_1 intadd_0_U7 ( .A(B[10]), .B(A[10]), .CI(B[9]), .CO(
        intadd_0_n6), .S(O[10]) );
  SAEDRVT14_ADDF_V1_1 intadd_0_U6 ( .A(intadd_0_n6), .B(B[11]), .CI(A[11]), 
        .CO(intadd_0_n5), .S(O[5]) );
  SAEDRVT14_ADDF_V1_1 intadd_0_U5 ( .A(intadd_0_n5), .B(B[12]), .CI(A[12]), 
        .CO(intadd_0_n4), .S(O[12]) );
  SAEDRVT14_ADDF_V1_1 intadd_0_U4 ( .A(intadd_0_n4), .B(B[13]), .CI(A[13]), 
        .CO(intadd_0_n3), .S(O[13]) );
  SAEDRVT14_ADDF_V1_1 intadd_0_U3 ( .A(intadd_0_n3), .B(B[14]), .CI(A[14]), 
        .CO(intadd_0_n2), .S(O[1]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(A[15]), .CI(B[15]), 
        .CO(O[16]), .S(O[15]) );
  SAEDRVT14_TIE0_V1_2 U12 ( .X(O[8]) );
  SAEDRVT14_TIE1_4 U13 ( .X(O[6]) );
  SAEDRVT14_ND2_CDC_0P5 U14 ( .A1(B[4]), .A2(A[9]), .X(O[4]) );
endmodule

