/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:15:47 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33;
  assign O[4] = A[4];
  assign O[2] = A[3];
  assign O[1] = A[2];
  assign O[0] = B[0];

  NAND2_X1 U5 ( .A1(n15), .A2(O[3]), .ZN(n29) );
  NAND2_X1 U6 ( .A1(A[7]), .A2(B[7]), .ZN(n22) );
  INV_X8 U7 ( .I(B[7]), .ZN(n19) );
  NAND2_X1 U8 ( .A1(A[5]), .A2(B[4]), .ZN(n11) );
  AND2_X2 U9 ( .A1(A[5]), .A2(B[4]), .Z(n4) );
  NOR2_X1 U10 ( .A1(A[6]), .A2(B[6]), .ZN(n16) );
  NAND2_X1 U11 ( .A1(B[6]), .A2(A[6]), .ZN(n12) );
  INV_X2 U12 ( .I(A[6]), .ZN(n8) );
  NAND2_X2 U13 ( .A1(n15), .A2(O[3]), .ZN(n5) );
  NAND2_X2 U14 ( .A1(n15), .A2(O[3]), .ZN(n6) );
  INV_X8 U15 ( .I(A[5]), .ZN(n15) );
  AOI22_X1 U16 ( .A1(n18), .A2(n29), .B1(n17), .B2(n7), .ZN(n13) );
  NAND2_X2 U17 ( .A1(n8), .A2(n9), .ZN(n7) );
  INV_X12 U18 ( .I(B[6]), .ZN(n9) );
  AOI21_X1 U19 ( .A1(n5), .A2(B[5]), .B(n4), .ZN(n10) );
  NAND2_X1 U20 ( .A1(n28), .A2(n31), .ZN(n17) );
  XNOR2_X1 U21 ( .A1(n13), .A2(n21), .ZN(O[7]) );
  NAND2_X2 U22 ( .A1(B[6]), .A2(A[6]), .ZN(n31) );
  NAND2_X2 U23 ( .A1(A[5]), .A2(B[4]), .ZN(n28) );
  AOI21_X2 U24 ( .A1(n5), .A2(B[5]), .B(n4), .ZN(n32) );
  INV_X12 U25 ( .I(B[4]), .ZN(O[3]) );
  INV_X1 U26 ( .I(B[5]), .ZN(n14) );
  NOR2_X1 U27 ( .A1(n14), .A2(n16), .ZN(n18) );
  INV_X2 U28 ( .I(A[7]), .ZN(n20) );
  NAND2_X2 U29 ( .A1(n20), .A2(n19), .ZN(n24) );
  AND2_X1 U30 ( .A1(n24), .A2(n22), .Z(n21) );
  NAND2_X1 U31 ( .A1(n24), .A2(n7), .ZN(n27) );
  AND2_X1 U32 ( .A1(B[6]), .A2(A[6]), .Z(n25) );
  INV_X1 U33 ( .I(n22), .ZN(n23) );
  AOI21_X1 U34 ( .A1(n25), .A2(n24), .B(n23), .ZN(n26) );
  OAI21_X1 U35 ( .A1(n27), .A2(n10), .B(n26), .ZN(O[8]) );
  NAND2_X1 U36 ( .A1(n6), .A2(n11), .ZN(n30) );
  XNOR2_X1 U37 ( .A1(n30), .A2(B[5]), .ZN(O[5]) );
  NAND2_X1 U38 ( .A1(n12), .A2(n7), .ZN(n33) );
  XOR2_X1 U39 ( .A1(n33), .A2(n32), .Z(O[6]) );
endmodule

