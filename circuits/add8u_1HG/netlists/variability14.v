/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:51:35 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77;

  NAND2_X1 U11 ( .A1(A[3]), .A2(B[3]), .ZN(n49) );
  NAND2_X1 U12 ( .A1(B[7]), .A2(A[7]), .ZN(n73) );
  INV_X4 U13 ( .I(A[2]), .ZN(n13) );
  INV_X2 U14 ( .I(n55), .ZN(n19) );
  INV_X2 U15 ( .I(n52), .ZN(n56) );
  NAND2_X1 U16 ( .A1(A[0]), .A2(B[0]), .ZN(n15) );
  AOI21_X1 U17 ( .A1(n16), .A2(n71), .B(n70), .ZN(n77) );
  INV_X1 U18 ( .I(n16), .ZN(n11) );
  NOR2_X1 U19 ( .A1(n52), .A2(n21), .ZN(n60) );
  AND2_X1 U20 ( .A1(A[1]), .A2(B[1]), .Z(n12) );
  NOR2_X2 U21 ( .A1(B[6]), .A2(A[6]), .ZN(n68) );
  INV_X2 U22 ( .I(B[2]), .ZN(n29) );
  AND2_X1 U23 ( .A1(B[5]), .A2(A[5]), .Z(n24) );
  INV_X2 U24 ( .I(n11), .ZN(n54) );
  NOR2_X2 U25 ( .A1(n13), .A2(n14), .ZN(n17) );
  INV_X12 U26 ( .I(B[2]), .ZN(n14) );
  OAI21_X2 U27 ( .A1(n31), .A2(n47), .B(n30), .ZN(n16) );
  INV_X8 U28 ( .I(B[3]), .ZN(n25) );
  NAND2_X2 U29 ( .A1(n28), .A2(n18), .ZN(n22) );
  INV_X12 U30 ( .I(B[3]), .ZN(n18) );
  INV_X12 U31 ( .I(A[3]), .ZN(n28) );
  AOI22_X2 U32 ( .A1(n20), .A2(n19), .B1(B[5]), .B2(A[5]), .ZN(n69) );
  NAND2_X2 U33 ( .A1(B[4]), .A2(A[4]), .ZN(n55) );
  INV_X2 U34 ( .I(n57), .ZN(n20) );
  NOR2_X2 U35 ( .A1(B[5]), .A2(A[5]), .ZN(n57) );
  NOR2_X2 U36 ( .A1(B[5]), .A2(A[5]), .ZN(n21) );
  NOR2_X2 U37 ( .A1(A[4]), .A2(B[4]), .ZN(n52) );
  AOI22_X2 U38 ( .A1(n22), .A2(n17), .B1(B[3]), .B2(A[3]), .ZN(n30) );
  OR2_X1 U39 ( .A1(n13), .A2(n29), .Z(n23) );
  NAND2_X2 U40 ( .A1(n40), .A2(n26), .ZN(n31) );
  NAND2_X1 U41 ( .A1(n28), .A2(n25), .ZN(n26) );
  NAND2_X1 U42 ( .A1(n28), .A2(n25), .ZN(n27) );
  OAI21_X1 U43 ( .A1(n48), .A2(n47), .B(n23), .ZN(n51) );
  NAND2_X2 U44 ( .A1(A[1]), .A2(B[1]), .ZN(n37) );
  NAND2_X2 U45 ( .A1(A[0]), .A2(B[0]), .ZN(n38) );
  NAND2_X2 U46 ( .A1(n37), .A2(n38), .ZN(n40) );
  NOR2_X2 U47 ( .A1(A[1]), .A2(B[1]), .ZN(n41) );
  NOR2_X2 U48 ( .A1(A[2]), .A2(B[2]), .ZN(n44) );
  OR2_X2 U49 ( .A1(n41), .A2(n44), .Z(n47) );
  OAI21_X2 U50 ( .A1(n31), .A2(n47), .B(n30), .ZN(n72) );
  INV_X1 U51 ( .I(n54), .ZN(n36) );
  NOR2_X1 U52 ( .A1(B[7]), .A2(A[7]), .ZN(n74) );
  NOR2_X1 U53 ( .A1(n68), .A2(n74), .ZN(n33) );
  NAND2_X1 U54 ( .A1(n60), .A2(n33), .ZN(n35) );
  INV_X1 U55 ( .I(n69), .ZN(n61) );
  NAND2_X1 U56 ( .A1(B[6]), .A2(A[6]), .ZN(n67) );
  OAI21_X1 U57 ( .A1(n74), .A2(n67), .B(n73), .ZN(n32) );
  AOI21_X1 U58 ( .A1(n33), .A2(n61), .B(n32), .ZN(n34) );
  OAI21_X1 U59 ( .A1(n36), .A2(n35), .B(n34), .ZN(O[8]) );
  XOR2_X1 U60 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  NOR2_X1 U61 ( .A1(n12), .A2(n41), .ZN(n39) );
  XNOR2_X1 U62 ( .A1(n39), .A2(n15), .ZN(O[1]) );
  INV_X1 U63 ( .I(n40), .ZN(n48) );
  INV_X1 U64 ( .I(n48), .ZN(n43) );
  INV_X1 U65 ( .I(n41), .ZN(n42) );
  NAND2_X1 U66 ( .A1(n43), .A2(n42), .ZN(n46) );
  NOR2_X1 U67 ( .A1(n17), .A2(n44), .ZN(n45) );
  XNOR2_X1 U68 ( .A1(n46), .A2(n45), .ZN(O[2]) );
  NAND2_X1 U69 ( .A1(n49), .A2(n27), .ZN(n50) );
  XNOR2_X1 U70 ( .A1(n51), .A2(n50), .ZN(O[3]) );
  NAND2_X1 U71 ( .A1(n56), .A2(n55), .ZN(n53) );
  XNOR2_X1 U72 ( .A1(n54), .A2(n53), .ZN(O[4]) );
  AOI21_X1 U73 ( .A1(n72), .A2(n56), .B(n19), .ZN(n59) );
  NOR2_X1 U74 ( .A1(n24), .A2(n57), .ZN(n58) );
  XNOR2_X1 U75 ( .A1(n59), .A2(n58), .ZN(O[5]) );
  INV_X1 U76 ( .I(n60), .ZN(n66) );
  INV_X1 U77 ( .I(n66), .ZN(n62) );
  AOI21_X1 U78 ( .A1(n72), .A2(n62), .B(n61), .ZN(n65) );
  INV_X1 U79 ( .I(n67), .ZN(n63) );
  NOR2_X1 U80 ( .A1(n63), .A2(n68), .ZN(n64) );
  XNOR2_X1 U81 ( .A1(n65), .A2(n64), .ZN(O[6]) );
  NOR2_X1 U82 ( .A1(n66), .A2(n68), .ZN(n71) );
  OAI21_X1 U83 ( .A1(n69), .A2(n68), .B(n67), .ZN(n70) );
  INV_X1 U84 ( .I(n73), .ZN(n75) );
  NOR2_X1 U85 ( .A1(n75), .A2(n74), .ZN(n76) );
  XNOR2_X1 U86 ( .A1(n77), .A2(n76), .ZN(O[7]) );
endmodule

