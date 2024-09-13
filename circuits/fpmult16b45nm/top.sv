/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Thu Sep 12 08:18:01 2024
/////////////////////////////////////////////////////////////


module top ( a_operand, b_operand, result );
  input [15:0] a_operand;
  input [15:0] b_operand;
  output [15:0] result;
  wire   n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534;

  INV_X1 U70 ( .A(a_operand[4]), .ZN(n304) );
  BUF_X1 U71 ( .A(n478), .Z(n506) );
  NAND2_X1 U72 ( .A1(n272), .A2(n271), .ZN(n406) );
  NOR2_X1 U73 ( .A1(n306), .A2(n305), .ZN(n52) );
  BUF_X1 U74 ( .A(n303), .Z(n314) );
  AND2_X1 U75 ( .A1(b_operand[1]), .A2(a_operand[4]), .ZN(n154) );
  AND2_X1 U76 ( .A1(b_operand[1]), .A2(a_operand[6]), .ZN(n239) );
  AND2_X1 U77 ( .A1(b_operand[4]), .A2(a_operand[4]), .ZN(n209) );
  MUX2_X1 U78 ( .A(n404), .B(n119), .S(n359), .Z(n434) );
  INV_X1 U79 ( .A(n94), .ZN(n50) );
  CLKBUF_X1 U80 ( .A(n398), .Z(n417) );
  AOI22_X1 U81 ( .A1(n54), .A2(n53), .B1(n52), .B2(n83), .ZN(n310) );
  AND2_X1 U82 ( .A1(n83), .A2(n291), .ZN(n53) );
  XNOR2_X1 U83 ( .A(n236), .B(n235), .ZN(n249) );
  BUF_X1 U84 ( .A(n298), .Z(n330) );
  NAND4_X1 U85 ( .A1(n58), .A2(n57), .A3(n56), .A4(n55), .ZN(n220) );
  AND2_X1 U86 ( .A1(n214), .A2(n59), .ZN(n58) );
  INV_X1 U87 ( .A(a_operand[7]), .ZN(n215) );
  NOR2_X1 U88 ( .A1(a_operand[7]), .A2(a_operand[11]), .ZN(n56) );
  INV_X1 U89 ( .A(a_operand[6]), .ZN(n326) );
  NOR2_X1 U90 ( .A1(a_operand[10]), .A2(a_operand[9]), .ZN(n57) );
  NOR2_X1 U91 ( .A1(a_operand[12]), .A2(a_operand[13]), .ZN(n55) );
  AND2_X1 U92 ( .A1(a_operand[5]), .A2(b_operand[0]), .ZN(n155) );
  AND2_X1 U93 ( .A1(b_operand[2]), .A2(a_operand[3]), .ZN(n158) );
  INV_X1 U94 ( .A(b_operand[4]), .ZN(n299) );
  AND2_X1 U95 ( .A1(b_operand[2]), .A2(a_operand[6]), .ZN(n208) );
  AND2_X1 U96 ( .A1(b_operand[5]), .A2(a_operand[4]), .ZN(n283) );
  INV_X1 U97 ( .A(b_operand[0]), .ZN(n365) );
  AND2_X1 U98 ( .A1(b_operand[6]), .A2(a_operand[1]), .ZN(n237) );
  INV_X1 U99 ( .A(n416), .ZN(n415) );
  AND3_X1 U100 ( .A1(n416), .A2(n67), .A3(n438), .ZN(n121) );
  MUX2_X1 U101 ( .A(n50), .B(n414), .S(n453), .Z(n416) );
  FA_X1 U102 ( .A(n292), .B(n70), .CI(n293), .CO(n331) );
  AND2_X2 U103 ( .A1(n51), .A2(n437), .ZN(n134) );
  OAI21_X1 U104 ( .B1(n443), .B2(n51), .A(n442), .ZN(n474) );
  MUX2_X1 U105 ( .A(n421), .B(n84), .S(n478), .Z(n51) );
  INV_X2 U106 ( .A(a_operand[5]), .ZN(n313) );
  NAND2_X1 U107 ( .A1(n54), .A2(n291), .ZN(n68) );
  NAND2_X1 U108 ( .A1(n288), .A2(n287), .ZN(n54) );
  INV_X1 U109 ( .A(a_operand[14]), .ZN(n59) );
  AND3_X1 U110 ( .A1(n203), .A2(n205), .A3(n202), .ZN(n60) );
  AND2_X2 U111 ( .A1(n204), .A2(n60), .ZN(n303) );
  AND2_X1 U112 ( .A1(n92), .A2(n471), .ZN(n61) );
  AND2_X1 U113 ( .A1(n481), .A2(n61), .ZN(n63) );
  AND3_X1 U114 ( .A1(n481), .A2(n92), .A3(n471), .ZN(n62) );
  AND3_X2 U115 ( .A1(n481), .A2(n92), .A3(n471), .ZN(n102) );
  OR2_X1 U116 ( .A1(n530), .A2(n534), .ZN(n64) );
  OR3_X2 U117 ( .A1(n105), .A2(n92), .A3(n64), .ZN(n531) );
  XNOR2_X1 U118 ( .A(n429), .B(n428), .ZN(n430) );
  XNOR2_X1 U119 ( .A(n247), .B(n65), .ZN(n272) );
  XNOR2_X1 U120 ( .A(n248), .B(n249), .ZN(n65) );
  NAND3_X1 U121 ( .A1(n72), .A2(n73), .A3(n74), .ZN(n66) );
  INV_X2 U122 ( .A(a_operand[3]), .ZN(n281) );
  INV_X2 U123 ( .A(b_operand[2]), .ZN(n227) );
  AND2_X1 U124 ( .A1(b_operand[0]), .A2(a_operand[6]), .ZN(n207) );
  INV_X2 U125 ( .A(a_operand[1]), .ZN(n216) );
  NOR3_X1 U126 ( .A1(n379), .A2(n378), .A3(n377), .ZN(n67) );
  NOR4_X2 U127 ( .A1(n376), .A2(n375), .A3(n374), .A4(n373), .ZN(n377) );
  XNOR2_X1 U128 ( .A(n69), .B(n266), .ZN(n163) );
  XNOR2_X1 U129 ( .A(n268), .B(n267), .ZN(n69) );
  XNOR2_X1 U130 ( .A(n71), .B(n288), .ZN(n292) );
  BUF_X1 U131 ( .A(n294), .Z(n70) );
  INV_X2 U132 ( .A(a_operand[0]), .ZN(n364) );
  INV_X2 U133 ( .A(b_operand[6]), .ZN(n325) );
  XNOR2_X1 U134 ( .A(n289), .B(n290), .ZN(n71) );
  NAND2_X1 U135 ( .A1(n247), .A2(n248), .ZN(n72) );
  NAND2_X1 U136 ( .A1(n247), .A2(n249), .ZN(n73) );
  NAND2_X1 U137 ( .A1(n248), .A2(n249), .ZN(n74) );
  NAND3_X1 U138 ( .A1(n72), .A2(n73), .A3(n74), .ZN(n273) );
  XOR2_X1 U139 ( .A(n265), .B(n264), .Z(n75) );
  XOR2_X1 U140 ( .A(n263), .B(n75), .Z(n270) );
  NAND2_X1 U141 ( .A1(n263), .A2(n265), .ZN(n76) );
  NAND2_X1 U142 ( .A1(n263), .A2(n264), .ZN(n77) );
  NAND2_X1 U143 ( .A1(n265), .A2(n264), .ZN(n78) );
  NAND3_X1 U144 ( .A1(n76), .A2(n77), .A3(n78), .ZN(n271) );
  AND2_X1 U145 ( .A1(n207), .A2(n206), .ZN(n79) );
  BUF_X1 U146 ( .A(n387), .Z(n80) );
  NOR2_X1 U147 ( .A1(n334), .A2(n333), .ZN(n81) );
  INV_X2 U148 ( .A(b_operand[3]), .ZN(n280) );
  AND2_X1 U149 ( .A1(b_operand[1]), .A2(a_operand[5]), .ZN(n206) );
  XOR2_X1 U150 ( .A(n305), .B(n306), .Z(n82) );
  XOR2_X1 U151 ( .A(n68), .B(n82), .Z(n307) );
  NAND2_X1 U152 ( .A1(n305), .A2(n306), .ZN(n83) );
  XOR2_X1 U153 ( .A(n403), .B(n402), .Z(n84) );
  AOI21_X2 U154 ( .B1(n419), .B2(n116), .A(n399), .ZN(n403) );
  INV_X1 U155 ( .A(a_operand[2]), .ZN(n217) );
  INV_X1 U156 ( .A(b_operand[8]), .ZN(n202) );
  INV_X1 U157 ( .A(b_operand[7]), .ZN(n205) );
  OR2_X1 U158 ( .A1(n289), .A2(n290), .ZN(n287) );
  INV_X1 U159 ( .A(n119), .ZN(n141) );
  OR2_X1 U160 ( .A1(n466), .A2(n128), .ZN(n123) );
  OR2_X1 U161 ( .A1(n126), .A2(n460), .ZN(n122) );
  INV_X1 U162 ( .A(a_operand[8]), .ZN(n214) );
  INV_X1 U163 ( .A(n347), .ZN(n348) );
  INV_X1 U164 ( .A(n139), .ZN(n137) );
  OAI21_X1 U165 ( .B1(n93), .B2(n139), .A(n138), .ZN(n305) );
  OR2_X1 U166 ( .A1(n336), .A2(n335), .ZN(n392) );
  INV_X1 U167 ( .A(n461), .ZN(n125) );
  AND2_X1 U168 ( .A1(n519), .A2(n514), .ZN(n127) );
  INV_X1 U169 ( .A(n127), .ZN(n126) );
  AND2_X1 U170 ( .A1(n520), .A2(n130), .ZN(n128) );
  INV_X1 U171 ( .A(n422), .ZN(n135) );
  AND2_X1 U172 ( .A1(n131), .A2(n132), .ZN(n517) );
  OAI211_X1 U173 ( .C1(n513), .C2(n131), .A(n514), .B(n129), .ZN(n522) );
  OR2_X1 U174 ( .A1(n513), .A2(n132), .ZN(n129) );
  OAI21_X1 U175 ( .B1(n525), .B2(n524), .A(n526), .ZN(n482) );
  INV_X1 U176 ( .A(n473), .ZN(n147) );
  AND2_X1 U177 ( .A1(n62), .A2(n151), .ZN(result[6]) );
  AND2_X1 U178 ( .A1(n63), .A2(n441), .ZN(result[0]) );
  AND2_X1 U179 ( .A1(n63), .A2(n149), .ZN(result[4]) );
  AND2_X1 U180 ( .A1(n62), .A2(n472), .ZN(result[1]) );
  AND2_X1 U181 ( .A1(n62), .A2(n150), .ZN(result[5]) );
  AND2_X1 U182 ( .A1(n63), .A2(n147), .ZN(result[2]) );
  AND2_X1 U183 ( .A1(n62), .A2(n148), .ZN(result[3]) );
  XOR2_X1 U184 ( .A(n470), .B(n469), .Z(n92) );
  NOR2_X1 U185 ( .A1(n285), .A2(n286), .ZN(n93) );
  INV_X1 U186 ( .A(n434), .ZN(n140) );
  XNOR2_X1 U187 ( .A(n357), .B(n358), .ZN(n94) );
  XNOR2_X1 U188 ( .A(n522), .B(n521), .ZN(n95) );
  XOR2_X1 U189 ( .A(n524), .B(n528), .Z(n96) );
  XOR2_X1 U190 ( .A(n500), .B(n499), .Z(n97) );
  XOR2_X1 U191 ( .A(n493), .B(n492), .Z(n98) );
  XOR2_X1 U192 ( .A(n511), .B(n510), .Z(n99) );
  XNOR2_X1 U193 ( .A(n506), .B(n480), .ZN(n100) );
  XOR2_X1 U194 ( .A(n517), .B(n516), .Z(n101) );
  NAND2_X1 U195 ( .A1(n102), .A2(n95), .ZN(n523) );
  NAND2_X1 U196 ( .A1(n63), .A2(n530), .ZN(n532) );
  NAND2_X1 U197 ( .A1(n62), .A2(n96), .ZN(n529) );
  NAND2_X1 U198 ( .A1(n63), .A2(n100), .ZN(n485) );
  NAND2_X1 U199 ( .A1(n102), .A2(n98), .ZN(n494) );
  NAND2_X1 U200 ( .A1(n102), .A2(n97), .ZN(n501) );
  NAND2_X1 U201 ( .A1(n102), .A2(n99), .ZN(n512) );
  NAND2_X1 U202 ( .A1(n102), .A2(n101), .ZN(n518) );
  NOR2_X1 U203 ( .A1(n274), .A2(n273), .ZN(n103) );
  NOR2_X1 U204 ( .A1(n274), .A2(n273), .ZN(n409) );
  BUF_X2 U205 ( .A(n453), .Z(n478) );
  XNOR2_X1 U206 ( .A(n442), .B(n434), .ZN(n104) );
  AND4_X1 U207 ( .A1(n104), .A2(n445), .A3(n476), .A4(n477), .ZN(n105) );
  XNOR2_X1 U208 ( .A(n135), .B(n133), .ZN(n476) );
  XOR2_X1 U209 ( .A(n255), .B(n254), .Z(n106) );
  XOR2_X1 U210 ( .A(n106), .B(n253), .Z(n266) );
  NAND2_X1 U211 ( .A1(n255), .A2(n254), .ZN(n107) );
  NAND2_X1 U212 ( .A1(n255), .A2(n253), .ZN(n108) );
  NAND2_X1 U213 ( .A1(n254), .A2(n253), .ZN(n109) );
  NAND3_X1 U214 ( .A1(n107), .A2(n108), .A3(n109), .ZN(n264) );
  NAND2_X1 U215 ( .A1(n268), .A2(n267), .ZN(n110) );
  NAND2_X1 U216 ( .A1(n268), .A2(n266), .ZN(n111) );
  NAND2_X1 U217 ( .A1(n267), .A2(n266), .ZN(n112) );
  NAND3_X1 U218 ( .A1(n110), .A2(n111), .A3(n112), .ZN(n269) );
  AND2_X1 U219 ( .A1(b_operand[5]), .A2(a_operand[2]), .ZN(n238) );
  INV_X2 U220 ( .A(b_operand[5]), .ZN(n315) );
  OR3_X1 U221 ( .A1(n379), .A2(n378), .A3(n377), .ZN(n405) );
  OAI21_X1 U222 ( .B1(n146), .B2(n145), .A(n144), .ZN(n232) );
  NAND2_X1 U223 ( .A1(n134), .A2(n121), .ZN(n113) );
  OR2_X1 U224 ( .A1(n405), .A2(n415), .ZN(n114) );
  OR2_X1 U225 ( .A1(n397), .A2(n81), .ZN(n115) );
  OR2_X1 U226 ( .A1(n332), .A2(n331), .ZN(n116) );
  NOR3_X1 U227 ( .A1(n379), .A2(n378), .A3(n377), .ZN(n117) );
  OR2_X1 U228 ( .A1(n334), .A2(n333), .ZN(n118) );
  XNOR2_X1 U229 ( .A(n394), .B(n391), .ZN(n119) );
  NOR2_X1 U230 ( .A1(n243), .A2(n244), .ZN(n146) );
  OR2_X1 U231 ( .A1(n234), .A2(n233), .ZN(n211) );
  AND2_X1 U232 ( .A1(n220), .A2(b_operand[0]), .ZN(n251) );
  XNOR2_X1 U233 ( .A(n137), .B(n136), .ZN(n278) );
  XNOR2_X1 U234 ( .A(n285), .B(n286), .ZN(n136) );
  AND3_X1 U235 ( .A1(n416), .A2(n117), .A3(n438), .ZN(n435) );
  OR2_X1 U236 ( .A1(n217), .A2(n303), .ZN(n139) );
  OR2_X1 U237 ( .A1(n364), .A2(n303), .ZN(n145) );
  INV_X1 U238 ( .A(n474), .ZN(n148) );
  INV_X1 U239 ( .A(n220), .ZN(n298) );
  NAND2_X1 U240 ( .A1(n437), .A2(n435), .ZN(n436) );
  XNOR2_X1 U241 ( .A(n142), .B(n143), .ZN(n256) );
  XNOR2_X1 U242 ( .A(n403), .B(n402), .ZN(n404) );
  INV_X1 U243 ( .A(n385), .ZN(n419) );
  INV_X1 U244 ( .A(n436), .ZN(n443) );
  OAI211_X1 U245 ( .C1(n122), .C2(n478), .A(n124), .B(n123), .ZN(n524) );
  NAND2_X1 U246 ( .A1(n478), .A2(n461), .ZN(n131) );
  NAND3_X1 U247 ( .A1(n125), .A2(n132), .A3(n127), .ZN(n124) );
  NAND2_X1 U248 ( .A1(n513), .A2(n514), .ZN(n130) );
  INV_X1 U249 ( .A(n460), .ZN(n132) );
  NAND2_X1 U250 ( .A1(n134), .A2(n121), .ZN(n442) );
  NAND3_X1 U251 ( .A1(n121), .A2(n140), .A3(n134), .ZN(n133) );
  MUX2_X1 U252 ( .A(n420), .B(n421), .S(n359), .Z(n437) );
  NAND2_X1 U253 ( .A1(n286), .A2(n285), .ZN(n138) );
  NAND2_X1 U254 ( .A1(n422), .A2(n140), .ZN(n423) );
  MUX2_X1 U255 ( .A(n141), .B(n431), .S(n478), .Z(n422) );
  XNOR2_X1 U256 ( .A(n243), .B(n79), .ZN(n142) );
  INV_X1 U257 ( .A(n145), .ZN(n143) );
  NAND2_X1 U258 ( .A1(n79), .A2(n243), .ZN(n144) );
  OAI21_X1 U259 ( .B1(n385), .B2(n115), .A(n388), .ZN(n389) );
  INV_X1 U260 ( .A(n104), .ZN(n149) );
  INV_X1 U261 ( .A(n476), .ZN(n150) );
  INV_X1 U262 ( .A(n477), .ZN(n151) );
  BUF_X1 U263 ( .A(n383), .Z(n453) );
  AND2_X1 U264 ( .A1(n191), .A2(n190), .ZN(n152) );
  AND2_X1 U265 ( .A1(n187), .A2(n186), .ZN(n153) );
  AND2_X1 U266 ( .A1(n220), .A2(b_operand[1]), .ZN(n229) );
  INV_X1 U267 ( .A(n232), .ZN(n236) );
  XNOR2_X1 U268 ( .A(n294), .B(n292), .ZN(n231) );
  XNOR2_X1 U269 ( .A(n293), .B(n231), .ZN(n274) );
  AOI21_X1 U270 ( .B1(n114), .B2(n439), .A(n435), .ZN(n472) );
  NOR2_X1 U271 ( .A1(n280), .A2(n281), .ZN(n242) );
  NOR2_X1 U272 ( .A1(n299), .A2(n217), .ZN(n241) );
  INV_X1 U273 ( .A(b_operand[1]), .ZN(n210) );
  NOR2_X1 U274 ( .A1(n365), .A2(n304), .ZN(n168) );
  NOR2_X1 U275 ( .A1(n210), .A2(n281), .ZN(n167) );
  NOR2_X1 U276 ( .A1(n299), .A2(n216), .ZN(n160) );
  HA_X1 U277 ( .A(n155), .B(n154), .CO(n240), .S(n159) );
  NOR2_X1 U278 ( .A1(n315), .A2(n364), .ZN(n157) );
  NOR2_X1 U279 ( .A1(n280), .A2(n217), .ZN(n156) );
  NOR2_X1 U280 ( .A1(n227), .A2(n304), .ZN(n223) );
  NOR2_X1 U281 ( .A1(n325), .A2(n364), .ZN(n222) );
  NOR2_X1 U282 ( .A1(n315), .A2(n216), .ZN(n221) );
  FA_X1 U283 ( .A(n158), .B(n157), .CI(n156), .CO(n255), .S(n166) );
  NOR2_X1 U284 ( .A1(n227), .A2(n217), .ZN(n174) );
  NOR2_X1 U285 ( .A1(n299), .A2(n364), .ZN(n173) );
  NOR2_X1 U286 ( .A1(n280), .A2(n216), .ZN(n172) );
  FA_X1 U287 ( .A(n161), .B(n160), .CI(n159), .CO(n267), .S(n164) );
  OR2_X1 U288 ( .A1(n163), .A2(n162), .ZN(n262) );
  NAND2_X1 U289 ( .A1(n163), .A2(n162), .ZN(n259) );
  NAND2_X1 U290 ( .A1(n262), .A2(n259), .ZN(n197) );
  FA_X1 U291 ( .A(n166), .B(n165), .CI(n164), .CO(n162), .S(n194) );
  HA_X1 U292 ( .A(n168), .B(n167), .CO(n161), .S(n171) );
  NOR2_X1 U293 ( .A1(n365), .A2(n281), .ZN(n179) );
  NOR2_X1 U294 ( .A1(n210), .A2(n217), .ZN(n178) );
  NOR2_X1 U295 ( .A1(n227), .A2(n216), .ZN(n177) );
  NOR2_X1 U296 ( .A1(n280), .A2(n364), .ZN(n176) );
  NOR2_X1 U297 ( .A1(n210), .A2(n216), .ZN(n181) );
  NOR2_X1 U298 ( .A1(n227), .A2(n364), .ZN(n180) );
  NOR2_X1 U299 ( .A1(n194), .A2(n193), .ZN(n371) );
  FA_X1 U300 ( .A(n171), .B(n170), .CI(n169), .CO(n193), .S(n191) );
  FA_X1 U301 ( .A(n174), .B(n173), .CI(n172), .CO(n165), .S(n190) );
  OR2_X1 U302 ( .A1(n191), .A2(n190), .ZN(n370) );
  FA_X1 U303 ( .A(n177), .B(n176), .CI(n175), .CO(n169), .S(n187) );
  HA_X1 U304 ( .A(n179), .B(n178), .CO(n170), .S(n186) );
  OR2_X1 U305 ( .A1(n187), .A2(n186), .ZN(n363) );
  HA_X1 U306 ( .A(n181), .B(n180), .CO(n175), .S(n183) );
  NOR2_X1 U307 ( .A1(n365), .A2(n217), .ZN(n182) );
  NOR2_X1 U308 ( .A1(n183), .A2(n182), .ZN(n361) );
  NOR2_X1 U309 ( .A1(n210), .A2(n364), .ZN(n367) );
  NOR2_X1 U310 ( .A1(n365), .A2(n216), .ZN(n366) );
  NAND2_X1 U311 ( .A1(n367), .A2(n366), .ZN(n185) );
  NAND2_X1 U312 ( .A1(n183), .A2(n182), .ZN(n184) );
  OAI21_X1 U313 ( .B1(n361), .B2(n185), .A(n184), .ZN(n188) );
  AOI21_X1 U314 ( .B1(n363), .B2(n188), .A(n153), .ZN(n189) );
  INV_X1 U315 ( .A(n189), .ZN(n192) );
  AOI21_X1 U316 ( .B1(n370), .B2(n192), .A(n152), .ZN(n196) );
  NAND2_X1 U317 ( .A1(n194), .A2(n193), .ZN(n195) );
  OAI21_X1 U318 ( .B1(n371), .B2(n196), .A(n195), .ZN(n261) );
  XNOR2_X1 U319 ( .A(n197), .B(n261), .ZN(n360) );
  NOR2_X1 U320 ( .A1(n299), .A2(n313), .ZN(n285) );
  OR2_X1 U321 ( .A1(b_operand[12]), .A2(b_operand[11]), .ZN(n201) );
  INV_X1 U322 ( .A(b_operand[14]), .ZN(n199) );
  INV_X1 U323 ( .A(b_operand[13]), .ZN(n198) );
  NAND2_X1 U324 ( .A1(n199), .A2(n198), .ZN(n200) );
  NOR2_X1 U325 ( .A1(n201), .A2(n200), .ZN(n204) );
  NOR2_X1 U326 ( .A1(b_operand[10]), .A2(b_operand[9]), .ZN(n203) );
  NOR2_X1 U327 ( .A1(n299), .A2(n281), .ZN(n243) );
  HA_X1 U328 ( .A(n207), .B(n206), .CO(n244), .S(n254) );
  HA_X1 U329 ( .A(n209), .B(n208), .CO(n286), .S(n234) );
  NAND2_X1 U330 ( .A1(n211), .A2(n232), .ZN(n213) );
  NAND2_X1 U331 ( .A1(n234), .A2(n233), .ZN(n212) );
  NAND2_X1 U332 ( .A1(n213), .A2(n212), .ZN(n277) );
  NOR2_X1 U333 ( .A1(n280), .A2(n326), .ZN(n284) );
  NOR2_X1 U334 ( .A1(n325), .A2(n281), .ZN(n282) );
  FA_X1 U335 ( .A(n278), .B(n277), .CI(n279), .S(n293) );
  NOR2_X1 U336 ( .A1(n303), .A2(n216), .ZN(n228) );
  NOR2_X1 U337 ( .A1(n280), .A2(n304), .ZN(n219) );
  NOR2_X1 U338 ( .A1(n227), .A2(n313), .ZN(n218) );
  NOR2_X1 U339 ( .A1(n325), .A2(n217), .ZN(n226) );
  NOR2_X1 U340 ( .A1(n280), .A2(n313), .ZN(n225) );
  NOR2_X1 U341 ( .A1(n315), .A2(n281), .ZN(n224) );
  HA_X1 U342 ( .A(n219), .B(n218), .CO(n230), .S(n252) );
  FA_X1 U343 ( .A(n223), .B(n221), .CI(n222), .CO(n250), .S(n253) );
  FA_X1 U344 ( .A(n226), .B(n225), .CI(n224), .CO(n289), .S(n246) );
  NOR2_X1 U345 ( .A1(n298), .A2(n227), .ZN(n290) );
  FA_X1 U346 ( .A(n229), .B(n230), .CI(n228), .CO(n288), .S(n120) );
  XOR2_X1 U347 ( .A(n234), .B(n233), .Z(n235) );
  FA_X1 U348 ( .A(n239), .B(n238), .CI(n237), .CO(n233), .S(n258) );
  FA_X1 U349 ( .A(n242), .B(n241), .CI(n240), .CO(n257), .S(n268) );
  FA_X1 U350 ( .A(n245), .B(n246), .CI(n120), .CO(n294), .S(n247) );
  FA_X1 U351 ( .A(n252), .B(n251), .CI(n250), .CO(n245), .S(n265) );
  FA_X1 U352 ( .A(n258), .B(n257), .CI(n256), .CO(n248), .S(n263) );
  NOR2_X1 U353 ( .A1(n272), .A2(n271), .ZN(n407) );
  NOR2_X1 U354 ( .A1(n103), .A2(n407), .ZN(n276) );
  INV_X1 U355 ( .A(n259), .ZN(n260) );
  AOI21_X1 U356 ( .B1(n262), .B2(n261), .A(n260), .ZN(n357) );
  NOR2_X1 U357 ( .A1(n270), .A2(n269), .ZN(n354) );
  NAND2_X1 U358 ( .A1(n270), .A2(n269), .ZN(n355) );
  OAI21_X1 U359 ( .B1(n357), .B2(n354), .A(n355), .ZN(n380) );
  NAND2_X1 U360 ( .A1(n274), .A2(n66), .ZN(n410) );
  OAI21_X1 U361 ( .B1(n406), .B2(n409), .A(n410), .ZN(n275) );
  AOI21_X1 U362 ( .B1(n276), .B2(n380), .A(n275), .ZN(n385) );
  FA_X1 U363 ( .A(n279), .B(n278), .CI(n277), .CO(n309) );
  NOR2_X1 U364 ( .A1(n298), .A2(n280), .ZN(n302) );
  NOR2_X1 U365 ( .A1(n303), .A2(n281), .ZN(n301) );
  FA_X1 U366 ( .A(n282), .B(n283), .CI(n284), .CO(n300), .S(n279) );
  NOR2_X1 U367 ( .A1(n299), .A2(n326), .ZN(n297) );
  NOR2_X1 U368 ( .A1(n315), .A2(n313), .ZN(n296) );
  NOR2_X1 U369 ( .A1(n325), .A2(n304), .ZN(n295) );
  NAND2_X1 U370 ( .A1(n290), .A2(n289), .ZN(n291) );
  NOR2_X1 U371 ( .A1(n332), .A2(n331), .ZN(n397) );
  FA_X1 U372 ( .A(n297), .B(n296), .CI(n295), .CO(n321), .S(n306) );
  NOR2_X1 U373 ( .A1(n330), .A2(n299), .ZN(n320) );
  FA_X1 U374 ( .A(n300), .B(n301), .CI(n302), .CO(n319), .S(n308) );
  NOR2_X1 U375 ( .A1(n315), .A2(n326), .ZN(n318) );
  NOR2_X1 U376 ( .A1(n325), .A2(n313), .ZN(n317) );
  NOR2_X1 U377 ( .A1(n314), .A2(n304), .ZN(n316) );
  FA_X1 U378 ( .A(n309), .B(n308), .CI(n307), .CO(n333), .S(n332) );
  NOR2_X1 U379 ( .A1(n334), .A2(n333), .ZN(n400) );
  NOR2_X1 U380 ( .A1(n397), .A2(n400), .ZN(n386) );
  FA_X1 U381 ( .A(n310), .B(n311), .CI(n312), .CO(n336), .S(n334) );
  NOR2_X1 U382 ( .A1(n314), .A2(n313), .ZN(n329) );
  NOR2_X1 U383 ( .A1(n325), .A2(n326), .ZN(n328) );
  NOR2_X1 U384 ( .A1(n330), .A2(n315), .ZN(n327) );
  FA_X1 U385 ( .A(n318), .B(n317), .CI(n316), .CO(n323), .S(n311) );
  FA_X1 U386 ( .A(n321), .B(n320), .CI(n319), .CO(n322), .S(n312) );
  FA_X1 U387 ( .A(n324), .B(n323), .CI(n322), .CO(n340), .S(n335) );
  NOR2_X1 U388 ( .A1(n330), .A2(n325), .ZN(n343) );
  NOR2_X1 U389 ( .A1(n314), .A2(n326), .ZN(n342) );
  FA_X1 U390 ( .A(n329), .B(n328), .CI(n327), .CO(n341), .S(n324) );
  NOR2_X1 U391 ( .A1(n340), .A2(n339), .ZN(n395) );
  NOR2_X1 U392 ( .A1(n314), .A2(n330), .ZN(n344) );
  INV_X1 U393 ( .A(n344), .ZN(n346) );
  NOR2_X1 U394 ( .A1(n395), .A2(n346), .ZN(n337) );
  AND2_X1 U395 ( .A1(n392), .A2(n337), .ZN(n351) );
  NAND2_X1 U396 ( .A1(n386), .A2(n351), .ZN(n353) );
  NAND2_X1 U397 ( .A1(n332), .A2(n331), .ZN(n398) );
  NAND2_X1 U398 ( .A1(n334), .A2(n333), .ZN(n401) );
  OAI21_X1 U399 ( .B1(n398), .B2(n81), .A(n401), .ZN(n387) );
  NAND2_X1 U400 ( .A1(n336), .A2(n335), .ZN(n390) );
  INV_X1 U401 ( .A(n390), .ZN(n338) );
  NAND2_X1 U402 ( .A1(n338), .A2(n337), .ZN(n349) );
  NAND2_X1 U403 ( .A1(n340), .A2(n339), .ZN(n424) );
  FA_X1 U404 ( .A(n343), .B(n342), .CI(n341), .CO(n345), .S(n339) );
  NAND2_X1 U405 ( .A1(n345), .A2(n344), .ZN(n428) );
  OAI21_X1 U406 ( .B1(n424), .B2(n346), .A(n428), .ZN(n347) );
  NAND2_X1 U407 ( .A1(n349), .A2(n348), .ZN(n350) );
  AOI21_X1 U408 ( .B1(n387), .B2(n351), .A(n350), .ZN(n352) );
  OAI21_X1 U409 ( .B1(n385), .B2(n353), .A(n352), .ZN(n383) );
  BUF_X1 U410 ( .A(n383), .Z(n359) );
  NOR2_X1 U411 ( .A1(n360), .A2(n359), .ZN(n379) );
  INV_X1 U412 ( .A(n354), .ZN(n356) );
  NAND2_X1 U413 ( .A1(n356), .A2(n355), .ZN(n358) );
  AND2_X1 U414 ( .A1(n453), .A2(n94), .ZN(n378) );
  AND2_X1 U415 ( .A1(n383), .A2(n360), .ZN(n376) );
  INV_X1 U416 ( .A(n361), .ZN(n362) );
  OR2_X1 U417 ( .A1(n362), .A2(n363), .ZN(n375) );
  NOR2_X1 U418 ( .A1(n365), .A2(n364), .ZN(n369) );
  OR2_X1 U419 ( .A1(n367), .A2(n366), .ZN(n368) );
  OR2_X1 U420 ( .A1(n369), .A2(n368), .ZN(n374) );
  INV_X1 U421 ( .A(n371), .ZN(n372) );
  OR2_X1 U422 ( .A1(n370), .A2(n372), .ZN(n373) );
  INV_X1 U423 ( .A(n380), .ZN(n408) );
  INV_X1 U424 ( .A(n407), .ZN(n381) );
  NAND2_X1 U425 ( .A1(n381), .A2(n406), .ZN(n382) );
  XOR2_X1 U426 ( .A(n408), .B(n382), .Z(n414) );
  OR2_X1 U427 ( .A1(n405), .A2(n415), .ZN(n440) );
  NAND2_X1 U428 ( .A1(n405), .A2(n415), .ZN(n384) );
  AND2_X1 U429 ( .A1(n440), .A2(n384), .ZN(n441) );
  INV_X1 U430 ( .A(n80), .ZN(n388) );
  INV_X1 U431 ( .A(n389), .ZN(n394) );
  NAND2_X1 U432 ( .A1(n392), .A2(n390), .ZN(n391) );
  INV_X1 U433 ( .A(n392), .ZN(n393) );
  OAI21_X1 U434 ( .B1(n394), .B2(n393), .A(n390), .ZN(n427) );
  INV_X1 U435 ( .A(n395), .ZN(n426) );
  NAND2_X1 U436 ( .A1(n426), .A2(n424), .ZN(n396) );
  XNOR2_X1 U437 ( .A(n427), .B(n396), .ZN(n431) );
  INV_X1 U438 ( .A(n417), .ZN(n399) );
  NAND2_X1 U439 ( .A1(n118), .A2(n401), .ZN(n402) );
  OAI21_X1 U440 ( .B1(n408), .B2(n407), .A(n406), .ZN(n413) );
  INV_X1 U441 ( .A(n103), .ZN(n411) );
  NAND2_X1 U442 ( .A1(n411), .A2(n410), .ZN(n412) );
  XNOR2_X1 U443 ( .A(n413), .B(n412), .ZN(n420) );
  MUX2_X1 U444 ( .A(n414), .B(n420), .S(n359), .Z(n438) );
  NAND2_X1 U445 ( .A1(n116), .A2(n417), .ZN(n418) );
  XNOR2_X1 U446 ( .A(n419), .B(n418), .ZN(n421) );
  NOR2_X1 U447 ( .A1(n113), .A2(n423), .ZN(n433) );
  INV_X1 U448 ( .A(n424), .ZN(n425) );
  AOI21_X1 U449 ( .B1(n427), .B2(n426), .A(n425), .ZN(n429) );
  MUX2_X1 U450 ( .A(n431), .B(n430), .S(n506), .Z(n432) );
  XNOR2_X1 U451 ( .A(n433), .B(n432), .ZN(n477) );
  XNOR2_X1 U452 ( .A(n442), .B(n434), .ZN(n475) );
  OAI21_X1 U453 ( .B1(n435), .B2(n437), .A(n436), .ZN(n473) );
  INV_X1 U454 ( .A(n438), .ZN(n439) );
  NOR2_X1 U455 ( .A1(n472), .A2(n441), .ZN(n444) );
  AND3_X1 U456 ( .A1(n474), .A2(n444), .A3(n473), .ZN(n445) );
  NAND4_X1 U457 ( .A1(n445), .A2(n475), .A3(n476), .A4(n477), .ZN(n481) );
  NAND4_X1 U458 ( .A1(b_operand[12]), .A2(b_operand[11]), .A3(b_operand[14]), 
        .A4(b_operand[13]), .ZN(n452) );
  NAND4_X1 U459 ( .A1(b_operand[8]), .A2(b_operand[7]), .A3(b_operand[10]), 
        .A4(b_operand[9]), .ZN(n451) );
  AND2_X1 U460 ( .A1(a_operand[8]), .A2(a_operand[7]), .ZN(n449) );
  AND2_X1 U461 ( .A1(a_operand[10]), .A2(a_operand[9]), .ZN(n448) );
  AND2_X1 U462 ( .A1(a_operand[12]), .A2(a_operand[11]), .ZN(n447) );
  AND2_X1 U463 ( .A1(a_operand[14]), .A2(a_operand[13]), .ZN(n446) );
  NAND4_X1 U464 ( .A1(n449), .A2(n448), .A3(n447), .A4(n446), .ZN(n450) );
  OAI21_X1 U465 ( .B1(n452), .B2(n451), .A(n450), .ZN(n534) );
  INV_X1 U466 ( .A(n534), .ZN(n471) );
  XNOR2_X1 U467 ( .A(b_operand[14]), .B(a_operand[14]), .ZN(n484) );
  NOR2_X1 U468 ( .A1(n454), .A2(a_operand[7]), .ZN(n489) );
  NOR2_X1 U469 ( .A1(n215), .A2(b_operand[7]), .ZN(n479) );
  NOR2_X1 U470 ( .A1(n489), .A2(n479), .ZN(n496) );
  HA_X1 U471 ( .A(b_operand[8]), .B(a_operand[8]), .CO(n455), .S(n454) );
  OR2_X1 U472 ( .A1(n456), .A2(n455), .ZN(n498) );
  NAND2_X1 U473 ( .A1(n496), .A2(n498), .ZN(n502) );
  HA_X1 U474 ( .A(b_operand[9]), .B(a_operand[9]), .CO(n458), .S(n456) );
  NOR2_X1 U475 ( .A1(n459), .A2(n458), .ZN(n507) );
  NOR2_X1 U476 ( .A1(n502), .A2(n507), .ZN(n461) );
  NAND2_X1 U477 ( .A1(n215), .A2(b_operand[7]), .ZN(n486) );
  NAND2_X1 U478 ( .A1(n454), .A2(a_operand[7]), .ZN(n490) );
  OAI21_X1 U479 ( .B1(n489), .B2(n486), .A(n490), .ZN(n495) );
  NAND2_X1 U480 ( .A1(n456), .A2(n455), .ZN(n497) );
  INV_X1 U481 ( .A(n497), .ZN(n457) );
  AOI21_X1 U482 ( .B1(n495), .B2(n498), .A(n457), .ZN(n503) );
  NAND2_X1 U483 ( .A1(n459), .A2(n458), .ZN(n508) );
  OAI21_X1 U484 ( .B1(n503), .B2(n507), .A(n508), .ZN(n460) );
  HA_X1 U485 ( .A(b_operand[10]), .B(a_operand[10]), .CO(n462), .S(n459) );
  NOR2_X1 U486 ( .A1(n463), .A2(n462), .ZN(n513) );
  NAND2_X1 U487 ( .A1(n463), .A2(n462), .ZN(n514) );
  HA_X1 U488 ( .A(b_operand[11]), .B(a_operand[11]), .CO(n464), .S(n463) );
  OR2_X1 U489 ( .A1(n465), .A2(n464), .ZN(n520) );
  NAND2_X1 U490 ( .A1(n465), .A2(n464), .ZN(n519) );
  INV_X1 U491 ( .A(n519), .ZN(n466) );
  HA_X1 U492 ( .A(b_operand[13]), .B(a_operand[13]), .CO(n483), .S(n468) );
  HA_X1 U493 ( .A(b_operand[12]), .B(a_operand[12]), .CO(n467), .S(n465) );
  NOR2_X1 U494 ( .A1(n468), .A2(n467), .ZN(n525) );
  NAND2_X1 U495 ( .A1(n468), .A2(n467), .ZN(n526) );
  OR2_X1 U496 ( .A1(b_operand[14]), .A2(a_operand[14]), .ZN(n469) );
  INV_X1 U497 ( .A(n479), .ZN(n488) );
  NAND2_X1 U498 ( .A1(n488), .A2(n486), .ZN(n480) );
  FA_X1 U499 ( .A(n484), .B(n483), .CI(n482), .CO(n470), .S(n530) );
  NAND2_X1 U500 ( .A1(n485), .A2(n531), .ZN(result[7]) );
  INV_X1 U501 ( .A(n486), .ZN(n487) );
  AOI21_X1 U502 ( .B1(n506), .B2(n488), .A(n487), .ZN(n493) );
  INV_X1 U503 ( .A(n489), .ZN(n491) );
  NAND2_X1 U504 ( .A1(n491), .A2(n490), .ZN(n492) );
  NAND2_X1 U505 ( .A1(n494), .A2(n531), .ZN(result[8]) );
  AOI21_X1 U506 ( .B1(n506), .B2(n496), .A(n495), .ZN(n500) );
  NAND2_X1 U507 ( .A1(n498), .A2(n497), .ZN(n499) );
  NAND2_X1 U508 ( .A1(n501), .A2(n531), .ZN(result[9]) );
  INV_X1 U509 ( .A(n502), .ZN(n505) );
  INV_X1 U510 ( .A(n503), .ZN(n504) );
  AOI21_X1 U511 ( .B1(n506), .B2(n505), .A(n504), .ZN(n511) );
  INV_X1 U512 ( .A(n507), .ZN(n509) );
  NAND2_X1 U513 ( .A1(n509), .A2(n508), .ZN(n510) );
  NAND2_X1 U514 ( .A1(n512), .A2(n531), .ZN(result[10]) );
  INV_X1 U515 ( .A(n513), .ZN(n515) );
  NAND2_X1 U516 ( .A1(n515), .A2(n514), .ZN(n516) );
  NAND2_X1 U517 ( .A1(n518), .A2(n531), .ZN(result[11]) );
  NAND2_X1 U518 ( .A1(n520), .A2(n519), .ZN(n521) );
  NAND2_X1 U519 ( .A1(n523), .A2(n531), .ZN(result[12]) );
  INV_X1 U520 ( .A(n525), .ZN(n527) );
  NAND2_X1 U521 ( .A1(n527), .A2(n526), .ZN(n528) );
  NAND2_X1 U522 ( .A1(n529), .A2(n531), .ZN(result[13]) );
  NAND2_X1 U523 ( .A1(n532), .A2(n531), .ZN(result[14]) );
  NOR2_X1 U524 ( .A1(b_operand[15]), .A2(a_operand[15]), .ZN(n533) );
  AOI211_X1 U525 ( .C1(b_operand[15]), .C2(a_operand[15]), .A(n534), .B(n533), 
        .ZN(result[15]) );
endmodule

