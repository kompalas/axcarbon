/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:17:35 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_1_n4, intadd_1_n3,
         intadd_1_n2;
  assign O[15] = O[5];
  assign O[7] = A[7];
  assign O[1] = A[13];
  assign O[4] = B[2];
  assign O[3] = B[13];
  assign O[0] = B[11];

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(A[15]), .CI(B[15]), 
        .CO(O[16]), .S(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U5 ( .A(B[8]), .B(A[8]), .CI(B[7]), .CO(
        intadd_1_n4), .S(O[8]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U4 ( .A(intadd_1_n4), .B(B[9]), .CI(A[9]), 
        .CO(intadd_1_n3), .S(O[9]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U3 ( .A(intadd_1_n3), .B(B[10]), .CI(A[10]), 
        .CO(intadd_1_n2), .S(O[10]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U2 ( .A(intadd_1_n2), .B(B[11]), .CI(A[11]), 
        .CO(O[2]), .S(O[11]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(O[2]), .B(B[12]), .CI(A[12]), .CO(
        intadd_0_n4), .S(O[12]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(A[13]), .CI(B[13]), 
        .CO(intadd_0_n3), .S(O[13]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(B[14]), .CI(A[14]), 
        .CO(intadd_0_n2), .S(O[14]) );
  SAEDRVT14_TIE1_4 U11 ( .X(O[6]) );
endmodule

