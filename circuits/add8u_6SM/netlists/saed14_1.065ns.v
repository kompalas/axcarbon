/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:13:54 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n4, intadd_0_n3, intadd_0_n2, n8, n9;

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(B[7]), .CI(A[7]), 
        .CO(O[8]), .S(O[7]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(intadd_0_CI), .B(B[4]), .CI(A[4]), 
        .CO(intadd_0_n4), .S(O[4]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(B[5]), .CI(A[5]), 
        .CO(intadd_0_n3), .S(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(B[6]), .CI(A[6]), 
        .CO(intadd_0_n2), .S(O[6]) );
  SAEDRVT14_TIE1_4 U12 ( .X(O[0]) );
  SAEDRVT14_AN4_0P5 U13 ( .A1(A[2]), .A2(B[2]), .A3(A[1]), .A4(B[1]), .X(n8)
         );
  SAEDRVT14_ND2_CDC_0P5 U14 ( .A1(A[3]), .A2(B[3]), .X(n9) );
  SAEDRVT14_OA31_1 U15 ( .A1(A[3]), .A2(B[3]), .A3(n8), .B(n9), .X(O[3]) );
  SAEDRVT14_INV_0P5 U16 ( .A(n9), .X(intadd_0_CI) );
  SAEDRVT14_OR2_MM_0P5 U17 ( .A1(A[1]), .A2(B[1]), .X(O[1]) );
  SAEDRVT14_OR2_MM_0P5 U18 ( .A1(A[2]), .A2(B[2]), .X(O[2]) );
endmodule

