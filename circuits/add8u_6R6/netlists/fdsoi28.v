/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:17:01 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  assign O[4] = A[4];
  assign O[2] = A[3];
  assign O[1] = A[2];
  assign O[0] = B[0];

  NAND2_X1 U5 ( .A1(n25), .A2(n7), .ZN(n18) );
  NAND2_X1 U6 ( .A1(n28), .A2(n26), .ZN(n23) );
  NAND2_X2 U7 ( .A1(B[7]), .A2(A[7]), .ZN(n28) );
  INV_X8 U8 ( .A(A[6]), .ZN(n17) );
  INV_X1 U9 ( .A(B[5]), .ZN(n14) );
  INV_X4 U10 ( .A(B[4]), .ZN(O[3]) );
  NAND2_X4 U11 ( .A1(A[6]), .A2(B[6]), .ZN(n7) );
  INV_X8 U12 ( .A(A[7]), .ZN(n9) );
  INV_X8 U13 ( .A(B[7]), .ZN(n8) );
  INV_X4 U14 ( .A(n25), .ZN(n21) );
  INV_X1 U15 ( .A(n7), .ZN(n11) );
  NAND3_X1 U16 ( .A1(n4), .A2(n26), .A3(n25), .ZN(n29) );
  XNOR2_X1 U17 ( .A(n4), .B(n18), .ZN(O[6]) );
  NAND2_X2 U18 ( .A1(n22), .A2(n20), .ZN(n4) );
  INV_X2 U19 ( .A(A[5]), .ZN(n6) );
  OAI21_X4 U20 ( .B1(B[4]), .B2(A[5]), .A(B[5]), .ZN(n22) );
  AND2_X4 U21 ( .A1(n6), .A2(O[3]), .ZN(n5) );
  NAND2_X4 U22 ( .A1(n8), .A2(n9), .ZN(n26) );
  AND2_X4 U23 ( .A1(A[5]), .A2(B[4]), .ZN(n10) );
  XNOR2_X1 U24 ( .A(n15), .B(n14), .ZN(O[5]) );
  NOR2_X4 U25 ( .A1(n5), .A2(n10), .ZN(n15) );
  INV_X4 U26 ( .A(n13), .ZN(n12) );
  NAND2_X4 U27 ( .A1(n20), .A2(n19), .ZN(n13) );
  NAND2_X4 U28 ( .A1(A[5]), .A2(B[4]), .ZN(n20) );
  INV_X16 U29 ( .A(B[6]), .ZN(n16) );
  NAND2_X4 U30 ( .A1(n17), .A2(n16), .ZN(n25) );
  NAND2_X4 U31 ( .A1(B[6]), .A2(A[6]), .ZN(n19) );
  AOI21_X4 U32 ( .B1(n12), .B2(n22), .A(n21), .ZN(n24) );
  XNOR2_X1 U33 ( .A(n24), .B(n23), .ZN(O[7]) );
  NAND2_X1 U34 ( .A1(n11), .A2(n26), .ZN(n27) );
  NAND3_X1 U35 ( .A1(n29), .A2(n28), .A3(n27), .ZN(O[8]) );
endmodule

