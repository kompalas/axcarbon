/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:12:47 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50;
  assign O[0] = 1'b1;

  AND2_X2 U11 ( .A1(B[4]), .A2(A[4]), .ZN(n44) );
  OR2_X1 U12 ( .A1(B[2]), .A2(A[2]), .ZN(O[2]) );
  CLKBUF_X1 U13 ( .A(B[7]), .Z(n14) );
  NOR2_X4 U14 ( .A1(B[4]), .A2(A[4]), .ZN(n43) );
  OR2_X4 U15 ( .A1(B[3]), .A2(A[3]), .ZN(O[3]) );
  OR2_X2 U16 ( .A1(A[5]), .A2(B[5]), .ZN(n28) );
  AND3_X2 U17 ( .A1(n26), .A2(n25), .A3(n24), .ZN(n38) );
  INV_X1 U18 ( .A(B[7]), .ZN(n8) );
  AND2_X1 U19 ( .A1(n8), .A2(B[2]), .ZN(n23) );
  INV_X1 U20 ( .A(A[5]), .ZN(n9) );
  AND2_X1 U21 ( .A1(n9), .A2(B[3]), .ZN(n10) );
  AND4_X2 U22 ( .A1(n23), .A2(n10), .A3(A[3]), .A4(A[2]), .ZN(n13) );
  BUF_X1 U23 ( .A(n13), .Z(n11) );
  INV_X1 U24 ( .A(n11), .ZN(O[1]) );
  OR2_X1 U25 ( .A1(B[4]), .A2(A[4]), .ZN(n24) );
  OR2_X1 U26 ( .A1(B[6]), .A2(A[6]), .ZN(n20) );
  AND2_X1 U27 ( .A1(n24), .A2(n20), .ZN(n12) );
  OAI211_X1 U28 ( .C1(n13), .C2(n44), .A(n12), .B(n28), .ZN(n48) );
  AND2_X1 U29 ( .A1(A[5]), .A2(B[5]), .ZN(n40) );
  AND2_X1 U30 ( .A1(B[6]), .A2(A[6]), .ZN(n18) );
  AOI21_X1 U31 ( .B1(n40), .B2(n20), .A(n18), .ZN(n47) );
  NAND2_X1 U32 ( .A1(n48), .A2(n47), .ZN(n16) );
  OR2_X1 U33 ( .A1(n14), .A2(A[7]), .ZN(n50) );
  NAND2_X1 U34 ( .A1(n14), .A2(A[7]), .ZN(n46) );
  NAND2_X1 U35 ( .A1(n50), .A2(n46), .ZN(n15) );
  XNOR2_X1 U36 ( .A(n16), .B(n15), .ZN(O[7]) );
  NAND2_X1 U37 ( .A1(n28), .A2(n44), .ZN(n17) );
  INV_X1 U38 ( .A(n40), .ZN(n32) );
  NAND2_X1 U39 ( .A1(n17), .A2(n32), .ZN(n19) );
  INV_X1 U40 ( .A(n18), .ZN(n21) );
  NAND2_X1 U41 ( .A1(n21), .A2(n20), .ZN(n34) );
  OR2_X1 U42 ( .A1(n19), .A2(n34), .ZN(n31) );
  AND2_X1 U43 ( .A1(n21), .A2(n20), .ZN(n27) );
  INV_X1 U44 ( .A(n28), .ZN(n39) );
  OR2_X1 U45 ( .A1(n27), .A2(n39), .ZN(n30) );
  INV_X1 U46 ( .A(A[5]), .ZN(n22) );
  AND2_X1 U47 ( .A1(n23), .A2(n22), .ZN(n26) );
  AND3_X1 U48 ( .A1(B[3]), .A2(A[3]), .A3(A[2]), .ZN(n25) );
  AND2_X1 U49 ( .A1(n28), .A2(n27), .ZN(n29) );
  AOI22_X1 U50 ( .A1(n31), .A2(n30), .B1(n38), .B2(n29), .ZN(n37) );
  INV_X1 U51 ( .A(n38), .ZN(n35) );
  INV_X1 U52 ( .A(n44), .ZN(n33) );
  NAND4_X1 U53 ( .A1(n35), .A2(n34), .A3(n33), .A4(n32), .ZN(n36) );
  AND2_X1 U54 ( .A1(n37), .A2(n36), .ZN(O[6]) );
  NOR2_X1 U55 ( .A1(n38), .A2(n44), .ZN(n42) );
  NOR2_X1 U56 ( .A1(n40), .A2(n39), .ZN(n41) );
  XNOR2_X1 U57 ( .A(n42), .B(n41), .ZN(O[5]) );
  NOR2_X1 U58 ( .A1(n44), .A2(n43), .ZN(n45) );
  XNOR2_X1 U59 ( .A(n45), .B(O[1]), .ZN(O[4]) );
  NAND3_X1 U60 ( .A1(n48), .A2(n47), .A3(n46), .ZN(n49) );
  AND2_X1 U61 ( .A1(n50), .A2(n49), .ZN(O[8]) );
endmodule

