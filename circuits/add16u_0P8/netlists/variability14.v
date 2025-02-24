/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:06:28 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113;
  assign O[4] = 1'b0;
  assign O[14] = O[0];
  assign O[3] = A[4];
  assign O[2] = A[11];
  assign O[1] = B[9];

  NAND2_X1 U16 ( .A1(B[6]), .A2(A[6]), .ZN(n79) );
  NAND2_X1 U17 ( .A1(n105), .A2(n55), .ZN(n54) );
  INV_X1 U18 ( .I(n99), .ZN(n101) );
  AOI21_X1 U19 ( .A1(n43), .A2(n31), .B(n40), .ZN(n39) );
  INV_X1 U20 ( .I(n51), .ZN(n43) );
  NAND2_X1 U21 ( .A1(n50), .A2(n49), .ZN(n34) );
  INV_X1 U22 ( .I(O[5]), .ZN(n57) );
  INV_X1 U23 ( .I(n32), .ZN(n75) );
  INV_X2 U24 ( .I(A[15]), .ZN(n65) );
  INV_X1 U25 ( .I(n47), .ZN(n94) );
  NOR2_X1 U26 ( .A1(n102), .A2(n97), .ZN(n61) );
  NAND2_X1 U27 ( .A1(n26), .A2(n25), .ZN(n32) );
  NAND2_X1 U28 ( .A1(B[10]), .A2(A[10]), .ZN(n97) );
  NOR2_X2 U29 ( .A1(n35), .A2(n37), .ZN(n78) );
  NOR2_X1 U30 ( .A1(n53), .A2(n75), .ZN(n52) );
  INV_X1 U31 ( .I(n108), .ZN(n41) );
  INV_X1 U32 ( .I(n76), .ZN(n49) );
  OR2_X1 U33 ( .A1(A[13]), .A2(B[13]), .Z(n30) );
  INV_X4 U34 ( .I(B[15]), .ZN(n64) );
  AND2_X1 U35 ( .A1(A[15]), .A2(B[15]), .Z(n71) );
  AOI21_X2 U36 ( .A1(n84), .A2(n86), .B(n93), .ZN(n23) );
  AOI21_X1 U37 ( .A1(n105), .A2(n106), .B(n110), .ZN(n59) );
  NAND2_X2 U38 ( .A1(n21), .A2(n63), .ZN(n105) );
  AOI21_X2 U39 ( .A1(n36), .A2(n91), .B(n94), .ZN(n21) );
  INV_X2 U40 ( .I(n89), .ZN(n91) );
  INV_X2 U41 ( .I(n93), .ZN(n36) );
  NAND2_X2 U42 ( .A1(n23), .A2(n22), .ZN(n63) );
  NOR2_X2 U43 ( .A1(n88), .A2(n85), .ZN(n22) );
  NOR2_X2 U44 ( .A1(A[7]), .A2(B[7]), .ZN(n85) );
  NOR2_X2 U45 ( .A1(B[8]), .A2(A[8]), .ZN(n88) );
  NOR2_X2 U46 ( .A1(A[9]), .A2(B[9]), .ZN(n93) );
  NAND2_X2 U47 ( .A1(A[7]), .A2(B[7]), .ZN(n84) );
  NOR2_X2 U48 ( .A1(B[6]), .A2(A[6]), .ZN(n86) );
  AOI21_X1 U49 ( .A1(n70), .A2(O[5]), .B(n33), .ZN(n38) );
  INV_X1 U50 ( .I(n70), .ZN(n53) );
  NAND2_X1 U51 ( .A1(n38), .A2(n62), .ZN(n37) );
  AOI21_X1 U52 ( .A1(n87), .A2(n92), .B(n91), .ZN(n96) );
  NOR2_X2 U53 ( .A1(n60), .A2(n24), .ZN(n70) );
  NOR2_X2 U54 ( .A1(A[13]), .A2(B[13]), .ZN(n24) );
  NOR2_X2 U55 ( .A1(B[12]), .A2(A[12]), .ZN(n60) );
  INV_X2 U56 ( .I(A[14]), .ZN(n25) );
  INV_X2 U57 ( .I(B[14]), .ZN(n26) );
  AOI21_X2 U58 ( .A1(n36), .A2(n91), .B(n94), .ZN(n28) );
  NAND2_X1 U59 ( .A1(n33), .A2(n32), .ZN(n50) );
  CLKBUF_X2 U60 ( .I(n105), .Z(n27) );
  NOR2_X2 U61 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  INV_X1 U62 ( .I(n42), .ZN(n31) );
  INV_X2 U63 ( .I(n109), .ZN(n42) );
  AOI21_X1 U64 ( .A1(n28), .A2(n63), .B(n69), .ZN(n35) );
  OAI21_X2 U65 ( .A1(n29), .A2(n107), .B(n112), .ZN(n33) );
  NAND2_X2 U66 ( .A1(A[13]), .A2(B[13]), .ZN(n112) );
  NAND2_X2 U67 ( .A1(A[12]), .A2(B[12]), .ZN(n107) );
  AOI21_X2 U68 ( .A1(n110), .A2(n52), .B(n34), .ZN(n48) );
  NAND2_X2 U69 ( .A1(n70), .A2(n106), .ZN(n69) );
  NOR2_X2 U70 ( .A1(n102), .A2(n99), .ZN(n106) );
  NAND2_X2 U71 ( .A1(n51), .A2(n57), .ZN(n110) );
  NAND2_X1 U72 ( .A1(n44), .A2(n39), .ZN(n46) );
  OAI21_X2 U73 ( .A1(n42), .A2(n57), .B(n41), .ZN(n40) );
  INV_X1 U74 ( .I(n45), .ZN(n44) );
  AOI21_X1 U75 ( .A1(n28), .A2(n63), .B(n111), .ZN(n45) );
  XNOR2_X1 U76 ( .A1(n46), .A2(n113), .ZN(O[13]) );
  NAND2_X2 U77 ( .A1(B[8]), .A2(A[8]), .ZN(n89) );
  NAND2_X2 U78 ( .A1(B[9]), .A2(A[9]), .ZN(n47) );
  NAND2_X2 U79 ( .A1(n54), .A2(n48), .ZN(n74) );
  INV_X2 U80 ( .I(n61), .ZN(n51) );
  NOR2_X2 U81 ( .A1(n69), .A2(n75), .ZN(n55) );
  CLKBUF_X2 U82 ( .I(n86), .Z(n83) );
  OAI21_X1 U83 ( .A1(n83), .A2(n85), .B(n84), .ZN(n87) );
  NAND2_X2 U84 ( .A1(B[11]), .A2(A[11]), .ZN(n56) );
  INV_X2 U85 ( .I(n56), .ZN(O[5]) );
  NOR2_X2 U86 ( .A1(B[11]), .A2(A[11]), .ZN(n102) );
  NOR2_X2 U87 ( .A1(B[10]), .A2(A[10]), .ZN(n99) );
  INV_X1 U88 ( .I(n60), .ZN(n109) );
  AND2_X1 U89 ( .A1(n31), .A2(n107), .Z(n58) );
  XNOR2_X1 U90 ( .A1(n59), .A2(n58), .ZN(O[12]) );
  NAND2_X1 U91 ( .A1(n70), .A2(n61), .ZN(n62) );
  NAND2_X1 U92 ( .A1(n65), .A2(n64), .ZN(n66) );
  INV_X1 U93 ( .I(n66), .ZN(n72) );
  OR2_X1 U94 ( .A1(n75), .A2(n72), .Z(n68) );
  AND2_X2 U95 ( .A1(B[14]), .A2(A[14]), .Z(n76) );
  AOI21_X1 U96 ( .A1(n76), .A2(n66), .B(n71), .ZN(n67) );
  OAI21_X1 U97 ( .A1(n68), .A2(n78), .B(n67), .ZN(O[16]) );
  OR2_X1 U98 ( .A1(n72), .A2(n71), .Z(n73) );
  XNOR2_X1 U99 ( .A1(n74), .A2(n73), .ZN(O[15]) );
  NOR2_X1 U100 ( .A1(n76), .A2(n75), .ZN(n77) );
  XNOR2_X1 U101 ( .A1(n78), .A2(n77), .ZN(O[0]) );
  INV_X1 U102 ( .I(n83), .ZN(n80) );
  NAND2_X1 U103 ( .A1(n80), .A2(n79), .ZN(O[6]) );
  INV_X1 U104 ( .I(n84), .ZN(n81) );
  NOR2_X1 U105 ( .A1(n81), .A2(n85), .ZN(n82) );
  XNOR2_X1 U106 ( .A1(n83), .A2(n82), .ZN(O[7]) );
  INV_X1 U107 ( .I(n88), .ZN(n92) );
  NAND2_X1 U108 ( .A1(n92), .A2(n89), .ZN(n90) );
  XNOR2_X1 U109 ( .A1(n87), .A2(n90), .ZN(O[8]) );
  NOR2_X1 U110 ( .A1(n94), .A2(n93), .ZN(n95) );
  XNOR2_X1 U111 ( .A1(n96), .A2(n95), .ZN(O[9]) );
  INV_X1 U112 ( .I(n97), .ZN(n100) );
  NOR2_X1 U113 ( .A1(n100), .A2(n99), .ZN(n98) );
  XOR2_X1 U114 ( .A1(n27), .A2(n98), .Z(O[10]) );
  AOI21_X1 U115 ( .A1(n105), .A2(n101), .B(n100), .ZN(n104) );
  NOR2_X1 U116 ( .A1(O[5]), .A2(n102), .ZN(n103) );
  XNOR2_X1 U117 ( .A1(n104), .A2(n103), .ZN(O[11]) );
  NAND2_X1 U118 ( .A1(n106), .A2(n109), .ZN(n111) );
  INV_X1 U119 ( .I(n107), .ZN(n108) );
  NAND2_X1 U120 ( .A1(n30), .A2(n112), .ZN(n113) );
endmodule

