/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:23:07 2025
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

  FA_X1 intadd_0_U7 ( .A(A[10]), .B(B[9]), .CI(B[10]), .CO(intadd_0_n6), .S(
        O[10]) );
  FA_X1 intadd_0_U6 ( .A(B[11]), .B(A[11]), .CI(intadd_0_n6), .CO(intadd_0_n5), 
        .S(O[5]) );
  FA_X1 intadd_0_U5 ( .A(B[12]), .B(A[12]), .CI(intadd_0_n5), .CO(intadd_0_n4), 
        .S(O[12]) );
  FA_X1 intadd_0_U4 ( .A(B[13]), .B(A[13]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(O[13]) );
  FA_X1 intadd_0_U3 ( .A(B[14]), .B(A[14]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[1]) );
  FA_X1 intadd_0_U2 ( .A(A[15]), .B(B[15]), .CI(intadd_0_n2), .CO(O[16]), .S(
        O[15]) );
  NAND2_X1 U14 ( .A1(B[4]), .A2(A[9]), .ZN(O[4]) );
endmodule

