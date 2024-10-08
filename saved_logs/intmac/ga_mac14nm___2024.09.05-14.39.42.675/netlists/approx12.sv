/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Thu Sep  5 13:25:41 2024
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
         n420, n421, n422, n423, n424, n425, n426, n427, n428;

  OAI21_X1 U1 ( .A1(n307), .A2(n310), .B(n311), .ZN(n353) );
  OR2_X1 U2 ( .A1(n253), .A2(n252), .Z() );
  INV_X2 U3 ( .I(weight[2]), .ZN(n152) );
  INV_X2 U4 ( .I(inp[4]), .ZN() );
  INV_X2 U5 ( .I(inp[5]), .ZN(n210) );
  INV_X4 U6 ( .I(weight[3]), .ZN(n168) );
  NAND2_X1 U7 ( .A1(inp[6]), .A2(inp[1]), .ZN(n41) );
  INV_X2 U8 ( .I(weight[4]), .ZN(n189) );
  NOR2_X1 U9 ( .A1(n72), .A2(n71), .ZN(n74) );
  INV_X1 U10 ( .I(weight[5]), .ZN(n213) );
  INV_X2 U11 ( .I(weight[7]), .ZN(n150) );
  INV_X2 U12 ( .I(weight[0]), .ZN(n119) );
  OAI21_X1 U13 ( .A1(n389), .A2(n395), .B(n390), .ZN(n21) );
  NOR2_X1 U14 ( .A1(n257), .A2(partial_sum_in[15]), .ZN(n310) );
  AND2_X1 U15 ( .A1(inp[5]), .A2(weight[3]), .Z(n1) );
  AND2_X1 U16 ( .A1(inp[6]), .A2(weight[1]), .Z(n2) );
  NOR2_X2 U17 ( .A1(n306), .A2(n310), .ZN(n354) );
  NAND2_X1 U18 ( .A1(n72), .A2(n71), .ZN(n73) );
  INV_X1 U19 ( .I(n178), .ZN(n153) );
  AND2_X1 U20 ( .A1(inp[3]), .A2(weight[5]), .Z(n3) );
  CLKBUF_X8 U21 ( .I(n232), .Z(n357) );
  NAND2_X2 U22 ( .A1(n14), .A2(n223), .ZN() );
  OAI22_X1 U23 ( .A1(n34), .A2(n35), .B1(n38), .B2(n37), .ZN(n76) );
  AND2_X1 U24 ( .A1(n38), .A2(n37), .Z(n34) );
  NAND2_X1 U25 ( .A1(n215), .A2(n48), .ZN() );
  NAND2_X1 U26 ( .A1(n217), .A2(n216), .ZN(n218) );
  NAND2_X1 U27 ( .A1(n205), .A2(n204), .ZN(n209) );
  INV_X1 U28 ( .I(n126), .ZN(n17) );
  NOR2_X1 U29 ( .A1(n125), .A2(n124), .ZN(n417) );
  NAND2_X1 U30 ( .A1(n125), .A2(n124), .ZN(n418) );
  NAND2_X1 U31 ( .A1(n18), .A2(n17), .ZN(n414) );
  NOR2_X1 U32 ( .A1(n18), .A2(n17), .ZN(n16) );
  OAI21_X1 U33 ( .A1(n417), .A2(n421), .B(n418), .ZN(n415) );
  NAND2_X1 U34 ( .A1(inp[2]), .A2(weight[5]), .ZN(n30) );
  NOR2_X1 U35 ( .A1(n210), .A2(n119), .ZN(n63) );
  NOR2_X1 U36 ( .A1(n120), .A2(n213), .ZN() );
  NAND2_X1 U37 ( .A1(inp[0]), .A2(weight[6]), .ZN(n35) );
  NAND2_X1 U38 ( .A1(weight[2]), .A2(weight[7]), .ZN(n40) );
  NAND2_X1 U39 ( .A1(inp[2]), .A2(weight[6]), .ZN(n42) );
  INV_X1 U40 ( .I(n20), .ZN(n104) );
  AOI22_X1 U41 ( .A1(n110), .A2(n5), .B1(n111), .B2(n112), .ZN(n20) );
  NAND2_X1 U42 ( .A1(n139), .A2(n138), .ZN(n140) );
  NAND2_X1 U43 ( .A1(n89), .A2(n88), .ZN(n24) );
  NAND2_X1 U44 ( .A1(n87), .A2(n86), .ZN(n88) );
  INV_X1 U45 ( .I(n146), .ZN() );
  AOI22_X1 U46 ( .A1(n145), .A2(n52), .B1(n144), .B2(n143), .ZN(n146) );
  NAND2_X1 U47 ( .A1(n176), .A2(n53), .ZN() );
  OAI21_X1 U48 ( .A1(n203), .A2(n202), .B(n201), .ZN(n226) );
  INV_X1 U49 ( .I(n198), .ZN(n203) );
  INV_X1 U50 ( .I(n188), .ZN(n221) );
  AOI22_X1 U51 ( .A1(n187), .A2(n186), .B1(n185), .B2(n184), .ZN(n188) );
  NAND2_X1 U52 ( .A1(n219), .A2(n218), .ZN(n233) );
  NOR2_X1 U53 ( .A1(n230), .A2(n372), .ZN(n47) );
  AOI21_X1 U54 ( .A1(n415), .A2(n414), .B(n16), .ZN(n412) );
  NAND2_X1 U55 ( .A1(n128), .A2(n127), .ZN(n409) );
  OR2_X1 U56 ( .A1(n130), .A2(n129), .Z(n405) );
  NOR2_X1 U57 ( .A1(n141), .A2(n140), .ZN(n399) );
  NOR2_X1 U58 ( .A1(n23), .A2(n142), .ZN(n394) );
  INV_X1 U59 ( .I(n28), .ZN(n385) );
  INV_X1 U60 ( .I(n16), .ZN(n413) );
  AND2_X1 U61 ( .A1(inp[1]), .A2(weight[5]), .Z(n4) );
  OR2_X1 U62 ( .A1(n111), .A2(n112), .Z(n5) );
  AND2_X1 U63 ( .A1(inp[1]), .A2(weight[2]), .Z() );
  AND2_X1 U64 ( .A1(inp[4]), .A2(weight[4]), .Z(n7) );
  AND2_X1 U65 ( .A1(inp[7]), .A2(weight[1]), .Z(n8) );
  INV_X4 U66 ( .I(weight[1]), .ZN() );
  NOR2_X1 U67 ( .A1(n128), .A2(n127), .ZN(n408) );
  AOI21_X1 U68 ( .A1(n357), .A2(n354), .B(n353), .ZN() );
  XNOR2_X1 U69 ( .A1(n9), .A2(n145), .ZN() );
  XNOR2_X1 U70 ( .A1(n144), .A2(n143), .ZN(n9) );
  INV_X1 U71 ( .I(n199), .ZN(n10) );
  INV_X1 U72 ( .I(n10), .ZN(n11) );
  XNOR2_X1 U73 ( .A1(n12), .A2(n42), .ZN(n158) );
  XOR2_X1 U74 ( .A1(n43), .A2(n44), .Z(n12) );
  NAND2_X2 U75 ( .A1(weight[2]), .A2(inp[6]), .ZN(n43) );
  INV_X2 U76 ( .I(inp[1]), .ZN(n113) );
  NAND2_X1 U77 ( .A1(n13), .A2(n85), .ZN(n89) );
  XNOR2_X1 U78 ( .A1(n13), .A2(n59), .ZN(n23) );
  XNOR2_X1 U79 ( .A1(n54), .A2(n70), .ZN() );
  NOR2_X1 U80 ( .A1(n14), .A2(n223), .ZN(n28) );
  XOR2_X1 U81 ( .A1(n39), .A2(n176), .Z(n14) );
  INV_X2 U82 ( .I(inp[6]), .ZN(n238) );
  INV_X2 U83 ( .I(inp[3]), .ZN(n172) );
  OAI22_X2 U84 ( .A1(n15), .A2(n42), .B1(n41), .B2(n40), .ZN(n169) );
  AND2_X2 U85 ( .A1(n44), .A2(n43), .Z(n15) );
  NAND2_X2 U86 ( .A1(weight[7]), .A2(inp[1]), .ZN(n44) );
  XOR2_X1 U87 ( .A1(n19), .A2(n110), .Z(n18) );
  XNOR2_X1 U88 ( .A1(n111), .A2(n112), .ZN(n19) );
  AOI21_X2 U89 ( .A1(n388), .A2(n22), .B(n21), .ZN(n363) );
  NAND2_X1 U90 ( .A1(n25), .A2(n24), .ZN(n390) );
  NAND2_X1 U91 ( .A1(n23), .A2(n142), .ZN(n395) );
  NOR2_X1 U92 ( .A1(n389), .A2(n394), .ZN(n22) );
  NOR2_X2 U93 ( .A1(n25), .A2(n24), .ZN(n389) );
  OAI21_X2 U94 ( .A1(n402), .A2(n399), .B(n400), .ZN(n388) );
  AOI21_X2 U95 ( .A1(n406), .A2(n405), .B(n131), .ZN(n402) );
  OAI21_X2 U96 ( .A1(n408), .A2(n412), .B(n409), .ZN(n406) );
  XOR2_X1 U97 ( .A1(n27), .A2(n198), .Z() );
  XOR2_X1 U98 ( .A1(n187), .A2(n26), .Z(n198) );
  XOR2_X1 U99 ( .A1(n184), .A2(n185), .Z(n26) );
  XOR2_X1 U100 ( .A1(n199), .A2(n200), .Z(n27) );
  NOR2_X2 U101 ( .A1(n378), .A2(n28), .ZN(n375) );
  INV_X2 U102 ( .I(inp[7]), .ZN() );
  INV_X2 U103 ( .I(inp[2]), .ZN() );
  OAI22_X1 U104 ( .A1(n29), .A2(n30), .B1(n33), .B2(n32), .ZN(n154) );
  AND2_X1 U105 ( .A1(n33), .A2(n32), .Z(n29) );
  XOR2_X1 U106 ( .A1(n31), .A2(n30), .Z(n71) );
  XNOR2_X1 U107 ( .A1(n33), .A2(n32), .ZN(n31) );
  NAND2_X2 U108 ( .A1(inp[7]), .A2(weight[0]), .ZN(n32) );
  NAND2_X2 U109 ( .A1(weight[7]), .A2(inp[0]), .ZN(n33) );
  INV_X2 U110 ( .I(inp[0]), .ZN() );
  INV_X2 U111 ( .I(weight[6]), .ZN(n214) );
  XOR2_X1 U112 ( .A1(n36), .A2(n35), .Z(n68) );
  XNOR2_X1 U113 ( .A1(n38), .A2(n37), .ZN(n36) );
  NAND2_X2 U114 ( .A1(inp[6]), .A2(weight[0]), .ZN(n37) );
  NAND2_X2 U115 ( .A1(inp[2]), .A2(weight[4]), .ZN(n38) );
  NAND2_X1 U116 ( .A1(n225), .A2(n224), .ZN(n379) );
  NOR2_X2 U117 ( .A1(n224), .A2(n225), .ZN() );
  XNOR2_X1 U118 ( .A1(n177), .A2(n153), .ZN(n39) );
  OAI21_X2 U119 ( .A1(n363), .A2(n46), .B(n45), .ZN(n232) );
  AOI21_X2 U120 ( .A1(n365), .A2(n47), .B(n231), .ZN(n45) );
  OAI21_X2 U121 ( .A1(n378), .A2(n384), .B(n379), .ZN(n365) );
  NAND2_X1 U122 ( .A1(n375), .A2(n47), .ZN(n46) );
  OR2_X1 U123 ( .A1(n216), .A2(n217), .Z(n48) );
  AND2_X1 U124 ( .A1(n312), .A2(n311), .Z(n49) );
  AND2_X1 U125 ( .A1(n351), .A2(n350), .Z(n50) );
  OR2_X1 U126 ( .A1(n136), .A2(n137), .Z() );
  OR2_X1 U127 ( .A1(n144), .A2(n143), .Z(n52) );
  OR2_X1 U128 ( .A1(n177), .A2(n178), .Z(n53) );
  NAND2_X1 U129 ( .A1(n207), .A2(n206), .ZN(n208) );
  NAND2_X1 U130 ( .A1(n137), .A2(n136), .ZN(n138) );
  NAND2_X1 U131 ( .A1(n135), .A2(n51), .ZN(n139) );
  NAND2_X1 U132 ( .A1(n177), .A2(n178), .ZN(n179) );
  NAND2_X1 U133 ( .A1(n209), .A2(n208), .ZN() );
  NOR2_X1 U134 ( .A1(n113), .A2(n189), .ZN(n60) );
  NOR2_X1 U135 ( .A1(n151), .A2(n168), .ZN(n61) );
  XNOR2_X1 U136 ( .A1(n72), .A2(n71), .ZN(n54) );
  NOR2_X1 U137 ( .A1(n210), .A2(n152), .ZN(n78) );
  HA_X1 U138 ( .A(partial_sum_in[6]), .B(n4), .CO(n77), .S(n64) );
  NOR2_X1 U139 ( .A1(n210), .A2(n55), .ZN(n58) );
  NOR2_X1 U140 ( .A1(n172), .A2(n168), .ZN() );
  NOR2_X1 U141 ( .A1(n193), .A2(n152), .ZN(n56) );
  NOR2_X1 U142 ( .A1(n113), .A2(n214), .ZN(n82) );
  AND2_X1 U143 ( .A1(inp[3]), .A2(weight[4]), .Z(n84) );
  NOR2_X2 U144 ( .A1(n193), .A2(n168), .ZN(n83) );
  FA_X1 U145 ( .A(n58), .B(n57), .CI(n56), .CO(n81), .S(n69) );
  NOR2_X1 U146 ( .A1(n193), .A2(n55), .ZN(n95) );
  NOR2_X1 U147 ( .A1(n172), .A2(n152), .ZN(n94) );
  NOR2_X1 U148 ( .A1(n113), .A2(n168), .ZN(n97) );
  XNOR2_X1 U149 ( .A1(n87), .A2(n86), .ZN(n59) );
  NOR2_X1 U150 ( .A1(n193), .A2(n119), .ZN(n100) );
  NOR2_X1 U151 ( .A1(n120), .A2(n189), .ZN(n99) );
  NOR2_X1 U152 ( .A1(n151), .A2(n152), .ZN(n98) );
  HA_X1 U153 ( .A(partial_sum_in[5]), .B(n60), .CO(n66), .S() );
  FA_X1 U154 ( .A(n63), .B(n62), .CI(n61), .CO(), .S(n90) );
  FA_X1 U155 ( .A(n66), .B(n65), .CI(n64), .CO(n72), .S() );
  FA_X1 U156 ( .A(n69), .B(n68), .CI(n67), .CO(n86), .S(n132) );
  INV_X2 U157 ( .I(n70), .ZN() );
  OAI21_X2 U158 ( .A1(n75), .A2(n74), .B(n73), .ZN() );
  FA_X1 U159 ( .A(n78), .B(n77), .CI(n76), .CO(n149), .S() );
  FA_X1 U160 ( .A(n81), .B(n80), .CI(n79), .CO(n148), .S(n87) );
  HA_X1 U161 ( .A(partial_sum_in[7]), .B(n82), .CO(n156), .S(n80) );
  FA_X1 U162 ( .A(n2), .B(n84), .CI(n83), .CO(), .S(n79) );
  OR2_X1 U163 ( .A1(n87), .A2(n86), .Z(n85) );
  FA_X1 U164 ( .A(n92), .B(n91), .CI(n90), .CO(n134), .S(n135) );
  FA_X1 U165 ( .A(n95), .B(n94), .CI(n93), .CO(n67), .S(n137) );
  NOR2_X1 U166 ( .A1(n172), .A2(n55), .ZN(n109) );
  NOR2_X1 U167 ( .A1(n172), .A2(n119), .ZN(n103) );
  NOR2_X1 U168 ( .A1(n120), .A2(n168), .ZN(n102) );
  NOR2_X1 U169 ( .A1(n151), .A2(n55), .ZN(n101) );
  XNOR2_X1 U170 ( .A1(n137), .A2(n136), .ZN() );
  XNOR2_X1 U171 ( .A1(n135), .A2(n96), .ZN(n130) );
  HA_X1 U172 ( .A(partial_sum_in[4]), .B(n97), .CO(n93), .S(n106) );
  FA_X1 U173 ( .A(n100), .B(n99), .CI(n98), .CO(n92), .S(n105) );
  NOR2_X1 U174 ( .A1(n151), .A2(n119), .ZN() );
  HA_X1 U175 ( .A(partial_sum_in[3]), .B(n6), .CO(n108), .S(n111) );
  FA_X1 U176 ( .A(n103), .B(n102), .CI(n101), .CO(n107), .S(n110) );
  FA_X1 U177 ( .A(n106), .B(n105), .CI(n104), .CO(n129), .S(n128) );
  FA_X1 U178 ( .A(n109), .B(n108), .CI(n107), .CO(n136), .S() );
  NOR2_X1 U179 ( .A1(n113), .A2(n55), .ZN(n116) );
  NOR2_X1 U180 ( .A1(n120), .A2(n152), .ZN(n115) );
  NOR2_X1 U181 ( .A1(n113), .A2(n119), .ZN(n118) );
  FA_X1 U182 ( .A(n116), .B(n115), .CI(n114), .CO(), .S() );
  HA_X1 U183 ( .A(partial_sum_in[2]), .B(n117), .CO(n112), .S(n124) );
  HA_X1 U184 ( .A(partial_sum_in[1]), .B(n118), .CO(n114), .S(n122) );
  NOR2_X1 U185 ( .A1(n120), .A2(n55), .ZN(n121) );
  NOR2_X1 U186 ( .A1(n122), .A2(n121), .ZN(n422) );
  NOR2_X1 U187 ( .A1(n120), .A2(n119), .ZN(n426) );
  NAND2_X1 U188 ( .A1(n426), .A2(partial_sum_in[0]), .ZN(n427) );
  NAND2_X1 U189 ( .A1(n122), .A2(n121), .ZN(n423) );
  OAI21_X1 U190 ( .A1(n422), .A2(n427), .B(n423), .ZN(n123) );
  INV_X1 U191 ( .I(n123), .ZN(n421) );
  NAND2_X1 U192 ( .A1(n130), .A2(n129), .ZN(n404) );
  INV_X1 U193 ( .I(n404), .ZN() );
  FA_X1 U194 ( .A(n134), .B(n133), .CI(n132), .CO(), .S(n141) );
  NAND2_X1 U195 ( .A1(n141), .A2(n140), .ZN(n400) );
  FA_X1 U196 ( .A(n149), .B(n148), .CI(n147), .CO(n177), .S() );
  FA_X1 U197 ( .A(n1), .B(n3), .CI(n7), .CO(n175), .S(n157) );
  AND2_X1 U198 ( .A1(inp[4]), .A2(weight[5]), .Z(n167) );
  NOR2_X1 U199 ( .A1(n210), .A2(n189), .ZN(n166) );
  NOR2_X1 U200 ( .A1(n151), .A2(n150), .ZN(n165) );
  NOR2_X1 U201 ( .A1(n245), .A2(n152), .ZN() );
  NOR2_X1 U202 ( .A1(n238), .A2(n168), .ZN() );
  FA_X1 U203 ( .A(n156), .B(n155), .CI(n154), .CO(n162), .S(n147) );
  NOR2_X1 U204 ( .A1(n172), .A2(n214), .ZN(n171) );
  HA_X1 U205 ( .A(partial_sum_in[8]), .B(n8), .CO(), .S() );
  FA_X1 U206 ( .A(n159), .B(n158), .CI(n157), .CO(n160), .S(n143) );
  FA_X1 U207 ( .A(n162), .B(n161), .CI(n160), .CO(n199), .S(n176) );
  FA_X1 U208 ( .A(partial_sum_in[9]), .B(n164), .CI(n163), .CO(n183), .S(n173)
         );
  FA_X1 U209 ( .A(n167), .B(n166), .CI(n165), .CO(n182), .S(n174) );
  NOR2_X1 U210 ( .A1(n245), .A2(n168), .ZN(n195) );
  NOR2_X1 U211 ( .A1(n238), .A2(n189), .ZN(n194) );
  FA_X1 U212 ( .A(n171), .B(n170), .CI(n169), .CO(n185), .S(n161) );
  NOR2_X1 U213 ( .A1(n172), .A2(n150), .ZN(n192) );
  NOR2_X1 U214 ( .A1(n193), .A2(n214), .ZN(n191) );
  NOR2_X1 U215 ( .A1(n210), .A2(n213), .ZN(n190) );
  FA_X1 U216 ( .A(n175), .B(n174), .CI(n173), .CO(n187), .S(n178) );
  NAND2_X2 U217 ( .A1(n180), .A2(n179), .ZN(n225) );
  FA_X1 U218 ( .A(n183), .B(n182), .CI(n181), .CO(n222), .S(n200) );
  OR2_X1 U219 ( .A1(n184), .A2(n185), .Z(n186) );
  NOR2_X1 U220 ( .A1(n245), .A2(n189), .ZN(n212) );
  NOR2_X1 U221 ( .A1(n238), .A2(n213), .ZN(n211) );
  FA_X1 U222 ( .A(n192), .B(n191), .CI(n190), .CO(n216), .S(n184) );
  XNOR2_X1 U223 ( .A1(n217), .A2(n216), .ZN(n197) );
  NOR2_X1 U224 ( .A1(n193), .A2(n150), .ZN(n207) );
  NOR2_X1 U225 ( .A1(n210), .A2(n214), .ZN(n206) );
  XNOR2_X1 U226 ( .A1(n207), .A2(n206), .ZN() );
  FA_X1 U227 ( .A(partial_sum_in[10]), .B(n195), .CI(n194), .CO(n205), .S() );
  XNOR2_X1 U228 ( .A1(n196), .A2(n205), .ZN(n215) );
  XNOR2_X1 U229 ( .A1(n197), .A2(n215), .ZN(n220) );
  NOR2_X1 U230 ( .A1(n200), .A2(n11), .ZN(n202) );
  NAND2_X1 U231 ( .A1(n200), .A2(n11), .ZN(n201) );
  NOR2_X2 U232 ( .A1(n227), .A2(n226), .ZN(n372) );
  OR2_X1 U233 ( .A1(n207), .A2(n206), .Z(n204) );
  NOR2_X1 U234 ( .A1(n210), .A2(n150), .ZN(n241) );
  FA_X1 U235 ( .A(partial_sum_in[11]), .B(n212), .CI(n211), .CO(n240), .S(n217) );
  NOR2_X1 U236 ( .A1(n245), .A2(n213), .ZN(n237) );
  NOR2_X1 U237 ( .A1(n238), .A2(n214), .ZN() );
  FA_X1 U238 ( .A(n222), .B(n221), .CI(n220), .CO(n228), .S(n227) );
  NOR2_X1 U239 ( .A1(n229), .A2(n228), .ZN(n230) );
  NAND2_X1 U240 ( .A1(n227), .A2(n226), .ZN() );
  NAND2_X1 U241 ( .A1(n229), .A2(n228), .ZN() );
  OAI21_X1 U242 ( .A1(n373), .A2(n230), .B(n361), .ZN(n231) );
  FA_X1 U243 ( .A(n235), .B(n234), .CI(n233), .CO(n253), .S(n229) );
  FA_X1 U244 ( .A(partial_sum_in[12]), .B(n237), .CI(n236), .CO(n244), .S(n239) );
  NOR2_X1 U245 ( .A1(n245), .A2(n214), .ZN(n247) );
  NOR2_X1 U246 ( .A1(n238), .A2(n150), .ZN(n246) );
  FA_X1 U247 ( .A(n241), .B(n240), .CI(n239), .CO(n242), .S(n234) );
  FA_X1 U248 ( .A(n244), .B(n243), .CI(n242), .CO(n255), .S(n252) );
  NOR2_X1 U249 ( .A1(n245), .A2(n150), .ZN(n249) );
  FA_X1 U250 ( .A(partial_sum_in[13]), .B(n247), .CI(n246), .CO(n248), .S(n243) );
  NOR2_X1 U251 ( .A1(n255), .A2(n254), .ZN(n273) );
  INV_X1 U252 ( .I(n273), .ZN(n351) );
  NAND2_X1 U253 ( .A1(n359), .A2(n351), .ZN(n306) );
  FA_X1 U254 ( .A(partial_sum_in[14]), .B(n249), .CI(n248), .CO(n257), .S(n254) );
  NAND2_X1 U255 ( .A1(partial_sum_in[16]), .A2(partial_sum_in[17]), .ZN(n301)
         );
  NAND2_X1 U256 ( .A1(partial_sum_in[18]), .A2(partial_sum_in[19]), .ZN(n250)
         );
  NOR2_X1 U257 ( .A1(n301), .A2(n250), .ZN(n262) );
  NAND2_X1 U258 ( .A1(partial_sum_in[20]), .A2(partial_sum_in[21]), .ZN(n263)
         );
  INV_X1 U259 ( .I(partial_sum_in[22]), .ZN(n266) );
  NOR2_X1 U260 ( .A1(n263), .A2(n266), .ZN(n251) );
  NAND2_X1 U261 ( .A1(n262), .A2(n251), .ZN(n272) );
  INV_X1 U262 ( .I(n272), .ZN(n258) );
  NAND2_X1 U263 ( .A1(n354), .A2(n258), .ZN(n343) );
  INV_X1 U264 ( .I(n343), .ZN(n260) );
  NAND2_X1 U265 ( .A1(n253), .A2(n252), .ZN() );
  INV_X1 U266 ( .I(n358), .ZN(n349) );
  NAND2_X1 U267 ( .A1(n255), .A2(n254), .ZN(n350) );
  INV_X1 U268 ( .I(n350), .ZN(n256) );
  AOI21_X1 U269 ( .A1(n349), .A2(n351), .B(n256), .ZN() );
  NAND2_X1 U270 ( .A1(n257), .A2(partial_sum_in[15]), .ZN(n311) );
  NAND2_X1 U271 ( .A1(n353), .A2(n258), .ZN(n345) );
  INV_X1 U272 ( .I(n345), .ZN(n259) );
  AOI21_X1 U273 ( .A1(n357), .A2(n260), .B(n259), .ZN(n261) );
  INV_X1 U274 ( .I(partial_sum_in[23]), .ZN(n344) );
  XNOR2_X1 U275 ( .A1(n261), .A2(partial_sum_in[23]), .ZN(partial_sum_out[23])
         );
  NAND2_X1 U276 ( .A1(n354), .A2(n262), .ZN(n295) );
  NOR2_X1 U277 ( .A1(n295), .A2(n263), .ZN(n265) );
  NAND2_X1 U278 ( .A1(n353), .A2(n262), .ZN(n296) );
  NOR2_X1 U279 ( .A1(n296), .A2(n263), .ZN(n264) );
  AOI21_X1 U280 ( .A1(n357), .A2(n265), .B(n264), .ZN(n267) );
  XNOR2_X1 U281 ( .A1(n267), .A2(partial_sum_in[22]), .ZN(partial_sum_out[22])
         );
  INV_X1 U282 ( .I(partial_sum_in[20]), .ZN(n299) );
  NOR2_X1 U283 ( .A1(n295), .A2(n299), .ZN(n269) );
  NOR2_X1 U284 ( .A1(n296), .A2(n299), .ZN(n268) );
  AOI21_X1 U285 ( .A1(n357), .A2(n269), .B(n268), .ZN(n270) );
  XNOR2_X1 U286 ( .A1(n270), .A2(partial_sum_in[21]), .ZN(partial_sum_out[21])
         );
  NAND2_X1 U287 ( .A1(partial_sum_in[23]), .A2(partial_sum_in[24]), .ZN(n338)
         );
  INV_X1 U288 ( .I(partial_sum_in[25]), .ZN() );
  NOR2_X1 U289 ( .A1(n338), .A2(n341), .ZN(n333) );
  NAND2_X1 U290 ( .A1(n333), .A2(partial_sum_in[26]), .ZN(n271) );
  NOR2_X1 U291 ( .A1(n272), .A2(n271), .ZN(n314) );
  NAND2_X1 U292 ( .A1(n314), .A2(partial_sum_in[27]), .ZN(n274) );
  NOR2_X1 U293 ( .A1(n310), .A2(n274), .ZN(n288) );
  NAND2_X1 U294 ( .A1(n288), .A2(partial_sum_in[28]), .ZN(n276) );
  NOR2_X1 U295 ( .A1(n273), .A2(n276), .ZN(n278) );
  NAND2_X1 U296 ( .A1(n359), .A2(n278), .ZN(n282) );
  INV_X1 U297 ( .I(partial_sum_in[29]), .ZN(n286) );
  NOR2_X1 U298 ( .A1(n282), .A2(n286), .ZN(n331) );
  AND2_X1 U299 ( .A1(n331), .A2(partial_sum_in[30]), .Z(n280) );
  NOR2_X1 U300 ( .A1(n274), .A2(n311), .ZN(n289) );
  NAND2_X1 U301 ( .A1(n289), .A2(partial_sum_in[28]), .ZN(n275) );
  OAI21_X1 U302 ( .A1(n350), .A2(n276), .B(n275), .ZN(n277) );
  AOI21_X1 U303 ( .A1(n349), .A2(n278), .B(n277), .ZN(n283) );
  NOR2_X1 U304 ( .A1(n283), .A2(n286), .ZN() );
  AND2_X1 U305 ( .A1(n330), .A2(partial_sum_in[30]), .Z(n279) );
  AOI21_X1 U306 ( .A1(n357), .A2(n280), .B(n279), .ZN(n281) );
  XNOR2_X1 U307 ( .A1(n281), .A2(partial_sum_in[31]), .ZN(partial_sum_out[31])
         );
  INV_X1 U308 ( .I(n282), .ZN(n285) );
  INV_X1 U309 ( .I(n283), .ZN(n284) );
  AOI21_X1 U310 ( .A1(n357), .A2(n285), .B(n284), .ZN(n287) );
  XNOR2_X1 U311 ( .A1(n287), .A2(partial_sum_in[29]), .ZN(partial_sum_out[29])
         );
  INV_X1 U312 ( .I(n288), .ZN(n291) );
  NOR2_X1 U313 ( .A1(n306), .A2(n291), .ZN(n293) );
  INV_X1 U314 ( .I(n289), .ZN(n290) );
  OAI21_X1 U315 ( .A1(n307), .A2(n291), .B(n290), .ZN(n292) );
  AOI21_X1 U316 ( .A1(n357), .A2(n293), .B(n292), .ZN(n294) );
  XNOR2_X1 U317 ( .A1(n294), .A2(partial_sum_in[28]), .ZN(partial_sum_out[28])
         );
  INV_X1 U318 ( .I(n295), .ZN(n298) );
  INV_X1 U319 ( .I(n296), .ZN(n297) );
  AOI21_X1 U320 ( .A1(n357), .A2(n298), .B(n297), .ZN(n300) );
  XNOR2_X1 U321 ( .A1(n300), .A2(partial_sum_in[20]), .ZN(partial_sum_out[20])
         );
  INV_X1 U322 ( .I(n301), .ZN(n302) );
  NAND2_X1 U323 ( .A1(n354), .A2(n302), .ZN(n319) );
  INV_X1 U324 ( .I(n319), .ZN(n304) );
  NAND2_X1 U325 ( .A1(n353), .A2(n302), .ZN() );
  INV_X1 U326 ( .I(n321), .ZN(n303) );
  AOI21_X1 U327 ( .A1(n357), .A2(n304), .B(n303), .ZN(n305) );
  INV_X1 U328 ( .I(partial_sum_in[18]), .ZN(n320) );
  XNOR2_X1 U329 ( .A1(n305), .A2(partial_sum_in[18]), .ZN(partial_sum_out[18])
         );
  INV_X1 U330 ( .I(n306), .ZN(n309) );
  INV_X1 U331 ( .I(n307), .ZN(n308) );
  AOI21_X1 U332 ( .A1(n357), .A2(n309), .B(n308), .ZN(n313) );
  INV_X1 U333 ( .I(n310), .ZN(n312) );
  XNOR2_X1 U334 ( .A1(n313), .A2(n49), .ZN(partial_sum_out[15]) );
  INV_X1 U335 ( .I(n354), .ZN(n325) );
  INV_X1 U336 ( .I(n314), .ZN(n315) );
  NOR2_X1 U337 ( .A1(n325), .A2(n315), .ZN(n317) );
  INV_X1 U338 ( .I(n353), .ZN(n326) );
  NOR2_X1 U339 ( .A1(n326), .A2(n315), .ZN(n316) );
  AOI21_X1 U340 ( .A1(n357), .A2(n317), .B(n316), .ZN(n318) );
  XNOR2_X1 U341 ( .A1(n318), .A2(partial_sum_in[27]), .ZN(partial_sum_out[27])
         );
  NOR2_X1 U342 ( .A1(n319), .A2(n320), .ZN(n323) );
  NOR2_X1 U343 ( .A1(n321), .A2(n320), .ZN(n322) );
  AOI21_X1 U344 ( .A1(n357), .A2(n323), .B(n322), .ZN(n324) );
  XNOR2_X1 U345 ( .A1(n324), .A2(partial_sum_in[19]), .ZN(partial_sum_out[19])
         );
  INV_X1 U346 ( .I(partial_sum_in[16]), .ZN(n355) );
  NOR2_X1 U347 ( .A1(n325), .A2(n355), .ZN(n328) );
  NOR2_X1 U348 ( .A1(n326), .A2(n355), .ZN() );
  AOI21_X1 U349 ( .A1(n357), .A2(n328), .B(n327), .ZN(n329) );
  XNOR2_X1 U350 ( .A1(n329), .A2(partial_sum_in[17]), .ZN(partial_sum_out[17])
         );
  AOI21_X1 U351 ( .A1(n357), .A2(n331), .B(n330), .ZN(n332) );
  XNOR2_X1 U352 ( .A1(n332), .A2(partial_sum_in[30]), .ZN(partial_sum_out[30])
         );
  INV_X1 U353 ( .I(n333), .ZN(n334) );
  NOR2_X1 U354 ( .A1(n343), .A2(n334), .ZN(n336) );
  NOR2_X1 U355 ( .A1(n345), .A2(n334), .ZN(n335) );
  AOI21_X1 U356 ( .A1(n357), .A2(n336), .B(n335), .ZN(n337) );
  XNOR2_X1 U357 ( .A1(n337), .A2(partial_sum_in[26]), .ZN(partial_sum_out[26])
         );
  NOR2_X1 U358 ( .A1(n343), .A2(n338), .ZN() );
  NOR2_X1 U359 ( .A1(n345), .A2(n338), .ZN(n339) );
  AOI21_X1 U360 ( .A1(n357), .A2(n340), .B(n339), .ZN(n342) );
  XNOR2_X1 U361 ( .A1(n342), .A2(partial_sum_in[25]), .ZN(partial_sum_out[25])
         );
  NOR2_X1 U362 ( .A1(n343), .A2(n344), .ZN(n347) );
  NOR2_X1 U363 ( .A1(n345), .A2(n344), .ZN(n346) );
  AOI21_X1 U364 ( .A1(n357), .A2(n347), .B(n346), .ZN(n348) );
  XNOR2_X1 U365 ( .A1(n348), .A2(partial_sum_in[24]), .ZN(partial_sum_out[24])
         );
  AOI21_X1 U366 ( .A1(n357), .A2(n359), .B(n349), .ZN(n352) );
  XNOR2_X1 U367 ( .A1(n352), .A2(n50), .ZN(partial_sum_out[14]) );
  XNOR2_X1 U368 ( .A1(n356), .A2(partial_sum_in[16]), .ZN(partial_sum_out[16])
         );
  NAND2_X1 U369 ( .A1(n359), .A2(n358), .ZN(n360) );
  XNOR2_X1 U370 ( .A1(n357), .A2(n360), .ZN(partial_sum_out[13]) );
  INV_X1 U371 ( .I(n230), .ZN(n362) );
  NAND2_X1 U372 ( .A1(n362), .A2(n361), .ZN(n371) );
  INV_X1 U373 ( .I(n363), .ZN(n387) );
  INV_X1 U374 ( .I(n375), .ZN(n364) );
  NOR2_X1 U375 ( .A1(n364), .A2(n372), .ZN(n369) );
  CLKBUF_X2 U376 ( .I(n365), .Z(n366) );
  INV_X1 U377 ( .I(n366), .ZN(n367) );
  OAI21_X1 U378 ( .A1(n367), .A2(n372), .B(n373), .ZN(n368) );
  AOI21_X1 U379 ( .A1(n387), .A2(n369), .B(n368), .ZN(n370) );
  XOR2_X1 U380 ( .A1(n371), .A2(n370), .Z(partial_sum_out[12]) );
  INV_X1 U381 ( .I(n372), .ZN(n374) );
  NAND2_X1 U382 ( .A1(n374), .A2(n373), .ZN(n377) );
  AOI21_X1 U383 ( .A1(n387), .A2(n375), .B(n366), .ZN() );
  XOR2_X1 U384 ( .A1(n377), .A2(n376), .Z(partial_sum_out[11]) );
  INV_X1 U385 ( .I(n378), .ZN(n380) );
  NAND2_X1 U386 ( .A1(n380), .A2(n379), .ZN(n383) );
  INV_X1 U387 ( .I(n384), .ZN(n381) );
  AOI21_X1 U388 ( .A1(n387), .A2(n385), .B(n381), .ZN(n382) );
  XOR2_X1 U389 ( .A1(n383), .A2(n382), .Z() );
  NAND2_X1 U390 ( .A1(n385), .A2(n384), .ZN(n386) );
  XNOR2_X1 U391 ( .A1(n387), .A2(n386), .ZN(partial_sum_out[9]) );
  INV_X1 U392 ( .I(n388), .ZN(n398) );
  OAI21_X1 U393 ( .A1(n398), .A2(n394), .B(n395), .ZN(n393) );
  INV_X1 U394 ( .I(n389), .ZN(n391) );
  NAND2_X1 U395 ( .A1(n391), .A2(n390), .ZN(n392) );
  XNOR2_X1 U396 ( .A1(n393), .A2(n392), .ZN() );
  INV_X1 U397 ( .I(n394), .ZN(n396) );
  NAND2_X1 U398 ( .A1(n396), .A2(n395), .ZN(n397) );
  XOR2_X1 U399 ( .A1(n398), .A2(n397), .Z(partial_sum_out[7]) );
  INV_X1 U400 ( .I(n399), .ZN() );
  NAND2_X1 U401 ( .A1(n401), .A2(n400), .ZN(n403) );
  XOR2_X1 U402 ( .A1(n403), .A2(n402), .Z(partial_sum_out[6]) );
  NAND2_X1 U403 ( .A1(n405), .A2(n404), .ZN(n407) );
  XNOR2_X1 U404 ( .A1(n407), .A2(n406), .ZN(partial_sum_out[5]) );
  INV_X1 U405 ( .I(n408), .ZN(n410) );
  NAND2_X1 U406 ( .A1(n410), .A2(n409), .ZN(n411) );
  XOR2_X1 U407 ( .A1(n412), .A2(n411), .Z(partial_sum_out[4]) );
  NAND2_X1 U408 ( .A1(n414), .A2(n413), .ZN(n416) );
  XNOR2_X1 U409 ( .A1(n416), .A2(n415), .ZN(partial_sum_out[3]) );
  INV_X1 U410 ( .I(n417), .ZN() );
  NAND2_X1 U411 ( .A1(n419), .A2(n418), .ZN(n420) );
  XOR2_X1 U412 ( .A1(n421), .A2(n420), .Z(partial_sum_out[2]) );
  INV_X1 U413 ( .I(n422), .ZN(n424) );
  NAND2_X1 U414 ( .A1(n424), .A2(n423), .ZN(n425) );
  XOR2_X1 U415 ( .A1(n427), .A2(n425), .Z(partial_sum_out[1]) );
  OR2_X1 U416 ( .A1(n426), .A2(partial_sum_in[0]), .Z(n428) );
  AND2_X1 U417 ( .A1(n428), .A2(n427), .Z(partial_sum_out[0]) );
  assign n6 = 1'b1;
  assign n13 = 1'b0;
  assign n25 = 1'b0;
  assign n51 = 1'b1;
  assign n55 = 1'b0;
  assign n57 = 1'b1;
  assign n62 = 1'b1;
  assign n65 = 1'b1;
  assign n70 = 1'b0;
  assign n75 = 1'b0;
  assign n91 = 1'b1;
  assign n96 = 1'b0;
  assign n117 = 1'b1;
  assign n120 = 1'b0;
  assign n125 = 1'b1;
  assign n126 = 1'b0;
  assign n127 = 1'b1;
  assign n131 = 1'b0;
  assign n133 = 1'b1;
  assign n142 = 1'b0;
  assign n144 = 1'b0;
  assign n145 = 1'b1;
  assign n151 = 1'b1;
  assign n155 = 1'b0;
  assign n159 = 1'b1;
  assign n163 = 1'b0;
  assign n164 = 1'b0;
  assign n170 = 1'b1;
  assign n180 = 1'b0;
  assign n181 = 1'b1;
  assign n193 = 1'b1;
  assign n196 = 1'b1;
  assign n219 = 1'b1;
  assign n223 = 1'b1;
  assign n224 = 1'b1;
  assign n235 = 1'b1;
  assign n236 = 1'b0;
  assign n245 = 1'b1;
  assign n307 = 1'b1;
  assign n321 = 1'b1;
  assign n327 = 1'b0;
  assign n330 = 1'b0;
  assign n340 = 1'b0;
  assign n341 = 1'b1;
  assign n356 = 1'b1;
  assign n358 = 1'b1;
  assign n359 = 1'b0;
  assign n361 = 1'b0;
  assign n373 = 1'b0;
  assign n376 = 1'b0;
  assign n378 = 1'b0;
  assign n384 = 1'b0;
  assign n401 = 1'b0;
  assign n419 = 1'b1;
  assign partial_sum_out[8] = 1'b1;
  assign partial_sum_out[10] = 1'b1;
endmodule


