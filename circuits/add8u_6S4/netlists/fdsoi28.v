/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:11:31 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;
  assign O[0] = 1'b1;

  AND2_X1 U11 ( .A1(A[2]), .A2(A[3]), .ZN(n18) );
  NAND2_X1 U12 ( .A1(B[7]), .A2(A[7]), .ZN(n37) );
  AND2_X2 U13 ( .A1(n33), .A2(n30), .ZN(n17) );
  AND2_X2 U14 ( .A1(B[6]), .A2(A[6]), .ZN(n32) );
  NAND2_X2 U15 ( .A1(B[4]), .A2(A[4]), .ZN(n22) );
  AND2_X2 U16 ( .A1(n38), .A2(n37), .ZN(n41) );
  AOI21_X4 U17 ( .B1(n34), .B2(n33), .A(n32), .ZN(n38) );
  OR2_X2 U18 ( .A1(B[7]), .A2(A[7]), .ZN(n39) );
  OR2_X4 U19 ( .A1(B[2]), .A2(A[2]), .ZN(O[2]) );
  OR2_X4 U20 ( .A1(B[3]), .A2(A[3]), .ZN(O[3]) );
  INV_X16 U21 ( .A(A[3]), .ZN(n11) );
  OR2_X4 U22 ( .A1(B[6]), .A2(A[6]), .ZN(n33) );
  NAND4_X4 U23 ( .A1(n12), .A2(n19), .A3(n10), .A4(n8), .ZN(n26) );
  NOR2_X4 U24 ( .A1(n9), .A2(B[7]), .ZN(n8) );
  INV_X16 U25 ( .A(A[2]), .ZN(n9) );
  NOR2_X4 U26 ( .A1(n11), .A2(A[5]), .ZN(n10) );
  OR2_X4 U27 ( .A1(A[4]), .A2(B[4]), .ZN(n19) );
  INV_X2 U28 ( .A(n16), .ZN(n12) );
  NAND2_X4 U29 ( .A1(B[2]), .A2(B[3]), .ZN(n16) );
  NOR3_X1 U30 ( .A1(n16), .A2(B[7]), .A3(A[5]), .ZN(n13) );
  XNOR2_X1 U31 ( .A(n14), .B(O[1]), .ZN(O[4]) );
  AND2_X1 U32 ( .A1(n22), .A2(n19), .ZN(n14) );
  NAND2_X4 U33 ( .A1(n26), .A2(n22), .ZN(n31) );
  NAND2_X2 U34 ( .A1(n15), .A2(n38), .ZN(n36) );
  AOI21_X1 U35 ( .B1(n41), .B2(n15), .A(n40), .ZN(O[8]) );
  NAND2_X4 U36 ( .A1(n31), .A2(n17), .ZN(n15) );
  AND2_X4 U37 ( .A1(A[5]), .A2(B[5]), .ZN(n34) );
  OR2_X4 U38 ( .A1(A[5]), .A2(B[5]), .ZN(n30) );
  NAND2_X1 U39 ( .A1(n13), .A2(n18), .ZN(O[1]) );
  INV_X1 U40 ( .A(n34), .ZN(n20) );
  NAND2_X1 U41 ( .A1(n20), .A2(n30), .ZN(n21) );
  XNOR2_X1 U42 ( .A(n31), .B(n21), .ZN(O[5]) );
  INV_X1 U43 ( .A(n22), .ZN(n23) );
  NOR2_X1 U44 ( .A1(n23), .A2(n34), .ZN(n25) );
  INV_X1 U45 ( .A(n30), .ZN(n24) );
  AOI21_X1 U46 ( .B1(n26), .B2(n25), .A(n24), .ZN(n29) );
  INV_X1 U47 ( .A(n33), .ZN(n27) );
  NOR2_X1 U48 ( .A1(n27), .A2(n32), .ZN(n28) );
  XOR2_X1 U49 ( .A(n29), .B(n28), .Z(O[6]) );
  NAND2_X1 U50 ( .A1(n37), .A2(n39), .ZN(n35) );
  XNOR2_X1 U51 ( .A(n36), .B(n35), .ZN(O[7]) );
  INV_X1 U52 ( .A(n39), .ZN(n40) );
endmodule

