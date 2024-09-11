/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Sep 10 23:32:02 2024
/////////////////////////////////////////////////////////////


module top ( a_operand, b_operand, result );
  input [15:0] a_operand;
  input [15:0] b_operand;
  output [15:0] result;
  wire   n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
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
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659;

  XOR2xp5r_ASAP7_6t_R U66 ( .A(n507), .B(n506), .Y(n588) );
  INVx1_ASAP7_6t_R U67 ( .A(n126), .Y(n552) );
  OAI21xp5_ASAP7_6t_R U68 ( .A1(n73), .A2(n545), .B(n544), .Y(n560) );
  AO21x1_ASAP7_6t_R U69 ( .A1(n429), .A2(n430), .B(n195), .Y(n434) );
  AO22x1_ASAP7_6t_R U70 ( .A1(n311), .A2(n310), .B1(n309), .B2(n308), .Y(n336)
         );
  AO21x1_ASAP7_6t_R U71 ( .A1(n421), .A2(n422), .B(n389), .Y(n419) );
  XOR2xp5_ASAP7_6t_R U72 ( .A(n401), .B(n402), .Y(n421) );
  XOR2xp5r_ASAP7_6t_R U73 ( .A(n342), .B(n343), .Y(n345) );
  NOR2x1_ASAP7_6t_R U74 ( .A(n381), .B(n51), .Y(n400) );
  NOR2x1_ASAP7_6t_R U75 ( .A(n380), .B(n386), .Y(n294) );
  NOR2xp5_ASAP7_6t_R U76 ( .A(n51), .B(n352), .Y(n350) );
  NOR2x1_ASAP7_6t_R U77 ( .A(n380), .B(n381), .Y(n327) );
  INVx8_ASAP7_6t_R U78 ( .A(a_operand[5]), .Y(n51) );
  INVx3_ASAP7_6t_R U79 ( .A(b_operand[2]), .Y(n404) );
  INVx5_ASAP7_6t_R U80 ( .A(b_operand[0]), .Y(n60) );
  INVx11_ASAP7_6t_R U81 ( .A(b_operand[5]), .Y(n379) );
  INVx5_ASAP7_6t_R U82 ( .A(b_operand[6]), .Y(n382) );
  INVx8_ASAP7_6t_R U83 ( .A(a_operand[2]), .Y(n383) );
  INVx6_ASAP7_6t_R U84 ( .A(b_operand[3]), .Y(n381) );
  INVx6_ASAP7_6t_R U85 ( .A(a_operand[1]), .Y(n392) );
  INVx6_ASAP7_6t_R U86 ( .A(a_operand[0]), .Y(n470) );
  INVx11_ASAP7_6t_R U87 ( .A(a_operand[3]), .Y(n380) );
  INVx4_ASAP7_6t_R U88 ( .A(a_operand[4]), .Y(n229) );
  INVxp5_ASAP7_6t_R U89 ( .A(n412), .Y(n186) );
  OAI21xp5_ASAP7_6t_R U90 ( .A1(n58), .A2(n94), .B(n354), .Y(n57) );
  OAI21xp5_ASAP7_6t_R U91 ( .A1(n225), .A2(n186), .B(n224), .Y(n185) );
  XNOR2xp5_ASAP7_6t_R U92 ( .A(n64), .B(n422), .Y(n425) );
  INVxp5_ASAP7_6t_R U93 ( .A(n544), .Y(n454) );
  INVxp5_ASAP7_6t_R U94 ( .A(n372), .Y(n174) );
  INVxp5_ASAP7_6t_R U95 ( .A(n537), .Y(n525) );
  OAI21xp5_ASAP7_6t_R U96 ( .A1(n573), .A2(n572), .B(n571), .Y(n593) );
  XOR2xp5_ASAP7_6t_R U97 ( .A(n394), .B(n393), .Y(n413) );
  INVxp5_ASAP7_6t_R U98 ( .A(n524), .Y(n510) );
  NOR2x1_ASAP7_6t_R U99 ( .A(n154), .B(n220), .Y(n219) );
  INVx1_ASAP7_6t_R U100 ( .A(n480), .Y(n237) );
  INVxp5_ASAP7_6t_R U101 ( .A(n159), .Y(n93) );
  XOR2xp5r_ASAP7_6t_R U102 ( .A(n642), .B(n641), .Y(n643) );
  XOR2xp5r_ASAP7_6t_R U103 ( .A(n607), .B(n606), .Y(n608) );
  XOR2xp5r_ASAP7_6t_R U104 ( .A(n617), .B(n613), .Y(n614) );
  XOR2xp5r_ASAP7_6t_R U105 ( .A(n654), .B(n653), .Y(n655) );
  XOR2xp5r_ASAP7_6t_R U106 ( .A(n634), .B(n633), .Y(n635) );
  OAI21xp5_ASAP7_6t_R U107 ( .A1(n563), .A2(n562), .B(n561), .Y(n566) );
  NAND2xp5R_ASAP7_6t_R U108 ( .A(n557), .B(n559), .Y(n548) );
  OAI21xp5_ASAP7_6t_R U109 ( .A1(n459), .A2(n201), .B(n200), .Y(n199) );
  INVxp5_ASAP7_6t_R U110 ( .A(n338), .Y(n66) );
  INVxp5_ASAP7_6t_R U111 ( .A(n283), .Y(n284) );
  INVx1_ASAP7_6t_R U112 ( .A(n449), .Y(n451) );
  OAI21xp5_ASAP7_6t_R U113 ( .A1(n113), .A2(n112), .B(n111), .Y(n447) );
  NAND2xp5R_ASAP7_6t_R U114 ( .A(n497), .B(n496), .Y(n640) );
  XOR2xp5_ASAP7_6t_R U115 ( .A(b_operand[12]), .B(a_operand[12]), .Y(n497) );
  INVx1_ASAP7_6t_R U116 ( .A(n657), .Y(n574) );
  NOR2x1_ASAP7_6t_R U117 ( .A(n541), .B(n540), .Y(n549) );
  XOR2xp5r_ASAP7_6t_R U118 ( .A(n585), .B(n584), .Y(n658) );
  AOI21xp5_ASAP7_6t_R U119 ( .A1(n510), .A2(n148), .B(n249), .Y(n248) );
  NAND2xp5_ASAP7_6t_R U120 ( .A(n70), .B(n126), .Y(n529) );
  NAND2xp5R_ASAP7_6t_R U121 ( .A(n514), .B(n203), .Y(n515) );
  INVxp5_ASAP7_6t_R U122 ( .A(n409), .Y(n457) );
  INVxp5_ASAP7_6t_R U123 ( .A(n478), .Y(n476) );
  AND2x2_ASAP7_6t_R U124 ( .A(n478), .B(n477), .Y(n526) );
  XNOR2xp5_ASAP7_6t_R U125 ( .A(n341), .B(n433), .Y(n508) );
  OAI21xp5_ASAP7_6t_R U126 ( .A1(n97), .A2(n76), .B(n115), .Y(n440) );
  NAND2xp5R_ASAP7_6t_R U127 ( .A(n462), .B(n474), .Y(n477) );
  OAI21xp5_ASAP7_6t_R U128 ( .A1(n451), .A2(n557), .B(n564), .Y(n452) );
  NAND2xp5R_ASAP7_6t_R U129 ( .A(n450), .B(n449), .Y(n564) );
  OAI21xp5_ASAP7_6t_R U130 ( .A1(n312), .A2(n66), .B(n65), .Y(n340) );
  INVxp5_ASAP7_6t_R U131 ( .A(n92), .Y(n91) );
  INVx1_ASAP7_6t_R U132 ( .A(n420), .Y(n188) );
  INVx1_ASAP7_6t_R U133 ( .A(n374), .Y(n173) );
  OAI21xp5_ASAP7_6t_R U134 ( .A1(n194), .A2(n390), .B(n84), .Y(n106) );
  INVxp5_ASAP7_6t_R U135 ( .A(n240), .Y(n239) );
  AOI21xp5_ASAP7_6t_R U136 ( .A1(n637), .A2(n639), .B(n498), .Y(n646) );
  NAND2xp5R_ASAP7_6t_R U137 ( .A(n638), .B(n639), .Y(n645) );
  XOR2xp5r_ASAP7_6t_R U138 ( .A(n368), .B(n369), .Y(n371) );
  INVx1_ASAP7_6t_R U139 ( .A(n416), .Y(n189) );
  INVxp5_ASAP7_6t_R U140 ( .A(n282), .Y(n261) );
  XNOR2xp5f_ASAP7_6t_R U141 ( .A(n114), .B(n112), .Y(n368) );
  XNOR2xp5f_ASAP7_6t_R U142 ( .A(n308), .B(n207), .Y(n310) );
  OR2x2_ASAP7_6t_R U143 ( .A(n468), .B(n467), .Y(n469) );
  AND2x2_ASAP7_6t_R U144 ( .A(n467), .B(n468), .Y(n273) );
  INVx1_ASAP7_6t_R U145 ( .A(n367), .Y(n112) );
  INVx1_ASAP7_6t_R U146 ( .A(n583), .Y(n503) );
  NAND2xp5R_ASAP7_6t_R U147 ( .A(n500), .B(n499), .Y(n652) );
  NAND2xp5R_ASAP7_6t_R U148 ( .A(n502), .B(n501), .Y(n583) );
  NOR2xp5_ASAP7_6t_R U149 ( .A(b_operand[14]), .B(b_operand[13]), .Y(n68) );
  XNOR2xp5f_ASAP7_6t_R U150 ( .A(b_operand[14]), .B(a_operand[14]), .Y(n502)
         );
  NAND4xp25R_ASAP7_6t_R U151 ( .A(a_operand[12]), .B(a_operand[11]), .C(
        a_operand[14]), .D(a_operand[13]), .Y(n255) );
  XOR2xp5_ASAP7_6t_R U152 ( .A(b_operand[13]), .B(a_operand[13]), .Y(n500) );
  NAND4xp25R_ASAP7_6t_R U153 ( .A(a_operand[8]), .B(a_operand[7]), .C(
        a_operand[10]), .D(a_operand[9]), .Y(n256) );
  NAND4xp25R_ASAP7_6t_R U154 ( .A(b_operand[12]), .B(b_operand[11]), .C(
        b_operand[14]), .D(b_operand[13]), .Y(n257) );
  NAND4xp25R_ASAP7_6t_R U155 ( .A(b_operand[8]), .B(b_operand[7]), .C(
        b_operand[10]), .D(b_operand[9]), .Y(n258) );
  INVx4_ASAP7_6t_R U156 ( .A(n46), .Y(n649) );
  INVx2_ASAP7_6t_R U157 ( .A(n458), .Y(n46) );
  NAND2xp5R_ASAP7_6t_R U158 ( .A(n242), .B(n595), .Y(n591) );
  NOR2x1_ASAP7_6t_R U159 ( .A(n576), .B(n575), .Y(n595) );
  XNOR2xp5f_ASAP7_6t_R U160 ( .A(n251), .B(n248), .Y(n577) );
  NAND2xp5R_ASAP7_6t_R U161 ( .A(n555), .B(n231), .Y(n540) );
  INVx2_ASAP7_6t_R U162 ( .A(n538), .Y(n551) );
  NOR2x2R_ASAP7_6t_R U163 ( .A(n578), .B(n579), .Y(n242) );
  NOR2x2R_ASAP7_6t_R U164 ( .A(n47), .B(n539), .Y(n251) );
  NOR2x2R_ASAP7_6t_R U165 ( .A(n526), .B(n649), .Y(n539) );
  AO21x1_ASAP7_6t_R U166 ( .A1(n522), .A2(n649), .B(n523), .Y(n47) );
  NOR2x1_ASAP7_6t_R U167 ( .A(n523), .B(n522), .Y(n55) );
  NAND2xp5R_ASAP7_6t_R U168 ( .A(n484), .B(n508), .Y(n523) );
  NOR2x2R_ASAP7_6t_R U169 ( .A(n392), .B(n352), .Y(n297) );
  NOR2x1_ASAP7_6t_R U170 ( .A(n552), .B(n539), .Y(n231) );
  INVx1_ASAP7_6t_R U171 ( .A(n460), .Y(n201) );
  INVx4_ASAP7_6t_R U172 ( .A(n335), .Y(n391) );
  NAND2xp5R_ASAP7_6t_R U173 ( .A(n393), .B(n394), .Y(n252) );
  AND2x4_ASAP7_6t_R U174 ( .A(a_operand[5]), .B(b_operand[2]), .Y(n394) );
  AND2x4_ASAP7_6t_R U175 ( .A(b_operand[3]), .B(a_operand[4]), .Y(n393) );
  INVx1_ASAP7_6t_R U176 ( .A(n59), .Y(n262) );
  XNOR2xp5_ASAP7_6t_R U177 ( .A(n158), .B(n287), .Y(n59) );
  XOR2xp5r_ASAP7_6t_R U178 ( .A(n426), .B(n425), .Y(n431) );
  NOR2x2_ASAP7_6t_R U179 ( .A(n352), .B(n229), .Y(n396) );
  NOR2xp5_ASAP7_6t_R U180 ( .A(n48), .B(n181), .Y(n180) );
  XNOR2xp5f_ASAP7_6t_R U181 ( .A(n48), .B(n185), .Y(n117) );
  XNOR2xp5_ASAP7_6t_R U182 ( .A(n187), .B(n191), .Y(n48) );
  NOR2x1_ASAP7_6t_R U183 ( .A(n49), .B(n89), .Y(n513) );
  OAI21xp5b_ASAP7_6t_R U184 ( .A1(n50), .A2(n427), .B(n90), .Y(n49) );
  NAND2xp5R_ASAP7_6t_R U185 ( .A(n49), .B(n89), .Y(n203) );
  XNOR2xp5f_ASAP7_6t_R U186 ( .A(n50), .B(n61), .Y(n436) );
  XNOR2xp5f_ASAP7_6t_R U187 ( .A(n214), .B(n188), .Y(n50) );
  NOR2xp5_ASAP7_6t_R U188 ( .A(n382), .B(n51), .Y(n343) );
  NOR2xp5_ASAP7_6t_R U189 ( .A(n60), .B(n51), .Y(n300) );
  NOR2x1_ASAP7_6t_R U190 ( .A(n386), .B(n51), .Y(n331) );
  NOR2x1_ASAP7_6t_R U191 ( .A(n379), .B(n51), .Y(n347) );
  NOR2x1_ASAP7_6t_R U192 ( .A(n51), .B(n391), .Y(n114) );
  NAND4xp25_ASAP7_6t_R U193 ( .A(n334), .B(n68), .C(n333), .D(n52), .Y(n69) );
  NAND4xp75_ASAP7_6t_R U194 ( .A(n52), .B(n334), .C(n333), .D(n332), .Y(n335)
         );
  NOR2x2_ASAP7_6t_R U195 ( .A(b_operand[12]), .B(b_operand[11]), .Y(n52) );
  AND2x4_ASAP7_6t_R U196 ( .A(n524), .B(n55), .Y(n126) );
  OAI21xp5_ASAP7_6t_R U197 ( .A1(n550), .A2(n53), .B(n157), .Y(n530) );
  INVxp5_ASAP7_6t_R U198 ( .A(n54), .Y(n53) );
  NAND2xp5R_ASAP7_6t_R U199 ( .A(n55), .B(n526), .Y(n54) );
  INVxp5_ASAP7_6t_R U200 ( .A(n156), .Y(n562) );
  INVx1_ASAP7_6t_R U201 ( .A(n172), .Y(n567) );
  XNOR2xp5_ASAP7_6t_R U202 ( .A(n56), .B(n548), .Y(n172) );
  AOI21xp5_ASAP7_6t_R U203 ( .A1(n156), .A2(n556), .B(n560), .Y(n56) );
  OAI31xp5f_ASAP7_6t_R U204 ( .A1(n94), .A2(n354), .A3(n58), .B(n57), .Y(n390)
         );
  INVx2_ASAP7_6t_R U205 ( .A(n396), .Y(n58) );
  NAND2xp5R_ASAP7_6t_R U206 ( .A(n282), .B(n59), .Y(n283) );
  NOR2x1_ASAP7_6t_R U207 ( .A(n370), .B(n60), .Y(n330) );
  NOR2xp5_ASAP7_6t_R U208 ( .A(n383), .B(n60), .Y(n274) );
  NOR2xp5_ASAP7_6t_R U209 ( .A(n392), .B(n60), .Y(n468) );
  NOR2xp5_ASAP7_6t_R U210 ( .A(n470), .B(n60), .Y(n471) );
  NOR2xp5_ASAP7_6t_R U211 ( .A(n380), .B(n60), .Y(n264) );
  OAI21xp5b_ASAP7_6t_R U212 ( .A1(n403), .A2(n60), .B(n413), .Y(n103) );
  INVx1_ASAP7_6t_R U213 ( .A(n427), .Y(n61) );
  OAI22xp5_ASAP7_6t_R U214 ( .A1(n239), .A2(n63), .B1(n62), .B2(n238), .Y(n426) );
  XOR2xp5r_ASAP7_6t_R U215 ( .A(n63), .B(n240), .Y(n238) );
  XNOR2xp5f_ASAP7_6t_R U216 ( .A(n384), .B(n241), .Y(n240) );
  INVx1_ASAP7_6t_R U217 ( .A(n423), .Y(n62) );
  XNOR2xp5_ASAP7_6t_R U218 ( .A(n225), .B(n412), .Y(n423) );
  OAI21xp5b_ASAP7_6t_R U219 ( .A1(n83), .A2(n329), .B(n80), .Y(n63) );
  INVx1_ASAP7_6t_R U220 ( .A(n421), .Y(n64) );
  XNOR2xp5f_ASAP7_6t_R U221 ( .A(n387), .B(n102), .Y(n422) );
  NAND2xp5R_ASAP7_6t_R U222 ( .A(n336), .B(n337), .Y(n65) );
  XNOR2xp5f_ASAP7_6t_R U223 ( .A(n336), .B(n337), .Y(n312) );
  XNOR2xp5f_ASAP7_6t_R U224 ( .A(n405), .B(n190), .Y(n67) );
  AO22x2_ASAP7_6t_R U225 ( .A1(n402), .A2(n401), .B1(n400), .B2(n399), .Y(n405) );
  NOR2x2R_ASAP7_6t_R U226 ( .A(n382), .B(n229), .Y(n346) );
  INVx2_ASAP7_6t_R U227 ( .A(n546), .Y(n533) );
  NAND2xp5R_ASAP7_6t_R U228 ( .A(n80), .B(n79), .Y(n78) );
  XOR2xp5r_ASAP7_6t_R U229 ( .A(n310), .B(n311), .Y(n307) );
  OAI21xp5_ASAP7_6t_R U230 ( .A1(n383), .A2(n391), .B(n390), .Y(n84) );
  AOI21xp25_ASAP7_6t_R U231 ( .A1(n171), .A2(n581), .B(n580), .Y(n585) );
  BUFx3_ASAP7_6t_R U232 ( .A(n568), .Y(n157) );
  INVx2_ASAP7_6t_R U233 ( .A(n147), .Y(n148) );
  AOI21xp5_ASAP7_6t_R U234 ( .A1(n171), .A2(n505), .B(n504), .Y(n507) );
  XNOR2xp5f_ASAP7_6t_R U235 ( .A(n516), .B(n515), .Y(n70) );
  NAND2xp5R_ASAP7_6t_R U236 ( .A(n527), .B(n517), .Y(n178) );
  INVxp5_ASAP7_6t_R U237 ( .A(n391), .Y(n71) );
  INVx1_ASAP7_6t_R U238 ( .A(n71), .Y(n72) );
  AOI21xp5_ASAP7_6t_R U239 ( .A1(n243), .A2(n197), .B(n196), .Y(n482) );
  HB1x1_ASAP7_6t_R U240 ( .A(n546), .Y(n73) );
  XOR2xp5r_ASAP7_6t_R U241 ( .A(n430), .B(n429), .Y(n339) );
  NAND2x1_ASAP7_6t_R U242 ( .A(n216), .B(n215), .Y(n317) );
  NAND2xp5R_ASAP7_6t_R U243 ( .A(n298), .B(n297), .Y(n215) );
  NOR2x1_ASAP7_6t_R U244 ( .A(n434), .B(n77), .Y(n480) );
  OAI21xp5_ASAP7_6t_R U245 ( .A1(n551), .A2(n541), .B(n234), .Y(n233) );
  NAND2x1_ASAP7_6t_R U246 ( .A(n322), .B(n320), .Y(n247) );
  NOR2xp5_ASAP7_6t_R U247 ( .A(n380), .B(n404), .Y(n309) );
  AO21x2_ASAP7_6t_R U248 ( .A1(n431), .A2(n93), .B(n91), .Y(n435) );
  INVxp5_ASAP7_6t_R U249 ( .A(n482), .Y(n235) );
  NAND2xp5R_ASAP7_6t_R U250 ( .A(n476), .B(n475), .Y(n484) );
  INVx1_ASAP7_6t_R U251 ( .A(n142), .Y(n141) );
  OAI21xp5_ASAP7_6t_R U252 ( .A1(n218), .A2(n211), .B(n210), .Y(n384) );
  XOR2xp5_ASAP7_6t_R U253 ( .A(n315), .B(n316), .Y(n313) );
  OAI21xp5_ASAP7_6t_R U254 ( .A1(n99), .A2(n100), .B(n98), .Y(n364) );
  XOR2x2_ASAP7_6t_R U255 ( .A(n325), .B(n326), .Y(n337) );
  XOR2x2_ASAP7_6t_R U256 ( .A(n323), .B(n324), .Y(n325) );
  INVxp5_ASAP7_6t_R U257 ( .A(n125), .Y(n105) );
  NAND2xp5_ASAP7_6t_R U258 ( .A(n323), .B(n324), .Y(n125) );
  OA21x1_ASAP7_6t_R U259 ( .A1(n545), .A2(n456), .B(n455), .Y(n74) );
  AOI22xp25_ASAP7_6t_R U260 ( .A1(n569), .A2(n171), .B1(n157), .B2(n567), .Y(
        n570) );
  NOR2xp5_ASAP7_6t_R U261 ( .A(n470), .B(n352), .Y(n290) );
  NAND2xp5_ASAP7_6t_R U262 ( .A(n183), .B(n413), .Y(n182) );
  NAND2xp5_ASAP7_6t_R U263 ( .A(n415), .B(n414), .Y(n121) );
  XNOR2xp5_ASAP7_6t_R U264 ( .A(n238), .B(n423), .Y(n430) );
  INVxp5_ASAP7_6t_R U265 ( .A(n318), .Y(n124) );
  NAND2xp5_ASAP7_6t_R U266 ( .A(n141), .B(n317), .Y(n318) );
  HB1x1_ASAP7_6t_R U267 ( .A(n403), .Y(n164) );
  XOR2xp5_ASAP7_6t_R U268 ( .A(n445), .B(n446), .Y(n448) );
  INVxp5_ASAP7_6t_R U269 ( .A(n114), .Y(n113) );
  NAND2xp5_ASAP7_6t_R U270 ( .A(n369), .B(n368), .Y(n111) );
  INVxp5_ASAP7_6t_R U271 ( .A(n110), .Y(n109) );
  NAND2xp5_ASAP7_6t_R U272 ( .A(n372), .B(n371), .Y(n110) );
  XOR2xp5_ASAP7_6t_R U273 ( .A(n447), .B(n448), .Y(n443) );
  NOR2x1_ASAP7_6t_R U274 ( .A(n441), .B(n442), .Y(n546) );
  NAND2xp5_ASAP7_6t_R U275 ( .A(n153), .B(n432), .Y(n341) );
  NAND2xp5_ASAP7_6t_R U276 ( .A(n198), .B(n212), .Y(n153) );
  INVxp5_ASAP7_6t_R U277 ( .A(n547), .Y(n559) );
  INVxp5_ASAP7_6t_R U278 ( .A(n508), .Y(n483) );
  NAND2xp5_ASAP7_6t_R U279 ( .A(n481), .B(n237), .Y(n236) );
  NAND2xp5_ASAP7_6t_R U280 ( .A(n545), .B(n520), .Y(n521) );
  NAND3xp33_ASAP7_6t_R U281 ( .A(n157), .B(n554), .C(n553), .Y(n572) );
  NAND2xp5_ASAP7_6t_R U282 ( .A(n605), .B(n604), .Y(n606) );
  NAND2xp5_ASAP7_6t_R U283 ( .A(n616), .B(n612), .Y(n613) );
  NAND2xp5_ASAP7_6t_R U284 ( .A(n621), .B(n620), .Y(n622) );
  OAI21xp5_ASAP7_6t_R U285 ( .A1(n618), .A2(n617), .B(n616), .Y(n623) );
  NAND2xp5_ASAP7_6t_R U286 ( .A(n632), .B(n631), .Y(n633) );
  NAND2xp5_ASAP7_6t_R U287 ( .A(n640), .B(n639), .Y(n641) );
  NAND2xp5_ASAP7_6t_R U288 ( .A(n652), .B(n651), .Y(n653) );
  NAND2xp5_ASAP7_6t_R U289 ( .A(n583), .B(n582), .Y(n584) );
  NAND2xp5R_ASAP7_6t_R U290 ( .A(a_operand[2]), .B(b_operand[5]), .Y(n211) );
  NOR2xp5_ASAP7_6t_R U291 ( .A(n470), .B(n382), .Y(n324) );
  NOR2xp5_ASAP7_6t_R U292 ( .A(n392), .B(n379), .Y(n323) );
  NOR2xp5_ASAP7_6t_R U293 ( .A(n470), .B(n379), .Y(n298) );
  XOR2xp5_ASAP7_6t_R U294 ( .A(n301), .B(n300), .Y(n311) );
  INVxp5_ASAP7_6t_R U295 ( .A(n309), .Y(n207) );
  NAND2xp5_ASAP7_6t_R U296 ( .A(n395), .B(n396), .Y(n232) );
  NOR2xp5_ASAP7_6t_R U297 ( .A(n382), .B(n380), .Y(n354) );
  NOR2xp5_ASAP7_6t_R U298 ( .A(n370), .B(n381), .Y(n398) );
  XNOR2xp5_ASAP7_6t_R U299 ( .A(n350), .B(n351), .Y(n100) );
  NOR2xp5_ASAP7_6t_R U300 ( .A(n370), .B(n386), .Y(n385) );
  AND2x2_ASAP7_6t_R U301 ( .A(n300), .B(n301), .Y(n329) );
  INVxp5_ASAP7_6t_R U302 ( .A(n403), .Y(n104) );
  NOR2xp5_ASAP7_6t_R U303 ( .A(n370), .B(n352), .Y(n355) );
  OAI21xp5_ASAP7_6t_R U304 ( .A1(n297), .A2(n298), .B(n299), .Y(n216) );
  NAND2xp5_ASAP7_6t_R U305 ( .A(n411), .B(n410), .Y(n224) );
  INVxp5_ASAP7_6t_R U306 ( .A(n75), .Y(n191) );
  NAND2xp5_ASAP7_6t_R U307 ( .A(n279), .B(n278), .Y(n280) );
  NAND2xp5_ASAP7_6t_R U308 ( .A(n275), .B(n274), .Y(n276) );
  INVxp5_ASAP7_6t_R U309 ( .A(n288), .Y(n158) );
  XNOR2xp5_ASAP7_6t_R U310 ( .A(n290), .B(n204), .Y(n291) );
  INVxp5_ASAP7_6t_R U311 ( .A(n289), .Y(n204) );
  INVx11_ASAP7_6t_R U312 ( .A(b_operand[1]), .Y(n386) );
  AND2x2_ASAP7_6t_R U313 ( .A(n263), .B(n264), .Y(n286) );
  XOR2xp5_ASAP7_6t_R U314 ( .A(n293), .B(n294), .Y(n285) );
  INVxp5_ASAP7_6t_R U315 ( .A(n398), .Y(n99) );
  NAND2xp5_ASAP7_6t_R U316 ( .A(n350), .B(n351), .Y(n98) );
  OAI21xp5_ASAP7_6t_R U317 ( .A1(n194), .A2(n193), .B(n192), .Y(n357) );
  NAND2xp5_ASAP7_6t_R U318 ( .A(n354), .B(n353), .Y(n192) );
  INVxp5_ASAP7_6t_R U319 ( .A(n390), .Y(n193) );
  INVxp5_ASAP7_6t_R U320 ( .A(n232), .Y(n353) );
  XOR2xp5_ASAP7_6t_R U321 ( .A(n356), .B(n355), .Y(n358) );
  NAND2xp5_ASAP7_6t_R U322 ( .A(n392), .B(n226), .Y(n96) );
  NOR2xp5_ASAP7_6t_R U323 ( .A(n370), .B(n379), .Y(n342) );
  XOR2xp5_ASAP7_6t_R U324 ( .A(n345), .B(n344), .Y(n359) );
  XNOR2xp5_ASAP7_6t_R U325 ( .A(n371), .B(n174), .Y(n373) );
  INVxp5_ASAP7_6t_R U326 ( .A(n428), .Y(n244) );
  NAND2xp5_ASAP7_6t_R U327 ( .A(n420), .B(n213), .Y(n90) );
  INVxp5_ASAP7_6t_R U328 ( .A(n340), .Y(n212) );
  INVxp5_ASAP7_6t_R U329 ( .A(n269), .Y(n465) );
  INVxp5_ASAP7_6t_R U330 ( .A(n511), .Y(n220) );
  XNOR2xp5_ASAP7_6t_R U331 ( .A(n373), .B(n173), .Y(n441) );
  INVxp5_ASAP7_6t_R U332 ( .A(n477), .Y(n475) );
  NAND2xp5_ASAP7_6t_R U333 ( .A(n556), .B(n559), .Y(n563) );
  NAND2xp5_ASAP7_6t_R U334 ( .A(n440), .B(n439), .Y(n545) );
  INVxp5_ASAP7_6t_R U335 ( .A(a_operand[7]), .Y(n486) );
  NAND2xp5_ASAP7_6t_R U336 ( .A(n493), .B(n611), .Y(n626) );
  AND2x2_ASAP7_6t_R U337 ( .A(a_operand[11]), .B(b_operand[11]), .Y(n496) );
  AND2x2_ASAP7_6t_R U338 ( .A(a_operand[12]), .B(b_operand[12]), .Y(n499) );
  AND2x2_ASAP7_6t_R U339 ( .A(a_operand[13]), .B(b_operand[13]), .Y(n501) );
  NAND2xp5_ASAP7_6t_R U340 ( .A(n508), .B(n250), .Y(n509) );
  NAND2xp5_ASAP7_6t_R U341 ( .A(n143), .B(n555), .Y(n177) );
  NAND2xp5_ASAP7_6t_R U342 ( .A(n486), .B(b_operand[7]), .Y(n600) );
  NAND2xp5_ASAP7_6t_R U343 ( .A(n487), .B(a_operand[7]), .Y(n605) );
  NAND2xp5_ASAP7_6t_R U344 ( .A(n489), .B(n488), .Y(n616) );
  NAND2xp5_ASAP7_6t_R U345 ( .A(n491), .B(n490), .Y(n621) );
  NAND2xp5_ASAP7_6t_R U346 ( .A(n495), .B(n494), .Y(n632) );
  OAI21xp5_ASAP7_6t_R U347 ( .A1(n123), .A2(n485), .B(n170), .Y(n223) );
  NAND2xp5_ASAP7_6t_R U348 ( .A(n600), .B(n602), .Y(n597) );
  INVxp5_ASAP7_6t_R U349 ( .A(n129), .Y(n128) );
  NAND2xp5_ASAP7_6t_R U350 ( .A(n657), .B(n608), .Y(n129) );
  INVxp5_ASAP7_6t_R U351 ( .A(n131), .Y(n130) );
  NAND2xp5_ASAP7_6t_R U352 ( .A(n657), .B(n614), .Y(n131) );
  INVxp5_ASAP7_6t_R U353 ( .A(n133), .Y(n132) );
  NAND2xp5_ASAP7_6t_R U354 ( .A(n624), .B(n657), .Y(n133) );
  INVxp5_ASAP7_6t_R U355 ( .A(n135), .Y(n134) );
  NAND2xp5_ASAP7_6t_R U356 ( .A(n657), .B(n635), .Y(n135) );
  INVxp5_ASAP7_6t_R U357 ( .A(n137), .Y(n136) );
  NAND2xp5_ASAP7_6t_R U358 ( .A(n657), .B(n643), .Y(n137) );
  INVxp5_ASAP7_6t_R U359 ( .A(n139), .Y(n138) );
  NAND2xp5_ASAP7_6t_R U360 ( .A(n657), .B(n655), .Y(n139) );
  AND2x2_ASAP7_6t_R U361 ( .A(n658), .B(n657), .Y(n140) );
  INVxp5_ASAP7_6t_R U362 ( .A(n220), .Y(n152) );
  XNOR2xp5_ASAP7_6t_R U363 ( .A(n418), .B(n419), .Y(n427) );
  XNOR2xp5_ASAP7_6t_R U364 ( .A(n396), .B(n395), .Y(n75) );
  INVx1_ASAP7_6t_R U365 ( .A(n252), .Y(n226) );
  INVxp5_ASAP7_6t_R U366 ( .A(n272), .Y(n466) );
  XNOR2xp5f_ASAP7_6t_R U367 ( .A(n76), .B(n107), .Y(n89) );
  XNOR2xp5f_ASAP7_6t_R U368 ( .A(n169), .B(n108), .Y(n76) );
  NAND2xp5R_ASAP7_6t_R U369 ( .A(n434), .B(n77), .Y(n481) );
  XNOR2xp5f_ASAP7_6t_R U370 ( .A(n431), .B(n159), .Y(n77) );
  XNOR2xp5f_ASAP7_6t_R U371 ( .A(n78), .B(n329), .Y(n315) );
  INVx1_ASAP7_6t_R U372 ( .A(n83), .Y(n79) );
  NAND2xp5R_ASAP7_6t_R U373 ( .A(n82), .B(n81), .Y(n80) );
  INVx1_ASAP7_6t_R U374 ( .A(n328), .Y(n81) );
  INVx1_ASAP7_6t_R U375 ( .A(n327), .Y(n82) );
  AND2x4_ASAP7_6t_R U376 ( .A(n328), .B(n327), .Y(n83) );
  NAND2xp5R_ASAP7_6t_R U377 ( .A(n86), .B(n106), .Y(n397) );
  NAND2xp5R_ASAP7_6t_R U378 ( .A(a_operand[2]), .B(n85), .Y(n194) );
  INVx1_ASAP7_6t_R U379 ( .A(n391), .Y(n85) );
  INVx1_ASAP7_6t_R U380 ( .A(n230), .Y(n86) );
  AOI21xp5_ASAP7_6t_R U381 ( .A1(n226), .A2(n88), .B(n87), .Y(n230) );
  AOI31xp33_ASAP7_6t_R U382 ( .A1(n95), .A2(n227), .A3(n96), .B(n75), .Y(n87)
         );
  NOR2xp5_ASAP7_6t_R U383 ( .A(n392), .B(n391), .Y(n88) );
  OAI21xp5_ASAP7_6t_R U384 ( .A1(n511), .A2(n513), .B(n203), .Y(n437) );
  NAND2xp5R_ASAP7_6t_R U385 ( .A(n436), .B(n435), .Y(n511) );
  NAND2xp5R_ASAP7_6t_R U386 ( .A(n426), .B(n425), .Y(n92) );
  INVx1_ASAP7_6t_R U387 ( .A(n395), .Y(n94) );
  NAND2xp5_ASAP7_6t_R U388 ( .A(n391), .B(n226), .Y(n95) );
  NAND3xp33R_ASAP7_6t_R U389 ( .A(n69), .B(n252), .C(a_operand[1]), .Y(n227)
         );
  XNOR2xp5f_ASAP7_6t_R U390 ( .A(n230), .B(n106), .Y(n418) );
  INVx1_ASAP7_6t_R U391 ( .A(n107), .Y(n97) );
  XNOR2xp5f_ASAP7_6t_R U392 ( .A(n162), .B(n377), .Y(n107) );
  XNOR2xp5f_ASAP7_6t_R U393 ( .A(n100), .B(n398), .Y(n416) );
  NAND2xp5R_ASAP7_6t_R U394 ( .A(n387), .B(n101), .Y(n388) );
  INVxp5_ASAP7_6t_R U395 ( .A(n102), .Y(n101) );
  AOI21xp5_ASAP7_6t_R U396 ( .A1(n385), .A2(n384), .B(n209), .Y(n102) );
  OAI21xp5b_ASAP7_6t_R U397 ( .A1(n413), .A2(n184), .B(n103), .Y(n414) );
  NAND2xp5R_ASAP7_6t_R U398 ( .A(b_operand[0]), .B(n104), .Y(n184) );
  XNOR2xp5f_ASAP7_6t_R U399 ( .A(n414), .B(n415), .Y(n245) );
  AO21x1_ASAP7_6t_R U400 ( .A1(n326), .A2(n325), .B(n105), .Y(n415) );
  INVx1_ASAP7_6t_R U401 ( .A(n408), .Y(n108) );
  NOR2xp5_ASAP7_6t_R U402 ( .A(n451), .B(n547), .Y(n453) );
  NOR2xp5_ASAP7_6t_R U403 ( .A(n443), .B(n444), .Y(n547) );
  AO21x1_ASAP7_6t_R U404 ( .A1(n374), .A2(n373), .B(n109), .Y(n444) );
  NAND2xp5R_ASAP7_6t_R U405 ( .A(n407), .B(n408), .Y(n115) );
  NOR2xp5_ASAP7_6t_R U406 ( .A(n380), .B(n391), .Y(n362) );
  NOR2xp5_ASAP7_6t_R U407 ( .A(n370), .B(n72), .Y(n446) );
  NOR2xp5_ASAP7_6t_R U408 ( .A(n72), .B(n164), .Y(n449) );
  AOI21x1_ASAP7_6t_R U409 ( .A1(n438), .A2(n116), .B(n437), .Y(n543) );
  OAI21xp5_ASAP7_6t_R U410 ( .A1(n482), .A2(n480), .B(n481), .Y(n116) );
  INVx1_ASAP7_6t_R U411 ( .A(n116), .Y(n512) );
  AOI21x1_ASAP7_6t_R U412 ( .A1(n424), .A2(n117), .B(n180), .Y(n214) );
  XNOR2xp5_ASAP7_6t_R U413 ( .A(n117), .B(n424), .Y(n159) );
  XNOR2xp5f_ASAP7_6t_R U414 ( .A(n208), .B(n302), .Y(n306) );
  AOI21xp5_ASAP7_6t_R U415 ( .A1(n119), .A2(n205), .B(n118), .Y(n302) );
  NOR2xp5_ASAP7_6t_R U416 ( .A(n289), .B(n292), .Y(n118) );
  NOR2xp5_ASAP7_6t_R U417 ( .A(n404), .B(n383), .Y(n292) );
  INVx1_ASAP7_6t_R U418 ( .A(n290), .Y(n119) );
  XNOR2xp5f_ASAP7_6t_R U419 ( .A(n120), .B(n206), .Y(n208) );
  XNOR2xp5f_ASAP7_6t_R U420 ( .A(n299), .B(n297), .Y(n120) );
  NOR2x1_ASAP7_6t_R U421 ( .A(n381), .B(n383), .Y(n299) );
  NAND2xp5R_ASAP7_6t_R U422 ( .A(n182), .B(n121), .Y(n424) );
  NAND2xp5R_ASAP7_6t_R U423 ( .A(n140), .B(n122), .Y(n659) );
  NAND4xp75_ASAP7_6t_R U424 ( .A(n242), .B(n595), .C(n593), .D(n594), .Y(n122)
         );
  NAND2xp5R_ASAP7_6t_R U425 ( .A(n132), .B(n122), .Y(n625) );
  NAND2xp5R_ASAP7_6t_R U426 ( .A(n128), .B(n122), .Y(n609) );
  NAND2xp5R_ASAP7_6t_R U427 ( .A(n130), .B(n122), .Y(n615) );
  NAND2xp5R_ASAP7_6t_R U428 ( .A(n134), .B(n122), .Y(n636) );
  NAND2xp5R_ASAP7_6t_R U429 ( .A(n136), .B(n122), .Y(n644) );
  NAND2xp5R_ASAP7_6t_R U430 ( .A(n138), .B(n122), .Y(n656) );
  NAND2xp5R_ASAP7_6t_R U431 ( .A(n127), .B(n122), .Y(n599) );
  NAND2x1_ASAP7_6t_R U432 ( .A(n518), .B(n123), .Y(n179) );
  NOR2x1_ASAP7_6t_R U433 ( .A(n539), .B(n165), .Y(n123) );
  XNOR2xp5f_ASAP7_6t_R U434 ( .A(n245), .B(n428), .Y(n429) );
  AO21x1_ASAP7_6t_R U435 ( .A1(n316), .A2(n315), .B(n124), .Y(n428) );
  NAND2xp5R_ASAP7_6t_R U436 ( .A(n554), .B(n126), .Y(n167) );
  OAI21xp5b_ASAP7_6t_R U437 ( .A1(n126), .A2(n538), .B(n171), .Y(n531) );
  AND2x2_ASAP7_6t_R U438 ( .A(n598), .B(n657), .Y(n127) );
  XNOR2xp5f_ASAP7_6t_R U439 ( .A(n317), .B(n142), .Y(n316) );
  XNOR2xp5f_ASAP7_6t_R U440 ( .A(n330), .B(n331), .Y(n142) );
  OR2x2_ASAP7_6t_R U441 ( .A(n526), .B(n649), .Y(n143) );
  INVx4_ASAP7_6t_R U442 ( .A(n649), .Y(n568) );
  INVx2_ASAP7_6t_R U443 ( .A(n649), .Y(n147) );
  OAI21xp5_ASAP7_6t_R U444 ( .A1(n154), .A2(n512), .B(n152), .Y(n516) );
  XOR2x2_ASAP7_6t_R U445 ( .A(n549), .B(n144), .Y(n594) );
  AOI22xp5_ASAP7_6t_R U446 ( .A1(n568), .A2(n554), .B1(n171), .B2(n567), .Y(
        n144) );
  NAND2xp5R_ASAP7_6t_R U447 ( .A(n70), .B(n148), .Y(n517) );
  INVx4_ASAP7_6t_R U448 ( .A(n568), .Y(n171) );
  OAI21xp5_ASAP7_6t_R U449 ( .A1(n591), .A2(n592), .B(n590), .Y(n145) );
  OAI21xp5_ASAP7_6t_R U450 ( .A1(n591), .A2(n592), .B(n590), .Y(n146) );
  XOR2x2_ASAP7_6t_R U451 ( .A(n534), .B(n149), .Y(n554) );
  AND2x2_ASAP7_6t_R U452 ( .A(n544), .B(n533), .Y(n149) );
  INVxp5_ASAP7_6t_R U453 ( .A(n223), .Y(n150) );
  INVxp5_ASAP7_6t_R U454 ( .A(n150), .Y(n151) );
  INVxp5_ASAP7_6t_R U455 ( .A(n169), .Y(n407) );
  INVxp5_ASAP7_6t_R U456 ( .A(n184), .Y(n183) );
  NOR2xp5_ASAP7_6t_R U457 ( .A(n435), .B(n436), .Y(n154) );
  NOR2xp5_ASAP7_6t_R U458 ( .A(n435), .B(n436), .Y(n155) );
  INVxp5_ASAP7_6t_R U459 ( .A(n251), .Y(n170) );
  NOR2xp5_ASAP7_6t_R U460 ( .A(n513), .B(n155), .Y(n438) );
  NAND2xp5R_ASAP7_6t_R U461 ( .A(n339), .B(n340), .Y(n432) );
  XOR2xp5_ASAP7_6t_R U462 ( .A(n361), .B(n362), .Y(n363) );
  INVx1_ASAP7_6t_R U463 ( .A(n543), .Y(n156) );
  XNOR2x2_ASAP7_6t_R U464 ( .A(n512), .B(n219), .Y(n524) );
  NOR2x1_ASAP7_6t_R U465 ( .A(n383), .B(n352), .Y(n328) );
  XNOR2xp5f_ASAP7_6t_R U466 ( .A(n260), .B(n285), .Y(n287) );
  NAND2xp5R_ASAP7_6t_R U467 ( .A(n261), .B(n262), .Y(n463) );
  NAND2xp5R_ASAP7_6t_R U468 ( .A(n171), .B(n172), .Y(n176) );
  OAI21xp5_ASAP7_6t_R U469 ( .A1(n234), .A2(n535), .B(n233), .Y(n578) );
  NOR2x2R_ASAP7_6t_R U470 ( .A(n352), .B(n380), .Y(n218) );
  NAND2xp5R_ASAP7_6t_R U471 ( .A(n594), .B(n593), .Y(n592) );
  NAND2xp5R_ASAP7_6t_R U472 ( .A(n568), .B(n524), .Y(n527) );
  AOI211xp5_ASAP7_6t_R U473 ( .A1(n530), .A2(n531), .B(n234), .C(n160), .Y(
        n576) );
  AOI211xp5_ASAP7_6t_R U474 ( .A1(n538), .A2(n171), .B(n550), .C(n528), .Y(
        n160) );
  INVx2_ASAP7_6t_R U475 ( .A(n161), .Y(n395) );
  NAND2x2_ASAP7_6t_R U476 ( .A(b_operand[2]), .B(a_operand[6]), .Y(n161) );
  INVx1_ASAP7_6t_R U477 ( .A(n378), .Y(n162) );
  XNOR2xp5f_ASAP7_6t_R U478 ( .A(n363), .B(n163), .Y(n377) );
  INVx1_ASAP7_6t_R U479 ( .A(n364), .Y(n163) );
  OA21x2_ASAP7_6t_R U480 ( .A1(n462), .A2(n296), .B(n221), .Y(n461) );
  OAI21xp5_ASAP7_6t_R U481 ( .A1(n379), .A2(n383), .B(n218), .Y(n210) );
  AO21x1_ASAP7_6t_R U482 ( .A1(n483), .A2(n649), .B(n479), .Y(n165) );
  NAND2xp5R_ASAP7_6t_R U483 ( .A(n176), .B(n166), .Y(n175) );
  INVx1_ASAP7_6t_R U484 ( .A(n167), .Y(n166) );
  NAND2xp5R_ASAP7_6t_R U485 ( .A(n227), .B(n168), .Y(n187) );
  OAI21xp5_ASAP7_6t_R U486 ( .A1(n391), .A2(n392), .B(n226), .Y(n168) );
  NOR2x1_ASAP7_6t_R U487 ( .A(n568), .B(n554), .Y(n541) );
  NOR2x1_ASAP7_6t_R U488 ( .A(n470), .B(n391), .Y(n412) );
  NOR2x2R_ASAP7_6t_R U489 ( .A(n247), .B(n246), .Y(n403) );
  NOR2x2R_ASAP7_6t_R U490 ( .A(a_operand[14]), .B(a_operand[13]), .Y(n321) );
  NOR2x2R_ASAP7_6t_R U491 ( .A(n586), .B(n588), .Y(n657) );
  AOI21x1_ASAP7_6t_R U492 ( .A1(n419), .A2(n418), .B(n228), .Y(n169) );
  OAI21xp5b_ASAP7_6t_R U493 ( .A1(n177), .A2(n175), .B(n570), .Y(n571) );
  NAND2xp5_ASAP7_6t_R U494 ( .A(n659), .B(n145), .Y(result[14]) );
  NAND2xp5_ASAP7_6t_R U495 ( .A(n599), .B(n146), .Y(result[7]) );
  NAND2xp5_ASAP7_6t_R U496 ( .A(n609), .B(n145), .Y(result[8]) );
  NAND2xp5_ASAP7_6t_R U497 ( .A(n615), .B(n146), .Y(result[9]) );
  NAND2xp5_ASAP7_6t_R U498 ( .A(n625), .B(n145), .Y(result[10]) );
  NAND2xp5_ASAP7_6t_R U499 ( .A(n636), .B(n146), .Y(result[11]) );
  NAND2xp5_ASAP7_6t_R U500 ( .A(n644), .B(n145), .Y(result[12]) );
  NAND2xp5_ASAP7_6t_R U501 ( .A(n656), .B(n146), .Y(result[13]) );
  XNOR2xp5f_ASAP7_6t_R U502 ( .A(n179), .B(n178), .Y(n575) );
  INVxp5_ASAP7_6t_R U503 ( .A(n185), .Y(n181) );
  XNOR2xp5f_ASAP7_6t_R U504 ( .A(n410), .B(n411), .Y(n225) );
  NOR2x1_ASAP7_6t_R U505 ( .A(n313), .B(n314), .Y(n459) );
  XNOR2xp5f_ASAP7_6t_R U506 ( .A(n67), .B(n189), .Y(n420) );
  XNOR2xp5f_ASAP7_6t_R U507 ( .A(n405), .B(n190), .Y(n417) );
  INVx1_ASAP7_6t_R U508 ( .A(n406), .Y(n190) );
  NOR2xp5_ASAP7_6t_R U509 ( .A(n245), .B(n244), .Y(n195) );
  INVx1_ASAP7_6t_R U510 ( .A(n432), .Y(n196) );
  OAI21xp5_ASAP7_6t_R U511 ( .A1(n459), .A2(n461), .B(n460), .Y(n197) );
  NAND2xp5R_ASAP7_6t_R U512 ( .A(n198), .B(n212), .Y(n243) );
  INVx1_ASAP7_6t_R U513 ( .A(n339), .Y(n198) );
  NAND2xp5R_ASAP7_6t_R U514 ( .A(n314), .B(n313), .Y(n460) );
  OAI21xp5_ASAP7_6t_R U515 ( .A1(n459), .A2(n202), .B(n199), .Y(n478) );
  INVx1_ASAP7_6t_R U516 ( .A(n461), .Y(n200) );
  NAND2xp5R_ASAP7_6t_R U517 ( .A(n461), .B(n460), .Y(n202) );
  AND2x4_ASAP7_6t_R U518 ( .A(n294), .B(n293), .Y(n308) );
  AND2x4_ASAP7_6t_R U519 ( .A(b_operand[0]), .B(a_operand[4]), .Y(n293) );
  NAND2xp5R_ASAP7_6t_R U520 ( .A(n292), .B(n289), .Y(n205) );
  INVxp5_ASAP7_6t_R U521 ( .A(n208), .Y(n303) );
  INVx1_ASAP7_6t_R U522 ( .A(n298), .Y(n206) );
  XOR2xp5r_ASAP7_6t_R U523 ( .A(n306), .B(n307), .Y(n222) );
  NOR2xp5_ASAP7_6t_R U524 ( .A(n211), .B(n217), .Y(n209) );
  OAI21xp25_ASAP7_6t_R U525 ( .A1(n459), .A2(n461), .B(n460), .Y(n433) );
  XOR2x2_ASAP7_6t_R U526 ( .A(n236), .B(n235), .Y(n522) );
  INVxp5_ASAP7_6t_R U527 ( .A(n214), .Y(n213) );
  INVxp5_ASAP7_6t_R U528 ( .A(n218), .Y(n217) );
  INVx5_ASAP7_6t_R U529 ( .A(a_operand[6]), .Y(n370) );
  NAND2xp5_ASAP7_6t_R U530 ( .A(n222), .B(n295), .Y(n221) );
  NOR2xp5_ASAP7_6t_R U531 ( .A(n295), .B(n222), .Y(n462) );
  NAND2x1_ASAP7_6t_R U532 ( .A(n223), .B(n577), .Y(n579) );
  NOR2xp5_ASAP7_6t_R U533 ( .A(n151), .B(n574), .Y(result[0]) );
  INVx1_ASAP7_6t_R U534 ( .A(n397), .Y(n228) );
  NOR2xp5_ASAP7_6t_R U535 ( .A(n386), .B(n229), .Y(n301) );
  NOR2xp5_ASAP7_6t_R U536 ( .A(n379), .B(n229), .Y(n351) );
  NOR2xp5_ASAP7_6t_R U537 ( .A(n404), .B(n229), .Y(n326) );
  NOR2xp5_ASAP7_6t_R U538 ( .A(n229), .B(n391), .Y(n344) );
  NAND3xp33_ASAP7_6t_R U539 ( .A(n143), .B(n550), .C(n567), .Y(n573) );
  AOI211xp5_ASAP7_6t_R U540 ( .A1(n551), .A2(n649), .B(n529), .C(n539), .Y(
        n234) );
  INVx1_ASAP7_6t_R U541 ( .A(n385), .Y(n241) );
  NAND2xp5R_ASAP7_6t_R U542 ( .A(n321), .B(n319), .Y(n246) );
  NOR2xp5_ASAP7_6t_R U543 ( .A(n250), .B(n649), .Y(n249) );
  INVxp5_ASAP7_6t_R U544 ( .A(n522), .Y(n250) );
  INVx13_ASAP7_6t_R U545 ( .A(b_operand[4]), .Y(n352) );
  NOR2x2_ASAP7_6t_R U546 ( .A(b_operand[8]), .B(b_operand[7]), .Y(n334) );
  NOR2x2_ASAP7_6t_R U547 ( .A(b_operand[14]), .B(b_operand[13]), .Y(n332) );
  NOR2x2_ASAP7_6t_R U548 ( .A(b_operand[10]), .B(b_operand[9]), .Y(n333) );
  OAI21xp25_ASAP7_6t_R U549 ( .A1(n542), .A2(n543), .B(n545), .Y(n534) );
  AO21x1_ASAP7_6t_R U550 ( .A1(n466), .A2(n273), .B(n277), .Y(n253) );
  AO21x1_ASAP7_6t_R U551 ( .A1(n465), .A2(n253), .B(n281), .Y(n254) );
  XOR2xp5_ASAP7_6t_R U552 ( .A(n271), .B(n270), .Y(n275) );
  INVxp5_ASAP7_6t_R U553 ( .A(n280), .Y(n281) );
  INVxp5_ASAP7_6t_R U554 ( .A(n484), .Y(n479) );
  OAI22xp5_ASAP7_6t_R U555 ( .A1(n258), .A2(n257), .B1(n256), .B2(n255), .Y(
        n586) );
  NOR2xp5_ASAP7_6t_R U556 ( .A(b_operand[15]), .B(a_operand[15]), .Y(n259) );
  AOI211xp25_ASAP7_6t_R U557 ( .A1(b_operand[15]), .A2(a_operand[15]), .B(n586), .C(n259), .Y(result[15]) );
  NOR2xp5_ASAP7_6t_R U558 ( .A(n383), .B(n386), .Y(n263) );
  INVx1_ASAP7_6t_R U559 ( .A(n286), .Y(n260) );
  NOR2xp5_ASAP7_6t_R U560 ( .A(n470), .B(n381), .Y(n265) );
  NOR2xp5_ASAP7_6t_R U561 ( .A(n392), .B(n404), .Y(n266) );
  NOR2xp5_ASAP7_6t_R U562 ( .A(n470), .B(n404), .Y(n270) );
  NOR2xp5_ASAP7_6t_R U563 ( .A(n392), .B(n386), .Y(n271) );
  AND2x2_ASAP7_6t_R U564 ( .A(n270), .B(n271), .Y(n267) );
  AO21x1_ASAP7_6t_R U565 ( .A1(n265), .A2(n266), .B(n267), .Y(n288) );
  NOR2xp5_ASAP7_6t_R U566 ( .A(n392), .B(n381), .Y(n289) );
  XOR2xp5_ASAP7_6t_R U567 ( .A(n291), .B(n292), .Y(n282) );
  XOR2xp5_ASAP7_6t_R U568 ( .A(n263), .B(n264), .Y(n278) );
  XOR2xp5_ASAP7_6t_R U569 ( .A(n266), .B(n265), .Y(n268) );
  XOR2xp5r_ASAP7_6t_R U570 ( .A(n268), .B(n267), .Y(n279) );
  NOR2xp5_ASAP7_6t_R U571 ( .A(n278), .B(n279), .Y(n269) );
  NOR2xp5_ASAP7_6t_R U572 ( .A(n274), .B(n275), .Y(n272) );
  NOR2xp5_ASAP7_6t_R U573 ( .A(n470), .B(n386), .Y(n467) );
  INVxp5_ASAP7_6t_R U574 ( .A(n276), .Y(n277) );
  AOI21xp5_ASAP7_6t_R U575 ( .A1(n463), .A2(n254), .B(n284), .Y(n296) );
  AO22x1_ASAP7_6t_R U576 ( .A1(n288), .A2(n287), .B1(n286), .B2(n285), .Y(n295) );
  NAND2xp5R_ASAP7_6t_R U577 ( .A(n303), .B(n302), .Y(n304) );
  INVx1_ASAP7_6t_R U578 ( .A(n304), .Y(n305) );
  AO21x1_ASAP7_6t_R U579 ( .A1(n307), .A2(n306), .B(n305), .Y(n338) );
  XNOR2xp5_ASAP7_6t_R U580 ( .A(n338), .B(n312), .Y(n314) );
  NOR2x2R_ASAP7_6t_R U581 ( .A(a_operand[12]), .B(a_operand[11]), .Y(n322) );
  NOR2x2R_ASAP7_6t_R U582 ( .A(a_operand[8]), .B(a_operand[7]), .Y(n320) );
  NOR2x2R_ASAP7_6t_R U583 ( .A(a_operand[10]), .B(a_operand[9]), .Y(n319) );
  AND2x4_ASAP7_6t_R U584 ( .A(n331), .B(n330), .Y(n410) );
  NOR2xp5_ASAP7_6t_R U585 ( .A(n392), .B(n382), .Y(n411) );
  NOR2xp5_ASAP7_6t_R U586 ( .A(n370), .B(n382), .Y(n367) );
  NOR2xp5_ASAP7_6t_R U587 ( .A(n379), .B(n164), .Y(n369) );
  AO22x1_ASAP7_6t_R U588 ( .A1(n344), .A2(n345), .B1(n343), .B2(n342), .Y(n372) );
  XOR2x2_ASAP7_6t_R U589 ( .A(n346), .B(n347), .Y(n356) );
  AO22x1_ASAP7_6t_R U590 ( .A1(n355), .A2(n356), .B1(n347), .B2(n346), .Y(n348) );
  NOR2xp5_ASAP7_6t_R U591 ( .A(n352), .B(n403), .Y(n349) );
  XOR2x2_ASAP7_6t_R U592 ( .A(n348), .B(n349), .Y(n360) );
  AO22x1_ASAP7_6t_R U593 ( .A1(n359), .A2(n360), .B1(n349), .B2(n348), .Y(n374) );
  NOR2xp5_ASAP7_6t_R U594 ( .A(n381), .B(n403), .Y(n361) );
  XOR2x2_ASAP7_6t_R U595 ( .A(n357), .B(n358), .Y(n378) );
  AO22x1_ASAP7_6t_R U596 ( .A1(n377), .A2(n378), .B1(n358), .B2(n357), .Y(n375) );
  XOR2x2_ASAP7_6t_R U597 ( .A(n360), .B(n359), .Y(n365) );
  AO22x1_ASAP7_6t_R U598 ( .A1(n364), .A2(n363), .B1(n362), .B2(n361), .Y(n366) );
  XOR2x2_ASAP7_6t_R U599 ( .A(n365), .B(n366), .Y(n376) );
  AO22x1_ASAP7_6t_R U600 ( .A1(n375), .A2(n376), .B1(n366), .B2(n365), .Y(n442) );
  NOR2xp5_ASAP7_6t_R U601 ( .A(n382), .B(n164), .Y(n445) );
  NAND2xp5R_ASAP7_6t_R U602 ( .A(n533), .B(n453), .Y(n456) );
  XOR2xp5_ASAP7_6t_R U603 ( .A(n376), .B(n375), .Y(n439) );
  NOR2x1_ASAP7_6t_R U604 ( .A(n380), .B(n379), .Y(n399) );
  XOR2x2_ASAP7_6t_R U605 ( .A(n399), .B(n400), .Y(n401) );
  NOR2xp5_ASAP7_6t_R U606 ( .A(n383), .B(n382), .Y(n402) );
  NOR2xp5_ASAP7_6t_R U607 ( .A(n386), .B(n403), .Y(n387) );
  INVx1_ASAP7_6t_R U608 ( .A(n388), .Y(n389) );
  NOR2xp5_ASAP7_6t_R U609 ( .A(n404), .B(n403), .Y(n406) );
  AO22x1_ASAP7_6t_R U610 ( .A1(n416), .A2(n417), .B1(n406), .B2(n405), .Y(n408) );
  NOR2xp5_ASAP7_6t_R U611 ( .A(n439), .B(n440), .Y(n542) );
  NOR2xp5_ASAP7_6t_R U612 ( .A(n456), .B(n542), .Y(n409) );
  NAND2xp5R_ASAP7_6t_R U613 ( .A(n442), .B(n441), .Y(n544) );
  NAND2xp5R_ASAP7_6t_R U614 ( .A(n444), .B(n443), .Y(n557) );
  AO22x1_ASAP7_6t_R U615 ( .A1(n448), .A2(n447), .B1(n446), .B2(n445), .Y(n450) );
  AOI21xp5_ASAP7_6t_R U616 ( .A1(n454), .A2(n453), .B(n452), .Y(n455) );
  OAI21xp5_ASAP7_6t_R U617 ( .A1(n457), .A2(n543), .B(n74), .Y(n458) );
  INVxp5_ASAP7_6t_R U618 ( .A(n463), .Y(n464) );
  INVxp5_ASAP7_6t_R U619 ( .A(n464), .Y(n473) );
  OR4x1_ASAP7_6t_R U620 ( .A(n465), .B(n466), .C(n469), .D(n471), .Y(n472) );
  NOR2xp5_ASAP7_6t_R U621 ( .A(n473), .B(n472), .Y(n474) );
  OAI22xp5_ASAP7_6t_R U622 ( .A1(n148), .A2(n483), .B1(n568), .B2(n522), .Y(
        n485) );
  NOR2xp5_ASAP7_6t_R U623 ( .A(n499), .B(n500), .Y(n650) );
  AND2x2_ASAP7_6t_R U624 ( .A(a_operand[10]), .B(b_operand[10]), .Y(n494) );
  XOR2xp5_ASAP7_6t_R U625 ( .A(b_operand[11]), .B(a_operand[11]), .Y(n495) );
  NOR2xp5_ASAP7_6t_R U626 ( .A(n494), .B(n495), .Y(n630) );
  AND2x2_ASAP7_6t_R U627 ( .A(a_operand[9]), .B(b_operand[9]), .Y(n490) );
  XOR2xp5_ASAP7_6t_R U628 ( .A(b_operand[10]), .B(a_operand[10]), .Y(n491) );
  NOR2xp5_ASAP7_6t_R U629 ( .A(n490), .B(n491), .Y(n619) );
  AND2x2_ASAP7_6t_R U630 ( .A(a_operand[8]), .B(b_operand[8]), .Y(n488) );
  XOR2xp5_ASAP7_6t_R U631 ( .A(b_operand[9]), .B(a_operand[9]), .Y(n489) );
  NOR2xp5_ASAP7_6t_R U632 ( .A(n488), .B(n489), .Y(n618) );
  NOR2xp5_ASAP7_6t_R U633 ( .A(n619), .B(n618), .Y(n493) );
  NOR2xp5_ASAP7_6t_R U634 ( .A(b_operand[7]), .B(n486), .Y(n596) );
  XOR2xp5_ASAP7_6t_R U635 ( .A(b_operand[8]), .B(a_operand[8]), .Y(n487) );
  NOR2xp5_ASAP7_6t_R U636 ( .A(a_operand[7]), .B(n487), .Y(n603) );
  NOR2xp5_ASAP7_6t_R U637 ( .A(n596), .B(n603), .Y(n611) );
  NOR2xp5_ASAP7_6t_R U638 ( .A(n630), .B(n626), .Y(n638) );
  OR2x2_ASAP7_6t_R U639 ( .A(n496), .B(n497), .Y(n639) );
  NOR2xp5_ASAP7_6t_R U640 ( .A(n650), .B(n645), .Y(n581) );
  OR2x2_ASAP7_6t_R U641 ( .A(n501), .B(n502), .Y(n582) );
  AND2x2_ASAP7_6t_R U642 ( .A(n581), .B(n582), .Y(n505) );
  OAI21xp5_ASAP7_6t_R U643 ( .A1(n600), .A2(n603), .B(n605), .Y(n610) );
  OAI21xp5_ASAP7_6t_R U644 ( .A1(n616), .A2(n619), .B(n621), .Y(n492) );
  AOI21xp25_ASAP7_6t_R U645 ( .A1(n493), .A2(n610), .B(n492), .Y(n627) );
  OAI21xp5_ASAP7_6t_R U646 ( .A1(n630), .A2(n627), .B(n632), .Y(n637) );
  INVxp5_ASAP7_6t_R U647 ( .A(n640), .Y(n498) );
  OAI21xp5_ASAP7_6t_R U648 ( .A1(n650), .A2(n646), .B(n652), .Y(n580) );
  AO21x1_ASAP7_6t_R U649 ( .A1(n580), .A2(n582), .B(n503), .Y(n504) );
  OR2x2_ASAP7_6t_R U650 ( .A(a_operand[14]), .B(b_operand[14]), .Y(n506) );
  NOR2xp5_ASAP7_6t_R U651 ( .A(n577), .B(n574), .Y(result[1]) );
  AOI21xp5_ASAP7_6t_R U652 ( .A1(n510), .A2(n148), .B(n509), .Y(n518) );
  INVxp5_ASAP7_6t_R U653 ( .A(n513), .Y(n514) );
  XNOR2xp5f_ASAP7_6t_R U654 ( .A(n516), .B(n515), .Y(n537) );
  INVxp5_ASAP7_6t_R U655 ( .A(n575), .Y(n519) );
  NOR2xp5_ASAP7_6t_R U656 ( .A(n519), .B(n574), .Y(result[2]) );
  INVxp5_ASAP7_6t_R U657 ( .A(n542), .Y(n520) );
  XOR2xp5r_ASAP7_6t_R U658 ( .A(n543), .B(n521), .Y(n538) );
  INVx1_ASAP7_6t_R U659 ( .A(n525), .Y(n550) );
  INVx1_ASAP7_6t_R U660 ( .A(n527), .Y(n528) );
  INVxp5_ASAP7_6t_R U661 ( .A(n576), .Y(n532) );
  NOR2xp5_ASAP7_6t_R U662 ( .A(n532), .B(n574), .Y(result[3]) );
  AOI22xp25_ASAP7_6t_R U663 ( .A1(n538), .A2(n157), .B1(n171), .B2(n554), .Y(
        n535) );
  INVxp5_ASAP7_6t_R U664 ( .A(n578), .Y(n536) );
  NOR2xp5_ASAP7_6t_R U665 ( .A(n536), .B(n574), .Y(result[4]) );
  AND2x2_ASAP7_6t_R U666 ( .A(n538), .B(n537), .Y(n555) );
  NOR2xp5_ASAP7_6t_R U667 ( .A(n73), .B(n542), .Y(n556) );
  NOR2xp5_ASAP7_6t_R U668 ( .A(n594), .B(n574), .Y(result[5]) );
  NOR2xp5_ASAP7_6t_R U669 ( .A(n552), .B(n551), .Y(n553) );
  INVxp5_ASAP7_6t_R U670 ( .A(n557), .Y(n558) );
  AOI21xp25_ASAP7_6t_R U671 ( .A1(n560), .A2(n559), .B(n558), .Y(n561) );
  INVxp5_ASAP7_6t_R U672 ( .A(n564), .Y(n565) );
  XNOR2xp5_ASAP7_6t_R U673 ( .A(n566), .B(n565), .Y(n569) );
  NOR2xp5_ASAP7_6t_R U674 ( .A(n593), .B(n574), .Y(result[6]) );
  INVxp5_ASAP7_6t_R U675 ( .A(n586), .Y(n587) );
  NAND2xp5_ASAP7_6t_R U676 ( .A(n588), .B(n587), .Y(n589) );
  NOR2xp5_ASAP7_6t_R U677 ( .A(n658), .B(n589), .Y(n590) );
  INVxp5_ASAP7_6t_R U678 ( .A(n596), .Y(n602) );
  XNOR2xp5_ASAP7_6t_R U679 ( .A(n171), .B(n597), .Y(n598) );
  INVxp5_ASAP7_6t_R U680 ( .A(n600), .Y(n601) );
  AOI21xp25_ASAP7_6t_R U681 ( .A1(n171), .A2(n602), .B(n601), .Y(n607) );
  INVxp5_ASAP7_6t_R U682 ( .A(n603), .Y(n604) );
  AOI21xp5_ASAP7_6t_R U683 ( .A1(n171), .A2(n611), .B(n610), .Y(n617) );
  INVxp5_ASAP7_6t_R U684 ( .A(n618), .Y(n612) );
  INVxp5_ASAP7_6t_R U685 ( .A(n619), .Y(n620) );
  XNOR2xp5_ASAP7_6t_R U686 ( .A(n623), .B(n622), .Y(n624) );
  INVxp5_ASAP7_6t_R U687 ( .A(n626), .Y(n629) );
  INVxp5_ASAP7_6t_R U688 ( .A(n627), .Y(n628) );
  AOI21xp25_ASAP7_6t_R U689 ( .A1(n171), .A2(n629), .B(n628), .Y(n634) );
  INVxp5_ASAP7_6t_R U690 ( .A(n630), .Y(n631) );
  AOI21xp25_ASAP7_6t_R U691 ( .A1(n171), .A2(n638), .B(n637), .Y(n642) );
  INVxp5_ASAP7_6t_R U692 ( .A(n645), .Y(n648) );
  INVxp5_ASAP7_6t_R U693 ( .A(n646), .Y(n647) );
  AOI21xp25_ASAP7_6t_R U694 ( .A1(n171), .A2(n648), .B(n647), .Y(n654) );
  INVxp5_ASAP7_6t_R U695 ( .A(n650), .Y(n651) );
endmodule

