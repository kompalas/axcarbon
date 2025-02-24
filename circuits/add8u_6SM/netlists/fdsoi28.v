/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:05:59 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35;
  assign O[0] = 1'b1;

  XNOR2_X1 U12 ( .A(n23), .B(n8), .ZN(O[6]) );
  NOR2_X1 U13 ( .A1(A[7]), .A2(B[7]), .ZN(n34) );
  NAND2_X2 U14 ( .A1(B[6]), .A2(A[6]), .ZN(n26) );
  INV_X4 U15 ( .A(n27), .ZN(n20) );
  AND2_X1 U16 ( .A1(n24), .A2(n26), .ZN(n8) );
  INV_X8 U17 ( .A(A[3]), .ZN(n12) );
  AND2_X2 U18 ( .A1(A[7]), .A2(B[7]), .ZN(n32) );
  OR2_X4 U19 ( .A1(B[2]), .A2(A[2]), .ZN(O[2]) );
  OR2_X4 U20 ( .A1(B[1]), .A2(A[1]), .ZN(O[1]) );
  NAND4_X2 U21 ( .A1(B[1]), .A2(B[2]), .A3(A[1]), .A4(A[2]), .ZN(n11) );
  NOR2_X4 U22 ( .A1(n9), .A2(n25), .ZN(n29) );
  OAI21_X4 U23 ( .B1(n30), .B2(n20), .A(n19), .ZN(n23) );
  AOI21_X4 U24 ( .B1(n30), .B2(n29), .A(n28), .ZN(n35) );
  OAI21_X4 U25 ( .B1(n9), .B2(n27), .A(n26), .ZN(n28) );
  INV_X4 U26 ( .A(n24), .ZN(n9) );
  NOR2_X1 U27 ( .A1(n10), .A2(n16), .ZN(n17) );
  OAI21_X4 U28 ( .B1(n10), .B2(n18), .A(n15), .ZN(n30) );
  NOR2_X4 U29 ( .A1(B[4]), .A2(A[4]), .ZN(n10) );
  MUX2_X2 U30 ( .A(n13), .B(n12), .S(B[3]), .Z(O[3]) );
  NAND2_X1 U31 ( .A1(n11), .A2(n12), .ZN(n13) );
  NAND2_X4 U32 ( .A1(A[3]), .A2(B[3]), .ZN(n18) );
  NAND2_X4 U33 ( .A1(B[4]), .A2(A[4]), .ZN(n15) );
  NAND2_X4 U34 ( .A1(A[5]), .A2(B[5]), .ZN(n27) );
  NOR2_X4 U35 ( .A1(A[5]), .A2(B[5]), .ZN(n25) );
  NOR2_X1 U36 ( .A1(n20), .A2(n25), .ZN(n14) );
  XOR2_X1 U37 ( .A(n30), .B(n14), .Z(O[5]) );
  INV_X1 U38 ( .A(n15), .ZN(n16) );
  XNOR2_X1 U39 ( .A(n18), .B(n17), .ZN(O[4]) );
  INV_X1 U40 ( .A(n25), .ZN(n19) );
  INV_X8 U41 ( .A(A[6]), .ZN(n22) );
  INV_X16 U42 ( .A(B[6]), .ZN(n21) );
  NAND2_X4 U43 ( .A1(n22), .A2(n21), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n34), .A2(n32), .ZN(n31) );
  XNOR2_X1 U45 ( .A(n35), .B(n31), .ZN(O[7]) );
  INV_X1 U46 ( .A(n32), .ZN(n33) );
  OAI21_X1 U47 ( .B1(n35), .B2(n34), .A(n33), .ZN(O[8]) );
endmodule

