/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:27:53 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4, n5;
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
  assign O[7] = O[12];
  assign O[11] = O[12];

  NAND2_X1 U9 ( .A1(B[7]), .A2(A[7]), .ZN(n4) );
  INV_X1 U10 ( .I(n4), .ZN(O[13]) );
  NOR2_X1 U11 ( .A1(B[6]), .A2(A[6]), .ZN(n3) );
  NOR2_X1 U12 ( .A1(n4), .A2(n3), .ZN(O[15]) );
  AOI22_X1 U13 ( .A1(B[7]), .A2(A[6]), .B1(A[7]), .B2(B[6]), .ZN(n5) );
  AOI21_X1 U14 ( .A1(n5), .A2(n4), .B(O[15]), .ZN(O[14]) );
  AND2_X1 U16 ( .A1(A[5]), .A2(B[5]), .Z(O[12]) );
endmodule

