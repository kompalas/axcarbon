/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:18:31 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n4, intadd_0_n3, intadd_0_n2, n8, n9;
  assign O[0] = 1'b1;

  FA_X1 intadd_0_U5 ( .A(A[4]), .B(B[4]), .CI(intadd_0_CI), .CO(intadd_0_n4), 
        .S(O[4]) );
  FA_X1 intadd_0_U4 ( .A(A[5]), .B(B[5]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(O[5]) );
  FA_X1 intadd_0_U3 ( .A(A[6]), .B(B[6]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[6]) );
  FA_X1 intadd_0_U2 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n2), .CO(O[8]), .S(O[7]) );
  AND2_X1 U12 ( .A1(B[3]), .A2(A[3]), .Z(intadd_0_CI) );
  NOR2_X1 U13 ( .A1(B[3]), .A2(A[3]), .ZN(n9) );
  NAND4_X1 U14 ( .A1(A[2]), .A2(B[2]), .A3(A[1]), .A4(B[1]), .ZN(n8) );
  AOI21_X1 U15 ( .A1(n9), .A2(n8), .B(intadd_0_CI), .ZN(O[3]) );
  OR2_X1 U16 ( .A1(A[1]), .A2(B[1]), .Z(O[1]) );
  OR2_X1 U17 ( .A1(A[2]), .A2(B[2]), .Z(O[2]) );
endmodule

