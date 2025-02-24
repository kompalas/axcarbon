/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:17:53 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70;
  assign O[6] = 1'b1;
  assign O[0] = 1'b0;
  assign O[2] = 1'b0;
  assign O[8] = 1'b0;
  assign O[11] = O[5];
  assign O[14] = O[1];
  assign O[9] = A[8];
  assign O[3] = A[6];
  assign O[7] = B[9];

  NAND2_X1 U12 ( .A1(n39), .A2(n38), .ZN(n69) );
  NOR2_X1 U13 ( .A1(B[13]), .A2(A[13]), .ZN(n32) );
  NAND2_X1 U14 ( .A1(B[15]), .A2(A[15]), .ZN(n68) );
  INV_X2 U15 ( .I(B[15]), .ZN(n39) );
  NAND2_X1 U16 ( .A1(A[10]), .A2(B[9]), .ZN(n15) );
  AND2_X2 U17 ( .A1(B[13]), .A2(A[13]), .Z(n20) );
  NOR2_X2 U18 ( .A1(B[13]), .A2(A[13]), .ZN(n21) );
  INV_X8 U19 ( .I(A[15]), .ZN(n38) );
  NAND2_X2 U20 ( .A1(A[10]), .A2(B[9]), .ZN(n14) );
  NAND2_X1 U21 ( .A1(B[11]), .A2(A[11]), .ZN(n16) );
  AND2_X2 U22 ( .A1(B[11]), .A2(A[11]), .Z(n12) );
  OR2_X1 U23 ( .A1(A[14]), .A2(B[14]), .Z(n13) );
  NOR2_X2 U24 ( .A1(n48), .A2(n62), .ZN(n26) );
  OAI21_X1 U25 ( .A1(n30), .A2(n16), .B(n44), .ZN(n17) );
  NAND2_X1 U26 ( .A1(n23), .A2(n15), .ZN(n18) );
  NAND2_X1 U27 ( .A1(n23), .A2(n15), .ZN(n28) );
  NAND2_X2 U28 ( .A1(B[13]), .A2(A[13]), .ZN(n19) );
  NOR2_X2 U29 ( .A1(n57), .A2(n31), .ZN(n45) );
  NAND2_X2 U30 ( .A1(A[14]), .A2(B[14]), .ZN(n49) );
  NOR2_X2 U31 ( .A1(B[13]), .A2(A[13]), .ZN(n22) );
  OAI21_X2 U32 ( .A1(A[10]), .A2(B[9]), .B(B[10]), .ZN(n23) );
  AOI21_X1 U33 ( .A1(n64), .A2(n65), .B(n17), .ZN(n24) );
  NOR2_X1 U34 ( .A1(n48), .A2(n21), .ZN(n25) );
  NAND3_X2 U35 ( .A1(n45), .A2(n65), .A3(n56), .ZN(n47) );
  NOR2_X2 U36 ( .A1(A[14]), .A2(B[14]), .ZN(n27) );
  NOR2_X2 U37 ( .A1(A[12]), .A2(B[12]), .ZN(n29) );
  NOR2_X2 U38 ( .A1(A[12]), .A2(B[12]), .ZN(n30) );
  NOR2_X2 U39 ( .A1(B[13]), .A2(A[13]), .ZN(n31) );
  AOI21_X2 U40 ( .A1(n45), .A2(n12), .B(n33), .ZN(n46) );
  OAI21_X2 U41 ( .A1(n22), .A2(n44), .B(n61), .ZN(n33) );
  NAND2_X2 U42 ( .A1(B[13]), .A2(A[13]), .ZN(n61) );
  NAND2_X2 U43 ( .A1(A[12]), .A2(B[12]), .ZN(n44) );
  NOR2_X2 U44 ( .A1(A[12]), .A2(B[12]), .ZN(n57) );
  NOR2_X2 U45 ( .A1(B[13]), .A2(A[13]), .ZN(n62) );
  XNOR2_X1 U46 ( .A1(n34), .A2(n70), .ZN(O[15]) );
  NAND2_X2 U47 ( .A1(n36), .A2(n35), .ZN(n34) );
  NAND3_X2 U48 ( .A1(n28), .A2(n64), .A3(n26), .ZN(n35) );
  NOR2_X2 U49 ( .A1(n29), .A2(n43), .ZN(n64) );
  NAND2_X2 U50 ( .A1(n37), .A2(n54), .ZN(n65) );
  AOI21_X2 U51 ( .A1(n67), .A2(n25), .B(n66), .ZN(n36) );
  OAI21_X2 U52 ( .A1(n27), .A2(n19), .B(n49), .ZN(n66) );
  OAI21_X2 U53 ( .A1(n30), .A2(n52), .B(n44), .ZN(n67) );
  NAND2_X1 U54 ( .A1(n46), .A2(n47), .ZN(n51) );
  NOR2_X2 U55 ( .A1(A[14]), .A2(B[14]), .ZN(n48) );
  NOR2_X2 U56 ( .A1(A[11]), .A2(B[11]), .ZN(n43) );
  OAI21_X2 U57 ( .A1(A[10]), .A2(B[9]), .B(B[10]), .ZN(n37) );
  NAND2_X2 U58 ( .A1(A[10]), .A2(B[9]), .ZN(n54) );
  NAND2_X2 U59 ( .A1(B[11]), .A2(A[11]), .ZN(n52) );
  NAND2_X1 U60 ( .A1(n26), .A2(n69), .ZN(n42) );
  INV_X1 U61 ( .I(n68), .ZN(n40) );
  AOI21_X1 U62 ( .A1(n69), .A2(n66), .B(n40), .ZN(n41) );
  OAI21_X1 U63 ( .A1(n24), .A2(n42), .B(n41), .ZN(O[16]) );
  INV_X1 U64 ( .I(n43), .ZN(n56) );
  NAND2_X1 U65 ( .A1(n13), .A2(n49), .ZN(n50) );
  XNOR2_X1 U66 ( .A1(n51), .A2(n50), .ZN(O[1]) );
  NAND2_X1 U67 ( .A1(A[9]), .A2(B[4]), .ZN(O[4]) );
  NAND2_X1 U68 ( .A1(n56), .A2(n52), .ZN(n53) );
  XNOR2_X1 U69 ( .A1(n53), .A2(n18), .ZN(O[5]) );
  OAI21_X1 U70 ( .A1(A[10]), .A2(B[9]), .B(n14), .ZN(n55) );
  XNOR2_X1 U71 ( .A1(n55), .A2(B[10]), .ZN(O[10]) );
  AOI21_X1 U72 ( .A1(n18), .A2(n56), .B(n12), .ZN(n60) );
  AND2_X1 U73 ( .A1(B[12]), .A2(A[12]), .Z(n58) );
  NOR2_X1 U74 ( .A1(n58), .A2(n29), .ZN(n59) );
  XNOR2_X1 U75 ( .A1(n60), .A2(n59), .ZN(O[12]) );
  NOR2_X1 U76 ( .A1(n20), .A2(n32), .ZN(n63) );
  XNOR2_X1 U77 ( .A1(n24), .A2(n63), .ZN(O[13]) );
  NAND2_X1 U78 ( .A1(n69), .A2(n68), .ZN(n70) );
endmodule

