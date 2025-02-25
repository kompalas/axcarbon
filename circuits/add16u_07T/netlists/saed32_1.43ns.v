/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:56:09 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2;
  assign O[6] = 1'b1;
  assign O[0] = 1'b0;
  assign O[2] = 1'b0;
  assign O[8] = 1'b0;
  assign O[14] = O[1];
  assign O[11] = O[5];
  assign O[9] = A[8];
  assign O[3] = A[6];
  assign O[7] = B[9];

  FADDX1_RVT intadd_0_U7 ( .A(B[9]), .B(A[10]), .CI(B[10]), .CO(intadd_0_n6), 
        .S(O[10]) );
  FADDX1_RVT intadd_0_U6 ( .A(A[11]), .B(B[11]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(O[5]) );
  FADDX1_RVT intadd_0_U5 ( .A(A[12]), .B(B[12]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(O[12]) );
  FADDX1_RVT intadd_0_U4 ( .A(A[13]), .B(B[13]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(O[13]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[14]), .B(B[14]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[1]) );
  FADDX1_RVT intadd_0_U2 ( .A(B[15]), .B(A[15]), .CI(intadd_0_n2), .CO(O[16]), 
        .S(O[15]) );
  NAND2X0_RVT U14 ( .A1(B[4]), .A2(A[9]), .Y(O[4]) );
endmodule

