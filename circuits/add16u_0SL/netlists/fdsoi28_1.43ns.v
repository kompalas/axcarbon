/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:26:44 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n8, n9, n10, n11, n12;
  assign O[13] = 1'b0;
  assign O[8] = O[5];
  assign O[1] = O[15];
  assign O[9] = A[15];
  assign O[6] = A[3];
  assign O[3] = A[6];
  assign O[2] = A[7];
  assign O[0] = A[9];
  assign O[12] = A[9];
  assign O[11] = B[11];
  assign O[10] = B[10];
  assign O[4] = B[12];

  NOR2_X1 U12 ( .A1(A[13]), .A2(B[13]), .ZN(n12) );
  INV_X1 U13 ( .A(n12), .ZN(O[5]) );
  NAND2_X1 U14 ( .A1(A[14]), .A2(B[14]), .ZN(n9) );
  OAI21_X1 U15 ( .B1(A[14]), .B2(B[14]), .A(n9), .ZN(n11) );
  NOR2_X1 U16 ( .A1(n12), .A2(n11), .ZN(O[7]) );
  INV_X1 U18 ( .A(O[7]), .ZN(n8) );
  NAND2_X1 U19 ( .A1(n9), .A2(n8), .ZN(n10) );
  FA_X1 U20 ( .A(B[15]), .B(A[15]), .CI(n10), .CO(O[16]), .S(O[15]) );
  AOI21_X1 U21 ( .B1(n12), .B2(n11), .A(O[7]), .ZN(O[14]) );
endmodule

