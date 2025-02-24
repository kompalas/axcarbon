/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:12:10 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  assign O[6] = 1'b1;
  assign O[15] = O[5];
  assign O[7] = A[7];
  assign O[1] = A[13];
  assign O[4] = B[2];
  assign O[3] = B[13];
  assign O[0] = B[11];

  NOR2_X1 U11 ( .A1(A[11]), .A2(B[11]), .ZN(n23) );
  NOR2_X1 U12 ( .A1(A[14]), .A2(B[14]), .ZN(n16) );
  NAND2_X1 U13 ( .A1(n77), .A2(n14), .ZN(n39) );
  NOR2_X1 U14 ( .A1(A[15]), .A2(B[15]), .ZN(n43) );
  NAND2_X1 U15 ( .A1(A[15]), .A2(B[15]), .ZN(n42) );
  INV_X1 U16 ( .I(n75), .ZN(n30) );
  AOI21_X2 U17 ( .A1(n34), .A2(O[2]), .B(n33), .ZN(n35) );
  OR2_X1 U18 ( .A1(A[14]), .A2(B[14]), .Z(n14) );
  INV_X2 U19 ( .I(n66), .ZN(n69) );
  INV_X4 U20 ( .I(A[9]), .ZN(n26) );
  NAND2_X2 U21 ( .A1(B[9]), .A2(A[9]), .ZN(n58) );
  AND2_X1 U22 ( .A1(A[14]), .A2(B[14]), .Z(n17) );
  NOR2_X1 U23 ( .A1(A[10]), .A2(B[10]), .ZN(n20) );
  NOR2_X2 U24 ( .A1(B[12]), .A2(A[12]), .ZN(n66) );
  AND2_X1 U25 ( .A1(A[11]), .A2(B[11]), .Z(n18) );
  NAND2_X2 U26 ( .A1(n25), .A2(n47), .ZN(n15) );
  NAND2_X2 U27 ( .A1(A[14]), .A2(B[14]), .ZN(n79) );
  NAND2_X2 U28 ( .A1(A[11]), .A2(B[11]), .ZN(n62) );
  NOR2_X1 U29 ( .A1(n75), .A2(n66), .ZN(n77) );
  NOR2_X2 U30 ( .A1(A[10]), .A2(B[10]), .ZN(n19) );
  NOR2_X2 U31 ( .A1(A[14]), .A2(B[14]), .ZN(n21) );
  NOR2_X2 U32 ( .A1(A[11]), .A2(B[11]), .ZN(n22) );
  CLKBUF_X2 U33 ( .I(n78), .Z(O[2]) );
  NOR2_X2 U34 ( .A1(A[11]), .A2(B[11]), .ZN(n63) );
  NOR2_X2 U35 ( .A1(A[10]), .A2(B[10]), .ZN(n51) );
  NOR2_X2 U36 ( .A1(n63), .A2(n51), .ZN(n28) );
  INV_X2 U37 ( .I(n58), .ZN(n50) );
  NAND2_X2 U38 ( .A1(B[10]), .A2(A[10]), .ZN(n57) );
  OAI21_X2 U39 ( .A1(n22), .A2(n57), .B(n62), .ZN(n24) );
  AOI21_X2 U40 ( .A1(n28), .A2(n50), .B(n24), .ZN(n38) );
  OAI21_X2 U41 ( .A1(A[8]), .A2(B[7]), .B(B[8]), .ZN(n25) );
  NAND2_X2 U42 ( .A1(A[8]), .A2(B[7]), .ZN(n47) );
  NAND2_X2 U43 ( .A1(n25), .A2(n47), .ZN(n60) );
  INV_X2 U44 ( .I(B[9]), .ZN(n27) );
  NAND2_X2 U45 ( .A1(n27), .A2(n26), .ZN(n55) );
  NAND3_X2 U46 ( .A1(n60), .A2(n55), .A3(n28), .ZN(n37) );
  NAND2_X2 U47 ( .A1(n38), .A2(n37), .ZN(n78) );
  NOR2_X2 U48 ( .A1(B[13]), .A2(A[13]), .ZN(n75) );
  NOR2_X2 U49 ( .A1(A[14]), .A2(B[14]), .ZN(n80) );
  NOR2_X1 U50 ( .A1(n39), .A2(n43), .ZN(n34) );
  NAND2_X2 U51 ( .A1(B[12]), .A2(A[12]), .ZN(n74) );
  NOR2_X1 U52 ( .A1(n21), .A2(n74), .ZN(n31) );
  NAND2_X2 U53 ( .A1(B[13]), .A2(A[13]), .ZN(n73) );
  OAI21_X2 U54 ( .A1(n80), .A2(n73), .B(n79), .ZN(n29) );
  AOI21_X2 U55 ( .A1(n30), .A2(n31), .B(n29), .ZN(n36) );
  CLKBUF_X2 U56 ( .I(n36), .Z(n32) );
  OAI21_X2 U57 ( .A1(n32), .A2(n43), .B(n42), .ZN(n33) );
  INV_X1 U58 ( .I(n35), .ZN(O[16]) );
  OAI21_X1 U59 ( .A1(n39), .A2(n37), .B(n36), .ZN(n41) );
  NOR2_X1 U60 ( .A1(n39), .A2(n38), .ZN(n40) );
  NOR2_X1 U61 ( .A1(n41), .A2(n40), .ZN(n46) );
  INV_X1 U62 ( .I(n42), .ZN(n44) );
  NOR2_X1 U63 ( .A1(n44), .A2(n43), .ZN(n45) );
  XNOR2_X1 U64 ( .A1(n46), .A2(n45), .ZN(O[5]) );
  OAI21_X1 U65 ( .A1(A[8]), .A2(B[7]), .B(n47), .ZN(n48) );
  XNOR2_X1 U66 ( .A1(n48), .A2(B[8]), .ZN(O[8]) );
  NAND2_X1 U67 ( .A1(n55), .A2(n58), .ZN(n49) );
  XNOR2_X1 U68 ( .A1(n49), .A2(n15), .ZN(O[9]) );
  AOI21_X1 U69 ( .A1(n15), .A2(n55), .B(n50), .ZN(n54) );
  INV_X1 U70 ( .I(n19), .ZN(n52) );
  NAND2_X1 U71 ( .A1(n52), .A2(n57), .ZN(n53) );
  XOR2_X1 U72 ( .A1(n54), .A2(n53), .Z(O[10]) );
  INV_X1 U73 ( .I(n55), .ZN(n56) );
  NOR2_X1 U74 ( .A1(n56), .A2(n20), .ZN(n61) );
  OAI21_X1 U75 ( .A1(n19), .A2(n58), .B(n57), .ZN(n59) );
  AOI21_X1 U76 ( .A1(n61), .A2(n15), .B(n59), .ZN(n65) );
  NOR2_X1 U77 ( .A1(n18), .A2(n23), .ZN(n64) );
  XNOR2_X1 U78 ( .A1(n65), .A2(n64), .ZN(O[11]) );
  NAND2_X1 U79 ( .A1(n69), .A2(n74), .ZN(n67) );
  XNOR2_X1 U80 ( .A1(O[2]), .A2(n67), .ZN(O[12]) );
  INV_X1 U81 ( .I(n74), .ZN(n68) );
  AOI21_X1 U82 ( .A1(n78), .A2(n69), .B(n68), .ZN(n72) );
  INV_X1 U83 ( .I(n73), .ZN(n70) );
  NOR2_X1 U84 ( .A1(n70), .A2(n75), .ZN(n71) );
  XNOR2_X1 U85 ( .A1(n72), .A2(n71), .ZN(O[13]) );
  OAI21_X1 U86 ( .A1(n75), .A2(n74), .B(n73), .ZN(n76) );
  AOI21_X1 U87 ( .A1(n78), .A2(n77), .B(n76), .ZN(n82) );
  NOR2_X1 U88 ( .A1(n16), .A2(n17), .ZN(n81) );
  XNOR2_X1 U89 ( .A1(n82), .A2(n81), .ZN(O[14]) );
endmodule

