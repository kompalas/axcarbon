/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:19:12 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60;
  assign O[6] = 1'b1;
  assign O[0] = 1'b0;
  assign O[2] = 1'b0;
  assign O[8] = 1'b0;
  assign O[11] = O[5];
  assign O[14] = O[1];
  assign O[9] = A[8];
  assign O[3] = A[6];
  assign O[7] = B[9];

  NOR2_X1 U12 ( .A1(n29), .A2(n50), .ZN(n30) );
  BUF_X2 U13 ( .A(n55), .Z(n16) );
  OAI21_X1 U14 ( .B1(n50), .B2(n49), .A(n48), .ZN(n58) );
  NAND2_X1 U15 ( .A1(A[14]), .A2(B[14]), .ZN(n48) );
  INV_X1 U16 ( .A(n49), .ZN(n22) );
  AND2_X2 U17 ( .A1(A[15]), .A2(B[15]), .ZN(n56) );
  NAND2_X2 U18 ( .A1(A[9]), .A2(B[4]), .ZN(O[4]) );
  INV_X4 U19 ( .A(n36), .ZN(n12) );
  OAI21_X1 U20 ( .B1(A[10]), .B2(B[9]), .A(n34), .ZN(n35) );
  NAND2_X4 U21 ( .A1(n28), .A2(n27), .ZN(n13) );
  INV_X16 U22 ( .A(A[12]), .ZN(n28) );
  AND2_X4 U23 ( .A1(n18), .A2(n34), .ZN(n14) );
  BUF_X4 U24 ( .A(n43), .Z(n15) );
  NAND2_X4 U25 ( .A1(n17), .A2(n13), .ZN(n43) );
  NAND2_X4 U26 ( .A1(n12), .A2(n38), .ZN(n42) );
  NOR2_X2 U27 ( .A1(n50), .A2(n47), .ZN(n54) );
  NAND2_X4 U28 ( .A1(n28), .A2(n27), .ZN(n38) );
  INV_X2 U29 ( .A(n32), .ZN(n17) );
  NOR2_X4 U30 ( .A1(B[11]), .A2(A[11]), .ZN(n32) );
  OAI211_X4 U31 ( .C1(n44), .C2(n43), .A(n41), .B(n42), .ZN(n55) );
  NAND2_X4 U32 ( .A1(B[11]), .A2(A[11]), .ZN(n36) );
  AND2_X4 U33 ( .A1(n18), .A2(n34), .ZN(n44) );
  NAND2_X4 U34 ( .A1(A[10]), .A2(B[9]), .ZN(n34) );
  OAI21_X4 U35 ( .B1(A[10]), .B2(B[9]), .A(B[10]), .ZN(n18) );
  BUF_X4 U36 ( .A(n47), .Z(n19) );
  NOR2_X2 U37 ( .A1(n24), .A2(n20), .ZN(n31) );
  OAI21_X2 U38 ( .B1(n42), .B2(n47), .A(n21), .ZN(n20) );
  AOI21_X2 U39 ( .B1(n23), .B2(n45), .A(n22), .ZN(n21) );
  INV_X2 U40 ( .A(n41), .ZN(n23) );
  NOR3_X4 U41 ( .A1(n15), .A2(n14), .A3(n19), .ZN(n24) );
  INV_X2 U42 ( .A(n45), .ZN(n47) );
  NAND2_X4 U43 ( .A1(A[12]), .A2(B[12]), .ZN(n41) );
  NAND2_X4 U44 ( .A1(A[13]), .A2(B[13]), .ZN(n49) );
  NOR2_X4 U45 ( .A1(A[14]), .A2(B[14]), .ZN(n50) );
  INV_X8 U46 ( .A(A[13]), .ZN(n26) );
  INV_X16 U47 ( .A(B[13]), .ZN(n25) );
  NAND2_X4 U48 ( .A1(n26), .A2(n25), .ZN(n45) );
  INV_X16 U49 ( .A(B[12]), .ZN(n27) );
  INV_X1 U50 ( .A(n48), .ZN(n29) );
  XNOR2_X1 U51 ( .A(n31), .B(n30), .ZN(O[1]) );
  BUF_X2 U52 ( .A(n32), .Z(n37) );
  NOR2_X2 U53 ( .A1(n12), .A2(n37), .ZN(n33) );
  XNOR2_X1 U54 ( .A(n14), .B(n33), .ZN(O[5]) );
  XNOR2_X1 U55 ( .A(n35), .B(B[10]), .ZN(O[10]) );
  OAI21_X2 U56 ( .B1(n14), .B2(n37), .A(n36), .ZN(n40) );
  NAND2_X1 U57 ( .A1(n13), .A2(n41), .ZN(n39) );
  XNOR2_X1 U58 ( .A(n40), .B(n39), .ZN(O[12]) );
  NAND2_X1 U59 ( .A1(n45), .A2(n49), .ZN(n46) );
  XNOR2_X1 U60 ( .A(n16), .B(n46), .ZN(O[13]) );
  AOI21_X2 U61 ( .B1(n55), .B2(n54), .A(n58), .ZN(n52) );
  NOR2_X4 U62 ( .A1(A[15]), .A2(B[15]), .ZN(n53) );
  NOR2_X1 U63 ( .A1(n53), .A2(n56), .ZN(n51) );
  XNOR2_X1 U64 ( .A(n52), .B(n51), .ZN(O[15]) );
  INV_X1 U65 ( .A(n53), .ZN(n57) );
  NAND3_X1 U66 ( .A1(n16), .A2(n54), .A3(n57), .ZN(n60) );
  AOI21_X1 U67 ( .B1(n58), .B2(n57), .A(n56), .ZN(n59) );
  NAND2_X1 U68 ( .A1(n60), .A2(n59), .ZN(O[16]) );
endmodule

