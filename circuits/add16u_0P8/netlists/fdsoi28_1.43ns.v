/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:19:30 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_CI, intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2;
  assign O[4] = 1'b0;
  assign O[14] = O[0];
  assign O[3] = A[4];
  assign O[2] = A[11];
  assign O[1] = B[9];

  FA_X1 intadd_0_U10 ( .A(B[7]), .B(A[7]), .CI(intadd_0_CI), .CO(intadd_0_n9), 
        .S(O[7]) );
  FA_X1 intadd_0_U9 ( .A(B[8]), .B(A[8]), .CI(intadd_0_n9), .CO(intadd_0_n8), 
        .S(O[8]) );
  FA_X1 intadd_0_U8 ( .A(B[9]), .B(A[9]), .CI(intadd_0_n8), .CO(intadd_0_n7), 
        .S(O[9]) );
  FA_X1 intadd_0_U7 ( .A(B[10]), .B(A[10]), .CI(intadd_0_n7), .CO(intadd_0_n6), 
        .S(O[10]) );
  FA_X1 intadd_0_U6 ( .A(B[11]), .B(A[11]), .CI(intadd_0_n6), .CO(intadd_0_n5), 
        .S(O[11]) );
  FA_X1 intadd_0_U5 ( .A(B[12]), .B(A[12]), .CI(intadd_0_n5), .CO(intadd_0_n4), 
        .S(O[12]) );
  FA_X1 intadd_0_U4 ( .A(B[13]), .B(A[13]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(O[13]) );
  FA_X1 intadd_0_U3 ( .A(B[14]), .B(A[14]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[0]) );
  FA_X1 intadd_0_U2 ( .A(A[15]), .B(B[15]), .CI(intadd_0_n2), .CO(O[16]), .S(
        O[15]) );
  AND2_X1 U15 ( .A1(A[11]), .A2(B[11]), .ZN(O[5]) );
  OR2_X1 U16 ( .A1(A[6]), .A2(B[6]), .ZN(intadd_0_CI) );
  XNOR2_X1 U18 ( .A(A[6]), .B(B[6]), .ZN(O[6]) );
endmodule

