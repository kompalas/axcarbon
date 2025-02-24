/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:55:01 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142;
  assign O[0] = 1'b1;
  assign O[2] = 1'b1;
  assign O[1] = A[2];

  NOR2_X1 U18 ( .A1(A[10]), .A2(B[10]), .ZN(n28) );
  NAND2_X1 U19 ( .A1(A[15]), .A2(B[15]), .ZN(n140) );
  INV_X2 U20 ( .I(A[15]), .ZN(n57) );
  INV_X1 U21 ( .I(n41), .ZN(n82) );
  NOR2_X1 U22 ( .A1(n31), .A2(n76), .ZN(n42) );
  NAND2_X1 U23 ( .A1(A[13]), .A2(B[13]), .ZN(n127) );
  NOR2_X1 U24 ( .A1(B[4]), .A2(A[4]), .ZN(n73) );
  INV_X1 U25 ( .I(n117), .ZN(n115) );
  NAND2_X1 U26 ( .A1(A[9]), .A2(B[9]), .ZN(n108) );
  INV_X2 U27 ( .I(A[6]), .ZN(n63) );
  INV_X2 U28 ( .I(A[14]), .ZN(n55) );
  NOR2_X1 U29 ( .A1(B[4]), .A2(A[4]), .ZN(n33) );
  NAND2_X1 U30 ( .A1(A[9]), .A2(B[9]), .ZN(n29) );
  NAND2_X2 U31 ( .A1(n57), .A2(n56), .ZN(n141) );
  INV_X4 U32 ( .I(B[15]), .ZN(n56) );
  INV_X2 U33 ( .I(A[13]), .ZN(n53) );
  AND2_X1 U34 ( .A1(A[9]), .A2(B[9]), .Z(n25) );
  NAND2_X1 U35 ( .A1(A[14]), .A2(B[14]), .ZN(n133) );
  AND2_X1 U36 ( .A1(A[10]), .A2(B[10]), .Z(n30) );
  INV_X2 U37 ( .I(A[12]), .ZN(n50) );
  NOR2_X2 U38 ( .A1(A[11]), .A2(B[11]), .ZN(n118) );
  AOI21_X1 U39 ( .A1(n130), .A2(n129), .B(n128), .ZN(n131) );
  NAND2_X1 U40 ( .A1(n126), .A2(n67), .ZN(n138) );
  OR2_X1 U41 ( .A1(A[8]), .A2(B[8]), .Z(n26) );
  NOR2_X1 U42 ( .A1(n87), .A2(n38), .ZN(n94) );
  AOI21_X1 U43 ( .A1(n79), .A2(n35), .B(n82), .ZN(n27) );
  NAND2_X1 U44 ( .A1(n94), .A2(n60), .ZN(n40) );
  NAND2_X2 U45 ( .A1(A[10]), .A2(B[10]), .ZN(n111) );
  NOR2_X2 U46 ( .A1(A[6]), .A2(B[6]), .ZN(n31) );
  INV_X12 U47 ( .I(B[6]), .ZN(n62) );
  NAND2_X2 U48 ( .A1(A[8]), .A2(B[8]), .ZN(n91) );
  NOR2_X2 U49 ( .A1(B[4]), .A2(A[4]), .ZN(n32) );
  OAI21_X1 U50 ( .A1(n73), .A2(n43), .B(n72), .ZN(n34) );
  NAND2_X2 U51 ( .A1(n63), .A2(n62), .ZN(n35) );
  NOR2_X2 U52 ( .A1(A[10]), .A2(B[10]), .ZN(n36) );
  NAND2_X1 U53 ( .A1(n34), .A2(n42), .ZN(n37) );
  NOR2_X2 U54 ( .A1(A[8]), .A2(B[8]), .ZN(n38) );
  NAND2_X1 U55 ( .A1(n37), .A2(n27), .ZN(n98) );
  CLKBUF_X2 U56 ( .I(n34), .Z(n39) );
  OAI21_X1 U57 ( .A1(n139), .A2(n118), .B(n117), .ZN(n48) );
  OAI21_X1 U58 ( .A1(n139), .A2(n138), .B(n137), .ZN(n44) );
  CLKBUF_X2 U59 ( .I(n139), .Z(n47) );
  OAI21_X2 U60 ( .A1(n43), .A2(n32), .B(n72), .ZN(n81) );
  NAND2_X2 U61 ( .A1(B[3]), .A2(A[3]), .ZN(n43) );
  AOI21_X2 U62 ( .A1(n104), .A2(n103), .B(n40), .ZN(n46) );
  NOR2_X2 U63 ( .A1(n36), .A2(n99), .ZN(n60) );
  AOI21_X2 U64 ( .A1(n79), .A2(n35), .B(n82), .ZN(n103) );
  NAND2_X2 U65 ( .A1(B[6]), .A2(A[6]), .ZN(n41) );
  INV_X2 U66 ( .I(n77), .ZN(n79) );
  NAND2_X2 U67 ( .A1(n81), .A2(n42), .ZN(n104) );
  NAND2_X2 U68 ( .A1(B[4]), .A2(A[4]), .ZN(n72) );
  XNOR2_X1 U69 ( .A1(n43), .A2(n75), .ZN(O[4]) );
  XNOR2_X1 U70 ( .A1(n44), .A2(n142), .ZN(O[15]) );
  NOR2_X2 U71 ( .A1(n46), .A2(n45), .ZN(n139) );
  INV_X2 U72 ( .I(n61), .ZN(n45) );
  XNOR2_X1 U73 ( .A1(n48), .A2(n121), .ZN(O[12]) );
  CLKBUF_X2 U74 ( .I(n99), .Z(n105) );
  INV_X2 U75 ( .I(B[12]), .ZN(n49) );
  NAND2_X2 U76 ( .A1(n50), .A2(n49), .ZN(n120) );
  INV_X1 U77 ( .I(n118), .ZN(n51) );
  NAND2_X1 U78 ( .A1(n120), .A2(n51), .ZN(n123) );
  INV_X1 U79 ( .I(n123), .ZN(n126) );
  INV_X2 U80 ( .I(B[13]), .ZN(n52) );
  NAND2_X2 U81 ( .A1(n53), .A2(n52), .ZN(n129) );
  INV_X2 U82 ( .I(B[14]), .ZN(n54) );
  NAND2_X2 U83 ( .A1(n55), .A2(n54), .ZN(n134) );
  AND2_X1 U84 ( .A1(n129), .A2(n134), .Z(n67) );
  INV_X1 U85 ( .I(n138), .ZN(n58) );
  NAND2_X1 U86 ( .A1(n58), .A2(n141), .ZN(n71) );
  NAND2_X2 U87 ( .A1(A[5]), .A2(B[5]), .ZN(n77) );
  NOR2_X2 U88 ( .A1(A[10]), .A2(B[10]), .ZN(n112) );
  NOR2_X2 U89 ( .A1(A[9]), .A2(B[9]), .ZN(n99) );
  NOR2_X2 U90 ( .A1(A[7]), .A2(B[7]), .ZN(n87) );
  NOR2_X2 U91 ( .A1(A[8]), .A2(B[8]), .ZN(n90) );
  NAND2_X2 U92 ( .A1(A[7]), .A2(B[7]), .ZN(n85) );
  OAI21_X2 U93 ( .A1(n90), .A2(n85), .B(n91), .ZN(n95) );
  OAI21_X2 U94 ( .A1(n112), .A2(n108), .B(n111), .ZN(n59) );
  AOI21_X2 U95 ( .A1(n95), .A2(n60), .B(n59), .ZN(n61) );
  NOR2_X2 U96 ( .A1(A[5]), .A2(B[5]), .ZN(n76) );
  NAND2_X2 U97 ( .A1(A[11]), .A2(B[11]), .ZN(n117) );
  NAND2_X1 U98 ( .A1(A[12]), .A2(B[12]), .ZN(n119) );
  INV_X1 U99 ( .I(n119), .ZN(n64) );
  AOI21_X2 U100 ( .A1(n120), .A2(n115), .B(n64), .ZN(n122) );
  INV_X2 U101 ( .I(n122), .ZN(n130) );
  INV_X1 U102 ( .I(n134), .ZN(n65) );
  OAI21_X1 U103 ( .A1(n65), .A2(n127), .B(n133), .ZN(n66) );
  AOI21_X2 U104 ( .A1(n130), .A2(n67), .B(n66), .ZN(n137) );
  INV_X1 U105 ( .I(n137), .ZN(n69) );
  INV_X1 U106 ( .I(n140), .ZN(n68) );
  AOI21_X1 U107 ( .A1(n69), .A2(n141), .B(n68), .ZN(n70) );
  OAI21_X1 U108 ( .A1(n71), .A2(n47), .B(n70), .ZN(O[16]) );
  XOR2_X1 U109 ( .A1(A[3]), .A2(B[3]), .Z(O[3]) );
  INV_X1 U110 ( .I(n72), .ZN(n74) );
  NOR2_X1 U111 ( .A1(n74), .A2(n33), .ZN(n75) );
  INV_X1 U112 ( .I(n76), .ZN(n80) );
  NAND2_X1 U113 ( .A1(n80), .A2(n77), .ZN(n78) );
  XNOR2_X1 U114 ( .A1(n39), .A2(n78), .ZN(O[5]) );
  AOI21_X1 U115 ( .A1(n80), .A2(n39), .B(n79), .ZN(n84) );
  NOR2_X1 U116 ( .A1(n31), .A2(n82), .ZN(n83) );
  XNOR2_X1 U117 ( .A1(n84), .A2(n83), .ZN(O[6]) );
  INV_X1 U118 ( .I(n85), .ZN(n88) );
  NOR2_X1 U119 ( .A1(n88), .A2(n87), .ZN(n86) );
  XOR2_X1 U120 ( .A1(n98), .A2(n86), .Z(O[7]) );
  INV_X1 U121 ( .I(n87), .ZN(n89) );
  AOI21_X1 U122 ( .A1(n98), .A2(n89), .B(n88), .ZN(n93) );
  NAND2_X1 U123 ( .A1(n26), .A2(n91), .ZN(n92) );
  XOR2_X1 U124 ( .A1(n93), .A2(n92), .Z(O[8]) );
  INV_X1 U125 ( .I(n94), .ZN(n107) );
  INV_X1 U126 ( .I(n107), .ZN(n97) );
  INV_X1 U127 ( .I(n95), .ZN(n106) );
  INV_X1 U128 ( .I(n106), .ZN(n96) );
  AOI21_X1 U129 ( .A1(n98), .A2(n97), .B(n96), .ZN(n102) );
  INV_X1 U130 ( .I(n105), .ZN(n100) );
  NAND2_X1 U131 ( .A1(n100), .A2(n29), .ZN(n101) );
  XOR2_X1 U132 ( .A1(n102), .A2(n101), .Z(O[9]) );
  NAND3_X1 U133 ( .A1(n27), .A2(n106), .A3(n37), .ZN(n110) );
  AOI21_X1 U134 ( .A1(n107), .A2(n106), .B(n105), .ZN(n109) );
  AOI21_X1 U135 ( .A1(n110), .A2(n109), .B(n25), .ZN(n114) );
  NOR2_X1 U136 ( .A1(n30), .A2(n28), .ZN(n113) );
  XNOR2_X1 U137 ( .A1(n114), .A2(n113), .ZN(O[10]) );
  NOR2_X1 U138 ( .A1(n115), .A2(n118), .ZN(n116) );
  XNOR2_X1 U139 ( .A1(n47), .A2(n116), .ZN(O[11]) );
  NAND2_X1 U140 ( .A1(n120), .A2(n119), .ZN(n121) );
  OAI21_X1 U141 ( .A1(n139), .A2(n123), .B(n122), .ZN(n125) );
  NAND2_X1 U142 ( .A1(n129), .A2(n127), .ZN(n124) );
  XNOR2_X1 U143 ( .A1(n125), .A2(n124), .ZN(O[13]) );
  NAND2_X1 U144 ( .A1(n126), .A2(n129), .ZN(n132) );
  INV_X1 U145 ( .I(n127), .ZN(n128) );
  OAI21_X1 U146 ( .A1(n139), .A2(n132), .B(n131), .ZN(n136) );
  NAND2_X1 U147 ( .A1(n134), .A2(n133), .ZN(n135) );
  XNOR2_X1 U148 ( .A1(n136), .A2(n135), .ZN(O[14]) );
  NAND2_X1 U149 ( .A1(n141), .A2(n140), .ZN(n142) );
endmodule

