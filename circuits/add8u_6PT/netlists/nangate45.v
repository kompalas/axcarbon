/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:56:10 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55;

  NAND2_X1 U10 ( .A1(A[6]), .A2(B[6]), .ZN(n27) );
  NOR2_X1 U11 ( .A1(B[2]), .A2(A[2]), .ZN(n45) );
  NAND2_X1 U12 ( .A1(A[1]), .A2(B[1]), .ZN(n47) );
  OR2_X1 U13 ( .A1(A[0]), .A2(B[0]), .ZN(O[0]) );
  NAND2_X4 U14 ( .A1(B[7]), .A2(A[7]), .ZN(n35) );
  AND2_X1 U15 ( .A1(B[3]), .A2(A[3]), .ZN(n50) );
  OR2_X1 U16 ( .A1(A[4]), .A2(B[4]), .ZN(n8) );
  OR2_X1 U17 ( .A1(B[7]), .A2(A[7]), .ZN(n36) );
  OR2_X1 U18 ( .A1(A[4]), .A2(B[4]), .ZN(n7) );
  AND2_X1 U19 ( .A1(n20), .A2(n27), .ZN(n34) );
  OAI21_X1 U20 ( .B1(n44), .B2(n15), .A(n14), .ZN(n9) );
  AND2_X2 U21 ( .A1(A[1]), .A2(B[1]), .ZN(n15) );
  NAND2_X1 U22 ( .A1(n8), .A2(n50), .ZN(n10) );
  AND2_X2 U23 ( .A1(A[2]), .A2(B[2]), .ZN(n44) );
  OAI21_X1 U24 ( .B1(n44), .B2(n15), .A(n14), .ZN(n11) );
  OAI21_X1 U25 ( .B1(n44), .B2(n15), .A(n14), .ZN(n52) );
  OR2_X2 U26 ( .A1(B[2]), .A2(A[2]), .ZN(n14) );
  OAI211_X1 U27 ( .C1(n52), .C2(n17), .A(n16), .B(n49), .ZN(n12) );
  OR2_X1 U28 ( .A1(n21), .A2(n34), .ZN(n13) );
  OR2_X2 U29 ( .A1(A[4]), .A2(B[4]), .ZN(n48) );
  OR2_X1 U30 ( .A1(A[3]), .A2(B[3]), .ZN(n23) );
  NAND2_X1 U31 ( .A1(n48), .A2(n23), .ZN(n17) );
  NAND2_X1 U32 ( .A1(A[4]), .A2(B[4]), .ZN(n49) );
  NAND2_X1 U33 ( .A1(n7), .A2(n50), .ZN(n16) );
  OAI211_X1 U34 ( .C1(n11), .C2(n17), .A(n10), .B(n49), .ZN(n41) );
  INV_X1 U35 ( .A(n36), .ZN(n21) );
  OR2_X1 U36 ( .A1(A[5]), .A2(B[5]), .ZN(n39) );
  OR2_X1 U37 ( .A1(A[6]), .A2(B[6]), .ZN(n28) );
  NAND2_X1 U38 ( .A1(n39), .A2(n28), .ZN(n31) );
  NOR2_X1 U39 ( .A1(n21), .A2(n31), .ZN(n18) );
  AND2_X1 U40 ( .A1(n12), .A2(n18), .ZN(n19) );
  INV_X1 U41 ( .A(n19), .ZN(n22) );
  AND2_X1 U42 ( .A1(A[5]), .A2(B[5]), .ZN(n25) );
  NAND2_X1 U43 ( .A1(n28), .A2(n25), .ZN(n20) );
  NAND3_X1 U44 ( .A1(n22), .A2(n13), .A3(n35), .ZN(O[8]) );
  INV_X1 U45 ( .A(n23), .ZN(n53) );
  NOR2_X1 U46 ( .A1(n50), .A2(n53), .ZN(n24) );
  XNOR2_X1 U47 ( .A(n9), .B(n24), .ZN(O[3]) );
  NAND2_X1 U48 ( .A1(n41), .A2(n39), .ZN(n26) );
  INV_X1 U49 ( .A(n25), .ZN(n40) );
  NAND2_X1 U50 ( .A1(n26), .A2(n40), .ZN(n30) );
  NAND2_X1 U51 ( .A1(n28), .A2(n27), .ZN(n29) );
  XNOR2_X1 U52 ( .A(n30), .B(n29), .ZN(O[6]) );
  INV_X1 U53 ( .A(n31), .ZN(n32) );
  NAND2_X1 U54 ( .A1(n12), .A2(n32), .ZN(n33) );
  NAND2_X1 U55 ( .A1(n33), .A2(n34), .ZN(n38) );
  NAND2_X1 U56 ( .A1(n36), .A2(n35), .ZN(n37) );
  XNOR2_X1 U57 ( .A(n38), .B(n37), .ZN(O[7]) );
  NAND2_X1 U58 ( .A1(n40), .A2(n39), .ZN(n43) );
  BUF_X1 U59 ( .A(n41), .Z(n42) );
  XNOR2_X1 U60 ( .A(n43), .B(n42), .ZN(O[5]) );
  XOR2_X1 U61 ( .A(A[1]), .B(B[1]), .Z(O[1]) );
  NOR2_X1 U62 ( .A1(n45), .A2(n44), .ZN(n46) );
  XNOR2_X1 U63 ( .A(n47), .B(n46), .ZN(O[2]) );
  NAND2_X1 U64 ( .A1(n49), .A2(n48), .ZN(n55) );
  INV_X1 U65 ( .A(n50), .ZN(n51) );
  OAI21_X1 U66 ( .B1(n53), .B2(n9), .A(n51), .ZN(n54) );
  XNOR2_X1 U67 ( .A(n55), .B(n54), .ZN(O[4]) );
endmodule

