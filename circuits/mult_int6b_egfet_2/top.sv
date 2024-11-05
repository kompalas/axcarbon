/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:49:23 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [5:0] inp;
  output [11:0] out;
  wire   n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n64, n65, n66, n67, n68, n69, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n89, n90, n91,
         n92, n93, n96, n97, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147;
  assign out[0] = inp[0];

  XOR2X1 U5 ( .A1(n2), .A2(inp[4]), .Y(out[11]) );
  NAND2X1 U6 ( .A1(n123), .A2(n18), .Y(n2) );
  OR2X1 U7 ( .A1(n6), .A2(n7), .Y(n64) );
  NAND2X1 U8 ( .A1(n5), .A2(n80), .Y(n87) );
  NAND2X1 U9 ( .A1(n93), .A2(n128), .Y(n72) );
  NAND2X1 U10 ( .A1(n43), .A2(n41), .Y(n11) );
  INVX1 U11 ( .A(n62), .Y(n3) );
  NAND2X1 U12 ( .A1(n51), .A2(n3), .Y(n96) );
  NAND2X1 U13 ( .A1(n46), .A2(n47), .Y(n10) );
  NAND2X1 U14 ( .A1(n96), .A2(n8), .Y(n5) );
  NAND2X1 U15 ( .A1(inp[3]), .A2(inp[1]), .Y(n67) );
  NOR2X1 U16 ( .A1(n9), .A2(n107), .Y(n6) );
  NOR2X1 U17 ( .A1(n31), .A2(n11), .Y(n7) );
  OR2X1 U18 ( .A1(inp[3]), .A2(inp[1]), .Y(n8) );
  INVX1 U19 ( .A(n14), .Y(n9) );
  NAND2X1 U20 ( .A1(n113), .A2(n23), .Y(n12) );
  NAND2X1 U21 ( .A1(n8), .A2(n67), .Y(n13) );
  XOR2X1 U22 ( .A1(n82), .A2(n106), .Y(n14) );
  NOR2X1 U23 ( .A1(n122), .A2(n49), .Y(n15) );
  NAND2X1 U24 ( .A1(n79), .A2(n86), .Y(n16) );
  AND2X1 U25 ( .A1(n60), .A2(n12), .Y(n115) );
  INVX1 U26 ( .A(n115), .Y(n17) );
  AND2X1 U27 ( .A1(n10), .A2(n122), .Y(n45) );
  INVX1 U28 ( .A(n45), .Y(n18) );
  AND2X1 U29 ( .A1(n112), .A2(n129), .Y(n40) );
  INVX1 U30 ( .A(n40), .Y(n19) );
  AND2X1 U31 ( .A1(n35), .A2(n25), .Y(n20) );
  AND2X1 U32 ( .A1(inp[2]), .A2(inp[0]), .Y(n59) );
  INVX1 U33 ( .A(n59), .Y(n21) );
  AND2X1 U34 ( .A1(n128), .A2(n130), .Y(n36) );
  INVX1 U35 ( .A(n36), .Y(n22) );
  AND2X1 U36 ( .A1(n111), .A2(n19), .Y(n114) );
  INVX1 U37 ( .A(n114), .Y(n23) );
  AND2X1 U38 ( .A1(n130), .A2(inp[1]), .Y(n57) );
  INVX1 U39 ( .A(n57), .Y(n24) );
  AND2X1 U40 ( .A1(n15), .A2(inp[0]), .Y(n56) );
  INVX1 U41 ( .A(n56), .Y(n25) );
  XNOR2X1 U42 ( .A1(n30), .A2(n62), .Y(n53) );
  INVX1 U43 ( .A(n53), .Y(n26) );
  XNOR2X1 U44 ( .A1(n11), .A2(n31), .Y(n55) );
  INVX1 U45 ( .A(n55), .Y(n27) );
  XNOR2X1 U46 ( .A1(n34), .A2(n73), .Y(n54) );
  INVX1 U47 ( .A(n54), .Y(n28) );
  AND2X1 U48 ( .A1(n89), .A2(n24), .Y(n37) );
  INVX1 U49 ( .A(n37), .Y(out[1]) );
  AND2X1 U50 ( .A1(n92), .A2(n73), .Y(n51) );
  INVX1 U51 ( .A(n51), .Y(n30) );
  AND2X1 U52 ( .A1(n91), .A2(n84), .Y(n50) );
  INVX1 U53 ( .A(n50), .Y(n31) );
  AND2X1 U54 ( .A1(n110), .A2(n68), .Y(n39) );
  INVX1 U55 ( .A(n39), .Y(n32) );
  AND2X1 U56 ( .A1(inp[3]), .A2(inp[5]), .Y(n49) );
  INVX1 U57 ( .A(n49), .Y(n33) );
  INVX1 U58 ( .A(n20), .Y(n34) );
  OR2X1 U59 ( .A1(n15), .A2(inp[0]), .Y(n35) );
  NAND2X1 U60 ( .A1(n73), .A2(n34), .Y(n38) );
  NAND2X1 U61 ( .A1(n140), .A2(n42), .Y(n41) );
  INVX1 U62 ( .A(n52), .Y(n42) );
  NAND2X1 U63 ( .A1(n103), .A2(n83), .Y(n43) );
  OR2X1 U64 ( .A1(n85), .A2(n65), .Y(n46) );
  NAND2X1 U65 ( .A1(n44), .A2(n17), .Y(n65) );
  OR2X1 U66 ( .A1(n64), .A2(n32), .Y(n44) );
  NAND2X1 U67 ( .A1(n121), .A2(inp[4]), .Y(n47) );
  NAND2X1 U68 ( .A1(n48), .A2(n21), .Y(n62) );
  NAND2X1 U69 ( .A1(n13), .A2(n72), .Y(n48) );
  NAND2X1 U70 ( .A1(n100), .A2(n38), .Y(n52) );
  NAND2X1 U71 ( .A1(n131), .A2(n71), .Y(n58) );
  NAND2X1 U72 ( .A1(n64), .A2(n32), .Y(n60) );
  AND2X1 U73 ( .A1(n118), .A2(n104), .Y(n122) );
  XNOR2X1 U74 ( .A1(n74), .A2(n129), .Y(n108) );
  INVX1 U75 ( .A(n108), .Y(n61) );
  AND2X1 U76 ( .A1(n117), .A2(n116), .Y(n120) );
  INVX1 U77 ( .A(n120), .Y(n66) );
  AND2X1 U78 ( .A1(n61), .A2(n118), .Y(n109) );
  INVX1 U79 ( .A(n109), .Y(n68) );
  AND2X1 U80 ( .A1(n11), .A2(n31), .Y(n107) );
  AND2X1 U81 ( .A1(n84), .A2(n101), .Y(n140) );
  INVX1 U82 ( .A(n140), .Y(n69) );
  AND2X1 U83 ( .A1(n129), .A2(n22), .Y(n132) );
  INVX1 U84 ( .A(n132), .Y(n71) );
  AND2X1 U85 ( .A1(n129), .A2(n145), .Y(n135) );
  INVX1 U86 ( .A(n135), .Y(n73) );
  AND2X1 U87 ( .A1(inp[5]), .A2(inp[1]), .Y(n116) );
  INVX1 U88 ( .A(n116), .Y(n74) );
  AND2X1 U89 ( .A1(n87), .A2(n28), .Y(n137) );
  INVX1 U90 ( .A(n137), .Y(n75) );
  AND2X1 U91 ( .A1(n14), .A2(n27), .Y(n142) );
  INVX1 U92 ( .A(n142), .Y(n76) );
  AND2X1 U93 ( .A1(n104), .A2(n128), .Y(n105) );
  INVX1 U94 ( .A(n105), .Y(n77) );
  AND2X1 U95 ( .A1(n125), .A2(n130), .Y(n126) );
  INVX1 U96 ( .A(n126), .Y(n78) );
  AND2X1 U97 ( .A1(n145), .A2(n118), .Y(n90) );
  INVX1 U98 ( .A(n90), .Y(n79) );
  AND2X1 U99 ( .A1(n62), .A2(n30), .Y(n97) );
  INVX1 U100 ( .A(n97), .Y(n80) );
  AND2X1 U101 ( .A1(n26), .A2(n8), .Y(n133) );
  INVX1 U102 ( .A(n133), .Y(n81) );
  AND2X1 U103 ( .A1(n74), .A2(n77), .Y(n111) );
  INVX1 U104 ( .A(n111), .Y(n82) );
  AND2X1 U105 ( .A1(n25), .A2(n33), .Y(n139) );
  INVX1 U106 ( .A(n139), .Y(n83) );
  AND2X1 U107 ( .A1(n16), .A2(out[1]), .Y(n102) );
  INVX1 U108 ( .A(n102), .Y(n84) );
  AND2X1 U109 ( .A1(n119), .A2(n66), .Y(n146) );
  INVX1 U110 ( .A(n146), .Y(n85) );
  AND2X1 U111 ( .A1(inp[4]), .A2(inp[3]), .Y(n112) );
  INVX1 U112 ( .A(n112), .Y(n86) );
  XNOR2X1 U113 ( .A1(n13), .A2(n58), .Y(out[3]) );
  INVX1 U114 ( .A(inp[1]), .Y(n128) );
  NAND2X1 U115 ( .A1(n128), .A2(inp[0]), .Y(n89) );
  INVX1 U116 ( .A(inp[0]), .Y(n130) );
  INVX1 U117 ( .A(inp[3]), .Y(n118) );
  INVX1 U118 ( .A(inp[5]), .Y(n104) );
  INVX1 U119 ( .A(inp[4]), .Y(n145) );
  NAND2X1 U120 ( .A1(inp[1]), .A2(inp[0]), .Y(n91) );
  INVX1 U121 ( .A(inp[2]), .Y(n129) );
  OR2X1 U122 ( .A1(n34), .A2(n73), .Y(n99) );
  NAND2X1 U123 ( .A1(inp[4]), .A2(inp[2]), .Y(n92) );
  NOR2X1 U124 ( .A1(inp[2]), .A2(inp[0]), .Y(n93) );
  NAND2X1 U125 ( .A1(n87), .A2(n99), .Y(n100) );
  OR2X1 U126 ( .A1(out[1]), .A2(n16), .Y(n101) );
  NAND2X1 U127 ( .A1(n52), .A2(n69), .Y(n103) );
  XOR2X1 U128 ( .A1(n112), .A2(n129), .Y(n106) );
  NAND2X1 U129 ( .A1(n108), .A2(inp[3]), .Y(n110) );
  NAND2X1 U130 ( .A1(n86), .A2(inp[2]), .Y(n113) );
  NAND2X1 U131 ( .A1(n129), .A2(inp[3]), .Y(n117) );
  NAND2X1 U132 ( .A1(n118), .A2(inp[2]), .Y(n119) );
  NAND2X1 U133 ( .A1(n65), .A2(n85), .Y(n121) );
  XOR2X1 U134 ( .A1(n10), .A2(n15), .Y(out[10]) );
  OR2X1 U135 ( .A1(n33), .A2(n10), .Y(n123) );
  NAND2X1 U136 ( .A1(n24), .A2(inp[2]), .Y(n127) );
  NOR2X1 U137 ( .A1(inp[2]), .A2(n128), .Y(n125) );
  NAND2X1 U138 ( .A1(n127), .A2(n78), .Y(out[2]) );
  NAND2X1 U139 ( .A1(n130), .A2(inp[2]), .Y(n131) );
  OR2X1 U140 ( .A1(n26), .A2(n8), .Y(n134) );
  NAND2X1 U141 ( .A1(n134), .A2(n81), .Y(out[4]) );
  OR2X1 U142 ( .A1(n28), .A2(n87), .Y(n138) );
  NAND2X1 U143 ( .A1(n138), .A2(n75), .Y(out[5]) );
  XOR2X1 U144 ( .A1(n52), .A2(n83), .Y(n141) );
  XOR2X1 U145 ( .A1(n141), .A2(n69), .Y(out[6]) );
  OR2X1 U146 ( .A1(n27), .A2(n14), .Y(n143) );
  NAND2X1 U147 ( .A1(n143), .A2(n76), .Y(out[7]) );
  XOR2X1 U148 ( .A1(n64), .A2(n32), .Y(n144) );
  XOR2X1 U149 ( .A1(n144), .A2(n12), .Y(out[8]) );
  XOR2X1 U150 ( .A1(n65), .A2(n145), .Y(n147) );
  XOR2X1 U151 ( .A1(n147), .A2(n85), .Y(out[9]) );
endmodule

