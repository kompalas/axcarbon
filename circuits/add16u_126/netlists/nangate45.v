/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:03:18 2025
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
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126;
  assign O[2] = 1'b1;
  assign O[3] = 1'b1;
  assign O[4] = A[3];
  assign O[0] = A[8];
  assign O[1] = B[0];

  AND2_X1 U15 ( .A1(A[14]), .A2(B[14]), .ZN(n121) );
  NOR2_X1 U16 ( .A1(B[6]), .A2(A[6]), .ZN(n26) );
  AND2_X2 U17 ( .A1(A[6]), .A2(B[6]), .ZN(n97) );
  NAND2_X1 U18 ( .A1(A[7]), .A2(B[7]), .ZN(n100) );
  NAND2_X1 U19 ( .A1(B[15]), .A2(A[15]), .ZN(n125) );
  CLKBUF_X1 U20 ( .A(n71), .Z(n72) );
  OR2_X2 U21 ( .A1(B[8]), .A2(A[8]), .ZN(n105) );
  OR2_X2 U22 ( .A1(A[10]), .A2(B[10]), .ZN(n79) );
  OR2_X1 U23 ( .A1(B[5]), .A2(A[5]), .ZN(n28) );
  NOR2_X4 U24 ( .A1(A[11]), .A2(B[11]), .ZN(n23) );
  OR2_X4 U25 ( .A1(B[15]), .A2(A[15]), .ZN(n122) );
  OR2_X2 U26 ( .A1(A[11]), .A2(B[11]), .ZN(n74) );
  INV_X1 U27 ( .A(n81), .ZN(n39) );
  INV_X1 U28 ( .A(n76), .ZN(n38) );
  AND2_X1 U29 ( .A1(n48), .A2(n100), .ZN(n45) );
  OR2_X1 U30 ( .A1(B[9]), .A2(A[9]), .ZN(n22) );
  OR2_X1 U31 ( .A1(A[12]), .A2(B[12]), .ZN(n87) );
  NAND4_X1 U32 ( .A1(n40), .A2(n39), .A3(n29), .A4(n38), .ZN(n37) );
  AND2_X1 U33 ( .A1(A[5]), .A2(B[5]), .ZN(n93) );
  OR2_X1 U34 ( .A1(A[7]), .A2(B[7]), .ZN(n47) );
  OR2_X1 U35 ( .A1(A[13]), .A2(B[13]), .ZN(n24) );
  NOR2_X1 U36 ( .A1(n101), .A2(n96), .ZN(n25) );
  AOI21_X1 U37 ( .B1(n28), .B2(n90), .A(n93), .ZN(n71) );
  INV_X1 U38 ( .A(n93), .ZN(n33) );
  NAND2_X1 U39 ( .A1(n61), .A2(n60), .ZN(n27) );
  OAI21_X1 U40 ( .B1(n52), .B2(n53), .A(n54), .ZN(n43) );
  AOI21_X1 U41 ( .B1(n22), .B2(n107), .A(n111), .ZN(n53) );
  OR2_X1 U42 ( .A1(B[5]), .A2(A[5]), .ZN(n91) );
  OR2_X1 U43 ( .A1(n75), .A2(n23), .ZN(n29) );
  AND2_X1 U44 ( .A1(n44), .A2(n41), .ZN(n80) );
  OAI21_X1 U45 ( .B1(n46), .B2(n71), .A(n45), .ZN(n44) );
  OR2_X1 U46 ( .A1(n34), .A2(n43), .ZN(n30) );
  NOR2_X1 U47 ( .A1(B[6]), .A2(A[6]), .ZN(n96) );
  NOR2_X1 U48 ( .A1(B[7]), .A2(A[7]), .ZN(n101) );
  OR2_X1 U49 ( .A1(n101), .A2(n96), .ZN(n46) );
  NAND2_X1 U50 ( .A1(n31), .A2(n25), .ZN(n42) );
  NAND2_X1 U51 ( .A1(n32), .A2(n33), .ZN(n31) );
  NAND2_X1 U52 ( .A1(n91), .A2(n90), .ZN(n32) );
  OR2_X2 U53 ( .A1(B[9]), .A2(A[9]), .ZN(n112) );
  OR2_X2 U54 ( .A1(n34), .A2(n43), .ZN(n118) );
  AOI21_X1 U55 ( .B1(n42), .B2(n45), .A(n55), .ZN(n34) );
  OR2_X1 U56 ( .A1(n83), .A2(n85), .ZN(n35) );
  NOR2_X1 U57 ( .A1(n35), .A2(n84), .ZN(n36) );
  AND2_X1 U58 ( .A1(n37), .A2(n36), .ZN(O[11]) );
  INV_X1 U59 ( .A(n80), .ZN(n40) );
  INV_X1 U60 ( .A(n44), .ZN(n110) );
  INV_X1 U61 ( .A(n51), .ZN(n41) );
  AOI21_X1 U62 ( .B1(n76), .B2(n74), .A(n75), .ZN(n54) );
  AND2_X1 U63 ( .A1(A[10]), .A2(B[10]), .ZN(n76) );
  INV_X1 U64 ( .A(n79), .ZN(n77) );
  NOR2_X1 U65 ( .A1(n76), .A2(n77), .ZN(n50) );
  AND2_X2 U66 ( .A1(A[4]), .A2(B[4]), .ZN(n90) );
  NAND2_X1 U67 ( .A1(n47), .A2(n97), .ZN(n48) );
  NAND2_X1 U68 ( .A1(n105), .A2(n112), .ZN(n51) );
  AND2_X1 U69 ( .A1(A[8]), .A2(B[8]), .ZN(n107) );
  AND2_X1 U70 ( .A1(A[9]), .A2(B[9]), .ZN(n111) );
  INV_X1 U71 ( .A(n53), .ZN(n81) );
  NOR2_X1 U72 ( .A1(n80), .A2(n81), .ZN(n49) );
  XNOR2_X1 U73 ( .A(n50), .B(n49), .ZN(O[10]) );
  NAND2_X1 U74 ( .A1(n79), .A2(n74), .ZN(n52) );
  OR2_X1 U75 ( .A1(n52), .A2(n51), .ZN(n55) );
  AND2_X1 U76 ( .A1(A[11]), .A2(B[11]), .ZN(n75) );
  AND2_X1 U77 ( .A1(A[12]), .A2(B[12]), .ZN(n86) );
  AOI21_X1 U78 ( .B1(n118), .B2(n87), .A(n86), .ZN(n57) );
  OR2_X1 U79 ( .A1(A[13]), .A2(B[13]), .ZN(n59) );
  NAND2_X1 U80 ( .A1(A[13]), .A2(B[13]), .ZN(n60) );
  AND2_X1 U81 ( .A1(n24), .A2(n60), .ZN(n56) );
  XNOR2_X1 U82 ( .A(n57), .B(n56), .ZN(O[13]) );
  OR2_X1 U83 ( .A1(A[14]), .A2(B[14]), .ZN(n116) );
  INV_X1 U84 ( .A(n116), .ZN(n58) );
  NAND2_X1 U85 ( .A1(n87), .A2(n24), .ZN(n67) );
  NOR2_X1 U86 ( .A1(n58), .A2(n67), .ZN(n64) );
  NAND2_X1 U87 ( .A1(n59), .A2(n86), .ZN(n61) );
  NAND2_X1 U88 ( .A1(n61), .A2(n60), .ZN(n120) );
  AND2_X1 U89 ( .A1(n120), .A2(n116), .ZN(n62) );
  OR2_X1 U90 ( .A1(n121), .A2(n62), .ZN(n63) );
  AOI21_X1 U91 ( .B1(n118), .B2(n64), .A(n63), .ZN(n66) );
  AND2_X1 U92 ( .A1(n122), .A2(n125), .ZN(n65) );
  XNOR2_X1 U93 ( .A(n66), .B(n65), .ZN(O[15]) );
  INV_X1 U94 ( .A(n67), .ZN(n117) );
  AOI21_X1 U95 ( .B1(n118), .B2(n117), .A(n27), .ZN(n70) );
  INV_X1 U96 ( .A(n121), .ZN(n68) );
  AND2_X1 U97 ( .A1(n116), .A2(n68), .ZN(n69) );
  XNOR2_X1 U98 ( .A(n70), .B(n69), .ZN(O[14]) );
  NOR2_X1 U99 ( .A1(n97), .A2(n26), .ZN(n73) );
  XNOR2_X1 U100 ( .A(n72), .B(n73), .ZN(O[6]) );
  NOR2_X1 U101 ( .A1(n75), .A2(n23), .ZN(n78) );
  MUX2_X1 U102 ( .A(n77), .B(n76), .S(n78), .Z(n85) );
  AND2_X1 U103 ( .A1(n78), .A2(n79), .ZN(n82) );
  AND2_X1 U104 ( .A1(n80), .A2(n82), .ZN(n84) );
  AND2_X1 U105 ( .A1(n82), .A2(n81), .ZN(n83) );
  INV_X1 U106 ( .A(n86), .ZN(n88) );
  NAND2_X1 U107 ( .A1(n88), .A2(n87), .ZN(n89) );
  XNOR2_X1 U108 ( .A(n30), .B(n89), .ZN(O[12]) );
  INV_X1 U109 ( .A(n90), .ZN(n95) );
  INV_X1 U110 ( .A(n28), .ZN(n92) );
  NOR2_X1 U111 ( .A1(n93), .A2(n92), .ZN(n94) );
  XNOR2_X1 U112 ( .A(n95), .B(n94), .ZN(O[5]) );
  OR2_X1 U113 ( .A1(n26), .A2(n72), .ZN(n99) );
  INV_X1 U114 ( .A(n97), .ZN(n98) );
  NAND2_X1 U115 ( .A1(n99), .A2(n98), .ZN(n104) );
  INV_X1 U116 ( .A(n100), .ZN(n102) );
  OR2_X1 U117 ( .A1(n102), .A2(n101), .ZN(n103) );
  XNOR2_X1 U118 ( .A(n104), .B(n103), .ZN(O[7]) );
  INV_X1 U119 ( .A(n105), .ZN(n109) );
  NOR2_X1 U120 ( .A1(n107), .A2(n109), .ZN(n106) );
  XNOR2_X1 U121 ( .A(n110), .B(n106), .ZN(O[8]) );
  INV_X1 U122 ( .A(n107), .ZN(n108) );
  OAI21_X1 U123 ( .B1(n110), .B2(n109), .A(n108), .ZN(n115) );
  INV_X1 U124 ( .A(n111), .ZN(n113) );
  NAND2_X1 U125 ( .A1(n113), .A2(n112), .ZN(n114) );
  XNOR2_X1 U126 ( .A(n115), .B(n114), .ZN(O[9]) );
  AND2_X1 U127 ( .A1(n116), .A2(n122), .ZN(n119) );
  NAND3_X1 U128 ( .A1(n30), .A2(n117), .A3(n119), .ZN(n126) );
  NAND2_X1 U129 ( .A1(n27), .A2(n119), .ZN(n124) );
  NAND2_X1 U130 ( .A1(n122), .A2(n121), .ZN(n123) );
  NAND4_X1 U131 ( .A1(n126), .A2(n125), .A3(n124), .A4(n123), .ZN(O[16]) );
endmodule

