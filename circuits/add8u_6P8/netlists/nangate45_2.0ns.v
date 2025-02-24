/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:17:29 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2;

  FA_X1 intadd_0_U6 ( .A(A[3]), .B(B[3]), .CI(intadd_0_CI), .CO(intadd_0_n5), 
        .S(O[3]) );
  FA_X1 intadd_0_U5 ( .A(B[4]), .B(A[4]), .CI(intadd_0_n5), .CO(intadd_0_n4), 
        .S(O[4]) );
  FA_X1 intadd_0_U4 ( .A(B[5]), .B(A[5]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(O[5]) );
  FA_X1 intadd_0_U3 ( .A(B[6]), .B(A[6]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[6]) );
  FA_X1 intadd_0_U2 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n2), .CO(O[8]), .S(O[7]) );
  OR2_X1 U10 ( .A1(A[0]), .A2(B[0]), .ZN(O[0]) );
  OR2_X1 U11 ( .A1(B[1]), .A2(A[1]), .ZN(O[1]) );
  AND2_X1 U12 ( .A1(B[2]), .A2(A[2]), .ZN(intadd_0_CI) );
  XOR2_X1 U13 ( .A(B[2]), .B(A[2]), .Z(O[2]) );
endmodule

