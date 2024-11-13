/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:19:13 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [5:0] inp;
  output [13:0] out;
  wire   n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n15, n16, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n68, n70, n71, n72, n73, n74, n75, n76, n80, n81, n82, n84,
         n85, n86, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155;
  assign out[2] = inp[1];
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[12] = out[13];

  AND2X1 U5 ( .A1(n85), .A2(n128), .Y(n6) );
  INVX1 U6 ( .A(n2), .Y(n130) );
  INVX1 U7 ( .A(n72), .Y(n3) );
  AND2X1 U8 ( .A1(n3), .A2(n136), .Y(n2) );
  NAND2X1 U9 ( .A1(n16), .A2(n145), .Y(n70) );
  NAND2X1 U10 ( .A1(n20), .A2(n43), .Y(n16) );
  INVX1 U11 ( .A(n60), .Y(n4) );
  INVX1 U12 ( .A(n59), .Y(n5) );
  OR2X1 U13 ( .A1(n5), .A2(n4), .Y(n47) );
  NAND2X1 U14 ( .A1(n41), .A2(n76), .Y(n45) );
  NAND2X1 U15 ( .A1(n74), .A2(n34), .Y(n85) );
  NAND2X1 U16 ( .A1(n57), .A2(n25), .Y(n74) );
  INVX1 U17 ( .A(n47), .Y(n73) );
  NAND2X1 U18 ( .A1(n120), .A2(n143), .Y(n38) );
  INVX1 U19 ( .A(n6), .Y(n23) );
  INVX1 U20 ( .A(n54), .Y(n9) );
  INVX1 U21 ( .A(n66), .Y(n10) );
  NOR2X1 U22 ( .A1(n10), .A2(n9), .Y(n81) );
  INVX1 U23 ( .A(n11), .Y(n139) );
  NAND2X1 U24 ( .A1(n21), .A2(n29), .Y(n11) );
  NAND2X1 U25 ( .A1(n35), .A2(n86), .Y(n21) );
  NAND2X1 U26 ( .A1(n13), .A2(n12), .Y(n20) );
  INVX1 U27 ( .A(inp[5]), .Y(n12) );
  INVX1 U28 ( .A(inp[3]), .Y(n13) );
  INVX1 U29 ( .A(n71), .Y(n15) );
  NAND2X1 U30 ( .A1(n80), .A2(n15), .Y(n61) );
  INVX1 U31 ( .A(n16), .Y(n82) );
  NAND2X1 U32 ( .A1(inp[3]), .A2(inp[5]), .Y(n43) );
  NAND2X1 U33 ( .A1(n38), .A2(n121), .Y(n46) );
  NAND2X1 U34 ( .A1(n72), .A2(n88), .Y(n19) );
  NAND2X1 U35 ( .A1(n62), .A2(n61), .Y(n24) );
  AND2X1 U36 ( .A1(n28), .A2(n70), .Y(n80) );
  INVX1 U37 ( .A(n80), .Y(n22) );
  AND2X1 U38 ( .A1(n81), .A2(n153), .Y(n65) );
  INVX1 U39 ( .A(n65), .Y(n25) );
  NAND2X1 U40 ( .A1(n47), .A2(n106), .Y(n26) );
  NAND2X1 U41 ( .A1(n108), .A2(inp[1]), .Y(n27) );
  NAND2X1 U42 ( .A1(n82), .A2(inp[1]), .Y(n28) );
  NAND2X1 U43 ( .A1(n134), .A2(n100), .Y(n29) );
  NAND2X1 U44 ( .A1(n113), .A2(n91), .Y(n30) );
  NAND2X1 U45 ( .A1(n26), .A2(n40), .Y(n31) );
  NAND2X1 U46 ( .A1(n129), .A2(n97), .Y(n32) );
  AND2X1 U47 ( .A1(n28), .A2(n43), .Y(n53) );
  INVX1 U48 ( .A(n53), .Y(n33) );
  AND2X1 U49 ( .A1(n31), .A2(n30), .Y(n51) );
  INVX1 U50 ( .A(n51), .Y(n34) );
  AND2X1 U51 ( .A1(n135), .A2(n32), .Y(n137) );
  INVX1 U52 ( .A(n137), .Y(n35) );
  AND2X1 U53 ( .A1(n116), .A2(n144), .Y(n117) );
  INVX1 U54 ( .A(n117), .Y(n36) );
  AND2X1 U55 ( .A1(n71), .A2(n22), .Y(n63) );
  INVX1 U56 ( .A(n63), .Y(n37) );
  AND2X1 U57 ( .A1(n73), .A2(n125), .Y(n126) );
  INVX1 U58 ( .A(n126), .Y(n39) );
  AND2X1 U59 ( .A1(n73), .A2(n109), .Y(n110) );
  INVX1 U60 ( .A(n110), .Y(n40) );
  AND2X1 U61 ( .A1(n46), .A2(n122), .Y(n50) );
  INVX1 U62 ( .A(n50), .Y(n41) );
  XNOR2X1 U63 ( .A1(n44), .A2(n24), .Y(n75) );
  INVX1 U64 ( .A(n75), .Y(n42) );
  AND2X1 U65 ( .A1(n39), .A2(n101), .Y(n52) );
  INVX1 U66 ( .A(n52), .Y(n44) );
  INVX1 U67 ( .A(n82), .Y(n48) );
  INVX1 U68 ( .A(n81), .Y(n49) );
  OR2X1 U69 ( .A1(n24), .A2(n33), .Y(n54) );
  XOR2X1 U70 ( .A1(n56), .A2(n74), .Y(out[9]) );
  XOR2X1 U71 ( .A1(n31), .A2(n30), .Y(n56) );
  NAND2X1 U72 ( .A1(n64), .A2(n98), .Y(n57) );
  NAND2X1 U73 ( .A1(inp[2]), .A2(inp[4]), .Y(n71) );
  NAND2X1 U74 ( .A1(n58), .A2(inp[4]), .Y(n59) );
  INVX1 U75 ( .A(inp[2]), .Y(n58) );
  NAND2X1 U76 ( .A1(n132), .A2(inp[2]), .Y(n60) );
  INVX1 U77 ( .A(inp[4]), .Y(n132) );
  NAND2X1 U78 ( .A1(n37), .A2(n45), .Y(n62) );
  NAND2X1 U79 ( .A1(n49), .A2(n104), .Y(n64) );
  NAND2X1 U80 ( .A1(n68), .A2(n44), .Y(n66) );
  XOR2X1 U81 ( .A1(n32), .A2(n23), .Y(n72) );
  NAND2X1 U82 ( .A1(n24), .A2(n33), .Y(n68) );
  NAND2X1 U83 ( .A1(n47), .A2(inp[0]), .Y(n76) );
  XOR2X1 U84 ( .A1(n149), .A2(n46), .Y(out[5]) );
  INVX1 U85 ( .A(inp[0]), .Y(n84) );
  NOR2X1 U86 ( .A1(n84), .A2(n58), .Y(n143) );
  NAND2X1 U87 ( .A1(n73), .A2(n84), .Y(n122) );
  INVX1 U88 ( .A(inp[5]), .Y(n119) );
  INVX1 U89 ( .A(inp[3]), .Y(n144) );
  OR2X1 U90 ( .A1(n29), .A2(n21), .Y(n138) );
  OR2X1 U91 ( .A1(n88), .A2(n23), .Y(n86) );
  AND2X1 U92 ( .A1(n71), .A2(n26), .Y(n136) );
  INVX1 U93 ( .A(n136), .Y(n88) );
  AND2X1 U94 ( .A1(n146), .A2(inp[1]), .Y(n148) );
  INVX1 U95 ( .A(n148), .Y(n89) );
  AND2X1 U96 ( .A1(n33), .A2(n42), .Y(n151) );
  INVX1 U97 ( .A(n151), .Y(n90) );
  AND2X1 U98 ( .A1(n95), .A2(n27), .Y(n114) );
  INVX1 U99 ( .A(n114), .Y(n91) );
  AND2X1 U100 ( .A1(n58), .A2(n84), .Y(n142) );
  INVX1 U101 ( .A(n142), .Y(n92) );
  AND2X1 U102 ( .A1(n145), .A2(n84), .Y(n112) );
  INVX1 U103 ( .A(n112), .Y(n93) );
  AND2X1 U104 ( .A1(n124), .A2(n145), .Y(n115) );
  INVX1 U105 ( .A(n115), .Y(n94) );
  AND2X1 U106 ( .A1(n145), .A2(n119), .Y(n111) );
  INVX1 U107 ( .A(n111), .Y(n95) );
  INVX1 U108 ( .A(n139), .Y(n96) );
  AND2X1 U109 ( .A1(n82), .A2(n58), .Y(n131) );
  INVX1 U110 ( .A(n131), .Y(n97) );
  AND2X1 U111 ( .A1(n71), .A2(n101), .Y(n154) );
  INVX1 U112 ( .A(n154), .Y(n98) );
  AND2X1 U113 ( .A1(n27), .A2(n94), .Y(n116) );
  INVX1 U114 ( .A(n116), .Y(n99) );
  AND2X1 U115 ( .A1(n102), .A2(n132), .Y(n140) );
  INVX1 U116 ( .A(n140), .Y(n100) );
  AND2X1 U117 ( .A1(n47), .A2(n103), .Y(n127) );
  INVX1 U118 ( .A(n127), .Y(n101) );
  AND2X1 U119 ( .A1(n20), .A2(n97), .Y(n133) );
  INVX1 U120 ( .A(n133), .Y(n102) );
  AND2X1 U121 ( .A1(n123), .A2(n108), .Y(n125) );
  INVX1 U122 ( .A(n125), .Y(n103) );
  AND2X1 U123 ( .A1(n118), .A2(n36), .Y(n153) );
  INVX1 U124 ( .A(n153), .Y(n104) );
  XNOR2X1 U125 ( .A1(n107), .A2(n144), .Y(n146) );
  INVX1 U126 ( .A(n146), .Y(n105) );
  AND2X1 U127 ( .A1(inp[5]), .A2(inp[1]), .Y(n109) );
  INVX1 U128 ( .A(n109), .Y(n106) );
  INVX1 U129 ( .A(n143), .Y(n107) );
  AND2X1 U130 ( .A1(n119), .A2(inp[0]), .Y(n124) );
  INVX1 U131 ( .A(n124), .Y(n108) );
  INVX1 U132 ( .A(inp[1]), .Y(n145) );
  NAND2X1 U133 ( .A1(n144), .A2(n93), .Y(n113) );
  NAND2X1 U134 ( .A1(n99), .A2(inp[3]), .Y(n118) );
  NAND2X1 U135 ( .A1(n145), .A2(n144), .Y(n120) );
  NAND2X1 U136 ( .A1(inp[1]), .A2(inp[3]), .Y(n121) );
  NAND2X1 U137 ( .A1(n84), .A2(inp[5]), .Y(n123) );
  OR2X1 U138 ( .A1(n31), .A2(n30), .Y(n128) );
  NAND2X1 U139 ( .A1(n48), .A2(inp[2]), .Y(n129) );
  NAND2X1 U140 ( .A1(n130), .A2(n19), .Y(out[10]) );
  NAND2X1 U141 ( .A1(n133), .A2(inp[4]), .Y(n134) );
  NAND2X1 U142 ( .A1(n23), .A2(n88), .Y(n135) );
  NAND2X1 U143 ( .A1(n138), .A2(n96), .Y(out[11]) );
  NOR2X1 U144 ( .A1(n21), .A2(n100), .Y(n141) );
  NOR2X1 U145 ( .A1(inp[5]), .A2(n141), .Y(out[13]) );
  AND2X1 U146 ( .A1(n107), .A2(n92), .Y(out[3]) );
  NAND2X1 U147 ( .A1(n145), .A2(n105), .Y(n147) );
  NAND2X1 U148 ( .A1(n147), .A2(n89), .Y(out[4]) );
  XOR2X1 U149 ( .A1(n73), .A2(n84), .Y(n149) );
  XOR2X1 U150 ( .A1(n71), .A2(n22), .Y(n150) );
  XOR2X1 U151 ( .A1(n150), .A2(n45), .Y(out[6]) );
  OR2X1 U152 ( .A1(n42), .A2(n33), .Y(n152) );
  NAND2X1 U153 ( .A1(n152), .A2(n90), .Y(out[7]) );
  XOR2X1 U154 ( .A1(n49), .A2(n104), .Y(n155) );
  XOR2X1 U155 ( .A1(n155), .A2(n98), .Y(out[8]) );
endmodule

