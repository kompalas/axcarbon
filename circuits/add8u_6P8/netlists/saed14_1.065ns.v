/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:10:17 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2;

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(A[7]), .CI(B[7]), 
        .CO(O[8]), .S(O[7]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U6 ( .A(intadd_0_CI), .B(A[3]), .CI(B[3]), 
        .CO(intadd_0_n5), .S(O[3]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(intadd_0_n5), .B(B[4]), .CI(A[4]), 
        .CO(intadd_0_n4), .S(O[4]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(B[5]), .CI(A[5]), 
        .CO(intadd_0_n3), .S(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(B[6]), .CI(A[6]), 
        .CO(intadd_0_n2), .S(O[6]) );
  SAEDRVT14_AN2_MM_0P5 U10 ( .A1(B[2]), .A2(A[2]), .X(intadd_0_CI) );
  SAEDRVT14_OR2_MM_0P5 U11 ( .A1(A[0]), .A2(B[0]), .X(O[0]) );
  SAEDRVT14_OR2_MM_0P5 U12 ( .A1(B[1]), .A2(A[1]), .X(O[1]) );
  SAEDRVT14_OA21B_1 U13 ( .A1(B[2]), .A2(A[2]), .B(intadd_0_CI), .X(O[2]) );
endmodule

