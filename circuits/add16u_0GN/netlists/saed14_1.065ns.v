/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:06:41 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_CI, intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9,
         intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2;
  assign O[0] = O[2];
  assign O[1] = A[2];

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(A[15]), .CI(B[15]), 
        .CO(O[16]), .S(O[15]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U13 ( .A(intadd_0_CI), .B(B[4]), .CI(A[4]), 
        .CO(intadd_0_n12), .S(O[4]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U12 ( .A(intadd_0_n12), .B(B[5]), .CI(A[5]), 
        .CO(intadd_0_n11), .S(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U11 ( .A(intadd_0_n11), .B(B[6]), .CI(A[6]), 
        .CO(intadd_0_n10), .S(O[6]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U10 ( .A(intadd_0_n10), .B(B[7]), .CI(A[7]), 
        .CO(intadd_0_n9), .S(O[7]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U9 ( .A(intadd_0_n9), .B(B[8]), .CI(A[8]), 
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
  SAEDRVT14_TIE1_4 U17 ( .X(O[2]) );
  SAEDRVT14_AN2_MM_0P5 U18 ( .A1(B[3]), .A2(A[3]), .X(intadd_0_CI) );
  SAEDRVT14_OA21B_1 U19 ( .A1(B[3]), .A2(A[3]), .B(intadd_0_CI), .X(O[3]) );
endmodule

