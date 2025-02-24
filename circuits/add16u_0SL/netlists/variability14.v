/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:29:08 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26;
  assign O[13] = 1'b0;
  assign O[1] = O[15];
  assign O[5] = O[8];
  assign O[9] = A[15];
  assign O[6] = A[3];
  assign O[3] = A[6];
  assign O[2] = A[7];
  assign O[0] = A[9];
  assign O[12] = A[9];
  assign O[11] = B[11];
  assign O[10] = B[10];
  assign O[4] = B[12];

  INV_X1 U12 ( .I(B[15]), .ZN(n23) );
  INV_X1 U13 ( .I(A[15]), .ZN(n24) );
  INV_X1 U14 ( .I(A[13]), .ZN(n11) );
  AOI22_X2 U15 ( .A1(n13), .A2(n21), .B1(n12), .B2(n11), .ZN(n15) );
  INV_X2 U16 ( .I(A[14]), .ZN(n21) );
  INV_X1 U17 ( .I(B[14]), .ZN(n22) );
  NAND2_X1 U18 ( .A1(n22), .A2(n21), .ZN(n17) );
  AND2_X1 U19 ( .A1(B[14]), .A2(A[14]), .Z(n10) );
  XNOR2_X1 U20 ( .A1(B[14]), .A2(A[14]), .ZN(n8) );
  NAND2_X1 U21 ( .A1(n18), .A2(n19), .ZN(O[8]) );
  AND2_X2 U22 ( .A1(n18), .A2(n19), .Z(n9) );
  NOR2_X1 U23 ( .A1(n9), .A2(n8), .ZN(O[7]) );
  XOR2_X1 U24 ( .A1(n20), .A2(n9), .Z(O[14]) );
  NOR2_X2 U25 ( .A1(B[13]), .A2(B[14]), .ZN(n12) );
  OAI21_X2 U26 ( .A1(A[13]), .A2(B[13]), .B(B[14]), .ZN(n13) );
  INV_X2 U27 ( .I(A[13]), .ZN(n19) );
  INV_X2 U28 ( .I(B[13]), .ZN(n18) );
  XNOR2_X1 U29 ( .A1(n15), .A2(n14), .ZN(O[15]) );
  XNOR2_X1 U30 ( .A1(A[15]), .A2(B[15]), .ZN(n14) );
  NOR2_X1 U31 ( .A1(n10), .A2(O[8]), .ZN(n25) );
  XNOR2_X1 U32 ( .A1(B[14]), .A2(A[14]), .ZN(n20) );
  OAI21_X1 U33 ( .A1(A[15]), .A2(B[15]), .B(n17), .ZN(n26) );
  OAI22_X1 U34 ( .A1(n26), .A2(n25), .B1(n24), .B2(n23), .ZN(O[16]) );
endmodule

