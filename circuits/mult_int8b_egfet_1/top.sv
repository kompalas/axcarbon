/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:53:58 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [7:0] inp;
  output [15:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n61, n62, n63, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[14] = out[15];

  NAND2X1 U5 ( .A1(n15), .A2(n178), .Y(n78) );
  INVX1 U6 ( .A(n2), .Y(n81) );
  NAND2X1 U7 ( .A1(n58), .A2(n38), .Y(n2) );
  NAND2X1 U8 ( .A1(n129), .A2(n136), .Y(n71) );
  NAND2X1 U9 ( .A1(n3), .A2(n59), .Y(out[13]) );
  NAND2X1 U10 ( .A1(n84), .A2(n171), .Y(n3) );
  NAND2X1 U11 ( .A1(n80), .A2(n4), .Y(n69) );
  NAND2X1 U12 ( .A1(n195), .A2(n67), .Y(n4) );
  NAND2X1 U13 ( .A1(n75), .A2(n55), .Y(n7) );
  XOR2X1 U14 ( .A1(inp[5]), .A2(inp[2]), .Y(n22) );
  XNOR2X1 U15 ( .A1(inp[5]), .A2(n7), .Y(n5) );
  NAND2X1 U16 ( .A1(n42), .A2(n14), .Y(n6) );
  OR2X1 U17 ( .A1(n37), .A2(n188), .Y(n42) );
  AND2X1 U18 ( .A1(n68), .A2(n141), .Y(n82) );
  INVX1 U19 ( .A(n82), .Y(n8) );
  AND2X1 U20 ( .A1(n44), .A2(n162), .Y(n45) );
  INVX1 U21 ( .A(n45), .Y(n9) );
  AND2X1 U22 ( .A1(n81), .A2(n187), .Y(n37) );
  AND2X1 U23 ( .A1(inp[3]), .A2(inp[4]), .Y(n33) );
  INVX1 U24 ( .A(n33), .Y(n10) );
  AND2X1 U25 ( .A1(n162), .A2(n168), .Y(n73) );
  INVX1 U26 ( .A(n73), .Y(n12) );
  AND2X1 U27 ( .A1(n138), .A2(n136), .Y(n137) );
  INVX1 U28 ( .A(n137), .Y(n13) );
  AND2X1 U29 ( .A1(n70), .A2(n112), .Y(n43) );
  INVX1 U30 ( .A(n43), .Y(n14) );
  INVX1 U31 ( .A(n150), .Y(n15) );
  AND2X1 U32 ( .A1(n148), .A2(n159), .Y(n35) );
  INVX1 U33 ( .A(n35), .Y(n16) );
  XNOR2X1 U34 ( .A1(n22), .A2(inp[4]), .Y(n188) );
  INVX1 U35 ( .A(n188), .Y(n17) );
  AND2X1 U36 ( .A1(n72), .A2(n93), .Y(n50) );
  INVX1 U37 ( .A(n50), .Y(n18) );
  AND2X1 U38 ( .A1(n77), .A2(n71), .Y(n30) );
  INVX1 U39 ( .A(n30), .Y(n19) );
  XNOR2X1 U40 ( .A1(n113), .A2(n49), .Y(n51) );
  INVX1 U41 ( .A(n51), .Y(n20) );
  AND2X1 U42 ( .A1(n173), .A2(inp[6]), .Y(n52) );
  INVX1 U43 ( .A(n52), .Y(n21) );
  AND2X1 U44 ( .A1(inp[1]), .A2(n179), .Y(n32) );
  INVX1 U45 ( .A(n32), .Y(n23) );
  AND2X1 U46 ( .A1(inp[7]), .A2(n171), .Y(n31) );
  INVX1 U47 ( .A(n31), .Y(n24) );
  AND2X1 U48 ( .A1(n131), .A2(n101), .Y(n34) );
  INVX1 U49 ( .A(n34), .Y(n25) );
  XNOR2X1 U50 ( .A1(inp[3]), .A2(n107), .Y(n46) );
  INVX1 U51 ( .A(n46), .Y(n26) );
  AND2X1 U52 ( .A1(n145), .A2(n99), .Y(n47) );
  INVX1 U53 ( .A(n47), .Y(n27) );
  XNOR2X1 U54 ( .A1(n18), .A2(n118), .Y(n62) );
  INVX1 U55 ( .A(n62), .Y(n28) );
  AND2X1 U56 ( .A1(n6), .A2(n126), .Y(n36) );
  INVX1 U57 ( .A(n36), .Y(n29) );
  NAND2X1 U58 ( .A1(n184), .A2(n39), .Y(n38) );
  INVX1 U59 ( .A(n48), .Y(n39) );
  INVX1 U60 ( .A(n68), .Y(n195) );
  NAND2X1 U61 ( .A1(n41), .A2(n40), .Y(n68) );
  NAND2X1 U62 ( .A1(n128), .A2(n29), .Y(n40) );
  NOR2X1 U63 ( .A1(n135), .A2(n54), .Y(n41) );
  INVX1 U64 ( .A(n81), .Y(n70) );
  XOR2X1 U65 ( .A1(n7), .A2(inp[5]), .Y(n84) );
  INVX1 U66 ( .A(n44), .Y(n63) );
  NAND2X1 U67 ( .A1(n69), .A2(n155), .Y(n44) );
  NAND2X1 U68 ( .A1(n19), .A2(n78), .Y(n48) );
  NAND2X1 U69 ( .A1(n29), .A2(n104), .Y(n49) );
  NAND2X1 U70 ( .A1(n181), .A2(n96), .Y(n53) );
  NOR2X1 U71 ( .A1(n192), .A2(n61), .Y(n54) );
  OR2X1 U72 ( .A1(n63), .A2(n12), .Y(n55) );
  NAND2X1 U73 ( .A1(n95), .A2(inp[1]), .Y(n56) );
  NAND2X1 U74 ( .A1(n86), .A2(n110), .Y(n57) );
  NAND2X1 U75 ( .A1(n125), .A2(n65), .Y(n58) );
  NAND2X1 U76 ( .A1(n5), .A2(inp[6]), .Y(n59) );
  XOR2X1 U77 ( .A1(n133), .A2(n25), .Y(n61) );
  AND2X1 U78 ( .A1(n124), .A2(n56), .Y(n185) );
  INVX1 U79 ( .A(n185), .Y(n65) );
  XNOR2X1 U80 ( .A1(n108), .A2(n22), .Y(n141) );
  INVX1 U81 ( .A(n141), .Y(n67) );
  AND2X1 U82 ( .A1(n171), .A2(inp[0]), .Y(n138) );
  INVX1 U83 ( .A(n138), .Y(n72) );
  NOR2X1 U84 ( .A1(n63), .A2(n74), .Y(n167) );
  INVX1 U85 ( .A(n162), .Y(n74) );
  NAND2X1 U86 ( .A1(n76), .A2(n105), .Y(n75) );
  NAND2X1 U87 ( .A1(n9), .A2(inp[5]), .Y(n76) );
  AND2X1 U88 ( .A1(n10), .A2(n71), .Y(n150) );
  AND2X1 U89 ( .A1(n10), .A2(inp[1]), .Y(n77) );
  NOR2X1 U90 ( .A1(n61), .A2(n49), .Y(n135) );
  NAND2X1 U91 ( .A1(n69), .A2(n103), .Y(n148) );
  NAND2X1 U92 ( .A1(n8), .A2(n106), .Y(n80) );
  INVX1 U93 ( .A(inp[4]), .Y(n136) );
  OR2X1 U94 ( .A1(inp[3]), .A2(inp[2]), .Y(n83) );
  AND2X1 U95 ( .A1(n61), .A2(n20), .Y(n193) );
  INVX1 U96 ( .A(n193), .Y(n85) );
  AND2X1 U97 ( .A1(n149), .A2(n21), .Y(n157) );
  INVX1 U98 ( .A(n157), .Y(n86) );
  AND2X1 U99 ( .A1(n121), .A2(n120), .Y(n190) );
  INVX1 U100 ( .A(n190), .Y(n87) );
  AND2X1 U101 ( .A1(inp[3]), .A2(inp[2]), .Y(n184) );
  INVX1 U102 ( .A(n184), .Y(n88) );
  AND2X1 U103 ( .A1(n168), .A2(n142), .Y(n119) );
  INVX1 U104 ( .A(n119), .Y(n89) );
  AND2X1 U105 ( .A1(n114), .A2(n173), .Y(n116) );
  INVX1 U106 ( .A(n116), .Y(n90) );
  AND2X1 U107 ( .A1(inp[0]), .A2(n178), .Y(n174) );
  INVX1 U108 ( .A(n174), .Y(n91) );
  AND2X1 U109 ( .A1(inp[1]), .A2(n171), .Y(n115) );
  INVX1 U110 ( .A(n115), .Y(n92) );
  AND2X1 U111 ( .A1(n179), .A2(inp[6]), .Y(n117) );
  INVX1 U112 ( .A(n117), .Y(n93) );
  AND2X1 U113 ( .A1(n170), .A2(n171), .Y(n172) );
  INVX1 U114 ( .A(n172), .Y(n94) );
  AND2X1 U115 ( .A1(n122), .A2(n179), .Y(n123) );
  INVX1 U116 ( .A(n123), .Y(n95) );
  AND2X1 U117 ( .A1(n178), .A2(n179), .Y(n182) );
  INVX1 U118 ( .A(n182), .Y(n96) );
  AND2X1 U119 ( .A1(n111), .A2(n168), .Y(n164) );
  INVX1 U120 ( .A(n164), .Y(n97) );
  AND2X1 U121 ( .A1(n129), .A2(n168), .Y(n130) );
  INVX1 U122 ( .A(n130), .Y(n98) );
  AND2X1 U123 ( .A1(n144), .A2(n108), .Y(n146) );
  INVX1 U124 ( .A(n146), .Y(n99) );
  AND2X1 U125 ( .A1(n175), .A2(inp[1]), .Y(n177) );
  INVX1 U126 ( .A(n177), .Y(n100) );
  AND2X1 U127 ( .A1(n18), .A2(n98), .Y(n132) );
  INVX1 U128 ( .A(n132), .Y(n101) );
  AND2X1 U129 ( .A1(n13), .A2(n25), .Y(n140) );
  INVX1 U130 ( .A(n140), .Y(n102) );
  AND2X1 U131 ( .A1(n27), .A2(n26), .Y(n154) );
  INVX1 U132 ( .A(n154), .Y(n103) );
  AND2X1 U133 ( .A1(n28), .A2(n87), .Y(n134) );
  INVX1 U134 ( .A(n134), .Y(n104) );
  AND2X1 U135 ( .A1(n153), .A2(n10), .Y(n166) );
  INVX1 U136 ( .A(n166), .Y(n105) );
  AND2X1 U137 ( .A1(n139), .A2(n102), .Y(n196) );
  INVX1 U138 ( .A(n196), .Y(n106) );
  AND2X1 U139 ( .A1(n21), .A2(n24), .Y(n127) );
  INVX1 U140 ( .A(n127), .Y(n107) );
  AND2X1 U141 ( .A1(n90), .A2(n92), .Y(n143) );
  INVX1 U142 ( .A(n143), .Y(n108) );
  AND2X1 U143 ( .A1(n83), .A2(n88), .Y(n183) );
  INVX1 U144 ( .A(n183), .Y(n109) );
  XNOR2X1 U145 ( .A1(n173), .A2(n150), .Y(n158) );
  INVX1 U146 ( .A(n158), .Y(n110) );
  XNOR2X1 U147 ( .A1(n105), .A2(n167), .Y(n163) );
  INVX1 U148 ( .A(n163), .Y(n111) );
  AND2X1 U149 ( .A1(n19), .A2(n10), .Y(n187) );
  INVX1 U150 ( .A(n187), .Y(n112) );
  XNOR2X1 U151 ( .A1(inp[1]), .A2(n107), .Y(n192) );
  INVX1 U152 ( .A(n192), .Y(n113) );
  INVX1 U153 ( .A(inp[6]), .Y(n171) );
  INVX1 U154 ( .A(inp[7]), .Y(n173) );
  INVX1 U155 ( .A(inp[1]), .Y(n178) );
  NAND2X1 U156 ( .A1(n178), .A2(inp[6]), .Y(n114) );
  INVX1 U157 ( .A(inp[5]), .Y(n168) );
  INVX1 U158 ( .A(inp[2]), .Y(n142) );
  INVX1 U159 ( .A(inp[3]), .Y(n129) );
  XOR2X1 U160 ( .A1(n168), .A2(n129), .Y(n118) );
  INVX1 U161 ( .A(inp[0]), .Y(n179) );
  NAND2X1 U162 ( .A1(n89), .A2(inp[4]), .Y(n121) );
  NAND2X1 U163 ( .A1(inp[5]), .A2(inp[2]), .Y(n120) );
  OR2X1 U164 ( .A1(n28), .A2(n87), .Y(n126) );
  NAND2X1 U165 ( .A1(n48), .A2(n88), .Y(n125) );
  NAND2X1 U166 ( .A1(n129), .A2(inp[2]), .Y(n122) );
  NAND2X1 U167 ( .A1(n183), .A2(inp[0]), .Y(n124) );
  AND2X1 U168 ( .A1(n113), .A2(n104), .Y(n128) );
  XOR2X1 U169 ( .A1(n138), .A2(n136), .Y(n133) );
  NAND2X1 U170 ( .A1(inp[5]), .A2(inp[3]), .Y(n131) );
  NAND2X1 U171 ( .A1(n72), .A2(inp[4]), .Y(n139) );
  XOR2X1 U172 ( .A1(n69), .A2(n26), .Y(n147) );
  NAND2X1 U173 ( .A1(n142), .A2(inp[5]), .Y(n144) );
  NAND2X1 U174 ( .A1(n168), .A2(inp[2]), .Y(n145) );
  XOR2X1 U175 ( .A1(n147), .A2(n27), .Y(out[10]) );
  OR2X1 U176 ( .A1(n26), .A2(n27), .Y(n159) );
  NAND2X1 U177 ( .A1(n24), .A2(inp[3]), .Y(n149) );
  XOR2X1 U178 ( .A1(n16), .A2(n86), .Y(n151) );
  XOR2X1 U179 ( .A1(n151), .A2(n110), .Y(out[11]) );
  NAND2X1 U180 ( .A1(n71), .A2(inp[7]), .Y(n153) );
  OR2X1 U181 ( .A1(n110), .A2(n86), .Y(n156) );
  AND2X1 U182 ( .A1(n103), .A2(n156), .Y(n155) );
  INVX1 U183 ( .A(n156), .Y(n161) );
  AND2X1 U184 ( .A1(n159), .A2(n57), .Y(n160) );
  OR2X1 U185 ( .A1(n161), .A2(n160), .Y(n162) );
  NAND2X1 U186 ( .A1(n163), .A2(inp[5]), .Y(n165) );
  NAND2X1 U187 ( .A1(n165), .A2(n97), .Y(out[12]) );
  NOR2X1 U188 ( .A1(n7), .A2(inp[5]), .Y(n170) );
  AND2X1 U189 ( .A1(n173), .A2(n94), .Y(out[15]) );
  NAND2X1 U190 ( .A1(n23), .A2(n91), .Y(out[2]) );
  NOR2X1 U191 ( .A1(inp[2]), .A2(inp[0]), .Y(n175) );
  NAND2X1 U192 ( .A1(n23), .A2(inp[2]), .Y(n176) );
  NAND2X1 U193 ( .A1(n176), .A2(n100), .Y(out[3]) );
  NAND2X1 U194 ( .A1(n179), .A2(inp[2]), .Y(n180) );
  NAND2X1 U195 ( .A1(n180), .A2(inp[1]), .Y(n181) );
  XOR2X1 U196 ( .A1(n53), .A2(n109), .Y(out[4]) );
  XOR2X1 U197 ( .A1(n65), .A2(n88), .Y(n186) );
  XOR2X1 U198 ( .A1(n186), .A2(n48), .Y(out[5]) );
  XOR2X1 U199 ( .A1(n17), .A2(n112), .Y(n189) );
  XOR2X1 U200 ( .A1(n189), .A2(n70), .Y(out[6]) );
  XOR2X1 U201 ( .A1(n6), .A2(n87), .Y(n191) );
  XOR2X1 U202 ( .A1(n191), .A2(n28), .Y(out[7]) );
  OR2X1 U203 ( .A1(n20), .A2(n61), .Y(n194) );
  NAND2X1 U204 ( .A1(n194), .A2(n85), .Y(out[8]) );
  XOR2X1 U205 ( .A1(n141), .A2(n68), .Y(n197) );
  XOR2X1 U206 ( .A1(n197), .A2(n106), .Y(out[9]) );
endmodule

