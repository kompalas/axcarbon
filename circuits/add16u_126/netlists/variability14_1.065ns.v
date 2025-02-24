/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:17:17 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_CI, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2;
  assign O[2] = 1'b1;
  assign O[3] = 1'b1;
  assign O[4] = A[3];
  assign O[0] = A[8];
  assign O[1] = B[0];

  FA_X1 intadd_0_U12 ( .A(A[5]), .B(B[5]), .CI(intadd_0_CI), .CO(intadd_0_n11), 
        .S(O[5]) );
  FA_X1 intadd_0_U11 ( .A(A[6]), .B(B[6]), .CI(intadd_0_n11), .CO(intadd_0_n10), .S(O[6]) );
  FA_X1 intadd_0_U10 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n10), .CO(intadd_0_n9), 
        .S(O[7]) );
  FA_X1 intadd_0_U9 ( .A(B[8]), .B(A[8]), .CI(intadd_0_n9), .CO(intadd_0_n8), 
        .S(O[8]) );
  FA_X1 intadd_0_U8 ( .A(A[9]), .B(B[9]), .CI(intadd_0_n8), .CO(intadd_0_n7), 
        .S(O[9]) );
  FA_X1 intadd_0_U7 ( .A(A[10]), .B(B[10]), .CI(intadd_0_n7), .CO(intadd_0_n6), 
        .S(O[10]) );
  FA_X1 intadd_0_U6 ( .A(A[11]), .B(B[11]), .CI(intadd_0_n6), .CO(intadd_0_n5), 
        .S(O[11]) );
  FA_X1 intadd_0_U5 ( .A(A[12]), .B(B[12]), .CI(intadd_0_n5), .CO(intadd_0_n4), 
        .S(O[12]) );
  FA_X1 intadd_0_U4 ( .A(A[13]), .B(B[13]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(O[13]) );
  FA_X1 intadd_0_U3 ( .A(A[14]), .B(B[14]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[14]) );
  FA_X1 intadd_0_U2 ( .A(B[15]), .B(A[15]), .CI(intadd_0_n2), .CO(O[16]), .S(
        O[15]) );
  AND2_X1 U16 ( .A1(B[4]), .A2(A[4]), .Z(intadd_0_CI) );
endmodule

