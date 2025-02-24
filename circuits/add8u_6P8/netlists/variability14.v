/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:59:11 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54;

  NAND2_X1 U11 ( .A1(B[2]), .A2(A[2]), .ZN(n15) );
  INV_X1 U12 ( .I(n51), .ZN(n11) );
  NAND2_X1 U13 ( .A1(A[7]), .A2(B[7]), .ZN(n52) );
  INV_X2 U14 ( .I(A[7]), .ZN(n28) );
  NOR2_X1 U15 ( .A1(B[3]), .A2(A[3]), .ZN(n17) );
  NAND2_X1 U16 ( .A1(B[2]), .A2(A[2]), .ZN(n16) );
  NAND2_X2 U17 ( .A1(n28), .A2(n27), .ZN(n53) );
  INV_X8 U18 ( .I(B[7]), .ZN(n27) );
  NAND2_X1 U19 ( .A1(n13), .A2(n24), .ZN(n12) );
  OAI21_X2 U20 ( .A1(n18), .A2(n19), .B(n29), .ZN(n22) );
  INV_X2 U21 ( .I(B[6]), .ZN(n26) );
  XNOR2_X1 U22 ( .A1(n12), .A2(n54), .ZN(O[7]) );
  AOI21_X2 U23 ( .A1(n50), .A2(n49), .B(n11), .ZN(n13) );
  NOR2_X2 U24 ( .A1(B[3]), .A2(A[3]), .ZN(n18) );
  OAI21_X2 U25 ( .A1(n23), .A2(n34), .B(n29), .ZN(n48) );
  AND2_X1 U26 ( .A1(n49), .A2(n51), .Z(n14) );
  NAND2_X2 U27 ( .A1(A[5]), .A2(B[5]), .ZN(n30) );
  AOI21_X1 U28 ( .A1(n22), .A2(n47), .B(n50), .ZN(n46) );
  NAND2_X2 U29 ( .A1(B[2]), .A2(A[2]), .ZN(n19) );
  NOR2_X2 U30 ( .A1(A[5]), .A2(B[5]), .ZN(n20) );
  OAI21_X1 U31 ( .A1(n15), .A2(n18), .B(n29), .ZN(n21) );
  XNOR2_X1 U32 ( .A1(n46), .A2(n14), .ZN(O[6]) );
  XNOR2_X1 U33 ( .A1(n16), .A2(n36), .ZN(O[3]) );
  NAND2_X2 U34 ( .A1(B[2]), .A2(A[2]), .ZN(n23) );
  OAI21_X2 U35 ( .A1(n42), .A2(n38), .B(n30), .ZN(n50) );
  NAND3_X2 U36 ( .A1(n48), .A2(n47), .A3(n49), .ZN(n24) );
  NAND2_X2 U37 ( .A1(n26), .A2(n25), .ZN(n49) );
  NOR2_X2 U38 ( .A1(n20), .A2(n37), .ZN(n47) );
  NAND2_X2 U39 ( .A1(B[4]), .A2(A[4]), .ZN(n38) );
  NOR2_X1 U40 ( .A1(n35), .A2(n17), .ZN(n36) );
  AOI21_X1 U41 ( .A1(n41), .A2(n22), .B(n40), .ZN(n45) );
  OR2_X1 U42 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  INV_X2 U43 ( .I(A[6]), .ZN(n25) );
  NAND2_X1 U44 ( .A1(n49), .A2(n53), .ZN(n33) );
  NOR2_X2 U45 ( .A1(B[4]), .A2(A[4]), .ZN(n37) );
  NOR2_X2 U46 ( .A1(A[5]), .A2(B[5]), .ZN(n42) );
  NOR2_X2 U47 ( .A1(B[3]), .A2(A[3]), .ZN(n34) );
  NAND2_X2 U48 ( .A1(B[3]), .A2(A[3]), .ZN(n29) );
  NAND2_X2 U49 ( .A1(B[6]), .A2(A[6]), .ZN(n51) );
  INV_X1 U50 ( .I(n52), .ZN(n31) );
  AOI21_X1 U51 ( .A1(n11), .A2(n53), .B(n31), .ZN(n32) );
  OAI21_X1 U52 ( .A1(n33), .A2(n46), .B(n32), .ZN(O[8]) );
  OR2_X1 U53 ( .A1(A[1]), .A2(B[1]), .Z(O[1]) );
  XOR2_X1 U54 ( .A1(A[2]), .A2(B[2]), .Z(O[2]) );
  AND2_X1 U55 ( .A1(B[3]), .A2(A[3]), .Z(n35) );
  INV_X1 U56 ( .I(n37), .ZN(n41) );
  NAND2_X1 U57 ( .A1(n41), .A2(n38), .ZN(n39) );
  XNOR2_X1 U58 ( .A1(n21), .A2(n39), .ZN(O[4]) );
  AND2_X1 U59 ( .A1(B[4]), .A2(A[4]), .Z(n40) );
  AND2_X1 U60 ( .A1(A[5]), .A2(B[5]), .Z(n43) );
  NOR2_X1 U61 ( .A1(n43), .A2(n20), .ZN(n44) );
  XNOR2_X1 U62 ( .A1(n45), .A2(n44), .ZN(O[5]) );
  NAND2_X1 U63 ( .A1(n53), .A2(n52), .ZN(n54) );
endmodule

