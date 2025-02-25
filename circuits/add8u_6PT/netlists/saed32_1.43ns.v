/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:50:30 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, n8;

  FADDX1_RVT intadd_0_U7 ( .A(B[2]), .B(A[2]), .CI(intadd_0_CI), .CO(
        intadd_0_n6), .S(O[2]) );
  FADDX1_RVT intadd_0_U6 ( .A(A[3]), .B(B[3]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(O[3]) );
  FADDX1_RVT intadd_0_U5 ( .A(A[4]), .B(B[4]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(O[4]) );
  FADDX1_RVT intadd_0_U4 ( .A(A[5]), .B(B[5]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(O[5]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[6]), .B(B[6]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[6]) );
  FADDX1_RVT intadd_0_U2 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n2), .CO(O[8]), 
        .S(O[7]) );
  NAND2X0_RVT U11 ( .A1(A[1]), .A2(B[1]), .Y(n8) );
  INVX1_RVT U12 ( .A(n8), .Y(intadd_0_CI) );
  OR2X1_RVT U13 ( .A1(A[0]), .A2(B[0]), .Y(O[0]) );
  OA21X1_RVT U14 ( .A1(A[1]), .A2(B[1]), .A3(n8), .Y(O[1]) );
endmodule

