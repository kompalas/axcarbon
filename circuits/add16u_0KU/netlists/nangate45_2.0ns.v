/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:25:20 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , intadd_0_n3, intadd_0_n2, intadd_0_n1, n11, n12, n13;
  assign O[5] = A[10];
  assign O[1] = A[6];
  assign O[10] = A[6];
  assign O[11] = A[11];
  assign O[8] = B[6];
  assign O[7] = B[9];
  assign O[4] = B[12];
  assign O[2] = B[7];
  assign O[0] = B[13];
  assign O[3] = \O[3] ;
  assign O[9] = \O[3] ;

  FA_X1 intadd_0_U4 ( .A(A[12]), .B(B[11]), .CI(B[12]), .CO(intadd_0_n3), .S(
        O[12]) );
  FA_X1 intadd_0_U3 ( .A(B[13]), .B(A[13]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[13]) );
  FA_X1 intadd_0_U2 ( .A(B[14]), .B(A[14]), .CI(intadd_0_n2), .CO(intadd_0_n1), 
        .S(O[14]) );
  XOR2_X1 U11 ( .A(A[15]), .B(B[15]), .Z(O[6]) );
  NAND2_X1 U12 ( .A1(O[6]), .A2(intadd_0_n1), .ZN(n12) );
  INV_X1 U13 ( .A(n12), .ZN(\O[3] ) );
  OAI21_X1 U14 ( .B1(O[6]), .B2(intadd_0_n1), .A(n12), .ZN(n11) );
  INV_X1 U15 ( .A(n11), .ZN(O[15]) );
  NAND2_X1 U16 ( .A1(A[15]), .A2(B[15]), .ZN(n13) );
  NAND2_X1 U17 ( .A1(n13), .A2(n12), .ZN(O[16]) );
endmodule

