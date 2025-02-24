/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:22:27 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   intadd_0_n3, intadd_0_n2;
  assign O[4] = A[4];
  assign O[2] = A[3];
  assign O[1] = A[2];
  assign O[0] = B[0];

  FA_X1 intadd_0_U4 ( .A(B[4]), .B(A[5]), .CI(B[5]), .CO(intadd_0_n3), .S(O[5]) );
  FA_X1 intadd_0_U3 ( .A(B[6]), .B(A[6]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(O[6]) );
  FA_X1 intadd_0_U2 ( .A(B[7]), .B(A[7]), .CI(intadd_0_n2), .CO(O[8]), .S(O[7]) );
  INV_X1 U5 ( .A(B[4]), .ZN(O[3]) );
endmodule

