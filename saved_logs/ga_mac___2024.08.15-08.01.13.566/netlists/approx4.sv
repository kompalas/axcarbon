/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Thu Aug 15 07:22:26 2024
/////////////////////////////////////////////////////////////


module top ( weight, inp, partial_sum_in, partial_sum_out );
  input [7:0] weight;
  input [7:0] inp;
  input [31:0] partial_sum_in;
  output [31:0] partial_sum_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442;

  INV_X1 U1 ( .I(partial_sum_in[16]), .ZN(n441) );
  INV_X1 U2 ( .I(partial_sum_in[18]), .ZN(n353) );
  INV_X1 U3 ( .I(partial_sum_in[20]), .ZN(n347) );
  INV_X1 U4 ( .I(partial_sum_in[23]), .ZN(n341) );
  INV_X1 U5 ( .I(partial_sum_in[29]), .ZN(n277) );
  NAND2_X1 U6 ( .A1(n364), .A2(n323), .ZN(n355) );
  OAI21_X1 U7 ( .A1(n380), .A2(n367), .B(n368), .ZN(n31) );
  INV_X1 U8 ( .I(n363), .ZN(n321) );
  NOR2_X1 U9 ( .A1(n237), .A2(n238), .ZN(n379) );
  INV_X1 U10 ( .I(n280), .ZN(n323) );
  OR2_X1 U11 ( .A1(n139), .A2(n138), .Z(n414) );
  NOR2_X1 U12 ( .A1(n266), .A2(n265), .ZN(n280) );
  NAND2_X1 U13 ( .A1(n199), .A2(n198), .ZN(n235) );
  NAND2_X1 U14 ( .A1(n160), .A2(n159), .ZN(n233) );
  NOR2_X1 U15 ( .A1(n267), .A2(partial_sum_in[15]), .ZN(n359) );
  INV_X1 U16 ( .I(n215), .ZN(n1) );
  NOR2_X1 U17 ( .A1(n248), .A2(n247), .ZN(n245) );
  NOR2_X1 U18 ( .A1(n255), .A2(n37), .ZN(n246) );
  INV_X1 U19 ( .I(n75), .ZN(n80) );
  INV_X1 U20 ( .I(partial_sum_in[25]), .ZN(n297) );
  INV_X1 U21 ( .I(partial_sum_in[22]), .ZN(n306) );
  NOR2_X1 U22 ( .A1(n224), .A2(n209), .ZN(n184) );
  INV_X1 U23 ( .I(partial_sum_in[1]), .ZN(n4) );
  NAND2_X1 U24 ( .A1(weight[5]), .A2(inp[2]), .ZN(n10) );
  NAND2_X1 U25 ( .A1(inp[6]), .A2(inp[1]), .ZN(n45) );
  NAND2_X1 U26 ( .A1(weight[6]), .A2(inp[2]), .ZN(n24) );
  NAND2_X1 U27 ( .A1(weight[2]), .A2(weight[7]), .ZN(n44) );
  INV_X8 U28 ( .I(inp[7]), .ZN(n255) );
  INV_X8 U29 ( .I(inp[6]), .ZN(n248) );
  INV_X8 U30 ( .I(weight[5]), .ZN(n37) );
  INV_X4 U31 ( .I(inp[4]), .ZN(n212) );
  INV_X4 U32 ( .I(weight[4]), .ZN(n19) );
  INV_X4 U33 ( .I(inp[6]), .ZN(n22) );
  NOR2_X2 U34 ( .A1(n255), .A2(n186), .ZN(n211) );
  NAND2_X2 U35 ( .A1(n2), .A2(n1), .ZN(n54) );
  INV_X2 U36 ( .I(n29), .ZN(n2) );
  NOR2_X2 U37 ( .A1(n379), .A2(n367), .ZN(n33) );
  NOR2_X1 U38 ( .A1(n224), .A2(n37), .ZN(n206) );
  OAI22_X2 U39 ( .A1(n9), .A2(n10), .B1(n8), .B2(n7), .ZN(n171) );
  AND2_X2 U40 ( .A1(n12), .A2(n13), .Z(n9) );
  NAND2_X1 U41 ( .A1(weight[0]), .A2(weight[7]), .ZN(n7) );
  NAND2_X2 U42 ( .A1(partial_sum_in[23]), .A2(partial_sum_in[24]), .ZN(n294)
         );
  NAND2_X1 U43 ( .A1(inp[7]), .A2(inp[0]), .ZN(n8) );
  INV_X4 U44 ( .I(inp[1]), .ZN(n109) );
  NAND2_X2 U45 ( .A1(partial_sum_in[20]), .A2(partial_sum_in[21]), .ZN(n303)
         );
  NAND2_X1 U46 ( .A1(n148), .A2(n147), .ZN(n149) );
  NOR2_X2 U47 ( .A1(n240), .A2(n239), .ZN(n367) );
  OAI21_X1 U48 ( .A1(n426), .A2(n430), .B(n427), .ZN(n424) );
  NOR2_X1 U49 ( .A1(n120), .A2(n119), .ZN(n426) );
  INV_X1 U50 ( .I(n69), .ZN() );
  NOR2_X1 U51 ( .A1(n115), .A2(n64), .ZN(n435) );
  NOR2_X1 U52 ( .A1(n5), .A2(n4), .ZN(n110) );
  AND2_X1 U53 ( .A1(inp[0]), .A2(weight[6]), .Z(n61) );
  NAND2_X2 U54 ( .A1(partial_sum_in[16]), .A2(partial_sum_in[17]), .ZN(n311)
         );
  INV_X8 U55 ( .I(weight[6]), .ZN(n247) );
  AND2_X1 U56 ( .A1(inp[1]), .A2(weight[5]), .Z() );
  NAND2_X1 U57 ( .A1(inp[6]), .A2(weight[2]), .ZN(n20) );
  INV_X4 U58 ( .I(weight[2]), .ZN(n169) );
  NOR2_X2 U59 ( .A1(n355), .A2(n359), .ZN(n439) );
  XOR2_X1 U60 ( .A1(n145), .A2(n3), .Z(n139) );
  XOR2_X1 U61 ( .A1(n144), .A2(n146), .Z() );
  XOR2_X1 U62 ( .A1(n5), .A2(n4), .Z(n117) );
  NAND2_X2 U63 ( .A1(inp[1]), .A2(weight[0]), .ZN(n5) );
  NAND2_X1 U64 ( .A1(n145), .A2(n53), .ZN(n148) );
  NAND2_X1 U65 ( .A1(n150), .A2(n149), .ZN(n409) );
  NAND2_X1 U66 ( .A1(n158), .A2(n157), .ZN(n159) );
  NAND2_X1 U67 ( .A1(n156), .A2(n51), .ZN(n160) );
  INV_X1 U68 ( .I(n96), .ZN() );
  NAND2_X1 U69 ( .A1(n17), .A2(n197), .ZN() );
  NAND2_X1 U70 ( .A1(n195), .A2(n55), .ZN() );
  NAND2_X1 U71 ( .A1(n219), .A2(n218), .ZN(n223) );
  NOR2_X1 U72 ( .A1(n152), .A2(n151), .ZN(n403) );
  INV_X1 U73 ( .I(n355), .ZN(n358) );
  NOR2_X1 U74 ( .A1(n276), .A2(n277), .ZN(n325) );
  NAND2_X1 U75 ( .A1(n410), .A2(n409), .ZN(n411) );
  INV_X2 U76 ( .I(n6), .ZN(n85) );
  NAND2_X2 U77 ( .A1(weight[3]), .A2(inp[4]), .ZN(n6) );
  NAND2_X2 U78 ( .A1(weight[0]), .A2(inp[7]), .ZN() );
  NAND2_X2 U79 ( .A1(weight[7]), .A2(inp[0]), .ZN(n12) );
  XOR2_X1 U80 ( .A1(n11), .A2(n10), .Z(n77) );
  XNOR2_X1 U81 ( .A1(n13), .A2(n12), .ZN() );
  NOR2_X2 U82 ( .A1(n187), .A2(n19), .ZN(n86) );
  AOI21_X1 U83 ( .A1(n23), .A2(n439), .B(n438), .ZN(n442) );
  INV_X12 U84 ( .I(weight[1]), .ZN(n14) );
  INV_X12 U85 ( .I(weight[1]), .ZN(n15) );
  INV_X1 U86 ( .I(n217), .ZN(n237) );
  INV_X12 U87 ( .I(weight[3]), .ZN(n186) );
  INV_X1 U88 ( .I(n80), .ZN(n16) );
  AND2_X2 U89 ( .A1(inp[5]), .A2(weight[0]), .Z(n68) );
  NOR2_X1 U90 ( .A1(n70), .A2(n71), .ZN(n40) );
  NAND2_X1 U91 ( .A1(n70), .A2(n71), .ZN(n39) );
  INV_X12 U92 ( .I(weight[0]), .ZN(n64) );
  OAI21_X1 U93 ( .A1(n407), .A2(n403), .B(n404), .ZN(n402) );
  FA_X1 U94 ( .A(n163), .B(n161), .CI(n162), .CO(n17) );
  NAND2_X1 U95 ( .A1(n234), .A2(n233), .ZN(n389) );
  NOR2_X1 U96 ( .A1(n236), .A2(n235), .ZN(n18) );
  NOR2_X1 U97 ( .A1(n236), .A2(n235), .ZN(n385) );
  INV_X12 U98 ( .I(inp[3]), .ZN(n187) );
  NOR2_X2 U99 ( .A1(n125), .A2(n124), .ZN(n417) );
  CLKBUF_X2 U100 ( .I(n155), .Z(n158) );
  NOR2_X1 U101 ( .A1(n154), .A2(n153), .ZN(n21) );
  NOR2_X1 U102 ( .A1(n154), .A2(n153), .ZN(n398) );
  NOR2_X2 U103 ( .A1(n22), .A2(n114), .ZN(n87) );
  INV_X12 U104 ( .I(weight[1]), .ZN(n114) );
  CLKBUF_X4 U105 ( .I(n241), .Z(n23) );
  CLKBUF_X4 U106 ( .I(n241), .Z(n440) );
  INV_X12 U107 ( .I(inp[2]), .ZN(n168) );
  NAND2_X2 U108 ( .A1(weight[7]), .A2(inp[1]), .ZN(n25) );
  XNOR2_X1 U109 ( .A1(n26), .A2(n20), .ZN(n174) );
  XOR2_X1 U110 ( .A1(n47), .A2(n25), .Z(n26) );
  AOI21_X2 U111 ( .A1(n321), .A2(n323), .B(n282), .ZN(n356) );
  OAI21_X2 U112 ( .A1(n356), .A2(n359), .B(n360), .ZN(n438) );
  NOR2_X1 U113 ( .A1(n388), .A2(n18), .ZN(n27) );
  NOR2_X1 U114 ( .A1(n18), .A2(n388), .ZN(n382) );
  INV_X1 U115 ( .I(n381), .ZN(n28) );
  INV_X1 U116 ( .I(n370), .ZN(n396) );
  CLKBUF_X2 U117 ( .I(n214), .Z(n29) );
  INV_X8 U118 ( .I(inp[5]), .ZN(n224) );
  OAI21_X2 U119 ( .A1(n370), .A2(n32), .B(n30), .ZN(n241) );
  AOI21_X2 U120 ( .A1(n372), .A2(n33), .B(n31), .ZN(n30) );
  OAI21_X2 U121 ( .A1(n385), .A2(n389), .B(n386), .ZN(n372) );
  NAND2_X1 U122 ( .A1(n382), .A2(n33), .ZN(n32) );
  AOI21_X2 U123 ( .A1(n35), .A2(n397), .B(n34), .ZN(n370) );
  OAI21_X2 U124 ( .A1(n398), .A2(n404), .B(n399), .ZN(n34) );
  OAI21_X2 U125 ( .A1(n412), .A2(n408), .B(n409), .ZN(n397) );
  NOR2_X2 U126 ( .A1(n150), .A2(n149), .ZN(n408) );
  AOI21_X2 U127 ( .A1(n415), .A2(n414), .B(n140), .ZN() );
  NOR2_X1 U128 ( .A1(n21), .A2(n403), .ZN(n35) );
  INV_X12 U129 ( .I(inp[3]), .ZN(n36) );
  NOR2_X2 U130 ( .A1(n37), .A2(n36), .ZN() );
  INV_X2 U131 ( .I(n38), .ZN(n165) );
  NAND2_X2 U132 ( .A1(inp[5]), .A2(weight[3]), .ZN(n38) );
  OAI21_X2 U133 ( .A1(n41), .A2(n40), .B(n39), .ZN(n76) );
  XNOR2_X1 U134 ( .A1(n42), .A2(n69), .ZN(n142) );
  XNOR2_X1 U135 ( .A1(n70), .A2(n71), .ZN(n42) );
  NAND2_X2 U136 ( .A1(inp[6]), .A2(weight[2]), .ZN(n48) );
  NAND2_X2 U137 ( .A1(weight[6]), .A2(inp[2]), .ZN(n47) );
  AND2_X2 U138 ( .A1(n48), .A2(n49), .Z(n46) );
  NAND2_X2 U139 ( .A1(weight[7]), .A2(inp[1]), .ZN(n49) );
  OAI22_X2 U140 ( .A1(n46), .A2(n24), .B1(n45), .B2(n44), .ZN(n188) );
  AOI21_X2 U141 ( .A1(n423), .A2(n424), .B(n123), .ZN(n421) );
  NOR2_X2 U142 ( .A1(n212), .A2(n209), .ZN(n164) );
  INV_X12 U143 ( .I(weight[4]), .ZN(n209) );
  AND2_X1 U144 ( .A1(n323), .A2(n322), .Z(n50) );
  OR2_X1 U145 ( .A1(n158), .A2(n157), .Z(n51) );
  AND2_X1 U146 ( .A1(n361), .A2(n360), .Z(n52) );
  OR2_X1 U147 ( .A1(n144), .A2(n146), .Z(n53) );
  OR2_X1 U148 ( .A1(n17), .A2(n197), .Z(n55) );
  NAND2_X1 U149 ( .A1(n221), .A2(n220), .ZN(n222) );
  NAND2_X1 U150 ( .A1(n144), .A2(n146), .ZN(n147) );
  NAND2_X1 U151 ( .A1(n223), .A2(n222), .ZN(n244) );
  INV_X1 U152 ( .I(n343), .ZN(n346) );
  INV_X1 U153 ( .I(n337), .ZN(n340) );
  NOR2_X1 U154 ( .A1(n109), .A2(n209), .ZN(n65) );
  AND2_X1 U155 ( .A1(inp[0]), .A2(weight[5]), .Z() );
  NOR2_X1 U156 ( .A1(n168), .A2(n186), .ZN(n66) );
  XNOR2_X1 U157 ( .A1(n76), .A2(n77), .ZN() );
  NOR2_X1 U158 ( .A1(n224), .A2(n169), .ZN(n83) );
  HA_X1 U159 ( .A(partial_sum_in[6]), .B(n43), .CO(n82), .S(n69) );
  NOR2_X2 U160 ( .A1(n248), .A2(n64), .ZN(n62) );
  NOR2_X1 U161 ( .A1(n168), .A2(n209), .ZN() );
  XNOR2_X1 U162 ( .A1(n56), .A2(n16), .ZN(n95) );
  NOR2_X1 U163 ( .A1(n224), .A2(n14), .ZN(n59) );
  NOR2_X1 U164 ( .A1(n187), .A2(n186), .ZN(n58) );
  NOR2_X1 U165 ( .A1(n212), .A2(n169), .ZN(n57) );
  NOR2_X1 U166 ( .A1(n109), .A2(n247), .ZN(n84) );
  FA_X1 U167 ( .A(n59), .B(n58), .CI(n57), .CO(n90), .S(n74) );
  FA_X1 U168 ( .A(n62), .B(n61), .CI(n60), .CO(n81), .S(n73) );
  NOR2_X1 U169 ( .A1(n212), .A2(n15), .ZN(n128) );
  NOR2_X1 U170 ( .A1(n187), .A2(n169), .ZN(n127) );
  NOR2_X2 U171 ( .A1(n109), .A2(n186), .ZN(n97) );
  XNOR2_X1 U172 ( .A1(n93), .A2(n92), .ZN(n63) );
  XNOR2_X1 U173 ( .A1(n95), .A2(n63), .ZN() );
  NOR2_X1 U174 ( .A1(n212), .A2(n64), .ZN(n100) );
  INV_X8 U175 ( .I(inp[0]), .ZN(n115) );
  NOR2_X1 U176 ( .A1(n115), .A2(n209), .ZN(n99) );
  NOR2_X1 U177 ( .A1(n168), .A2(n169), .ZN(n98) );
  HA_X1 U178 ( .A(partial_sum_in[5]), .B(n65), .CO(n71), .S(n133) );
  FA_X1 U179 ( .A(n68), .B(n67), .CI(n66), .CO(n70), .S(n132) );
  FA_X1 U180 ( .A(n74), .B(n73), .CI(n72), .CO(n92), .S(n141) );
  NOR2_X1 U181 ( .A1(n76), .A2(n77), .ZN(n79) );
  NAND2_X1 U182 ( .A1(n77), .A2(n76), .ZN(n78) );
  OAI21_X2 U183 ( .A1(n80), .A2(n79), .B(n78), .ZN(n155) );
  NOR2_X1 U184 ( .A1(n255), .A2(n14), .ZN(n173) );
  XNOR2_X1 U185 ( .A1(n155), .A2(n157), .ZN(n91) );
  FA_X1 U186 ( .A(n83), .B(n82), .CI(n81), .CO(n163), .S() );
  HA_X1 U187 ( .A(partial_sum_in[7]), .B(n84), .CO(n172), .S(n89) );
  FA_X1 U188 ( .A(n87), .B(n86), .CI(n85), .CO(n170), .S(n88) );
  FA_X1 U189 ( .A(n89), .B(n90), .CI(n88), .CO(n161), .S(n93) );
  XNOR2_X1 U190 ( .A1(n91), .A2(n156), .ZN(n154) );
  OR2_X1 U191 ( .A1(n93), .A2(n92), .Z(n94) );
  AOI22_X1 U192 ( .A1(n95), .A2(n94), .B1(n93), .B2(n92), .ZN(n96) );
  HA_X1 U193 ( .A(partial_sum_in[4]), .B(n97), .CO(n126), .S(n137) );
  FA_X1 U194 ( .A(n100), .B(n99), .CI(n98), .CO(n134), .S(n136) );
  INV_X8 U195 ( .I(weight[0]), .ZN(n101) );
  NOR2_X1 U196 ( .A1(n168), .A2(n101), .ZN(n113) );
  NOR2_X1 U197 ( .A1(n109), .A2(n169), .ZN(n102) );
  NOR2_X2 U198 ( .A1(n187), .A2(n101), .ZN() );
  NOR2_X2 U199 ( .A1(n115), .A2(n186), .ZN(n104) );
  NOR2_X1 U200 ( .A1(n168), .A2(n15), .ZN(n103) );
  NOR2_X1 U201 ( .A1(n187), .A2(n15), .ZN(n131) );
  HA_X1 U202 ( .A(partial_sum_in[3]), .B(n102), .CO(n130), .S(n107) );
  FA_X1 U203 ( .A(n105), .B(n104), .CI(n103), .CO(n129), .S(n106) );
  FA_X1 U204 ( .A(n108), .B(n107), .CI(n106), .CO(n135), .S(n122) );
  NOR2_X1 U205 ( .A1(n109), .A2(n14), .ZN() );
  NOR2_X1 U206 ( .A1(n115), .A2(n169), .ZN(n111) );
  OR2_X1 U207 ( .A1(n122), .A2(n121), .Z(n423) );
  FA_X1 U208 ( .A(n112), .B(n111), .CI(n110), .CO(), .S(n120) );
  HA_X1 U209 ( .A(partial_sum_in[2]), .B(n113), .CO(n108), .S(n119) );
  NOR2_X1 U210 ( .A1(n115), .A2(n14), .ZN(n116) );
  NOR2_X1 U211 ( .A1(n117), .A2(n116), .ZN(n431) );
  NAND2_X1 U212 ( .A1(n435), .A2(partial_sum_in[0]), .ZN(n436) );
  NAND2_X1 U213 ( .A1(n117), .A2(n116), .ZN() );
  OAI21_X1 U214 ( .A1(n431), .A2(n436), .B(n432), .ZN(n118) );
  INV_X1 U215 ( .I(n118), .ZN(n430) );
  NAND2_X1 U216 ( .A1(n120), .A2(n119), .ZN(n427) );
  NAND2_X1 U217 ( .A1(n122), .A2(n121), .ZN() );
  INV_X1 U218 ( .I(n422), .ZN(n123) );
  NAND2_X1 U219 ( .A1(n125), .A2(n124), .ZN(n418) );
  OAI21_X2 U220 ( .A1(n417), .A2(n421), .B(n418), .ZN(n415) );
  FA_X1 U221 ( .A(n128), .B(n127), .CI(n126), .CO(), .S(n144) );
  FA_X1 U222 ( .A(n131), .B(n130), .CI(n129), .CO(n146), .S(n124) );
  FA_X1 U223 ( .A(n134), .B(n133), .CI(n132), .CO(n143), .S(n145) );
  FA_X1 U224 ( .A(n137), .B(n136), .CI(n135), .CO(n138), .S(n125) );
  NAND2_X1 U225 ( .A1(n139), .A2(n138), .ZN(n413) );
  INV_X1 U226 ( .I(n413), .ZN(n140) );
  FA_X1 U227 ( .A(n143), .B(n142), .CI(n141), .CO(n151), .S(n150) );
  NAND2_X1 U228 ( .A1(n152), .A2(n151), .ZN(n404) );
  NAND2_X1 U229 ( .A1(n154), .A2(n153), .ZN(n399) );
  FA_X1 U230 ( .A(n163), .B(n161), .CI(n162), .CO(n196), .S() );
  FA_X1 U231 ( .A(n166), .B(n165), .CI(n164), .CO(n193), .S(n175) );
  INV_X4 U232 ( .I(weight[7]), .ZN(n167) );
  NOR2_X2 U233 ( .A1(n168), .A2(n167), .ZN(n185) );
  AND2_X1 U234 ( .A1(inp[4]), .A2(weight[5]), .Z(n183) );
  NOR2_X1 U235 ( .A1(n255), .A2(n169), .ZN() );
  NOR2_X1 U236 ( .A1(n248), .A2(n186), .ZN(n181) );
  XOR2_X1 U237 ( .A1(n196), .A2(n197), .Z(n177) );
  FA_X1 U238 ( .A(n172), .B(n171), .CI(n170), .CO(n180), .S(n162) );
  NOR2_X1 U239 ( .A1(n187), .A2(n247), .ZN(n190) );
  HA_X1 U240 ( .A(partial_sum_in[8]), .B(n173), .CO(n189), .S(n176) );
  FA_X1 U241 ( .A(n176), .B(n174), .CI(n175), .CO(n178), .S(n157) );
  XOR2_X1 U242 ( .A1(n177), .A2(n195), .Z() );
  NOR2_X1 U243 ( .A1(n233), .A2(n234), .ZN(n388) );
  FA_X1 U244 ( .A(n180), .B(n179), .CI(n178), .CO(n214), .S() );
  FA_X1 U245 ( .A(partial_sum_in[9]), .B(n182), .CI(n181), .CO(n202), .S(n191)
         );
  FA_X1 U246 ( .A(n185), .B(n184), .CI(n183), .CO(n201), .S(n192) );
  NOR2_X1 U247 ( .A1(n248), .A2(n209), .ZN(n210) );
  XOR2_X1 U248 ( .A1(n214), .A2(n215), .Z(n194) );
  NOR2_X1 U249 ( .A1(n187), .A2(n167), .ZN(n208) );
  NOR2_X1 U250 ( .A1(n212), .A2(n247), .ZN(n207) );
  FA_X1 U251 ( .A(n190), .B(n189), .CI(n188), .CO(n204), .S(n179) );
  FA_X1 U252 ( .A(n193), .B(n192), .CI(n191), .CO(n203), .S(n197) );
  XOR2_X1 U253 ( .A1(n194), .A2(n216), .Z() );
  FA_X1 U254 ( .A(n202), .B(n201), .CI(n200), .CO(n232), .S(n215) );
  FA_X1 U255 ( .A(n205), .B(n204), .CI(n203), .CO(n231), .S(n216) );
  FA_X1 U256 ( .A(n208), .B(n207), .CI(n206), .CO(n229), .S(n205) );
  NOR2_X1 U257 ( .A1(n255), .A2(n209), .ZN(n226) );
  NOR2_X1 U258 ( .A1(n248), .A2(n37), .ZN(n225) );
  FA_X1 U259 ( .A(partial_sum_in[10]), .B(n211), .CI(n210), .CO(n219), .S(n200) );
  NOR2_X1 U260 ( .A1(n224), .A2(n247), .ZN(n221) );
  NOR2_X1 U261 ( .A1(n212), .A2(n167), .ZN(n220) );
  XNOR2_X1 U262 ( .A1(n221), .A2(n220), .ZN(n213) );
  XNOR2_X1 U263 ( .A1(n219), .A2(n213), .ZN(n227) );
  AOI22_X1 U264 ( .A1(n54), .A2(n216), .B1(n215), .B2(n29), .ZN(n217) );
  OR2_X1 U265 ( .A1(n221), .A2(n220), .Z(n218) );
  NOR2_X1 U266 ( .A1(n224), .A2(n167), .ZN(n251) );
  FA_X1 U267 ( .A(partial_sum_in[11]), .B(n226), .CI(n225), .CO(n250), .S(n228) );
  FA_X1 U268 ( .A(n229), .B(n228), .CI(n227), .CO(n242), .S(n230) );
  FA_X1 U269 ( .A(n232), .B(n231), .CI(n230), .CO(n239), .S(n238) );
  NAND2_X1 U270 ( .A1(n236), .A2(n235), .ZN(n386) );
  NAND2_X1 U271 ( .A1(n238), .A2(n237), .ZN(n380) );
  NAND2_X1 U272 ( .A1(n240), .A2(n239), .ZN(n368) );
  FA_X1 U273 ( .A(n244), .B(n243), .CI(n242), .CO(n264), .S(n240) );
  FA_X1 U274 ( .A(partial_sum_in[12]), .B(n246), .CI(n245), .CO(n254), .S(n249) );
  NOR2_X1 U275 ( .A1(n255), .A2(n247), .ZN(n257) );
  NOR2_X1 U276 ( .A1(n248), .A2(n167), .ZN(n256) );
  FA_X1 U277 ( .A(n251), .B(n250), .CI(n249), .CO(n252), .S(n243) );
  OR2_X2 U278 ( .A1(n264), .A2(n263), .Z(n364) );
  FA_X1 U279 ( .A(n254), .B(n253), .CI(n252), .CO(n266), .S(n263) );
  NOR2_X1 U280 ( .A1(n255), .A2(n167), .ZN(n259) );
  FA_X1 U281 ( .A(partial_sum_in[13]), .B(n257), .CI(n256), .CO(n258), .S(n253) );
  FA_X1 U282 ( .A(partial_sum_in[14]), .B(n259), .CI(n258), .CO(n267), .S(n265) );
  NAND2_X1 U283 ( .A1(partial_sum_in[18]), .A2(partial_sum_in[19]), .ZN(n260)
         );
  NOR2_X1 U284 ( .A1(n311), .A2(n260), .ZN(n302) );
  NOR2_X1 U285 ( .A1(n303), .A2(n306), .ZN(n261) );
  NAND2_X1 U286 ( .A1(n302), .A2(n261), .ZN(n287) );
  NOR2_X1 U287 ( .A1(n294), .A2(n297), .ZN(n288) );
  NAND2_X1 U288 ( .A1(n288), .A2(partial_sum_in[26]), .ZN(n262) );
  NOR2_X1 U289 ( .A1(n287), .A2(n262), .ZN(n281) );
  NAND2_X1 U290 ( .A1(n281), .A2(partial_sum_in[27]), .ZN(n268) );
  NOR2_X1 U291 ( .A1(n359), .A2(n268), .ZN(n330) );
  NAND2_X1 U292 ( .A1(n330), .A2(partial_sum_in[28]), .ZN(n270) );
  NOR2_X1 U293 ( .A1(n280), .A2(n270), .ZN(n272) );
  NAND2_X1 U294 ( .A1(n364), .A2(n272), .ZN(n276) );
  INV_X1 U295 ( .I(n276), .ZN(n274) );
  NAND2_X1 U296 ( .A1(n264), .A2(n263), .ZN(n363) );
  NAND2_X1 U297 ( .A1(n266), .A2(n265), .ZN(n322) );
  NAND2_X1 U298 ( .A1(n267), .A2(partial_sum_in[15]), .ZN(n360) );
  NOR2_X1 U299 ( .A1(n268), .A2(n360), .ZN(n331) );
  NAND2_X1 U300 ( .A1(n331), .A2(partial_sum_in[28]), .ZN(n269) );
  OAI21_X1 U301 ( .A1(n322), .A2(n270), .B(n269), .ZN(n271) );
  AOI21_X1 U302 ( .A1(n321), .A2(n272), .B(n271), .ZN(n278) );
  INV_X1 U303 ( .I(n278), .ZN(n273) );
  AOI21_X1 U304 ( .A1(n440), .A2(n274), .B(n273), .ZN(n275) );
  XNOR2_X1 U305 ( .A1(n275), .A2(partial_sum_in[29]), .ZN(partial_sum_out[29])
         );
  NOR2_X1 U306 ( .A1(n278), .A2(n277), .ZN(n326) );
  AOI21_X1 U307 ( .A1(n440), .A2(n325), .B(n326), .ZN(n279) );
  XNOR2_X1 U308 ( .A1(n279), .A2(partial_sum_in[30]), .ZN(partial_sum_out[30])
         );
  INV_X1 U309 ( .I(n439), .ZN(n316) );
  INV_X1 U310 ( .I(n281), .ZN(n283) );
  NOR2_X1 U311 ( .A1(n316), .A2(n283), .ZN(n285) );
  INV_X1 U312 ( .I(n322), .ZN(n282) );
  INV_X1 U313 ( .I(n438), .ZN(n317) );
  NOR2_X1 U314 ( .A1(n317), .A2(n283), .ZN(n284) );
  AOI21_X1 U315 ( .A1(n23), .A2(n285), .B(n284), .ZN(n286) );
  XNOR2_X1 U316 ( .A1(n286), .A2(partial_sum_in[27]), .ZN(partial_sum_out[27])
         );
  INV_X1 U317 ( .I(n287), .ZN(n289) );
  NAND2_X1 U318 ( .A1(n439), .A2(n289), .ZN(n337) );
  INV_X1 U319 ( .I(n288), .ZN(n290) );
  NOR2_X1 U320 ( .A1(n337), .A2(n290), .ZN(n292) );
  NAND2_X1 U321 ( .A1(n438), .A2(n289), .ZN(n338) );
  NOR2_X1 U322 ( .A1(n338), .A2(n290), .ZN(n291) );
  AOI21_X1 U323 ( .A1(n23), .A2(n292), .B(n291), .ZN(n293) );
  XNOR2_X1 U324 ( .A1(n293), .A2(partial_sum_in[26]), .ZN(partial_sum_out[26])
         );
  NOR2_X1 U325 ( .A1(n337), .A2(n294), .ZN(n296) );
  NOR2_X1 U326 ( .A1(n338), .A2(n294), .ZN(n295) );
  AOI21_X1 U327 ( .A1(n440), .A2(n296), .B(n295), .ZN(n298) );
  XNOR2_X1 U328 ( .A1(n298), .A2(partial_sum_in[25]), .ZN(partial_sum_out[25])
         );
  NOR2_X1 U329 ( .A1(n337), .A2(n341), .ZN(n300) );
  NOR2_X1 U330 ( .A1(n338), .A2(n341), .ZN(n299) );
  AOI21_X1 U331 ( .A1(n440), .A2(n300), .B(n299), .ZN(n301) );
  XNOR2_X1 U332 ( .A1(n301), .A2(partial_sum_in[24]), .ZN(partial_sum_out[24])
         );
  NAND2_X1 U333 ( .A1(n439), .A2(n302), .ZN(n343) );
  NOR2_X1 U334 ( .A1(n343), .A2(n303), .ZN(n305) );
  NAND2_X1 U335 ( .A1(n438), .A2(n302), .ZN(n344) );
  NOR2_X1 U336 ( .A1(n344), .A2(n303), .ZN(n304) );
  AOI21_X1 U337 ( .A1(n23), .A2(n305), .B(n304), .ZN(n307) );
  XNOR2_X1 U338 ( .A1(n307), .A2(partial_sum_in[22]), .ZN(partial_sum_out[22])
         );
  NOR2_X1 U339 ( .A1(n343), .A2(n347), .ZN(n309) );
  NOR2_X1 U340 ( .A1(n344), .A2(n347), .ZN(n308) );
  AOI21_X1 U341 ( .A1(n23), .A2(n309), .B(n308), .ZN(n310) );
  XNOR2_X1 U342 ( .A1(n310), .A2(partial_sum_in[21]), .ZN(partial_sum_out[21])
         );
  INV_X1 U343 ( .I(n311), .ZN(n312) );
  NAND2_X1 U344 ( .A1(n439), .A2(n312), .ZN(n349) );
  NOR2_X1 U345 ( .A1(n349), .A2(n353), .ZN(n314) );
  NAND2_X1 U346 ( .A1(n438), .A2(n312), .ZN(n350) );
  NOR2_X1 U347 ( .A1(n350), .A2(n353), .ZN(n313) );
  AOI21_X1 U348 ( .A1(n23), .A2(n314), .B(n313), .ZN(n315) );
  XNOR2_X1 U349 ( .A1(n315), .A2(partial_sum_in[19]), .ZN(partial_sum_out[19])
         );
  NOR2_X1 U350 ( .A1(n316), .A2(n441), .ZN(n319) );
  NOR2_X1 U351 ( .A1(n317), .A2(n441), .ZN(n318) );
  AOI21_X1 U352 ( .A1(n440), .A2(n319), .B(n318), .ZN(n320) );
  XNOR2_X1 U353 ( .A1(n320), .A2(partial_sum_in[17]), .ZN(partial_sum_out[17])
         );
  AOI21_X1 U354 ( .A1(n23), .A2(n364), .B(n321), .ZN(n324) );
  XNOR2_X1 U355 ( .A1(n324), .A2(n50), .ZN(partial_sum_out[14]) );
  AND2_X1 U356 ( .A1(n325), .A2(partial_sum_in[30]), .Z(n328) );
  AND2_X1 U357 ( .A1(n326), .A2(partial_sum_in[30]), .Z(n327) );
  AOI21_X1 U358 ( .A1(n440), .A2(n328), .B(n327), .ZN(n329) );
  XNOR2_X1 U359 ( .A1(n329), .A2(partial_sum_in[31]), .ZN(partial_sum_out[31])
         );
  INV_X1 U360 ( .I(n330), .ZN(n333) );
  NOR2_X1 U361 ( .A1(n355), .A2(n333), .ZN(n335) );
  INV_X1 U362 ( .I(n331), .ZN(n332) );
  OAI21_X1 U363 ( .A1(n356), .A2(n333), .B(n332), .ZN(n334) );
  AOI21_X1 U364 ( .A1(n440), .A2(n335), .B(n334), .ZN(n336) );
  XNOR2_X1 U365 ( .A1(n336), .A2(partial_sum_in[28]), .ZN(partial_sum_out[28])
         );
  INV_X1 U366 ( .I(n338), .ZN(n339) );
  AOI21_X1 U367 ( .A1(n23), .A2(n340), .B(n339), .ZN(n342) );
  XNOR2_X1 U368 ( .A1(n342), .A2(partial_sum_in[23]), .ZN(partial_sum_out[23])
         );
  INV_X1 U369 ( .I(n344), .ZN(n345) );
  AOI21_X1 U370 ( .A1(n440), .A2(n346), .B(n345), .ZN(n348) );
  XNOR2_X1 U371 ( .A1(n348), .A2(partial_sum_in[20]), .ZN(partial_sum_out[20])
         );
  INV_X1 U372 ( .I(n349), .ZN(n352) );
  INV_X1 U373 ( .I(n350), .ZN(n351) );
  AOI21_X1 U374 ( .A1(n23), .A2(n352), .B(n351), .ZN(n354) );
  XNOR2_X1 U375 ( .A1(n354), .A2(partial_sum_in[18]), .ZN(partial_sum_out[18])
         );
  INV_X1 U376 ( .I(n356), .ZN(n357) );
  AOI21_X1 U377 ( .A1(n440), .A2(n358), .B(n357), .ZN(n362) );
  INV_X1 U378 ( .I(n359), .ZN(n361) );
  XNOR2_X1 U379 ( .A1(n362), .A2(n52), .ZN(partial_sum_out[15]) );
  CLKBUF_X2 U380 ( .I(n440), .Z(n366) );
  NAND2_X1 U381 ( .A1(n364), .A2(n363), .ZN(n365) );
  XNOR2_X1 U382 ( .A1(n366), .A2(n365), .ZN(partial_sum_out[13]) );
  INV_X1 U383 ( .I(n367), .ZN(n369) );
  NAND2_X1 U384 ( .A1(n369), .A2(n368), .ZN(n378) );
  INV_X1 U385 ( .I(n27), .ZN(n371) );
  NOR2_X1 U386 ( .A1(n371), .A2(n28), .ZN(n376) );
  CLKBUF_X2 U387 ( .I(n372), .Z(n373) );
  INV_X1 U388 ( .I(n373), .ZN(n374) );
  OAI21_X1 U389 ( .A1(n374), .A2(n28), .B(n380), .ZN(n375) );
  AOI21_X1 U390 ( .A1(n396), .A2(n376), .B(n375), .ZN(n377) );
  XOR2_X1 U391 ( .A1(n378), .A2(n377), .Z(partial_sum_out[12]) );
  INV_X1 U392 ( .I(n379), .ZN(n381) );
  NAND2_X1 U393 ( .A1(n381), .A2(n380), .ZN(n384) );
  AOI21_X1 U394 ( .A1(n396), .A2(n27), .B(n373), .ZN(n383) );
  XOR2_X1 U395 ( .A1(n384), .A2(n383), .Z(partial_sum_out[11]) );
  INV_X1 U396 ( .I(n18), .ZN(n387) );
  NAND2_X1 U397 ( .A1(n387), .A2(n386), .ZN(n391) );
  INV_X1 U398 ( .I(n388), .ZN(n394) );
  INV_X1 U399 ( .I(n389), .ZN(n392) );
  AOI21_X1 U400 ( .A1(n396), .A2(n394), .B(n392), .ZN(n390) );
  XOR2_X1 U401 ( .A1(n391), .A2(n390), .Z(partial_sum_out[10]) );
  INV_X1 U402 ( .I(n392), .ZN(n393) );
  NAND2_X1 U403 ( .A1(n394), .A2(n393), .ZN(n395) );
  XNOR2_X1 U404 ( .A1(n396), .A2(n395), .ZN(partial_sum_out[9]) );
  INV_X1 U405 ( .I(n397), .ZN(n407) );
  INV_X1 U406 ( .I(n21), .ZN(n400) );
  NAND2_X1 U407 ( .A1(n400), .A2(n399), .ZN(n401) );
  XNOR2_X1 U408 ( .A1(n402), .A2(n401), .ZN(partial_sum_out[8]) );
  INV_X1 U409 ( .I(n403), .ZN() );
  NAND2_X1 U410 ( .A1(n405), .A2(n404), .ZN(n406) );
  XOR2_X1 U411 ( .A1(n407), .A2(n406), .Z(partial_sum_out[7]) );
  INV_X1 U412 ( .I(n408), .ZN(n410) );
  XOR2_X1 U413 ( .A1(n412), .A2(n411), .Z(partial_sum_out[6]) );
  NAND2_X1 U414 ( .A1(n414), .A2(n413), .ZN(n416) );
  XNOR2_X1 U415 ( .A1(n416), .A2(n415), .ZN(partial_sum_out[5]) );
  INV_X1 U416 ( .I(n417), .ZN(n419) );
  NAND2_X1 U417 ( .A1(n419), .A2(n418), .ZN(n420) );
  XOR2_X1 U418 ( .A1(n421), .A2(n420), .Z(partial_sum_out[4]) );
  NAND2_X1 U419 ( .A1(n423), .A2(n422), .ZN() );
  XNOR2_X1 U420 ( .A1(n425), .A2(n424), .ZN(partial_sum_out[3]) );
  INV_X1 U421 ( .I(n426), .ZN(n428) );
  NAND2_X1 U422 ( .A1(n428), .A2(n427), .ZN(n429) );
  XOR2_X1 U423 ( .A1(n430), .A2(n429), .Z(partial_sum_out[2]) );
  INV_X1 U424 ( .I(n431), .ZN(n433) );
  NAND2_X1 U425 ( .A1(n433), .A2(n432), .ZN(n434) );
  XOR2_X1 U426 ( .A1(n436), .A2(n434), .Z(partial_sum_out[1]) );
  OR2_X1 U427 ( .A1(n435), .A2(partial_sum_in[0]), .Z() );
  AND2_X1 U428 ( .A1(n437), .A2(n436), .Z(partial_sum_out[0]) );
  XNOR2_X1 U429 ( .A1(n442), .A2(partial_sum_in[16]), .ZN(partial_sum_out[16])
         );
  assign n3 = 1'b1;
  assign n11 = 1'b0;
  assign n13 = 1'b1;
  assign n41 = 1'b0;
  assign n43 = 1'b0;
  assign n56 = 1'b1;
  assign n60 = 1'b1;
  assign n67 = 1'b1;
  assign n72 = 1'b1;
  assign n75 = 1'b1;
  assign n105 = 1'b1;
  assign n112 = 1'b0;
  assign n121 = 1'b0;
  assign n152 = 1'b1;
  assign n153 = 1'b1;
  assign n156 = 1'b0;
  assign n166 = 1'b1;
  assign n182 = 1'b0;
  assign n195 = 1'b0;
  assign n198 = 1'b0;
  assign n199 = 1'b1;
  assign n234 = 1'b0;
  assign n236 = 1'b0;
  assign n405 = 1'b1;
  assign n412 = 1'b0;
  assign n422 = 1'b0;
  assign n425 = 1'b1;
  assign n432 = 1'b0;
  assign n437 = 1'b0;
  assign weight[1] = 1'b1;
  assign inp[1] = 1'b0;
  assign inp[3] = 1'b1;
  assign inp[4] = 1'b1;
  assign partial_sum_in[8] = 1'b1;
  assign partial_sum_in[14] = 1'b0;
  assign partial_sum_in[15] = 1'b0;
  assign partial_sum_in[18] = 1'b1;
  assign partial_sum_in[20] = 1'b0;
  assign partial_sum_in[23] = 1'b1;
  assign partial_sum_in[27] = 1'b0;
  assign partial_sum_in[29] = 1'b0;
endmodule


