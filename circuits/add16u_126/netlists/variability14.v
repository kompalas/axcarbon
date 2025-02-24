/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:00:44 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134;
  assign O[2] = 1'b1;
  assign O[3] = 1'b1;
  assign O[4] = A[3];
  assign O[0] = A[8];
  assign O[1] = B[0];

  INV_X1 U15 ( .I(n120), .ZN(n128) );
  NAND2_X1 U16 ( .A1(B[15]), .A2(A[15]), .ZN(n132) );
  NAND2_X1 U17 ( .A1(B[4]), .A2(A[4]), .ZN(n26) );
  NAND2_X1 U18 ( .A1(B[5]), .A2(A[5]), .ZN(n22) );
  NAND2_X1 U19 ( .A1(A[14]), .A2(B[14]), .ZN(n125) );
  NOR2_X1 U20 ( .A1(B[5]), .A2(A[5]), .ZN(n24) );
  NAND2_X1 U21 ( .A1(A[6]), .A2(B[6]), .ZN(n25) );
  NOR2_X1 U22 ( .A1(A[10]), .A2(B[10]), .ZN(n31) );
  NAND2_X1 U23 ( .A1(B[4]), .A2(A[4]), .ZN(n27) );
  NAND2_X2 U24 ( .A1(A[12]), .A2(B[12]), .ZN(n114) );
  NOR2_X1 U25 ( .A1(n36), .A2(n83), .ZN(n90) );
  NAND2_X2 U26 ( .A1(n57), .A2(n56), .ZN(n127) );
  INV_X2 U27 ( .I(B[14]), .ZN(n56) );
  INV_X1 U28 ( .I(B[15]), .ZN(n59) );
  INV_X2 U29 ( .I(A[14]), .ZN(n57) );
  INV_X1 U30 ( .I(A[15]), .ZN(n58) );
  NOR2_X1 U31 ( .A1(A[10]), .A2(B[10]), .ZN(n30) );
  NOR2_X1 U32 ( .A1(B[5]), .A2(A[5]), .ZN(n28) );
  AND2_X1 U33 ( .A1(B[5]), .A2(A[5]), .Z(n23) );
  AOI21_X2 U34 ( .A1(n128), .A2(n127), .B(n126), .ZN(n129) );
  NAND2_X2 U35 ( .A1(n41), .A2(n40), .ZN(n33) );
  INV_X12 U36 ( .I(B[7]), .ZN(n40) );
  OAI21_X2 U37 ( .A1(n47), .A2(n81), .B(n86), .ZN(n37) );
  OAI21_X2 U38 ( .A1(n34), .A2(n102), .B(n96), .ZN(n48) );
  NAND2_X2 U39 ( .A1(A[10]), .A2(B[10]), .ZN(n102) );
  NAND2_X2 U40 ( .A1(A[11]), .A2(B[11]), .ZN(n96) );
  NOR2_X2 U41 ( .A1(n99), .A2(n95), .ZN(n49) );
  NAND2_X2 U42 ( .A1(A[6]), .A2(B[6]), .ZN(n70) );
  INV_X2 U43 ( .I(n70), .ZN(n72) );
  NAND2_X1 U44 ( .A1(n49), .A2(n90), .ZN(n52) );
  NAND2_X2 U45 ( .A1(B[9]), .A2(A[9]), .ZN(n86) );
  INV_X2 U46 ( .I(A[7]), .ZN(n41) );
  NOR2_X2 U47 ( .A1(B[7]), .A2(A[7]), .ZN(n76) );
  OAI21_X1 U48 ( .A1(n26), .A2(n28), .B(n22), .ZN(n29) );
  NAND2_X2 U49 ( .A1(n74), .A2(n51), .ZN(n80) );
  AND2_X1 U50 ( .A1(A[10]), .A2(B[10]), .Z(n32) );
  NOR2_X2 U51 ( .A1(A[11]), .A2(B[11]), .ZN(n34) );
  NOR2_X2 U52 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  NOR2_X2 U53 ( .A1(A[9]), .A2(B[9]), .ZN(n36) );
  AOI21_X2 U54 ( .A1(n117), .A2(n112), .B(n60), .ZN(n120) );
  NAND2_X2 U55 ( .A1(n54), .A2(n53), .ZN(n117) );
  NOR2_X1 U56 ( .A1(n36), .A2(n83), .ZN(n38) );
  NOR2_X1 U57 ( .A1(n46), .A2(n45), .ZN(n39) );
  NOR2_X1 U58 ( .A1(n46), .A2(n45), .ZN(n131) );
  OAI21_X1 U59 ( .A1(n131), .A2(n130), .B(n129), .ZN(n44) );
  CLKBUF_X2 U60 ( .I(n39), .Z(n43) );
  OAI21_X2 U61 ( .A1(n42), .A2(n67), .B(n66), .ZN(n74) );
  XNOR2_X1 U62 ( .A1(n27), .A2(n68), .ZN(O[5]) );
  NAND2_X2 U63 ( .A1(B[4]), .A2(A[4]), .ZN(n42) );
  NOR2_X2 U64 ( .A1(n76), .A2(n69), .ZN(n51) );
  NOR2_X2 U65 ( .A1(A[11]), .A2(B[11]), .ZN(n95) );
  NOR2_X2 U66 ( .A1(A[10]), .A2(B[10]), .ZN(n99) );
  XNOR2_X1 U67 ( .A1(n44), .A2(n134), .ZN(O[15]) );
  INV_X2 U68 ( .I(n50), .ZN(n45) );
  AOI21_X2 U69 ( .A1(n80), .A2(n79), .B(n52), .ZN(n46) );
  NAND2_X1 U70 ( .A1(n91), .A2(n38), .ZN(n94) );
  AOI21_X1 U71 ( .A1(n91), .A2(n85), .B(n84), .ZN(n89) );
  AND2_X2 U72 ( .A1(A[7]), .A2(B[7]), .Z(n75) );
  AOI21_X2 U73 ( .A1(n33), .A2(n72), .B(n75), .ZN(n79) );
  NOR2_X2 U74 ( .A1(A[9]), .A2(B[9]), .ZN(n47) );
  NOR2_X2 U75 ( .A1(A[8]), .A2(B[8]), .ZN(n83) );
  NAND2_X2 U76 ( .A1(A[8]), .A2(B[8]), .ZN(n81) );
  AOI21_X2 U77 ( .A1(n37), .A2(n49), .B(n48), .ZN(n50) );
  NOR2_X2 U78 ( .A1(B[5]), .A2(A[5]), .ZN(n67) );
  NAND2_X2 U79 ( .A1(B[5]), .A2(A[5]), .ZN(n66) );
  NOR2_X2 U80 ( .A1(A[6]), .A2(B[6]), .ZN(n69) );
  INV_X1 U81 ( .I(A[13]), .ZN(n54) );
  INV_X1 U82 ( .I(B[13]), .ZN(n53) );
  NOR2_X2 U83 ( .A1(A[12]), .A2(B[12]), .ZN(n115) );
  INV_X1 U84 ( .I(n115), .ZN(n55) );
  NAND2_X1 U85 ( .A1(n117), .A2(n55), .ZN(n121) );
  INV_X1 U86 ( .I(n121), .ZN(n124) );
  NAND2_X1 U87 ( .A1(n59), .A2(n58), .ZN(n133) );
  AND2_X1 U88 ( .A1(n127), .A2(n133), .Z(n63) );
  NAND2_X1 U89 ( .A1(n124), .A2(n63), .ZN(n65) );
  INV_X1 U90 ( .I(n114), .ZN(n112) );
  NAND2_X1 U91 ( .A1(A[13]), .A2(B[13]), .ZN(n116) );
  INV_X1 U92 ( .I(n116), .ZN(n60) );
  INV_X1 U93 ( .I(n133), .ZN(n61) );
  OAI21_X1 U94 ( .A1(n61), .A2(n125), .B(n132), .ZN(n62) );
  AOI21_X1 U95 ( .A1(n128), .A2(n63), .B(n62), .ZN(n64) );
  OAI21_X1 U96 ( .A1(n43), .A2(n65), .B(n64), .ZN(O[16]) );
  NOR2_X1 U97 ( .A1(n23), .A2(n24), .ZN(n68) );
  INV_X1 U98 ( .I(n69), .ZN(n73) );
  NAND2_X1 U99 ( .A1(n73), .A2(n25), .ZN(n71) );
  XNOR2_X1 U100 ( .A1(n29), .A2(n71), .ZN(O[6]) );
  AOI21_X1 U101 ( .A1(n73), .A2(n29), .B(n72), .ZN(n78) );
  NOR2_X1 U102 ( .A1(n76), .A2(n75), .ZN(n77) );
  XNOR2_X1 U103 ( .A1(n78), .A2(n77), .ZN(O[7]) );
  NAND2_X2 U104 ( .A1(n80), .A2(n79), .ZN(n91) );
  INV_X1 U105 ( .I(n81), .ZN(n84) );
  NOR2_X1 U106 ( .A1(n84), .A2(n83), .ZN(n82) );
  XOR2_X1 U107 ( .A1(n91), .A2(n82), .Z(O[8]) );
  INV_X1 U108 ( .I(n83), .ZN(n85) );
  INV_X1 U109 ( .I(n36), .ZN(n87) );
  NAND2_X1 U110 ( .A1(n87), .A2(n86), .ZN(n88) );
  XOR2_X1 U111 ( .A1(n89), .A2(n88), .Z(O[9]) );
  INV_X1 U112 ( .I(n37), .ZN(n98) );
  NAND2_X1 U113 ( .A1(n94), .A2(n98), .ZN(n93) );
  NOR2_X1 U114 ( .A1(n32), .A2(n30), .ZN(n92) );
  XOR2_X1 U115 ( .A1(n93), .A2(n92), .Z(O[10]) );
  INV_X1 U116 ( .I(n94), .ZN(n111) );
  INV_X1 U117 ( .I(n35), .ZN(n97) );
  NAND2_X1 U118 ( .A1(n97), .A2(n96), .ZN(n101) );
  NOR2_X1 U119 ( .A1(n101), .A2(n31), .ZN(n110) );
  NAND3_X1 U120 ( .A1(n98), .A2(n102), .A3(n101), .ZN(n108) );
  INV_X1 U121 ( .I(n98), .ZN(n106) );
  INV_X1 U122 ( .I(n30), .ZN(n100) );
  NAND2_X1 U123 ( .A1(n101), .A2(n100), .ZN(n105) );
  INV_X1 U124 ( .I(n101), .ZN(n103) );
  NAND2_X1 U125 ( .A1(n103), .A2(n102), .ZN(n104) );
  AOI22_X1 U126 ( .A1(n110), .A2(n106), .B1(n105), .B2(n104), .ZN(n107) );
  OAI21_X1 U127 ( .A1(n111), .A2(n108), .B(n107), .ZN(n109) );
  AOI21_X1 U128 ( .A1(n111), .A2(n110), .B(n109), .ZN(O[11]) );
  NOR2_X1 U129 ( .A1(n112), .A2(n115), .ZN(n113) );
  XNOR2_X1 U130 ( .A1(n43), .A2(n113), .ZN(O[12]) );
  OAI21_X1 U131 ( .A1(n39), .A2(n115), .B(n114), .ZN(n119) );
  NAND2_X1 U132 ( .A1(n117), .A2(n116), .ZN(n118) );
  XNOR2_X1 U133 ( .A1(n119), .A2(n118), .ZN(O[13]) );
  OAI21_X1 U134 ( .A1(n131), .A2(n121), .B(n120), .ZN(n123) );
  NAND2_X1 U135 ( .A1(n127), .A2(n125), .ZN(n122) );
  XNOR2_X1 U136 ( .A1(n123), .A2(n122), .ZN(O[14]) );
  NAND2_X1 U137 ( .A1(n124), .A2(n127), .ZN(n130) );
  INV_X1 U138 ( .I(n125), .ZN(n126) );
  NAND2_X1 U139 ( .A1(n133), .A2(n132), .ZN(n134) );
endmodule

