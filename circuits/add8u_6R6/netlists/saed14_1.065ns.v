/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:21:09 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_n3, intadd_0_n2;
  assign O[4] = A[4];
  assign O[2] = A[3];
  assign O[1] = A[2];
  assign O[0] = B[0];

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(B[7]), .CI(A[7]), 
        .CO(O[8]), .S(O[7]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(B[5]), .B(B[4]), .CI(A[5]), .CO(
        intadd_0_n3), .S(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(B[6]), .CI(A[6]), 
        .CO(intadd_0_n2), .S(O[6]) );
  SAEDRVT14_INV_0P5 U5 ( .A(B[4]), .X(O[3]) );
endmodule

