/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Aug 13 15:33:49 2024
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
         n200, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436;

  INV_X1 U1 ( .A(partial_sum_in[29]), .ZN(n352) );
  INV_X1 U2 ( .A(partial_sum_in[25]), .ZN(n348) );
  INV_X1 U3 ( .A(n5), .ZN(n4) );
  XNOR2_X1 U4 ( .A(partial_sum_in[4]), .B(n195), .ZN(n3) );
  AND2_X1 U5 ( .A1(n193), .A2(partial_sum_in[3]), .ZN(n203) );
  AND2_X2 U6 ( .A1(weight[5]), .A2(inp[0]), .ZN(n58) );
  AND2_X2 U7 ( .A1(inp[2]), .A2(weight[7]), .ZN(n48) );
  AND2_X2 U8 ( .A1(weight[4]), .A2(inp[5]), .ZN(n49) );
  INV_X2 U9 ( .A(inp[0]), .ZN(n177) );
  XOR2_X1 U10 ( .A(n193), .B(partial_sum_in[3]), .Z(n198) );
  AND2_X2 U11 ( .A1(n195), .A2(partial_sum_in[4]), .ZN(n204) );
  XNOR2_X1 U12 ( .A(n3), .B(n1), .ZN(n211) );
  XOR2_X1 U13 ( .A(n203), .B(n202), .Z(n1) );
  OAI21_X2 U14 ( .B1(n4), .B2(n3), .A(n2), .ZN(n220) );
  NAND2_X1 U15 ( .A1(n203), .A2(n202), .ZN(n2) );
  OR2_X1 U16 ( .A1(n203), .A2(n202), .ZN(n5) );
  AND2_X1 U17 ( .A1(inp[7]), .A2(weight[3]), .ZN(n16) );
  INV_X1 U18 ( .A(partial_sum_in[24]), .ZN(n344) );
  INV_X1 U19 ( .A(partial_sum_in[26]), .ZN(n367) );
  NOR2_X2 U20 ( .A1(n290), .A2(n298), .ZN(n300) );
  OAI21_X2 U21 ( .B1(n326), .B2(n327), .A(n328), .ZN(n271) );
  CLKBUF_X1 U22 ( .A(n289), .Z(n138) );
  OR2_X1 U23 ( .A1(n251), .A2(n250), .ZN(n294) );
  OAI21_X2 U24 ( .B1(n316), .B2(n314), .A(n315), .ZN(n319) );
  CLKBUF_X1 U25 ( .A(n277), .Z(n27) );
  OR2_X1 U26 ( .A1(n7), .A2(n227), .ZN(n8) );
  CLKBUF_X1 U27 ( .A(n264), .Z(n334) );
  NOR2_X1 U28 ( .A1(partial_sum_in[12]), .A2(n246), .ZN(n54) );
  XNOR2_X1 U29 ( .A(n62), .B(n6), .ZN(n65) );
  AND2_X1 U30 ( .A1(weight[4]), .A2(inp[6]), .ZN(n110) );
  INV_X1 U31 ( .A(partial_sum_in[16]), .ZN(n422) );
  AND2_X1 U32 ( .A1(weight[2]), .A2(inp[6]), .ZN(n73) );
  INV_X1 U33 ( .A(partial_sum_in[8]), .ZN(n6) );
  AND2_X1 U34 ( .A1(weight[1]), .A2(inp[7]), .ZN(n62) );
  AND2_X1 U35 ( .A1(inp[1]), .A2(weight[7]), .ZN(n72) );
  AND2_X1 U36 ( .A1(weight[5]), .A2(inp[3]), .ZN(n43) );
  AND2_X1 U37 ( .A1(inp[5]), .A2(weight[0]), .ZN(n59) );
  XNOR2_X1 U38 ( .A(n141), .B(n142), .ZN(n7) );
  BUF_X1 U39 ( .A(n35), .Z(n9) );
  AND2_X1 U40 ( .A1(weight[4]), .A2(inp[4]), .ZN(n66) );
  AND2_X1 U41 ( .A1(weight[5]), .A2(inp[2]), .ZN(n69) );
  AND2_X1 U42 ( .A1(inp[5]), .A2(weight[2]), .ZN(n71) );
  AND2_X1 U43 ( .A1(inp[0]), .A2(weight[7]), .ZN(n82) );
  AND2_X1 U44 ( .A1(inp[7]), .A2(weight[5]), .ZN(n52) );
  AND2_X1 U45 ( .A1(inp[1]), .A2(weight[5]), .ZN(n80) );
  AND2_X1 U46 ( .A1(inp[0]), .A2(weight[6]), .ZN(n153) );
  AND2_X1 U47 ( .A1(inp[5]), .A2(weight[1]), .ZN(n151) );
  AND2_X1 U48 ( .A1(inp[6]), .A2(weight[0]), .ZN(n152) );
  AND2_X1 U49 ( .A1(inp[4]), .A2(weight[2]), .ZN(n146) );
  AND2_X1 U50 ( .A1(inp[2]), .A2(weight[4]), .ZN(n147) );
  XNOR2_X1 U51 ( .A(n105), .B(n100), .ZN(n39) );
  NAND2_X1 U52 ( .A1(partial_sum_in[16]), .A2(partial_sum_in[17]), .ZN(n408)
         );
  INV_X1 U53 ( .A(weight[7]), .ZN(n308) );
  AND2_X1 U54 ( .A1(inp[6]), .A2(weight[6]), .ZN(n246) );
  AND2_X1 U55 ( .A1(inp[1]), .A2(weight[0]), .ZN(n176) );
  AND2_X1 U56 ( .A1(inp[1]), .A2(weight[4]), .ZN(n163) );
  INV_X1 U57 ( .A(partial_sum_in[21]), .ZN(n340) );
  AND2_X1 U58 ( .A1(n215), .A2(n214), .ZN(n216) );
  AND2_X1 U59 ( .A1(n237), .A2(n236), .ZN(n295) );
  AND2_X1 U60 ( .A1(inp[4]), .A2(weight[5]), .ZN(n91) );
  INV_X1 U61 ( .A(inp[5]), .ZN(n122) );
  INV_X1 U62 ( .A(weight[4]), .ZN(n81) );
  INV_X1 U63 ( .A(inp[4]), .ZN(n164) );
  INV_X1 U64 ( .A(inp[3]), .ZN(n194) );
  AND2_X1 U65 ( .A1(inp[7]), .A2(weight[4]), .ZN(n121) );
  AND2_X1 U66 ( .A1(inp[6]), .A2(weight[5]), .ZN(n120) );
  INV_X1 U67 ( .A(inp[6]), .ZN(n245) );
  OR2_X1 U68 ( .A1(n45), .A2(n54), .ZN(n44) );
  INV_X1 U69 ( .A(n52), .ZN(n45) );
  INV_X1 U70 ( .A(weight[0]), .ZN(n170) );
  AND2_X1 U71 ( .A1(inp[1]), .A2(weight[2]), .ZN(n193) );
  INV_X1 U72 ( .A(inp[1]), .ZN(n171) );
  XNOR2_X1 U73 ( .A(n140), .B(n139), .ZN(n142) );
  AOI21_X1 U74 ( .B1(n295), .B2(n294), .A(n293), .ZN(n296) );
  INV_X1 U75 ( .A(partial_sum_in[18]), .ZN(n412) );
  INV_X1 U76 ( .A(partial_sum_in[20]), .ZN(n400) );
  INV_X1 U77 ( .A(partial_sum_in[22]), .ZN(n390) );
  INV_X1 U78 ( .A(n216), .ZN(n50) );
  INV_X1 U79 ( .A(n295), .ZN(n258) );
  INV_X1 U80 ( .A(inp[2]), .ZN(n149) );
  INV_X1 U81 ( .A(weight[1]), .ZN(n169) );
  AND2_X1 U82 ( .A1(inp[1]), .A2(weight[6]), .ZN(n10) );
  AND2_X1 U83 ( .A1(inp[3]), .A2(weight[7]), .ZN(n115) );
  AND3_X1 U84 ( .A1(n31), .A2(n32), .A3(n33), .ZN(n11) );
  OR2_X1 U85 ( .A1(n224), .A2(n223), .ZN(n12) );
  AND2_X1 U86 ( .A1(inp[7]), .A2(weight[0]), .ZN(n83) );
  AND2_X1 U87 ( .A1(inp[6]), .A2(weight[1]), .ZN(n84) );
  AOI21_X1 U88 ( .B1(n331), .B2(n332), .A(n186), .ZN(n13) );
  AND2_X1 U89 ( .A1(inp[7]), .A2(weight[2]), .ZN(n93) );
  XNOR2_X1 U90 ( .A(n14), .B(n247), .ZN(n244) );
  XNOR2_X1 U91 ( .A(n249), .B(n248), .ZN(n14) );
  NOR2_X1 U92 ( .A1(n263), .A2(n266), .ZN(n15) );
  XNOR2_X1 U93 ( .A(n17), .B(n39), .ZN(n232) );
  XOR2_X1 U94 ( .A(n119), .B(n118), .Z(n17) );
  NOR2_X1 U95 ( .A1(n232), .A2(n233), .ZN(n18) );
  BUF_X1 U96 ( .A(n301), .Z(n19) );
  OR2_X1 U97 ( .A1(n234), .A2(n235), .ZN(n20) );
  AOI21_X1 U98 ( .B1(n271), .B2(n229), .A(n228), .ZN(n21) );
  AOI21_X1 U99 ( .B1(n271), .B2(n229), .A(n228), .ZN(n303) );
  AND2_X1 U100 ( .A1(n235), .A2(n234), .ZN(n22) );
  OAI21_X1 U101 ( .B1(n40), .B2(n39), .A(n38), .ZN(n234) );
  INV_X1 U102 ( .A(weight[3]), .ZN(n150) );
  AND2_X1 U103 ( .A1(weight[3]), .A2(inp[3]), .ZN(n148) );
  XNOR2_X1 U104 ( .A(n325), .B(partial_sum_in[16]), .ZN(partial_sum_out[16])
         );
  AND2_X1 U105 ( .A1(inp[1]), .A2(weight[3]), .ZN(n195) );
  INV_X1 U106 ( .A(n278), .ZN(n23) );
  INV_X1 U107 ( .A(n20), .ZN(n24) );
  AND2_X1 U108 ( .A1(inp[2]), .A2(weight[2]), .ZN(n187) );
  OR2_X1 U109 ( .A1(n200), .A2(n199), .ZN(n25) );
  BUF_X1 U110 ( .A(n119), .Z(n26) );
  NAND2_X1 U111 ( .A1(n247), .A2(n249), .ZN(n28) );
  NAND2_X1 U112 ( .A1(n247), .A2(n248), .ZN(n29) );
  NAND2_X1 U113 ( .A1(n249), .A2(n248), .ZN(n30) );
  NAND3_X1 U114 ( .A1(n28), .A2(n29), .A3(n30), .ZN(n305) );
  NAND2_X1 U115 ( .A1(n111), .A2(n113), .ZN(n31) );
  NAND2_X1 U116 ( .A1(n111), .A2(n112), .ZN(n32) );
  NAND2_X1 U117 ( .A1(n113), .A2(n112), .ZN(n33) );
  NAND3_X1 U118 ( .A1(n31), .A2(n32), .A3(n33), .ZN(n130) );
  NOR2_X1 U119 ( .A1(n26), .A2(n118), .ZN(n40) );
  BUF_X1 U120 ( .A(n18), .Z(n34) );
  AOI21_X2 U121 ( .B1(n301), .B2(n300), .A(n299), .ZN(n302) );
  OAI21_X1 U122 ( .B1(n304), .B2(n21), .A(n302), .ZN(n35) );
  OAI21_X1 U123 ( .B1(n304), .B2(n303), .A(n302), .ZN(n36) );
  OAI21_X1 U124 ( .B1(n304), .B2(n303), .A(n302), .ZN(n429) );
  AND2_X1 U125 ( .A1(inp[2]), .A2(weight[6]), .ZN(n68) );
  AND2_X1 U126 ( .A1(inp[1]), .A2(weight[6]), .ZN(n61) );
  XNOR2_X1 U127 ( .A(n73), .B(n37), .ZN(n74) );
  XNOR2_X1 U128 ( .A(n43), .B(n72), .ZN(n37) );
  INV_X1 U129 ( .A(n58), .ZN(n55) );
  NOR2_X1 U130 ( .A1(n59), .A2(n58), .ZN(n57) );
  INV_X1 U131 ( .A(weight[6]), .ZN(n123) );
  NAND2_X1 U132 ( .A1(n26), .A2(n118), .ZN(n38) );
  NAND2_X1 U133 ( .A1(n42), .A2(n41), .ZN(n94) );
  NAND2_X1 U134 ( .A1(n43), .A2(n73), .ZN(n41) );
  OAI21_X1 U135 ( .B1(n73), .B2(n43), .A(n72), .ZN(n42) );
  INV_X1 U136 ( .A(weight[5]), .ZN(n125) );
  OAI21_X1 U137 ( .B1(n60), .B2(n57), .A(n56), .ZN(n160) );
  OR2_X1 U138 ( .A1(n236), .A2(n237), .ZN(n289) );
  INV_X1 U139 ( .A(inp[7]), .ZN(n124) );
  NOR2_X1 U140 ( .A1(n7), .A2(n227), .ZN(n272) );
  NAND2_X1 U141 ( .A1(n44), .A2(n53), .ZN(n306) );
  FA_X1 U142 ( .A(n49), .B(n48), .CI(n91), .S(n97) );
  NAND2_X1 U143 ( .A1(n47), .A2(n46), .ZN(n112) );
  NAND2_X1 U144 ( .A1(n49), .A2(n48), .ZN(n46) );
  OAI21_X1 U145 ( .B1(n49), .B2(n48), .A(n91), .ZN(n47) );
  NAND2_X1 U146 ( .A1(n50), .A2(n318), .ZN(n320) );
  NAND2_X1 U147 ( .A1(weight[1]), .A2(inp[4]), .ZN(n60) );
  XNOR2_X1 U148 ( .A(n52), .B(n51), .ZN(n247) );
  XNOR2_X1 U149 ( .A(partial_sum_in[12]), .B(n246), .ZN(n51) );
  NAND2_X1 U150 ( .A1(n246), .A2(partial_sum_in[12]), .ZN(n53) );
  NOR2_X1 U151 ( .A1(n232), .A2(n233), .ZN(n266) );
  FA_X1 U152 ( .A(n60), .B(n59), .CI(n55), .S(n209) );
  NAND2_X1 U153 ( .A1(n59), .A2(n58), .ZN(n56) );
  AND2_X1 U154 ( .A1(weight[4]), .A2(inp[3]), .ZN(n70) );
  OR2_X1 U155 ( .A1(n131), .A2(n132), .ZN(n129) );
  XNOR2_X1 U156 ( .A(n220), .B(n222), .ZN(n210) );
  XNOR2_X1 U157 ( .A(n11), .B(n117), .ZN(n135) );
  NOR2_X1 U158 ( .A1(n164), .A2(n150), .ZN(n86) );
  XOR2_X1 U159 ( .A(n61), .B(partial_sum_in[7]), .Z(n85) );
  AND2_X1 U160 ( .A1(n10), .A2(partial_sum_in[7]), .ZN(n64) );
  FA_X1 U161 ( .A(n79), .B(n78), .CI(n77), .CO(n103) );
  AND2_X1 U162 ( .A1(weight[3]), .A2(inp[5]), .ZN(n67) );
  AND2_X1 U163 ( .A1(inp[6]), .A2(weight[3]), .ZN(n92) );
  FA_X1 U164 ( .A(n99), .B(n98), .CI(n97), .S(n102) );
  AND2_X1 U165 ( .A1(n62), .A2(partial_sum_in[8]), .ZN(n96) );
  NOR2_X1 U166 ( .A1(n194), .A2(n123), .ZN(n95) );
  FA_X1 U167 ( .A(n65), .B(n64), .CI(n63), .CO(n89), .S(n79) );
  FA_X1 U168 ( .A(n68), .B(n67), .CI(n66), .CO(n99), .S(n76) );
  FA_X1 U169 ( .A(n70), .B(n69), .CI(n71), .CO(n75), .S(n143) );
  FA_X1 U170 ( .A(n76), .B(n75), .CI(n74), .CO(n88), .S(n139) );
  FA_X1 U171 ( .A(n77), .B(n78), .CI(n79), .S(n141) );
  HA_X1 U172 ( .A(n80), .B(partial_sum_in[6]), .CO(n87), .S(n162) );
  FA_X1 U173 ( .A(n84), .B(n83), .CI(n82), .CO(n63), .S(n155) );
  FA_X1 U174 ( .A(n87), .B(n86), .CI(n85), .CO(n78), .S(n154) );
  FA_X1 U175 ( .A(n139), .B(n140), .CI(n141), .CO(n230) );
  NOR2_X1 U176 ( .A1(n231), .A2(n230), .ZN(n263) );
  FA_X1 U177 ( .A(n90), .B(n89), .CI(n88), .CO(n119), .S(n101) );
  FA_X1 U178 ( .A(partial_sum_in[9]), .B(n93), .CI(n92), .CO(n113), .S(n98) );
  FA_X1 U179 ( .A(n112), .B(n111), .CI(n113), .S(n118) );
  FA_X1 U180 ( .A(n96), .B(n95), .CI(n94), .CO(n106), .S(n90) );
  NOR2_X1 U181 ( .A1(n164), .A2(n123), .ZN(n116) );
  NOR2_X1 U182 ( .A1(n122), .A2(n125), .ZN(n114) );
  XOR2_X1 U183 ( .A(n107), .B(n106), .Z(n100) );
  FA_X1 U184 ( .A(n98), .B(n99), .CI(n97), .CO(n105) );
  FA_X1 U185 ( .A(n103), .B(n102), .CI(n101), .CO(n233), .S(n231) );
  NOR2_X1 U186 ( .A1(n263), .A2(n266), .ZN(n291) );
  INV_X1 U187 ( .A(n15), .ZN(n254) );
  OR2_X1 U188 ( .A1(n106), .A2(n107), .ZN(n104) );
  NAND2_X1 U189 ( .A1(n105), .A2(n104), .ZN(n109) );
  NAND2_X1 U190 ( .A1(n107), .A2(n106), .ZN(n108) );
  NAND2_X1 U191 ( .A1(n109), .A2(n108), .ZN(n137) );
  NOR2_X1 U192 ( .A1(n164), .A2(n308), .ZN(n128) );
  NOR2_X1 U193 ( .A1(n122), .A2(n123), .ZN(n127) );
  FA_X1 U194 ( .A(n16), .B(partial_sum_in[10]), .CI(n110), .CO(n126), .S(n111)
         );
  FA_X1 U195 ( .A(n116), .B(n115), .CI(n114), .CO(n131), .S(n107) );
  XOR2_X1 U196 ( .A(n131), .B(n132), .Z(n117) );
  NOR2_X1 U197 ( .A1(n235), .A2(n234), .ZN(n290) );
  FA_X1 U198 ( .A(n120), .B(partial_sum_in[11]), .CI(n121), .CO(n249), .S(n132) );
  NOR2_X1 U199 ( .A1(n122), .A2(n308), .ZN(n248) );
  FA_X1 U200 ( .A(n128), .B(n127), .CI(n126), .CO(n243), .S(n136) );
  NAND2_X1 U201 ( .A1(n130), .A2(n129), .ZN(n134) );
  NAND2_X1 U202 ( .A1(n132), .A2(n131), .ZN(n133) );
  NAND2_X1 U203 ( .A1(n134), .A2(n133), .ZN(n242) );
  FA_X1 U204 ( .A(n135), .B(n136), .CI(n137), .CO(n237), .S(n235) );
  NAND2_X1 U205 ( .A1(n20), .A2(n138), .ZN(n239) );
  NOR2_X1 U206 ( .A1(n254), .A2(n239), .ZN(n241) );
  FA_X1 U207 ( .A(n145), .B(n144), .CI(n143), .CO(n77), .S(n159) );
  FA_X1 U208 ( .A(n148), .B(n147), .CI(n146), .CO(n145), .S(n167) );
  NOR2_X1 U209 ( .A1(n149), .A2(n150), .ZN(n206) );
  INV_X1 U210 ( .A(weight[2]), .ZN(n168) );
  NOR2_X1 U211 ( .A1(n194), .A2(n168), .ZN(n205) );
  FA_X1 U212 ( .A(n151), .B(n152), .CI(n153), .CO(n144), .S(n165) );
  FA_X1 U213 ( .A(n156), .B(n155), .CI(n154), .CO(n140), .S(n157) );
  FA_X1 U214 ( .A(n159), .B(n158), .CI(n157), .CO(n227), .S(n226) );
  FA_X1 U215 ( .A(n162), .B(n161), .CI(n160), .CO(n156), .S(n219) );
  HA_X1 U216 ( .A(n163), .B(partial_sum_in[5]), .CO(n161), .S(n207) );
  NOR2_X1 U217 ( .A1(n177), .A2(n81), .ZN(n189) );
  NOR2_X1 U218 ( .A1(n164), .A2(n170), .ZN(n188) );
  FA_X1 U219 ( .A(n207), .B(n209), .CI(n208), .CO(n218) );
  FA_X1 U220 ( .A(n167), .B(n166), .CI(n165), .CO(n158), .S(n217) );
  NOR2_X1 U221 ( .A1(n226), .A2(n225), .ZN(n276) );
  NOR2_X1 U222 ( .A1(n272), .A2(n276), .ZN(n229) );
  NOR2_X1 U223 ( .A1(n149), .A2(n170), .ZN(n175) );
  NOR2_X1 U224 ( .A1(n177), .A2(n168), .ZN(n174) );
  NOR2_X1 U225 ( .A1(n171), .A2(n169), .ZN(n173) );
  NOR2_X1 U226 ( .A1(n177), .A2(n150), .ZN(n192) );
  NOR2_X1 U227 ( .A1(n194), .A2(n170), .ZN(n191) );
  NOR2_X1 U228 ( .A1(n149), .A2(n169), .ZN(n190) );
  OR2_X1 U229 ( .A1(n185), .A2(n184), .ZN(n331) );
  FA_X1 U230 ( .A(n174), .B(n173), .CI(n172), .CO(n196), .S(n181) );
  HA_X1 U231 ( .A(n175), .B(partial_sum_in[2]), .CO(n197), .S(n180) );
  OR2_X1 U232 ( .A1(n181), .A2(n180), .ZN(n282) );
  HA_X1 U233 ( .A(n176), .B(partial_sum_in[1]), .CO(n172), .S(n179) );
  NOR2_X1 U234 ( .A1(n177), .A2(n169), .ZN(n178) );
  NOR2_X1 U235 ( .A1(n179), .A2(n178), .ZN(n285) );
  NOR2_X1 U236 ( .A1(n177), .A2(n170), .ZN(n434) );
  NAND2_X1 U237 ( .A1(n434), .A2(partial_sum_in[0]), .ZN(n435) );
  NAND2_X1 U238 ( .A1(n179), .A2(n178), .ZN(n286) );
  OAI21_X1 U239 ( .B1(n285), .B2(n435), .A(n286), .ZN(n283) );
  NAND2_X1 U240 ( .A1(n181), .A2(n180), .ZN(n281) );
  INV_X1 U241 ( .A(n281), .ZN(n182) );
  AOI21_X1 U242 ( .B1(n282), .B2(n283), .A(n182), .ZN(n183) );
  INV_X1 U243 ( .A(n183), .ZN(n332) );
  NAND2_X1 U244 ( .A1(n185), .A2(n184), .ZN(n330) );
  INV_X1 U245 ( .A(n330), .ZN(n186) );
  AOI21_X1 U246 ( .B1(n331), .B2(n332), .A(n186), .ZN(n316) );
  FA_X1 U247 ( .A(n189), .B(n188), .CI(n187), .CO(n208), .S(n213) );
  FA_X1 U248 ( .A(n192), .B(n191), .CI(n190), .CO(n212), .S(n184) );
  NOR2_X1 U249 ( .A1(n194), .A2(n169), .ZN(n202) );
  FA_X1 U250 ( .A(n198), .B(n197), .CI(n196), .CO(n199), .S(n185) );
  NOR2_X1 U251 ( .A1(n200), .A2(n199), .ZN(n314) );
  NAND2_X1 U252 ( .A1(n200), .A2(n199), .ZN(n315) );
  FA_X1 U253 ( .A(n204), .B(n205), .CI(n206), .CO(n166), .S(n222) );
  FA_X1 U254 ( .A(n208), .B(n207), .CI(n209), .S(n221) );
  XNOR2_X1 U255 ( .A(n210), .B(n221), .ZN(n215) );
  FA_X1 U256 ( .A(n213), .B(n212), .CI(n211), .CO(n214), .S(n200) );
  OR2_X1 U257 ( .A1(n215), .A2(n214), .ZN(n318) );
  AOI21_X1 U258 ( .B1(n319), .B2(n318), .A(n216), .ZN(n326) );
  FA_X1 U259 ( .A(n219), .B(n218), .CI(n217), .CO(n225), .S(n224) );
  FA_X1 U260 ( .A(n222), .B(n221), .CI(n220), .CO(n223) );
  NOR2_X1 U261 ( .A1(n224), .A2(n223), .ZN(n327) );
  NAND2_X1 U262 ( .A1(n224), .A2(n223), .ZN(n328) );
  NAND2_X1 U263 ( .A1(n226), .A2(n225), .ZN(n277) );
  NAND2_X1 U264 ( .A1(n7), .A2(n227), .ZN(n273) );
  OAI21_X1 U265 ( .B1(n272), .B2(n277), .A(n273), .ZN(n228) );
  INV_X1 U266 ( .A(n21), .ZN(n337) );
  NAND2_X1 U267 ( .A1(n231), .A2(n230), .ZN(n264) );
  NAND2_X1 U268 ( .A1(n232), .A2(n233), .ZN(n267) );
  OAI21_X1 U269 ( .B1(n264), .B2(n18), .A(n267), .ZN(n301) );
  INV_X1 U270 ( .A(n19), .ZN(n255) );
  NAND2_X1 U271 ( .A1(n234), .A2(n235), .ZN(n297) );
  AOI21_X1 U272 ( .B1(n22), .B2(n138), .A(n295), .ZN(n238) );
  OAI21_X1 U273 ( .B1(n255), .B2(n239), .A(n238), .ZN(n240) );
  AOI21_X1 U274 ( .B1(n241), .B2(n337), .A(n240), .ZN(n253) );
  FA_X1 U275 ( .A(n244), .B(n243), .CI(n242), .CO(n251), .S(n236) );
  NOR2_X1 U276 ( .A1(n124), .A2(n123), .ZN(n310) );
  NOR2_X1 U277 ( .A1(n245), .A2(n308), .ZN(n309) );
  NAND2_X1 U278 ( .A1(n251), .A2(n250), .ZN(n292) );
  NAND2_X1 U279 ( .A1(n294), .A2(n292), .ZN(n252) );
  XOR2_X1 U280 ( .A(n253), .B(n252), .Z(partial_sum_out[13]) );
  NOR2_X1 U281 ( .A1(n254), .A2(n24), .ZN(n257) );
  OAI21_X1 U282 ( .B1(n255), .B2(n24), .A(n297), .ZN(n256) );
  AOI21_X1 U283 ( .B1(n257), .B2(n337), .A(n256), .ZN(n260) );
  NAND2_X1 U284 ( .A1(n138), .A2(n258), .ZN(n259) );
  XOR2_X1 U285 ( .A(n260), .B(n259), .Z(partial_sum_out[12]) );
  AOI21_X1 U286 ( .B1(n337), .B2(n15), .A(n19), .ZN(n262) );
  NAND2_X1 U287 ( .A1(n20), .A2(n297), .ZN(n261) );
  XOR2_X1 U288 ( .A(n262), .B(n261), .Z(partial_sum_out[11]) );
  INV_X1 U289 ( .A(n263), .ZN(n335) );
  INV_X1 U290 ( .A(n334), .ZN(n265) );
  AOI21_X1 U291 ( .B1(n337), .B2(n335), .A(n265), .ZN(n270) );
  INV_X1 U292 ( .A(n34), .ZN(n268) );
  NAND2_X1 U293 ( .A1(n268), .A2(n267), .ZN(n269) );
  XOR2_X1 U294 ( .A(n270), .B(n269), .Z(partial_sum_out[10]) );
  INV_X1 U295 ( .A(n271), .ZN(n279) );
  OAI21_X1 U296 ( .B1(n279), .B2(n23), .A(n27), .ZN(n275) );
  NAND2_X1 U297 ( .A1(n8), .A2(n273), .ZN(n274) );
  XNOR2_X1 U298 ( .A(n275), .B(n274), .ZN(partial_sum_out[8]) );
  INV_X1 U299 ( .A(n276), .ZN(n278) );
  NAND2_X1 U300 ( .A1(n278), .A2(n27), .ZN(n280) );
  XOR2_X1 U301 ( .A(n280), .B(n279), .Z(partial_sum_out[7]) );
  NAND2_X1 U302 ( .A1(n282), .A2(n281), .ZN(n284) );
  XNOR2_X1 U303 ( .A(n284), .B(n283), .ZN(partial_sum_out[2]) );
  INV_X1 U304 ( .A(n285), .ZN(n287) );
  NAND2_X1 U305 ( .A1(n287), .A2(n286), .ZN(n288) );
  XOR2_X1 U306 ( .A(n288), .B(n435), .Z(partial_sum_out[1]) );
  NAND2_X1 U307 ( .A1(n289), .A2(n294), .ZN(n298) );
  NAND2_X1 U308 ( .A1(n291), .A2(n300), .ZN(n304) );
  INV_X1 U309 ( .A(n292), .ZN(n293) );
  OAI21_X1 U310 ( .B1(n298), .B2(n297), .A(n296), .ZN(n299) );
  FA_X1 U311 ( .A(n307), .B(n306), .CI(n305), .CO(n312), .S(n250) );
  NOR2_X1 U312 ( .A1(n124), .A2(n308), .ZN(n322) );
  FA_X1 U313 ( .A(n310), .B(partial_sum_in[13]), .CI(n309), .CO(n321), .S(n307) );
  NOR2_X1 U314 ( .A1(n312), .A2(n311), .ZN(n376) );
  INV_X1 U315 ( .A(n376), .ZN(n428) );
  NAND2_X1 U316 ( .A1(n312), .A2(n311), .ZN(n379) );
  NAND2_X1 U317 ( .A1(n428), .A2(n379), .ZN(n313) );
  XNOR2_X1 U318 ( .A(n9), .B(n313), .ZN(partial_sum_out[14]) );
  NAND2_X1 U319 ( .A1(n25), .A2(n315), .ZN(n317) );
  XOR2_X1 U320 ( .A(n13), .B(n317), .Z(partial_sum_out[4]) );
  XNOR2_X1 U321 ( .A(n319), .B(n320), .ZN(partial_sum_out[5]) );
  FA_X1 U322 ( .A(n322), .B(partial_sum_in[14]), .CI(n321), .CO(n323), .S(n311) );
  NOR2_X1 U323 ( .A1(n323), .A2(partial_sum_in[15]), .ZN(n324) );
  INV_X1 U324 ( .A(n324), .ZN(n431) );
  NAND2_X1 U325 ( .A1(n428), .A2(n431), .ZN(n421) );
  INV_X1 U326 ( .A(n421), .ZN(n409) );
  NAND2_X1 U327 ( .A1(n323), .A2(partial_sum_in[15]), .ZN(n430) );
  OAI21_X1 U328 ( .B1(n379), .B2(n324), .A(n430), .ZN(n411) );
  AOI21_X1 U329 ( .B1(n35), .B2(n409), .A(n411), .ZN(n325) );
  NAND2_X1 U330 ( .A1(n12), .A2(n328), .ZN(n329) );
  XOR2_X1 U331 ( .A(n326), .B(n329), .Z(partial_sum_out[6]) );
  NAND2_X1 U332 ( .A1(n331), .A2(n330), .ZN(n333) );
  XNOR2_X1 U333 ( .A(n333), .B(n332), .ZN(partial_sum_out[3]) );
  NAND2_X1 U334 ( .A1(n335), .A2(n334), .ZN(n336) );
  XNOR2_X1 U335 ( .A(n337), .B(n336), .ZN(partial_sum_out[9]) );
  INV_X1 U336 ( .A(partial_sum_in[19]), .ZN(n338) );
  OR2_X1 U337 ( .A1(n412), .A2(n338), .ZN(n339) );
  NOR2_X1 U338 ( .A1(n339), .A2(n408), .ZN(n387) );
  NOR2_X1 U339 ( .A1(n400), .A2(n340), .ZN(n389) );
  INV_X1 U340 ( .A(partial_sum_in[23]), .ZN(n341) );
  NOR2_X1 U341 ( .A1(n390), .A2(n341), .ZN(n342) );
  AND2_X1 U342 ( .A1(n389), .A2(n342), .ZN(n343) );
  NAND2_X1 U343 ( .A1(n387), .A2(n343), .ZN(n383) );
  NOR2_X1 U344 ( .A1(n383), .A2(n344), .ZN(n346) );
  NAND2_X1 U345 ( .A1(n431), .A2(n346), .ZN(n378) );
  NOR2_X1 U346 ( .A1(n378), .A2(n348), .ZN(n350) );
  NAND2_X1 U347 ( .A1(n428), .A2(n350), .ZN(n371) );
  INV_X1 U348 ( .A(partial_sum_in[27]), .ZN(n345) );
  OR2_X1 U349 ( .A1(n367), .A2(n345), .ZN(n351) );
  NOR2_X1 U350 ( .A1(n371), .A2(n351), .ZN(n365) );
  NAND2_X1 U351 ( .A1(n365), .A2(partial_sum_in[28]), .ZN(n359) );
  NOR2_X1 U352 ( .A1(n359), .A2(n352), .ZN(n357) );
  AND2_X1 U353 ( .A1(n357), .A2(partial_sum_in[30]), .ZN(n354) );
  INV_X1 U354 ( .A(n379), .ZN(n427) );
  INV_X1 U355 ( .A(n430), .ZN(n347) );
  NAND2_X1 U356 ( .A1(n347), .A2(n346), .ZN(n377) );
  NOR2_X1 U357 ( .A1(n377), .A2(n348), .ZN(n349) );
  AOI21_X1 U358 ( .B1(n427), .B2(n350), .A(n349), .ZN(n372) );
  NOR2_X1 U359 ( .A1(n372), .A2(n351), .ZN(n364) );
  NAND2_X1 U360 ( .A1(n364), .A2(partial_sum_in[28]), .ZN(n360) );
  NOR2_X1 U361 ( .A1(n360), .A2(n352), .ZN(n356) );
  AND2_X1 U362 ( .A1(n356), .A2(partial_sum_in[30]), .ZN(n353) );
  AOI21_X1 U363 ( .B1(n35), .B2(n354), .A(n353), .ZN(n355) );
  XNOR2_X1 U364 ( .A(n355), .B(partial_sum_in[31]), .ZN(partial_sum_out[31])
         );
  AOI21_X1 U365 ( .B1(n36), .B2(n357), .A(n356), .ZN(n358) );
  XNOR2_X1 U366 ( .A(n358), .B(partial_sum_in[30]), .ZN(partial_sum_out[30])
         );
  INV_X1 U367 ( .A(n359), .ZN(n362) );
  INV_X1 U368 ( .A(n360), .ZN(n361) );
  AOI21_X1 U369 ( .B1(n429), .B2(n362), .A(n361), .ZN(n363) );
  XNOR2_X1 U370 ( .A(n363), .B(partial_sum_in[29]), .ZN(partial_sum_out[29])
         );
  AOI21_X1 U371 ( .B1(n429), .B2(n365), .A(n364), .ZN(n366) );
  XNOR2_X1 U372 ( .A(n366), .B(partial_sum_in[28]), .ZN(partial_sum_out[28])
         );
  NOR2_X1 U373 ( .A1(n371), .A2(n367), .ZN(n369) );
  NOR2_X1 U374 ( .A1(n372), .A2(n367), .ZN(n368) );
  AOI21_X1 U375 ( .B1(n36), .B2(n369), .A(n368), .ZN(n370) );
  XNOR2_X1 U376 ( .A(n370), .B(partial_sum_in[27]), .ZN(partial_sum_out[27])
         );
  INV_X1 U377 ( .A(n371), .ZN(n374) );
  INV_X1 U378 ( .A(n372), .ZN(n373) );
  AOI21_X1 U379 ( .B1(n35), .B2(n374), .A(n373), .ZN(n375) );
  XNOR2_X1 U380 ( .A(n375), .B(partial_sum_in[26]), .ZN(partial_sum_out[26])
         );
  NOR2_X1 U381 ( .A1(n376), .A2(n378), .ZN(n381) );
  OAI21_X1 U382 ( .B1(n379), .B2(n378), .A(n377), .ZN(n380) );
  AOI21_X1 U383 ( .B1(n429), .B2(n381), .A(n380), .ZN(n382) );
  XNOR2_X1 U384 ( .A(n382), .B(partial_sum_in[25]), .ZN(partial_sum_out[25])
         );
  NOR2_X1 U385 ( .A1(n421), .A2(n383), .ZN(n385) );
  INV_X1 U386 ( .A(n411), .ZN(n423) );
  NOR2_X1 U387 ( .A1(n423), .A2(n383), .ZN(n384) );
  AOI21_X1 U388 ( .B1(n429), .B2(n385), .A(n384), .ZN(n386) );
  XNOR2_X1 U389 ( .A(n386), .B(partial_sum_in[24]), .ZN(partial_sum_out[24])
         );
  INV_X1 U390 ( .A(n387), .ZN(n388) );
  NOR2_X1 U391 ( .A1(n421), .A2(n388), .ZN(n406) );
  NAND2_X1 U392 ( .A1(n406), .A2(n389), .ZN(n394) );
  NOR2_X1 U393 ( .A1(n394), .A2(n390), .ZN(n392) );
  NOR2_X1 U394 ( .A1(n423), .A2(n388), .ZN(n405) );
  NAND2_X1 U395 ( .A1(n405), .A2(n389), .ZN(n395) );
  NOR2_X1 U396 ( .A1(n395), .A2(n390), .ZN(n391) );
  AOI21_X1 U397 ( .B1(n35), .B2(n392), .A(n391), .ZN(n393) );
  XNOR2_X1 U398 ( .A(n393), .B(partial_sum_in[23]), .ZN(partial_sum_out[23])
         );
  INV_X1 U399 ( .A(n394), .ZN(n397) );
  INV_X1 U400 ( .A(n395), .ZN(n396) );
  AOI21_X1 U401 ( .B1(n36), .B2(n397), .A(n396), .ZN(n398) );
  XNOR2_X1 U402 ( .A(n398), .B(partial_sum_in[22]), .ZN(partial_sum_out[22])
         );
  INV_X1 U403 ( .A(n406), .ZN(n399) );
  NOR2_X1 U404 ( .A1(n399), .A2(n400), .ZN(n403) );
  INV_X1 U405 ( .A(n405), .ZN(n401) );
  NOR2_X1 U406 ( .A1(n401), .A2(n400), .ZN(n402) );
  AOI21_X1 U407 ( .B1(n35), .B2(n403), .A(n402), .ZN(n404) );
  XNOR2_X1 U408 ( .A(n404), .B(partial_sum_in[21]), .ZN(partial_sum_out[21])
         );
  AOI21_X1 U409 ( .B1(n36), .B2(n406), .A(n405), .ZN(n407) );
  XNOR2_X1 U410 ( .A(n407), .B(partial_sum_in[20]), .ZN(partial_sum_out[20])
         );
  INV_X1 U411 ( .A(n408), .ZN(n410) );
  NAND2_X1 U412 ( .A1(n409), .A2(n410), .ZN(n416) );
  NOR2_X1 U413 ( .A1(n416), .A2(n412), .ZN(n414) );
  NAND2_X1 U414 ( .A1(n411), .A2(n410), .ZN(n417) );
  NOR2_X1 U415 ( .A1(n417), .A2(n412), .ZN(n413) );
  AOI21_X1 U416 ( .B1(n429), .B2(n414), .A(n413), .ZN(n415) );
  XNOR2_X1 U417 ( .A(n415), .B(partial_sum_in[19]), .ZN(partial_sum_out[19])
         );
  INV_X1 U418 ( .A(n416), .ZN(n419) );
  INV_X1 U419 ( .A(n417), .ZN(n418) );
  AOI21_X1 U420 ( .B1(n36), .B2(n419), .A(n418), .ZN(n420) );
  XNOR2_X1 U421 ( .A(n420), .B(partial_sum_in[18]), .ZN(partial_sum_out[18])
         );
  NOR2_X1 U422 ( .A1(n421), .A2(n422), .ZN(n425) );
  NOR2_X1 U423 ( .A1(n423), .A2(n422), .ZN(n424) );
  AOI21_X1 U424 ( .B1(n36), .B2(n425), .A(n424), .ZN(n426) );
  XNOR2_X1 U425 ( .A(n426), .B(partial_sum_in[17]), .ZN(partial_sum_out[17])
         );
  AOI21_X1 U426 ( .B1(n429), .B2(n428), .A(n427), .ZN(n433) );
  AND2_X1 U427 ( .A1(n431), .A2(n430), .ZN(n432) );
  XNOR2_X1 U428 ( .A(n433), .B(n432), .ZN(partial_sum_out[15]) );
  OR2_X1 U429 ( .A1(n434), .A2(partial_sum_in[0]), .ZN(n436) );
  AND2_X1 U430 ( .A1(n436), .A2(n435), .ZN(partial_sum_out[0]) );
endmodule

