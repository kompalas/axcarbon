/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:54:52 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54;

  NAND2_X1 U10 ( .A1(n53), .A2(n50), .ZN(n46) );
  AND2_X1 U11 ( .A1(A[1]), .A2(B[1]), .ZN(n17) );
  BUF_X1 U12 ( .A(n45), .Z(n49) );
  NAND2_X2 U13 ( .A1(B[7]), .A2(A[7]), .ZN(n53) );
  NOR2_X1 U14 ( .A1(A[3]), .A2(B[3]), .ZN(n21) );
  INV_X1 U15 ( .A(n9), .ZN(n40) );
  NAND2_X1 U16 ( .A1(A[6]), .A2(B[6]), .ZN(n43) );
  NAND2_X2 U17 ( .A1(n37), .A2(n36), .ZN(n41) );
  INV_X8 U18 ( .A(A[3]), .ZN(n13) );
  NAND2_X4 U19 ( .A1(n13), .A2(n12), .ZN(n31) );
  OR2_X4 U20 ( .A1(B[7]), .A2(A[7]), .ZN(n50) );
  INV_X4 U21 ( .A(A[6]), .ZN(n37) );
  OR2_X4 U22 ( .A1(A[0]), .A2(B[0]), .ZN(O[0]) );
  INV_X4 U23 ( .A(B[2]), .ZN(n16) );
  INV_X4 U24 ( .A(B[6]), .ZN(n36) );
  NAND2_X4 U25 ( .A1(A[4]), .A2(B[4]), .ZN(n7) );
  NAND2_X4 U26 ( .A1(n28), .A2(n27), .ZN(n8) );
  NOR2_X4 U27 ( .A1(B[5]), .A2(A[5]), .ZN(n9) );
  OAI211_X4 U28 ( .C1(n14), .C2(n11), .A(n10), .B(n7), .ZN(n45) );
  NAND2_X4 U29 ( .A1(n33), .A2(n32), .ZN(n10) );
  NAND2_X4 U30 ( .A1(n8), .A2(n31), .ZN(n11) );
  AND2_X4 U31 ( .A1(n40), .A2(n41), .ZN(n48) );
  NAND2_X4 U32 ( .A1(n24), .A2(n23), .ZN(n14) );
  INV_X16 U33 ( .A(B[3]), .ZN(n12) );
  INV_X16 U34 ( .A(B[4]), .ZN(n27) );
  INV_X8 U35 ( .A(A[4]), .ZN(n28) );
  XNOR2_X1 U36 ( .A(n14), .B(n22), .ZN(O[3]) );
  XOR2_X2 U37 ( .A(A[1]), .B(B[1]), .Z(O[1]) );
  NAND2_X4 U38 ( .A1(B[2]), .A2(A[2]), .ZN(n20) );
  INV_X16 U39 ( .A(A[2]), .ZN(n15) );
  NAND2_X4 U40 ( .A1(n16), .A2(n15), .ZN(n23) );
  NAND2_X1 U41 ( .A1(n20), .A2(n23), .ZN(n18) );
  XNOR2_X1 U42 ( .A(n18), .B(n17), .ZN(O[2]) );
  NAND2_X4 U43 ( .A1(A[1]), .A2(B[1]), .ZN(n19) );
  NAND2_X4 U44 ( .A1(n20), .A2(n19), .ZN(n24) );
  AND2_X4 U45 ( .A1(A[3]), .A2(B[3]), .ZN(n33) );
  NOR2_X1 U46 ( .A1(n21), .A2(n33), .ZN(n22) );
  NAND3_X1 U47 ( .A1(n24), .A2(n23), .A3(n31), .ZN(n26) );
  INV_X1 U48 ( .A(n33), .ZN(n25) );
  NAND2_X1 U49 ( .A1(n26), .A2(n25), .ZN(n30) );
  NAND2_X4 U50 ( .A1(n28), .A2(n27), .ZN(n32) );
  NAND2_X1 U51 ( .A1(n7), .A2(n32), .ZN(n29) );
  XNOR2_X1 U52 ( .A(n30), .B(n29), .ZN(O[4]) );
  AND2_X4 U53 ( .A1(A[5]), .A2(B[5]), .ZN(n42) );
  INV_X1 U54 ( .A(n42), .ZN(n34) );
  NAND2_X1 U55 ( .A1(n34), .A2(n40), .ZN(n35) );
  XNOR2_X1 U56 ( .A(n49), .B(n35), .ZN(O[5]) );
  AOI21_X1 U57 ( .B1(n45), .B2(n40), .A(n42), .ZN(n39) );
  NAND2_X1 U58 ( .A1(n43), .A2(n41), .ZN(n38) );
  XOR2_X1 U59 ( .A(n39), .B(n38), .Z(O[6]) );
  NAND2_X1 U60 ( .A1(n42), .A2(n41), .ZN(n44) );
  NAND2_X1 U61 ( .A1(n44), .A2(n43), .ZN(n51) );
  AOI21_X1 U62 ( .B1(n45), .B2(n48), .A(n51), .ZN(n47) );
  XOR2_X1 U63 ( .A(n47), .B(n46), .Z(O[7]) );
  NAND3_X1 U64 ( .A1(n49), .A2(n48), .A3(n50), .ZN(n54) );
  NAND2_X1 U65 ( .A1(n51), .A2(n50), .ZN(n52) );
  NAND3_X1 U66 ( .A1(n54), .A2(n53), .A3(n52), .ZN(O[8]) );
endmodule

