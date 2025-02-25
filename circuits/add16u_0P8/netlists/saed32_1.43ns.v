/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:53:34 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_CI, intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, n21;
  assign O[4] = 1'b0;
  assign O[14] = O[0];
  assign O[3] = A[4];
  assign O[2] = A[11];
  assign O[1] = B[9];

  FADDX1_RVT intadd_0_U10 ( .A(A[7]), .B(B[7]), .CI(intadd_0_CI), .CO(
        intadd_0_n9), .S(O[7]) );
  FADDX1_RVT intadd_0_U9 ( .A(A[8]), .B(B[8]), .CI(intadd_0_n9), .CO(
        intadd_0_n8), .S(O[8]) );
  FADDX1_RVT intadd_0_U8 ( .A(A[9]), .B(B[9]), .CI(intadd_0_n8), .CO(
        intadd_0_n7), .S(O[9]) );
  FADDX1_RVT intadd_0_U7 ( .A(A[10]), .B(B[10]), .CI(intadd_0_n7), .CO(
        intadd_0_n6), .S(O[10]) );
  FADDX1_RVT intadd_0_U6 ( .A(A[11]), .B(B[11]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(O[11]) );
  FADDX1_RVT intadd_0_U5 ( .A(A[12]), .B(B[12]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(O[12]) );
  FADDX1_RVT intadd_0_U4 ( .A(A[13]), .B(B[13]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(O[13]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[14]), .B(B[14]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[0]) );
  FADDX1_RVT intadd_0_U2 ( .A(B[15]), .B(A[15]), .CI(intadd_0_n2), .CO(O[16]), 
        .S(O[15]) );
  OR2X1_RVT U16 ( .A1(A[6]), .A2(B[6]), .Y(intadd_0_CI) );
  AND2X1_RVT U18 ( .A1(A[11]), .A2(B[11]), .Y(O[5]) );
  NAND2X0_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(n21) );
  NAND2X0_RVT U20 ( .A1(intadd_0_CI), .A2(n21), .Y(O[6]) );
endmodule

