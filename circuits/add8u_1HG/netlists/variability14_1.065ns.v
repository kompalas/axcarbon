/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:13:05 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, n11;

  FA_X1 intadd_0_U8 ( .A(B[1]), .B(A[1]), .CI(intadd_0_CI), .CO(intadd_0_n7), 
        .S(O[1]) );
  FA_X1 intadd_0_U7 ( .A(A[2]), .B(B[2]), .CI(intadd_0_n7), .CO(intadd_0_n6), 
        .S(O[2]) );
  FA_X1 intadd_0_U6 ( .A(A[3]), .B(B[3]), .CI(intadd_0_n6), .CO(intadd_0_n5), 
        .S(O[3]) );
  FA_X1 intadd_0_U5 ( .A(A[4]), .B(B[4]), .CI(intadd_0_n5), .CO(intadd_0_n4), 
        .S(O[4]) );
  FA_X1 intadd_0_U4 ( .A(B[5]), .B(A[5]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(O[5]) );
  FA_X1 intadd_0_U3 ( .A(B[6]), .B(A[6]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[6]) );
  FA_X1 intadd_0_U2 ( .A(B[7]), .B(A[7]), .CI(intadd_0_n2), .CO(O[8]), .S(O[7]) );
  AND2_X1 U11 ( .A1(B[0]), .A2(A[0]), .Z(intadd_0_CI) );
  NOR2_X1 U12 ( .A1(B[0]), .A2(A[0]), .ZN(n11) );
  NOR2_X1 U13 ( .A1(intadd_0_CI), .A2(n11), .ZN(O[0]) );
endmodule

