/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:53:05 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n4, intadd_0_n3, intadd_0_n2, n8, n9;
  assign O[0] = 1'b1;

  FADDX1_RVT intadd_0_U5 ( .A(A[4]), .B(B[4]), .CI(intadd_0_CI), .CO(
        intadd_0_n4), .S(O[4]) );
  FADDX1_RVT intadd_0_U4 ( .A(A[5]), .B(B[5]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(O[5]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[6]), .B(B[6]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[6]) );
  FADDX1_RVT intadd_0_U2 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n2), .CO(O[8]), 
        .S(O[7]) );
  NAND2X0_RVT U12 ( .A1(A[3]), .A2(B[3]), .Y(n9) );
  INVX1_RVT U13 ( .A(n9), .Y(intadd_0_CI) );
  OR2X1_RVT U14 ( .A1(A[1]), .A2(B[1]), .Y(O[1]) );
  AND4X1_RVT U15 ( .A1(A[2]), .A2(B[2]), .A3(A[1]), .A4(B[1]), .Y(n8) );
  AO222X1_RVT U16 ( .A1(n9), .A2(A[3]), .A3(n9), .A4(B[3]), .A5(n9), .A6(n8), 
        .Y(O[3]) );
  OR2X1_RVT U17 ( .A1(A[2]), .A2(B[2]), .Y(O[2]) );
endmodule

