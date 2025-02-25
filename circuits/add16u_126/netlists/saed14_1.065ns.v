/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:10:20 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_CI, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2;
  assign O[2] = O[3];
  assign O[4] = A[3];
  assign O[0] = A[8];
  assign O[1] = B[0];

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(A[15]), .CI(B[15]), 
        .CO(O[16]), .S(O[15]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U12 ( .A(intadd_0_CI), .B(B[5]), .CI(A[5]), 
        .CO(intadd_0_n11), .S(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U11 ( .A(intadd_0_n11), .B(B[6]), .CI(A[6]), 
        .CO(intadd_0_n10), .S(O[6]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U10 ( .A(intadd_0_n10), .B(B[7]), .CI(A[7]), 
        .CO(intadd_0_n9), .S(O[7]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U9 ( .A(intadd_0_n9), .B(A[8]), .CI(B[8]), 
        .CO(intadd_0_n8), .S(O[8]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U8 ( .A(intadd_0_n8), .B(B[9]), .CI(A[9]), 
        .CO(intadd_0_n7), .S(O[9]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U7 ( .A(intadd_0_n7), .B(B[10]), .CI(A[10]), 
        .CO(intadd_0_n6), .S(O[10]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U6 ( .A(intadd_0_n6), .B(B[11]), .CI(A[11]), 
        .CO(intadd_0_n5), .S(O[11]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(intadd_0_n5), .B(B[12]), .CI(A[12]), 
        .CO(intadd_0_n4), .S(O[12]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(B[13]), .CI(A[13]), 
        .CO(intadd_0_n3), .S(O[13]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(B[14]), .CI(A[14]), 
        .CO(intadd_0_n2), .S(O[14]) );
  SAEDRVT14_TIE1_4 U15 ( .X(O[3]) );
  SAEDRVT14_AN2_MM_0P5 U16 ( .A1(B[4]), .A2(A[4]), .X(intadd_0_CI) );
endmodule

