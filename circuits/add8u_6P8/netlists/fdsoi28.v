/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:00:27 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  NOR2_X1 U10 ( .A1(n48), .A2(n47), .ZN(n49) );
  OAI21_X1 U11 ( .B1(n48), .B2(n41), .A(n20), .ZN(n21) );
  INV_X2 U12 ( .A(n36), .ZN(n38) );
  INV_X8 U13 ( .A(B[6]), .ZN(n14) );
  INV_X4 U14 ( .A(n42), .ZN(n29) );
  NAND2_X4 U15 ( .A1(B[4]), .A2(A[4]), .ZN(n42) );
  AND2_X2 U16 ( .A1(A[7]), .A2(B[7]), .ZN(n47) );
  INV_X1 U17 ( .A(n39), .ZN(n17) );
  NAND2_X4 U18 ( .A1(B[2]), .A2(A[2]), .ZN(n16) );
  NAND3_X2 U19 ( .A1(n10), .A2(n41), .A3(n42), .ZN(n43) );
  INV_X2 U20 ( .A(n40), .ZN(n10) );
  AND2_X4 U21 ( .A1(B[5]), .A2(A[5]), .ZN(n40) );
  AOI21_X4 U22 ( .B1(n17), .B2(n29), .A(n40), .ZN(n18) );
  NOR2_X2 U23 ( .A1(n37), .A2(n38), .ZN(n45) );
  NAND2_X4 U24 ( .A1(n12), .A2(n11), .ZN(n24) );
  NAND2_X4 U25 ( .A1(n14), .A2(n13), .ZN(n36) );
  INV_X1 U26 ( .A(n16), .ZN(n27) );
  INV_X16 U27 ( .A(A[3]), .ZN(n11) );
  INV_X16 U28 ( .A(B[3]), .ZN(n12) );
  OR2_X4 U29 ( .A1(n30), .A2(n39), .ZN(n37) );
  INV_X16 U30 ( .A(A[6]), .ZN(n13) );
  NAND2_X1 U31 ( .A1(n25), .A2(n24), .ZN(n26) );
  OAI21_X4 U32 ( .B1(n31), .B2(n37), .A(n18), .ZN(n35) );
  NOR2_X4 U33 ( .A1(A[7]), .A2(B[7]), .ZN(n48) );
  NAND2_X4 U34 ( .A1(A[6]), .A2(B[6]), .ZN(n41) );
  NOR2_X4 U35 ( .A1(A[5]), .A2(B[5]), .ZN(n39) );
  INV_X4 U36 ( .A(n24), .ZN(n15) );
  NAND2_X4 U37 ( .A1(A[3]), .A2(B[3]), .ZN(n25) );
  OAI21_X4 U38 ( .B1(n16), .B2(n15), .A(n25), .ZN(n46) );
  INV_X4 U39 ( .A(n46), .ZN(n31) );
  NOR2_X4 U40 ( .A1(B[4]), .A2(A[4]), .ZN(n30) );
  INV_X1 U41 ( .A(n48), .ZN(n19) );
  AND2_X4 U42 ( .A1(n19), .A2(n36), .ZN(n22) );
  INV_X1 U43 ( .A(n47), .ZN(n20) );
  AOI21_X2 U44 ( .B1(n35), .B2(n22), .A(n21), .ZN(n23) );
  INV_X1 U45 ( .A(n23), .ZN(O[8]) );
  OR2_X4 U46 ( .A1(A[0]), .A2(B[0]), .ZN(O[0]) );
  OR2_X4 U47 ( .A1(A[1]), .A2(B[1]), .ZN(O[1]) );
  XOR2_X2 U48 ( .A(A[2]), .B(B[2]), .Z(O[2]) );
  XNOR2_X1 U49 ( .A(n27), .B(n26), .ZN(O[3]) );
  NOR2_X1 U50 ( .A1(n30), .A2(n29), .ZN(n28) );
  XNOR2_X1 U51 ( .A(n31), .B(n28), .ZN(O[4]) );
  OAI21_X2 U52 ( .B1(n31), .B2(n30), .A(n42), .ZN(n33) );
  OR2_X1 U53 ( .A1(n40), .A2(n39), .ZN(n32) );
  XNOR2_X1 U54 ( .A(n33), .B(n32), .ZN(O[5]) );
  NAND2_X1 U55 ( .A1(n41), .A2(n36), .ZN(n34) );
  XNOR2_X1 U56 ( .A(n35), .B(n34), .ZN(O[6]) );
  AOI21_X1 U57 ( .B1(n39), .B2(n41), .A(n38), .ZN(n44) );
  AOI22_X1 U58 ( .A1(n45), .A2(n46), .B1(n43), .B2(n44), .ZN(n50) );
  XNOR2_X1 U59 ( .A(n50), .B(n49), .ZN(O[7]) );
endmodule

