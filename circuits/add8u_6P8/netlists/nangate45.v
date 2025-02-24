/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:01:45 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;

  NAND2_X1 U10 ( .A1(B[4]), .A2(A[4]), .ZN(n13) );
  AND2_X2 U11 ( .A1(A[2]), .A2(B[2]), .ZN(n36) );
  NAND2_X1 U12 ( .A1(B[7]), .A2(A[7]), .ZN(n31) );
  OR2_X1 U13 ( .A1(A[0]), .A2(B[0]), .ZN(O[0]) );
  OR2_X1 U14 ( .A1(B[5]), .A2(A[5]), .ZN(n42) );
  OR2_X4 U15 ( .A1(A[1]), .A2(B[1]), .ZN(O[1]) );
  NAND3_X1 U16 ( .A1(n25), .A2(n42), .A3(n34), .ZN(n29) );
  OR2_X2 U17 ( .A1(B[4]), .A2(A[4]), .ZN(n34) );
  NAND2_X1 U18 ( .A1(n42), .A2(n34), .ZN(n10) );
  OR2_X1 U19 ( .A1(A[5]), .A2(B[5]), .ZN(n12) );
  OR2_X1 U20 ( .A1(B[7]), .A2(A[7]), .ZN(n30) );
  NAND2_X1 U21 ( .A1(n11), .A2(n12), .ZN(n22) );
  NOR2_X1 U22 ( .A1(n44), .A2(n11), .ZN(n35) );
  AND2_X2 U23 ( .A1(A[4]), .A2(B[4]), .ZN(n11) );
  AOI21_X1 U24 ( .B1(n37), .B2(n36), .A(n39), .ZN(n14) );
  AOI21_X1 U25 ( .B1(n37), .B2(n36), .A(n39), .ZN(n15) );
  AOI21_X1 U26 ( .B1(n37), .B2(n36), .A(n39), .ZN(n45) );
  OR2_X2 U27 ( .A1(A[3]), .A2(B[3]), .ZN(n37) );
  AND2_X2 U28 ( .A1(A[3]), .A2(B[3]), .ZN(n39) );
  AND2_X1 U29 ( .A1(B[5]), .A2(A[5]), .ZN(n26) );
  INV_X1 U30 ( .A(n26), .ZN(n43) );
  OAI211_X1 U31 ( .C1(n45), .C2(n10), .A(n22), .B(n43), .ZN(n20) );
  OR2_X1 U32 ( .A1(A[6]), .A2(B[6]), .ZN(n25) );
  AND2_X1 U33 ( .A1(n25), .A2(n30), .ZN(n16) );
  NAND2_X1 U34 ( .A1(n20), .A2(n16), .ZN(n18) );
  AND2_X1 U35 ( .A1(A[6]), .A2(B[6]), .ZN(n24) );
  NAND2_X1 U36 ( .A1(n30), .A2(n24), .ZN(n17) );
  NAND3_X1 U37 ( .A1(n18), .A2(n17), .A3(n31), .ZN(O[8]) );
  INV_X1 U38 ( .A(n24), .ZN(n19) );
  NAND2_X1 U39 ( .A1(n19), .A2(n25), .ZN(n21) );
  XNOR2_X1 U40 ( .A(n20), .B(n21), .ZN(O[6]) );
  NOR2_X1 U41 ( .A1(A[6]), .A2(B[6]), .ZN(n23) );
  OR2_X1 U42 ( .A1(n22), .A2(n23), .ZN(n28) );
  AOI21_X1 U43 ( .B1(n26), .B2(n25), .A(n24), .ZN(n27) );
  OAI211_X1 U44 ( .C1(n29), .C2(n14), .A(n28), .B(n27), .ZN(n33) );
  NAND2_X1 U45 ( .A1(n31), .A2(n30), .ZN(n32) );
  XNOR2_X1 U46 ( .A(n33), .B(n32), .ZN(O[7]) );
  INV_X1 U47 ( .A(n34), .ZN(n44) );
  XNOR2_X1 U48 ( .A(n15), .B(n35), .ZN(O[4]) );
  XOR2_X1 U49 ( .A(A[2]), .B(B[2]), .Z(O[2]) );
  INV_X1 U50 ( .A(n36), .ZN(n41) );
  INV_X1 U51 ( .A(n37), .ZN(n38) );
  NOR2_X1 U52 ( .A1(n39), .A2(n38), .ZN(n40) );
  XNOR2_X1 U53 ( .A(n41), .B(n40), .ZN(O[3]) );
  NAND2_X1 U54 ( .A1(n43), .A2(n42), .ZN(n47) );
  OAI21_X1 U55 ( .B1(n15), .B2(n44), .A(n13), .ZN(n46) );
  XNOR2_X1 U56 ( .A(n47), .B(n46), .ZN(O[5]) );
endmodule

