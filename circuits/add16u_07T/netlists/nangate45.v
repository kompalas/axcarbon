/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:20:34 2025
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

  NAND4_X1 U12 ( .A1(n13), .A2(n54), .A3(n17), .A4(n12), .ZN(n38) );
  NAND2_X1 U13 ( .A1(B[15]), .A2(A[15]), .ZN(n69) );
  OR2_X1 U14 ( .A1(B[15]), .A2(A[15]), .ZN(n65) );
  AND2_X2 U15 ( .A1(B[12]), .A2(A[12]), .ZN(n42) );
  OR2_X1 U16 ( .A1(A[13]), .A2(B[13]), .ZN(n19) );
  OR2_X1 U17 ( .A1(A[14]), .A2(B[14]), .ZN(n21) );
  INV_X1 U18 ( .A(B[10]), .ZN(n61) );
  OR2_X2 U19 ( .A1(A[14]), .A2(B[14]), .ZN(n20) );
  AND2_X1 U20 ( .A1(B[10]), .A2(B[9]), .ZN(n29) );
  OR2_X1 U21 ( .A1(A[12]), .A2(B[12]), .ZN(n17) );
  OR2_X1 U22 ( .A1(B[9]), .A2(B[10]), .ZN(n28) );
  OR2_X2 U23 ( .A1(A[13]), .A2(B[13]), .ZN(n18) );
  NAND2_X1 U24 ( .A1(n13), .A2(n12), .ZN(n36) );
  OR2_X2 U25 ( .A1(A[13]), .A2(B[13]), .ZN(n12) );
  OR2_X2 U26 ( .A1(B[14]), .A2(A[14]), .ZN(n13) );
  OR2_X1 U27 ( .A1(B[11]), .A2(A[11]), .ZN(n54) );
  NAND2_X1 U28 ( .A1(n17), .A2(n54), .ZN(n14) );
  BUF_X1 U29 ( .A(n42), .Z(n15) );
  OR2_X2 U30 ( .A1(B[12]), .A2(A[12]), .ZN(n24) );
  AND2_X1 U31 ( .A1(A[10]), .A2(B[9]), .ZN(n59) );
  OR2_X1 U32 ( .A1(A[13]), .A2(B[13]), .ZN(n25) );
  NOR2_X1 U33 ( .A1(B[9]), .A2(A[10]), .ZN(n16) );
  NOR2_X1 U34 ( .A1(B[10]), .A2(n59), .ZN(n34) );
  NAND2_X1 U35 ( .A1(n17), .A2(n30), .ZN(n33) );
  OR2_X1 U36 ( .A1(A[13]), .A2(B[13]), .ZN(n62) );
  OR2_X1 U37 ( .A1(A[14]), .A2(B[14]), .ZN(n23) );
  AND2_X2 U38 ( .A1(B[11]), .A2(A[11]), .ZN(n35) );
  OR2_X1 U39 ( .A1(B[12]), .A2(A[12]), .ZN(n41) );
  NOR2_X1 U40 ( .A1(A[11]), .A2(B[11]), .ZN(n22) );
  AOI21_X1 U41 ( .B1(n51), .B2(n23), .A(n47), .ZN(n67) );
  AOI21_X1 U42 ( .B1(n35), .B2(n24), .A(n42), .ZN(n26) );
  OAI21_X1 U43 ( .B1(n56), .B2(n14), .A(n26), .ZN(n64) );
  OR2_X1 U44 ( .A1(n27), .A2(n36), .ZN(n37) );
  AOI21_X1 U45 ( .B1(n35), .B2(n41), .A(n42), .ZN(n27) );
  OAI21_X2 U46 ( .B1(A[10]), .B2(n29), .A(n28), .ZN(n56) );
  INV_X1 U47 ( .A(n15), .ZN(n30) );
  OR2_X1 U48 ( .A1(n16), .A2(n22), .ZN(n31) );
  INV_X1 U49 ( .A(n35), .ZN(n55) );
  OAI21_X1 U50 ( .B1(n31), .B2(n34), .A(n55), .ZN(n32) );
  XNOR2_X1 U51 ( .A(n33), .B(n32), .ZN(O[12]) );
  AND2_X1 U52 ( .A1(B[13]), .A2(A[13]), .ZN(n51) );
  AND2_X1 U53 ( .A1(A[14]), .A2(B[14]), .ZN(n47) );
  OAI211_X1 U54 ( .C1(n56), .C2(n38), .A(n67), .B(n37), .ZN(n40) );
  NAND2_X1 U55 ( .A1(n69), .A2(n65), .ZN(n39) );
  XNOR2_X1 U56 ( .A(n40), .B(n39), .ZN(O[15]) );
  NAND2_X1 U57 ( .A1(n62), .A2(n24), .ZN(n43) );
  OR2_X1 U58 ( .A1(n43), .A2(n22), .ZN(n46) );
  AOI21_X1 U59 ( .B1(n15), .B2(n25), .A(n51), .ZN(n45) );
  OR2_X1 U60 ( .A1(n55), .A2(n43), .ZN(n44) );
  OAI211_X1 U61 ( .C1(n46), .C2(n56), .A(n45), .B(n44), .ZN(n50) );
  INV_X1 U62 ( .A(n47), .ZN(n48) );
  NAND2_X1 U63 ( .A1(n48), .A2(n21), .ZN(n49) );
  XNOR2_X1 U64 ( .A(n50), .B(n49), .ZN(O[1]) );
  INV_X1 U65 ( .A(n51), .ZN(n52) );
  NAND2_X1 U66 ( .A1(n52), .A2(n19), .ZN(n53) );
  XNOR2_X1 U67 ( .A(n64), .B(n53), .ZN(O[13]) );
  NAND2_X1 U68 ( .A1(A[9]), .A2(B[4]), .ZN(O[4]) );
  NAND2_X1 U69 ( .A1(n55), .A2(n54), .ZN(n58) );
  INV_X1 U70 ( .A(n56), .ZN(n57) );
  XNOR2_X1 U71 ( .A(n58), .B(n57), .ZN(O[5]) );
  NOR2_X1 U72 ( .A1(n59), .A2(n16), .ZN(n60) );
  XNOR2_X1 U73 ( .A(n61), .B(n60), .ZN(O[10]) );
  AND2_X1 U74 ( .A1(n18), .A2(n20), .ZN(n63) );
  NAND3_X1 U75 ( .A1(n64), .A2(n63), .A3(n65), .ZN(n70) );
  INV_X1 U76 ( .A(n65), .ZN(n66) );
  OR2_X1 U77 ( .A1(n67), .A2(n66), .ZN(n68) );
  NAND3_X1 U78 ( .A1(n70), .A2(n69), .A3(n68), .ZN(O[16]) );
endmodule

