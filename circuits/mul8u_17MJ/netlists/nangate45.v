/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:31:13 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4, n5, n6, n7;
  assign O[0] = 1'b0;
  assign O[1] = 1'b0;
  assign O[2] = 1'b0;
  assign O[3] = 1'b0;
  assign O[4] = 1'b0;
  assign O[5] = 1'b0;
  assign O[6] = 1'b0;
  assign O[8] = 1'b0;
  assign O[9] = 1'b0;
  assign O[10] = 1'b0;
  assign O[11] = O[12];
  assign O[7] = O[12];

  AND2_X1 U9 ( .A1(A[5]), .A2(B[5]), .ZN(O[12]) );
  AND2_X4 U10 ( .A1(A[7]), .A2(B[7]), .ZN(O[13]) );
  AND2_X1 U11 ( .A1(n3), .A2(n7), .ZN(O[14]) );
  NAND3_X1 U12 ( .A1(n6), .A2(n5), .A3(n4), .ZN(n3) );
  NAND2_X1 U13 ( .A1(B[7]), .A2(A[6]), .ZN(n4) );
  OAI211_X1 U14 ( .C1(A[6]), .C2(B[6]), .A(B[7]), .B(A[7]), .ZN(n7) );
  INV_X1 U15 ( .A(n7), .ZN(O[15]) );
  NAND2_X1 U16 ( .A1(A[7]), .A2(B[7]), .ZN(n6) );
  NAND2_X1 U17 ( .A1(B[6]), .A2(A[7]), .ZN(n5) );
endmodule

