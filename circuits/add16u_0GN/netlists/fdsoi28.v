/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:56:16 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130;
  assign O[0] = 1'b1;
  assign O[2] = 1'b1;
  assign O[1] = A[2];

  AND2_X1 U17 ( .A1(n42), .A2(n24), .ZN(n80) );
  AND2_X1 U18 ( .A1(A[3]), .A2(B[3]), .ZN(n61) );
  AOI21_X1 U19 ( .B1(n118), .B2(n109), .A(n55), .ZN(n56) );
  NAND2_X1 U20 ( .A1(B[15]), .A2(A[15]), .ZN(n127) );
  INV_X1 U21 ( .A(n110), .ZN(n117) );
  OR2_X1 U22 ( .A1(B[15]), .A2(A[15]), .ZN(n124) );
  INV_X1 U23 ( .A(n42), .ZN(n41) );
  NAND2_X2 U24 ( .A1(n39), .A2(n90), .ZN(n38) );
  NAND2_X1 U25 ( .A1(A[13]), .A2(B[13]), .ZN(n114) );
  NAND2_X1 U26 ( .A1(A[10]), .A2(B[10]), .ZN(n95) );
  NAND2_X1 U27 ( .A1(A[14]), .A2(B[14]), .ZN(n113) );
  INV_X2 U28 ( .A(n85), .ZN(n33) );
  INV_X8 U29 ( .A(A[6]), .ZN(n44) );
  INV_X4 U30 ( .A(A[12]), .ZN(n51) );
  INV_X4 U31 ( .A(B[12]), .ZN(n50) );
  NAND2_X4 U32 ( .A1(n26), .A2(n25), .ZN(n79) );
  NAND2_X1 U33 ( .A1(n113), .A2(n112), .ZN(n58) );
  INV_X4 U34 ( .A(B[7]), .ZN(n25) );
  INV_X4 U35 ( .A(A[7]), .ZN(n26) );
  OR2_X2 U36 ( .A1(A[9]), .A2(B[9]), .ZN(n91) );
  INV_X4 U37 ( .A(A[10]), .ZN(n32) );
  INV_X8 U38 ( .A(A[5]), .ZN(n35) );
  INV_X4 U39 ( .A(B[4]), .ZN(n28) );
  INV_X1 U40 ( .A(n63), .ZN(n65) );
  INV_X2 U41 ( .A(n101), .ZN(n98) );
  INV_X2 U42 ( .A(n83), .ZN(n24) );
  INV_X8 U43 ( .A(B[10]), .ZN(n31) );
  NAND2_X2 U44 ( .A1(A[12]), .A2(B[12]), .ZN(n103) );
  XOR2_X2 U45 ( .A(A[3]), .B(B[3]), .Z(O[3]) );
  INV_X8 U46 ( .A(A[8]), .ZN(n37) );
  INV_X4 U47 ( .A(n84), .ZN(n78) );
  INV_X1 U48 ( .A(n79), .ZN(n77) );
  INV_X16 U49 ( .A(A[4]), .ZN(n27) );
  NAND2_X4 U50 ( .A1(n28), .A2(n27), .ZN(n68) );
  NAND2_X4 U51 ( .A1(n69), .A2(n68), .ZN(n67) );
  NAND2_X4 U52 ( .A1(n60), .A2(n29), .ZN(n69) );
  NAND2_X4 U53 ( .A1(B[3]), .A2(A[3]), .ZN(n29) );
  NAND2_X4 U54 ( .A1(A[4]), .A2(B[4]), .ZN(n60) );
  OAI21_X4 U55 ( .B1(n83), .B2(n78), .A(n42), .ZN(n40) );
  AND2_X4 U56 ( .A1(A[8]), .A2(B[8]), .ZN(n83) );
  NAND2_X4 U57 ( .A1(n30), .A2(n63), .ZN(n46) );
  NAND2_X1 U58 ( .A1(n30), .A2(n73), .ZN(n74) );
  AOI21_X4 U59 ( .B1(n30), .B2(n64), .A(n72), .ZN(n45) );
  NAND2_X4 U60 ( .A1(n44), .A2(n43), .ZN(n30) );
  NAND2_X4 U61 ( .A1(n39), .A2(n33), .ZN(n47) );
  AND2_X1 U62 ( .A1(n39), .A2(n95), .ZN(n96) );
  NAND2_X4 U63 ( .A1(n32), .A2(n31), .ZN(n39) );
  OAI211_X4 U64 ( .C1(n47), .C2(n40), .A(n38), .B(n95), .ZN(n48) );
  NOR2_X4 U65 ( .A1(A[9]), .A2(B[9]), .ZN(n85) );
  NAND2_X4 U66 ( .A1(A[11]), .A2(B[11]), .ZN(n100) );
  INV_X16 U67 ( .A(B[5]), .ZN(n34) );
  NAND2_X4 U68 ( .A1(n35), .A2(n34), .ZN(n63) );
  INV_X16 U69 ( .A(B[8]), .ZN(n36) );
  NAND2_X4 U70 ( .A1(n37), .A2(n36), .ZN(n42) );
  NAND2_X2 U71 ( .A1(n98), .A2(n102), .ZN(n111) );
  AOI21_X2 U72 ( .B1(n118), .B2(n117), .A(n116), .ZN(n126) );
  NOR2_X4 U73 ( .A1(A[11]), .A2(B[11]), .ZN(n101) );
  NOR2_X4 U74 ( .A1(n82), .A2(n47), .ZN(n49) );
  NAND2_X2 U75 ( .A1(n112), .A2(n109), .ZN(n110) );
  OR2_X4 U76 ( .A1(B[13]), .A2(A[13]), .ZN(n109) );
  OR2_X4 U77 ( .A1(B[14]), .A2(A[14]), .ZN(n112) );
  AND2_X4 U78 ( .A1(A[9]), .A2(B[9]), .ZN(n90) );
  NAND2_X4 U79 ( .A1(A[7]), .A2(B[7]), .ZN(n84) );
  NAND2_X2 U80 ( .A1(n42), .A2(n79), .ZN(n82) );
  OAI21_X2 U81 ( .B1(n41), .B2(n84), .A(n24), .ZN(n92) );
  AOI21_X2 U82 ( .B1(n54), .B2(n102), .A(n53), .ZN(n106) );
  NAND2_X4 U83 ( .A1(n51), .A2(n50), .ZN(n102) );
  AOI21_X4 U84 ( .B1(n89), .B2(n49), .A(n48), .ZN(n121) );
  OAI21_X4 U85 ( .B1(n67), .B2(n46), .A(n45), .ZN(n89) );
  INV_X16 U86 ( .A(B[6]), .ZN(n43) );
  NAND2_X4 U87 ( .A1(A[5]), .A2(B[5]), .ZN(n70) );
  INV_X4 U88 ( .A(n70), .ZN(n64) );
  AND2_X4 U89 ( .A1(A[6]), .A2(B[6]), .ZN(n72) );
  INV_X1 U90 ( .A(n109), .ZN(n52) );
  OR2_X1 U91 ( .A1(n111), .A2(n52), .ZN(n57) );
  INV_X1 U92 ( .A(n100), .ZN(n54) );
  INV_X1 U93 ( .A(n103), .ZN(n53) );
  INV_X1 U94 ( .A(n106), .ZN(n118) );
  INV_X1 U95 ( .A(n114), .ZN(n55) );
  OAI21_X2 U96 ( .B1(n57), .B2(n121), .A(n56), .ZN(n59) );
  XNOR2_X1 U97 ( .A(n59), .B(n58), .ZN(O[14]) );
  NAND2_X1 U98 ( .A1(n60), .A2(n68), .ZN(n62) );
  XNOR2_X1 U99 ( .A(n62), .B(n61), .ZN(O[4]) );
  NOR2_X2 U100 ( .A1(n64), .A2(n65), .ZN(n66) );
  XNOR2_X1 U101 ( .A(n67), .B(n66), .ZN(O[5]) );
  NAND3_X1 U102 ( .A1(n69), .A2(n68), .A3(n63), .ZN(n71) );
  NAND2_X1 U103 ( .A1(n70), .A2(n71), .ZN(n75) );
  INV_X1 U104 ( .A(n72), .ZN(n73) );
  XNOR2_X1 U105 ( .A(n75), .B(n74), .ZN(O[6]) );
  NOR2_X1 U106 ( .A1(n77), .A2(n78), .ZN(n76) );
  XOR2_X1 U107 ( .A(n89), .B(n76), .Z(O[7]) );
  AOI21_X1 U108 ( .B1(n89), .B2(n79), .A(n78), .ZN(n81) );
  XNOR2_X1 U109 ( .A(n81), .B(n80), .ZN(O[8]) );
  INV_X1 U110 ( .A(n82), .ZN(n88) );
  AOI21_X1 U111 ( .B1(n89), .B2(n88), .A(n92), .ZN(n87) );
  NOR2_X1 U112 ( .A1(n85), .A2(n90), .ZN(n86) );
  XNOR2_X1 U113 ( .A(n87), .B(n86), .ZN(O[9]) );
  NAND3_X1 U114 ( .A1(n89), .A2(n88), .A3(n91), .ZN(n94) );
  AOI21_X1 U115 ( .B1(n92), .B2(n91), .A(n90), .ZN(n93) );
  NAND2_X1 U116 ( .A1(n94), .A2(n93), .ZN(n97) );
  XOR2_X1 U117 ( .A(n97), .B(n96), .Z(O[10]) );
  NAND2_X1 U118 ( .A1(n98), .A2(n100), .ZN(n99) );
  XOR2_X1 U119 ( .A(n121), .B(n99), .Z(O[11]) );
  OAI21_X1 U120 ( .B1(n121), .B2(n101), .A(n100), .ZN(n105) );
  NAND2_X1 U121 ( .A1(n103), .A2(n102), .ZN(n104) );
  XNOR2_X1 U122 ( .A(n105), .B(n104), .ZN(O[12]) );
  OAI21_X1 U123 ( .B1(n121), .B2(n111), .A(n106), .ZN(n108) );
  NAND2_X1 U124 ( .A1(n114), .A2(n109), .ZN(n107) );
  XNOR2_X1 U125 ( .A(n108), .B(n107), .ZN(O[13]) );
  OR2_X2 U126 ( .A1(n111), .A2(n110), .ZN(n122) );
  INV_X1 U127 ( .A(n112), .ZN(n115) );
  OAI21_X1 U128 ( .B1(n115), .B2(n114), .A(n113), .ZN(n116) );
  OAI21_X1 U129 ( .B1(n121), .B2(n122), .A(n126), .ZN(n120) );
  NAND2_X1 U130 ( .A1(n127), .A2(n124), .ZN(n119) );
  XNOR2_X1 U131 ( .A(n120), .B(n119), .ZN(O[15]) );
  BUF_X1 U132 ( .A(n121), .Z(n130) );
  INV_X1 U133 ( .A(n122), .ZN(n123) );
  NAND2_X1 U134 ( .A1(n123), .A2(n124), .ZN(n129) );
  INV_X1 U135 ( .A(n124), .ZN(n125) );
  OR2_X1 U136 ( .A1(n126), .A2(n125), .ZN(n128) );
  OAI211_X1 U137 ( .C1(n130), .C2(n129), .A(n128), .B(n127), .ZN(O[16]) );
endmodule

