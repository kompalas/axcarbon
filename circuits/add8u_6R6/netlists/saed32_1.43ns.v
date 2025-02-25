/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:55:40 2025
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

  FADDX1_RVT intadd_0_U4 ( .A(A[5]), .B(B[4]), .CI(B[5]), .CO(intadd_0_n3), 
        .S(O[5]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[6]), .B(B[6]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[6]) );
  FADDX1_RVT intadd_0_U2 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n2), .CO(O[8]), 
        .S(O[7]) );
  INVX1_RVT U5 ( .A(B[4]), .Y(O[3]) );
endmodule

