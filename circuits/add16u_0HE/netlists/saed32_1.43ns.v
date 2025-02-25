/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:54:51 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_1_n4, intadd_1_n3,
         intadd_1_n2;
  assign O[6] = 1'b1;
  assign O[15] = O[5];
  assign O[7] = A[7];
  assign O[1] = A[13];
  assign O[4] = B[2];
  assign O[3] = B[13];
  assign O[0] = B[11];

  FADDX1_RVT intadd_0_U5 ( .A(A[12]), .B(B[12]), .CI(O[2]), .CO(intadd_0_n4), 
        .S(O[12]) );
  FADDX1_RVT intadd_0_U4 ( .A(B[13]), .B(A[13]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(O[13]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[14]), .B(B[14]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[14]) );
  FADDX1_RVT intadd_0_U2 ( .A(B[15]), .B(A[15]), .CI(intadd_0_n2), .CO(O[16]), 
        .S(O[5]) );
  FADDX1_RVT intadd_1_U5 ( .A(B[7]), .B(A[8]), .CI(B[8]), .CO(intadd_1_n4), 
        .S(O[8]) );
  FADDX1_RVT intadd_1_U4 ( .A(A[9]), .B(B[9]), .CI(intadd_1_n4), .CO(
        intadd_1_n3), .S(O[9]) );
  FADDX1_RVT intadd_1_U3 ( .A(A[10]), .B(B[10]), .CI(intadd_1_n3), .CO(
        intadd_1_n2), .S(O[10]) );
  FADDX1_RVT intadd_1_U2 ( .A(A[11]), .B(B[11]), .CI(intadd_1_n2), .CO(O[2]), 
        .S(O[11]) );
endmodule

