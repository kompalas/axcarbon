/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:07:16 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;
  assign O[0] = 1'b1;

  AND2_X2 U12 ( .A1(A[3]), .A2(B[3]), .ZN(n36) );
  NAND4_X1 U13 ( .A1(B[1]), .A2(B[2]), .A3(A[1]), .A4(A[2]), .ZN(n33) );
  NAND2_X1 U14 ( .A1(A[5]), .A2(B[5]), .ZN(n9) );
  INV_X1 U15 ( .A(A[3]), .ZN(n34) );
  OR2_X1 U16 ( .A1(B[1]), .A2(A[1]), .ZN(O[1]) );
  OR2_X4 U17 ( .A1(B[2]), .A2(A[2]), .ZN(O[2]) );
  NAND2_X4 U18 ( .A1(A[7]), .A2(B[7]), .ZN(n27) );
  AND2_X1 U19 ( .A1(n20), .A2(n8), .ZN(n23) );
  OAI21_X1 U20 ( .B1(B[6]), .B2(A[6]), .A(n30), .ZN(n8) );
  NAND2_X1 U21 ( .A1(A[6]), .A2(B[6]), .ZN(n20) );
  OR2_X1 U22 ( .A1(A[7]), .A2(B[7]), .ZN(n26) );
  AND2_X1 U23 ( .A1(A[5]), .A2(B[5]), .ZN(n10) );
  AND2_X1 U24 ( .A1(A[5]), .A2(B[5]), .ZN(n30) );
  OR2_X1 U25 ( .A1(A[6]), .A2(B[6]), .ZN(n11) );
  AOI21_X1 U26 ( .B1(n36), .B2(n37), .A(n39), .ZN(n12) );
  AOI21_X1 U27 ( .B1(n36), .B2(n37), .A(n39), .ZN(n32) );
  NAND2_X1 U28 ( .A1(n11), .A2(n10), .ZN(n13) );
  AND2_X1 U29 ( .A1(n13), .A2(n20), .ZN(n14) );
  OAI21_X1 U30 ( .B1(n19), .B2(n32), .A(n9), .ZN(n22) );
  OR3_X1 U31 ( .A1(n18), .A2(n25), .A3(n32), .ZN(n15) );
  OR2_X1 U32 ( .A1(n14), .A2(n18), .ZN(n16) );
  NOR2_X1 U33 ( .A1(A[5]), .A2(B[5]), .ZN(n19) );
  INV_X1 U34 ( .A(n26), .ZN(n18) );
  NOR2_X1 U35 ( .A1(A[6]), .A2(B[6]), .ZN(n17) );
  OR2_X1 U36 ( .A1(n19), .A2(n17), .ZN(n25) );
  OR2_X2 U37 ( .A1(B[4]), .A2(A[4]), .ZN(n37) );
  AND2_X2 U38 ( .A1(B[4]), .A2(A[4]), .ZN(n39) );
  NAND3_X1 U39 ( .A1(n15), .A2(n16), .A3(n27), .ZN(O[8]) );
  NAND2_X1 U40 ( .A1(n20), .A2(n11), .ZN(n21) );
  XNOR2_X1 U41 ( .A(n22), .B(n21), .ZN(O[6]) );
  BUF_X1 U42 ( .A(n12), .Z(n24) );
  OAI21_X1 U43 ( .B1(n25), .B2(n12), .A(n23), .ZN(n29) );
  NAND2_X1 U44 ( .A1(n27), .A2(n26), .ZN(n28) );
  XNOR2_X1 U45 ( .A(n29), .B(n28), .ZN(O[7]) );
  NOR2_X1 U46 ( .A1(n10), .A2(n19), .ZN(n31) );
  XNOR2_X1 U47 ( .A(n24), .B(n31), .ZN(O[5]) );
  NAND2_X1 U48 ( .A1(n33), .A2(n34), .ZN(n35) );
  MUX2_X1 U49 ( .A(n35), .B(n34), .S(B[3]), .Z(O[3]) );
  INV_X1 U50 ( .A(n36), .ZN(n41) );
  INV_X1 U51 ( .A(n37), .ZN(n38) );
  NOR2_X1 U52 ( .A1(n39), .A2(n38), .ZN(n40) );
  XNOR2_X1 U53 ( .A(n41), .B(n40), .ZN(O[4]) );
endmodule

