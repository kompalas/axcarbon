/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:20:41 2025
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
  FA_X1 intadd_0_U3 ( .A(B[6]), .B(A[6]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[6]) );
  FA_X1 intadd_0_U2 ( .A(B[7]), .B(A[7]), .CI(intadd_0_n2), .CO(O[8]), .S(O[7]) );
  OR2_X1 U11 ( .A1(B[2]), .A2(A[2]), .ZN(O[2]) );
  OR2_X1 U12 ( .A1(B[3]), .A2(A[3]), .ZN(O[3]) );
  NAND2_X1 U13 ( .A1(A[3]), .A2(A[2]), .ZN(n8) );
  NOR3_X1 U14 ( .A1(n8), .A2(B[7]), .A3(A[5]), .ZN(n9) );
  NAND3_X1 U15 ( .A1(B[2]), .A2(B[3]), .A3(n9), .ZN(O[1]) );
  INV_X1 U16 ( .A(O[1]), .ZN(intadd_0_CI) );
endmodule

