/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:20:19 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_CI, intadd_0_n4, intadd_0_n3, intadd_0_n2, n8, n9, n10;
  assign O[0] = 1'b1;

  FA_X1 intadd_0_U5 ( .A(B[4]), .B(A[4]), .CI(intadd_0_CI), .CO(intadd_0_n4), 
        .S(O[4]) );
  FA_X1 intadd_0_U4 ( .A(B[5]), .B(A[5]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(O[5]) );
  FA_X1 intadd_0_U3 ( .A(A[6]), .B(B[6]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[6]) );
  FA_X1 intadd_0_U2 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n2), .CO(O[8]), .S(O[7]) );
  INV_X1 U11 ( .I(A[2]), .ZN(n9) );
  INV_X1 U12 ( .I(A[3]), .ZN(n8) );
  NOR4_X1 U13 ( .A1(B[7]), .A2(A[5]), .A3(n9), .A4(n8), .ZN(n10) );
  NAND3_X1 U14 ( .A1(B[2]), .A2(B[3]), .A3(n10), .ZN(O[1]) );
  INV_X1 U15 ( .I(O[1]), .ZN(intadd_0_CI) );
  OR2_X1 U16 ( .A1(B[3]), .A2(A[3]), .Z(O[3]) );
  OR2_X1 U17 ( .A1(B[2]), .A2(A[2]), .Z(O[2]) );
endmodule

