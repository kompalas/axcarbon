/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:09:46 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650;

  OAI21xp5b_ASAP7_6t_R U284 ( .A1(n645), .A2(n644), .B(n643), .Y(n646) );
  INVx1_ASAP7_6t_R U285 ( .A(n638), .Y(n593) );
  AND2x2_ASAP7_6t_R U286 ( .A(A[7]), .B(B[0]), .Y(n627) );
  NOR2xp5_ASAP7_6t_R U287 ( .A(n495), .B(n521), .Y(n287) );
  NOR2xp5_ASAP7_6t_R U288 ( .A(n520), .B(n495), .Y(n398) );
  AND2x2_ASAP7_6t_R U289 ( .A(A[6]), .B(B[2]), .Y(n484) );
  AND2x2_ASAP7_6t_R U290 ( .A(A[5]), .B(B[0]), .Y(n583) );
  INVx1_ASAP7_6t_R U291 ( .A(n397), .Y(n495) );
  NAND2xp5R_ASAP7_6t_R U292 ( .A(n517), .B(n297), .Y(n569) );
  NOR2xp5_ASAP7_6t_R U293 ( .A(n543), .B(n544), .Y(n566) );
  NAND2xp5R_ASAP7_6t_R U294 ( .A(B[4]), .B(A[7]), .Y(n572) );
  AND2x2_ASAP7_6t_R U295 ( .A(A[7]), .B(B[3]), .Y(n397) );
  NAND2xp5R_ASAP7_6t_R U296 ( .A(A[6]), .B(B[1]), .Y(n473) );
  INVx1_ASAP7_6t_R U297 ( .A(n308), .Y(n331) );
  INVxp5_ASAP7_6t_R U298 ( .A(B[6]), .Y(n548) );
  INVxp5_ASAP7_6t_R U299 ( .A(A[6]), .Y(n550) );
  OAI21xp5_ASAP7_6t_R U300 ( .A1(n396), .A2(n303), .B(n302), .Y(n311) );
  INVx1_ASAP7_6t_R U301 ( .A(A[4]), .Y(n622) );
  INVx1_ASAP7_6t_R U302 ( .A(A[7]), .Y(n645) );
  AND2x2_ASAP7_6t_R U303 ( .A(B[7]), .B(A[7]), .Y(n595) );
  AND3x1_ASAP7_6t_R U304 ( .A(n419), .B(n458), .C(n457), .Y(n395) );
  NOR2xp5_ASAP7_6t_R U305 ( .A(n432), .B(n454), .Y(n446) );
  INVx1_ASAP7_6t_R U306 ( .A(n409), .Y(n273) );
  INVx6_ASAP7_6t_R U307 ( .A(A[0]), .Y(n301) );
  NOR2x1_ASAP7_6t_R U308 ( .A(n615), .B(n618), .Y(n319) );
  INVx2_ASAP7_6t_R U309 ( .A(n574), .Y(n575) );
  NOR2x2_ASAP7_6t_R U310 ( .A(n576), .B(n575), .Y(n636) );
  INVx2_ASAP7_6t_R U311 ( .A(n525), .Y(n576) );
  XNOR2xp5f_ASAP7_6t_R U312 ( .A(n523), .B(n573), .Y(n525) );
  INVx2_ASAP7_6t_R U313 ( .A(n400), .Y(n272) );
  OAI21xp5_ASAP7_6t_R U314 ( .A1(n603), .A2(n650), .B(n329), .Y(n606) );
  NOR2x1_ASAP7_6t_R U315 ( .A(n525), .B(n364), .Y(n600) );
  INVx2_ASAP7_6t_R U316 ( .A(n340), .Y(n415) );
  OAI31x1f_ASAP7_6t_R U317 ( .A1(n275), .A2(n395), .A3(n308), .B(n274), .Y(
        n340) );
  OAI22xp5_ASAP7_6t_R U318 ( .A1(n636), .A2(n637), .B1(n375), .B2(n374), .Y(
        n641) );
  NOR2x2R_ASAP7_6t_R U319 ( .A(n600), .B(n603), .Y(n637) );
  XNOR2xp5_ASAP7_6t_R U320 ( .A(n512), .B(n509), .Y(n410) );
  XNOR2xp5_ASAP7_6t_R U321 ( .A(n532), .B(n410), .Y(n411) );
  INVxp5_ASAP7_6t_R U322 ( .A(n463), .Y(n464) );
  AND2x2_ASAP7_6t_R U323 ( .A(A[4]), .B(B[2]), .Y(n471) );
  NAND2xp5R_ASAP7_6t_R U324 ( .A(A[7]), .B(B[2]), .Y(n489) );
  INVxp5_ASAP7_6t_R U325 ( .A(n647), .Y(n605) );
  OA21x1_ASAP7_6t_R U326 ( .A1(n502), .A2(n532), .B(n501), .Y(n271) );
  NAND2xp5R_ASAP7_6t_R U327 ( .A(n396), .B(n303), .Y(n302) );
  XNOR2xp5f_ASAP7_6t_R U328 ( .A(n614), .B(n292), .Y(O[9]) );
  INVxp5_ASAP7_6t_R U329 ( .A(n566), .Y(n547) );
  NOR2x1_ASAP7_6t_R U330 ( .A(n546), .B(n545), .Y(n565) );
  INVx1_ASAP7_6t_R U331 ( .A(n349), .Y(n348) );
  OAI21xp5_ASAP7_6t_R U332 ( .A1(n554), .A2(n553), .B(n552), .Y(n557) );
  NAND2x1_ASAP7_6t_R U333 ( .A(n583), .B(n584), .Y(n624) );
  INVx1_ASAP7_6t_R U334 ( .A(n457), .Y(n433) );
  NAND2xp5R_ASAP7_6t_R U335 ( .A(A[6]), .B(B[4]), .Y(n520) );
  AO21x1_ASAP7_6t_R U336 ( .A1(n638), .A2(n578), .B(n356), .Y(n580) );
  OA21x1_ASAP7_6t_R U337 ( .A1(n638), .A2(n577), .B(n578), .Y(n328) );
  INVxp5_ASAP7_6t_R U338 ( .A(n588), .Y(n589) );
  XNOR2xp5f_ASAP7_6t_R U339 ( .A(n588), .B(n590), .Y(n578) );
  NOR2x1_ASAP7_6t_R U340 ( .A(n566), .B(n565), .Y(n568) );
  XNOR2xp5_ASAP7_6t_R U341 ( .A(n628), .B(n627), .Y(n629) );
  OAI21xp5_ASAP7_6t_R U342 ( .A1(n642), .A2(n598), .B(n597), .Y(n647) );
  INVxp5_ASAP7_6t_R U343 ( .A(n294), .Y(n295) );
  INVx1_ASAP7_6t_R U344 ( .A(n569), .Y(n518) );
  NAND2xp5R_ASAP7_6t_R U345 ( .A(n596), .B(n642), .Y(n597) );
  XNOR2xp5_ASAP7_6t_R U346 ( .A(n626), .B(n625), .Y(O[6]) );
  XNOR2xp5f_ASAP7_6t_R U347 ( .A(n337), .B(n416), .Y(n355) );
  XNOR2xp5f_ASAP7_6t_R U348 ( .A(n479), .B(n478), .Y(n626) );
  NOR2x1_ASAP7_6t_R U349 ( .A(n563), .B(n562), .Y(n642) );
  OAI21xp5_ASAP7_6t_R U350 ( .A1(n446), .A2(n439), .B(n436), .Y(n441) );
  INVx1_ASAP7_6t_R U351 ( .A(n475), .Y(n479) );
  INVxp5_ASAP7_6t_R U352 ( .A(n540), .Y(n541) );
  INVxp5_ASAP7_6t_R U353 ( .A(n336), .Y(n335) );
  OAI21xp5_ASAP7_6t_R U354 ( .A1(n510), .A2(n511), .B(n514), .Y(n285) );
  AO31x1_ASAP7_6t_R U355 ( .A1(n516), .A2(n515), .A3(n514), .B(n513), .Y(n297)
         );
  INVx1_ASAP7_6t_R U356 ( .A(n437), .Y(n450) );
  INVxp5_ASAP7_6t_R U357 ( .A(n534), .Y(n536) );
  INVxp5_ASAP7_6t_R U358 ( .A(n417), .Y(n426) );
  AOI21xp5_ASAP7_6t_R U359 ( .A1(n482), .A2(n481), .B(n480), .Y(n584) );
  INVxp5_ASAP7_6t_R U360 ( .A(n500), .Y(n498) );
  XOR2xp5r_ASAP7_6t_R U361 ( .A(n480), .B(n477), .Y(n478) );
  NAND2xp5R_ASAP7_6t_R U362 ( .A(n533), .B(n559), .Y(n552) );
  INVx1_ASAP7_6t_R U363 ( .A(n442), .Y(n443) );
  INVx1_ASAP7_6t_R U364 ( .A(n399), .Y(n305) );
  INVx1_ASAP7_6t_R U365 ( .A(n504), .Y(n505) );
  NAND2xp5R_ASAP7_6t_R U366 ( .A(n359), .B(n530), .Y(n503) );
  XNOR2xp5f_ASAP7_6t_R U367 ( .A(n457), .B(n456), .Y(n459) );
  INVx1_ASAP7_6t_R U368 ( .A(n405), .Y(n401) );
  INVxp5_ASAP7_6t_R U369 ( .A(n456), .Y(n432) );
  INVxp5_ASAP7_6t_R U370 ( .A(n448), .Y(n452) );
  OAI31x1f_ASAP7_6t_R U371 ( .A1(n381), .A2(n549), .A3(B[6]), .B(n361), .Y(
        n384) );
  INVx1_ASAP7_6t_R U372 ( .A(n476), .Y(n477) );
  NAND2xp5R_ASAP7_6t_R U373 ( .A(A[6]), .B(B[5]), .Y(n504) );
  NAND2x2_ASAP7_6t_R U374 ( .A(A[7]), .B(B[1]), .Y(n486) );
  NAND2xp5R_ASAP7_6t_R U375 ( .A(B[4]), .B(A[5]), .Y(n396) );
  NAND2xp5R_ASAP7_6t_R U376 ( .A(A[4]), .B(B[3]), .Y(n456) );
  NAND2xp5R_ASAP7_6t_R U377 ( .A(A[5]), .B(B[2]), .Y(n466) );
  NAND2xp5R_ASAP7_6t_R U378 ( .A(B[5]), .B(A[3]), .Y(n399) );
  NAND2xp5R_ASAP7_6t_R U379 ( .A(B[4]), .B(A[3]), .Y(n457) );
  NAND2xp5R_ASAP7_6t_R U380 ( .A(B[7]), .B(A[5]), .Y(n555) );
  NAND2xp5R_ASAP7_6t_R U381 ( .A(B[4]), .B(A[4]), .Y(n419) );
  INVx1_ASAP7_6t_R U382 ( .A(A[3]), .Y(n620) );
  INVx6_ASAP7_6t_R U383 ( .A(B[7]), .Y(n314) );
  NAND2xp5R_ASAP7_6t_R U384 ( .A(B[5]), .B(A[5]), .Y(n509) );
  A2O1A1Ixp33_ASAP7_6t_R U385 ( .A1(n394), .A2(A[3]), .B(n393), .C(n417), .Y(
        n274) );
  NOR2xp5_ASAP7_6t_R U386 ( .A(n418), .B(n393), .Y(n275) );
  INVx1_ASAP7_6t_R U387 ( .A(n276), .Y(n293) );
  INVx1_ASAP7_6t_R U388 ( .A(n634), .Y(n276) );
  NOR2x2R_ASAP7_6t_R U389 ( .A(n610), .B(n608), .Y(n609) );
  XNOR2xp5f_ASAP7_6t_R U390 ( .A(n485), .B(n277), .Y(n608) );
  XNOR2xp5_ASAP7_6t_R U391 ( .A(n278), .B(n486), .Y(n277) );
  XNOR2xp5f_ASAP7_6t_R U392 ( .A(n279), .B(n280), .Y(n485) );
  MAJIxp5_ASAP7_6t_R U393 ( .A(n630), .B(n627), .C(n628), .Y(n610) );
  XNOR2xp5_ASAP7_6t_R U394 ( .A(n366), .B(n281), .Y(n630) );
  OAI21xp5_ASAP7_6t_R U395 ( .A1(n367), .A2(n366), .B(n369), .Y(n278) );
  XNOR2xp5_ASAP7_6t_R U396 ( .A(n341), .B(n484), .Y(n279) );
  XNOR2xp5_ASAP7_6t_R U397 ( .A(n282), .B(n483), .Y(n280) );
  XNOR2xp5_ASAP7_6t_R U398 ( .A(n468), .B(n467), .Y(n366) );
  XNOR2xp5_ASAP7_6t_R U399 ( .A(n474), .B(n473), .Y(n281) );
  XNOR2xp5_ASAP7_6t_R U400 ( .A(n483), .B(n282), .Y(n354) );
  OAI211xp67b_ASAP7_6t_R U401 ( .A1(n335), .A2(n453), .B(n333), .C(n299), .Y(
        n282) );
  NAND2xp5R_ASAP7_6t_R U402 ( .A(n604), .B(n378), .Y(n283) );
  OAI21xp25_ASAP7_6t_R U403 ( .A1(n650), .A2(n283), .B(n649), .Y(O[15]) );
  XNOR2xp5f_ASAP7_6t_R U404 ( .A(n283), .B(n524), .Y(O[11]) );
  AOI21x1_ASAP7_6t_R U405 ( .A1(n635), .A2(n634), .B(n632), .Y(n493) );
  AND2x4_ASAP7_6t_R U406 ( .A(n298), .B(n609), .Y(n632) );
  NAND2xp5R_ASAP7_6t_R U407 ( .A(n284), .B(n357), .Y(n373) );
  XNOR2xp5_ASAP7_6t_R U408 ( .A(n288), .B(n287), .Y(n284) );
  BUFx3_ASAP7_6t_R U409 ( .A(n574), .Y(n364) );
  NAND2xp5R_ASAP7_6t_R U410 ( .A(n286), .B(n285), .Y(n517) );
  INVx1_ASAP7_6t_R U411 ( .A(n516), .Y(n286) );
  AOI22xp5_ASAP7_6t_R U412 ( .A1(n403), .A2(n402), .B1(n404), .B2(n401), .Y(
        n507) );
  XNOR2xp5f_ASAP7_6t_R U413 ( .A(n273), .B(n272), .Y(n404) );
  XNOR2xp5f_ASAP7_6t_R U414 ( .A(n342), .B(n290), .Y(n494) );
  NAND2xp5R_ASAP7_6t_R U415 ( .A(n307), .B(n413), .Y(n342) );
  NAND2xp5R_ASAP7_6t_R U416 ( .A(B[5]), .B(A[2]), .Y(n390) );
  OAI21xp5b_ASAP7_6t_R U417 ( .A1(n457), .A2(n458), .B(n419), .Y(n418) );
  XNOR2x2_ASAP7_6t_R U418 ( .A(n459), .B(n458), .Y(n460) );
  NAND2xp5R_ASAP7_6t_R U419 ( .A(n631), .B(n376), .Y(n375) );
  XNOR2xp5f_ASAP7_6t_R U420 ( .A(n371), .B(n372), .Y(O[10]) );
  XNOR2xp5f_ASAP7_6t_R U421 ( .A(n412), .B(n411), .Y(n521) );
  XNOR2xp5f_ASAP7_6t_R U422 ( .A(n289), .B(n398), .Y(n288) );
  NAND3xp33R_ASAP7_6t_R U423 ( .A(n307), .B(n413), .C(n397), .Y(n289) );
  NAND2xp5R_ASAP7_6t_R U424 ( .A(n494), .B(n495), .Y(n357) );
  XNOR2xp5f_ASAP7_6t_R U425 ( .A(n339), .B(n412), .Y(n290) );
  AOI21x1_ASAP7_6t_R U426 ( .A1(n291), .A2(n441), .B(n440), .Y(n444) );
  INVx2_ASAP7_6t_R U427 ( .A(n483), .Y(n291) );
  XOR2x2_ASAP7_6t_R U428 ( .A(n331), .B(n332), .Y(n483) );
  HB1x1_ASAP7_6t_R U429 ( .A(n613), .Y(n292) );
  OAI211xp33_ASAP7_6t_R U430 ( .A1(n607), .A2(n345), .B(n606), .C(n377), .Y(
        O[14]) );
  NAND2x1_ASAP7_6t_R U431 ( .A(n526), .B(n527), .Y(n570) );
  INVxp5_ASAP7_6t_R U432 ( .A(n341), .Y(n294) );
  XOR2x2_ASAP7_6t_R U433 ( .A(n343), .B(n273), .Y(n313) );
  INVxp5_ASAP7_6t_R U434 ( .A(n632), .Y(n633) );
  INVxp5_ASAP7_6t_R U435 ( .A(n444), .Y(n445) );
  INVx1_ASAP7_6t_R U436 ( .A(n493), .Y(n374) );
  XNOR2x2_ASAP7_6t_R U437 ( .A(n568), .B(n567), .Y(n638) );
  NAND2xp5R_ASAP7_6t_R U438 ( .A(n507), .B(n508), .Y(n515) );
  INVxp5_ASAP7_6t_R U439 ( .A(n526), .Y(n528) );
  INVxp5_ASAP7_6t_R U440 ( .A(n562), .Y(n560) );
  AO21x1_ASAP7_6t_R U441 ( .A1(n567), .A2(n547), .B(n565), .Y(n588) );
  AOI21xp5_ASAP7_6t_R U442 ( .A1(n434), .A2(n424), .B(n423), .Y(n425) );
  OA21x1_ASAP7_6t_R U443 ( .A1(A[4]), .A2(A[3]), .B(B[4]), .Y(n422) );
  AOI31xp33_ASAP7_6t_R U444 ( .A1(n389), .A2(n388), .A3(B[6]), .B(n387), .Y(
        n306) );
  NOR2xp5_ASAP7_6t_R U445 ( .A(n539), .B(n553), .Y(n540) );
  XNOR2xp5_ASAP7_6t_R U446 ( .A(n518), .B(n519), .Y(n523) );
  NAND2xp5_ASAP7_6t_R U447 ( .A(n328), .B(n376), .Y(n327) );
  INVxp5_ASAP7_6t_R U448 ( .A(n639), .Y(n577) );
  INVxp5_ASAP7_6t_R U449 ( .A(n458), .Y(n394) );
  AND2x2_ASAP7_6t_R U450 ( .A(n452), .B(n447), .Y(n451) );
  OAI21xp5_ASAP7_6t_R U451 ( .A1(n434), .A2(n426), .B(n425), .Y(n332) );
  INVx2_ASAP7_6t_R U452 ( .A(n350), .Y(n532) );
  NAND2xp5_ASAP7_6t_R U453 ( .A(n466), .B(n469), .Y(n349) );
  NAND3xp33_ASAP7_6t_R U454 ( .A(n321), .B(n271), .C(n504), .Y(n526) );
  XNOR2xp5_ASAP7_6t_R U455 ( .A(n469), .B(n466), .Y(n467) );
  INVxp5_ASAP7_6t_R U456 ( .A(n587), .Y(n592) );
  NAND2xp5_ASAP7_6t_R U457 ( .A(n594), .B(n595), .Y(n598) );
  NAND3xp33_ASAP7_6t_R U458 ( .A(n345), .B(n581), .C(n637), .Y(n326) );
  AND3x1_ASAP7_6t_R U459 ( .A(n301), .B(B[7]), .C(A[1]), .Y(n296) );
  INVx2_ASAP7_6t_R U460 ( .A(n365), .Y(n458) );
  INVxp5_ASAP7_6t_R U461 ( .A(n538), .Y(n554) );
  XOR2xp5_ASAP7_6t_R U462 ( .A(n352), .B(n351), .Y(n538) );
  NOR2xp5_ASAP7_6t_R U463 ( .A(n486), .B(n487), .Y(n298) );
  OA22x1_ASAP7_6t_R U464 ( .A1(A[5]), .A2(n450), .B1(n454), .B2(n449), .Y(n299) );
  NAND2xp5R_ASAP7_6t_R U465 ( .A(A[4]), .B(B[5]), .Y(n405) );
  AND2x2_ASAP7_6t_R U466 ( .A(B[6]), .B(A[1]), .Y(n300) );
  OAI21xp5b_ASAP7_6t_R U467 ( .A1(B[7]), .A2(n301), .B(n385), .Y(n388) );
  XNOR2xp5_ASAP7_6t_R U468 ( .A(n313), .B(n303), .Y(n312) );
  NAND2xp5R_ASAP7_6t_R U469 ( .A(n311), .B(n313), .Y(n310) );
  MAJIxp5_ASAP7_6t_R U470 ( .A(n386), .B(n399), .C(n344), .Y(n303) );
  XNOR2xp5f_ASAP7_6t_R U471 ( .A(n304), .B(n403), .Y(n308) );
  INVx1_ASAP7_6t_R U472 ( .A(n386), .Y(n403) );
  XNOR2xp5f_ASAP7_6t_R U473 ( .A(n306), .B(n305), .Y(n304) );
  OAI22xp5_ASAP7_6t_R U474 ( .A1(n384), .A2(n296), .B1(n383), .B2(n391), .Y(
        n386) );
  NAND2xp5R_ASAP7_6t_R U475 ( .A(n340), .B(n414), .Y(n307) );
  INVx1_ASAP7_6t_R U476 ( .A(n309), .Y(n413) );
  NOR2xp5_ASAP7_6t_R U477 ( .A(n396), .B(n312), .Y(n309) );
  OAI21xp5b_ASAP7_6t_R U478 ( .A1(n313), .A2(n311), .B(n310), .Y(n416) );
  NAND2xp5R_ASAP7_6t_R U479 ( .A(n312), .B(n396), .Y(n414) );
  A2O1A1Ixp33_ASAP7_6t_R U480 ( .A1(B[6]), .A2(A[1]), .B(n316), .C(n315), .Y(
        n318) );
  NAND4xp75_ASAP7_6t_R U481 ( .A(B[6]), .B(B[7]), .C(A[0]), .D(A[1]), .Y(n315)
         );
  NOR2x1_ASAP7_6t_R U482 ( .A(n314), .B(n301), .Y(n316) );
  AOI21x1_ASAP7_6t_R U483 ( .A1(n317), .A2(n392), .B(n319), .Y(n455) );
  XNOR2xp5f_ASAP7_6t_R U484 ( .A(n318), .B(n390), .Y(n317) );
  XOR2xp5r_ASAP7_6t_R U485 ( .A(B[7]), .B(A[2]), .Y(n618) );
  OA21x1_ASAP7_6t_R U486 ( .A1(n409), .A2(n272), .B(n408), .Y(n350) );
  NAND2xp5_ASAP7_6t_R U487 ( .A(n271), .B(n321), .Y(n506) );
  NAND2xp5_ASAP7_6t_R U488 ( .A(n532), .B(n320), .Y(n321) );
  NOR2xp5_ASAP7_6t_R U489 ( .A(n322), .B(n538), .Y(n320) );
  INVxp5_ASAP7_6t_R U490 ( .A(n503), .Y(n322) );
  OAI211xp33_ASAP7_6t_R U491 ( .A1(n327), .A2(n345), .B(n326), .C(n323), .Y(
        O[13]) );
  INVx1_ASAP7_6t_R U492 ( .A(n324), .Y(n323) );
  OAI21xp5b_ASAP7_6t_R U493 ( .A1(n327), .A2(n637), .B(n325), .Y(n324) );
  AOI22xp25_ASAP7_6t_R U494 ( .A1(n581), .A2(n636), .B1(n579), .B2(n580), .Y(
        n325) );
  NAND2xp5R_ASAP7_6t_R U495 ( .A(n493), .B(n631), .Y(n345) );
  NAND2xp5R_ASAP7_6t_R U496 ( .A(n602), .B(n601), .Y(n648) );
  NAND2xp5R_ASAP7_6t_R U497 ( .A(n636), .B(n599), .Y(n601) );
  AOI31xp33_ASAP7_6t_R U498 ( .A1(n639), .A2(n593), .A3(n592), .B(n591), .Y(
        n602) );
  XNOR2xp5f_ASAP7_6t_R U499 ( .A(n648), .B(n605), .Y(n329) );
  NAND2xp5R_ASAP7_6t_R U500 ( .A(n647), .B(n338), .Y(n650) );
  NOR2xp5_ASAP7_6t_R U501 ( .A(n330), .B(n600), .Y(n338) );
  INVxp5_ASAP7_6t_R U502 ( .A(n599), .Y(n330) );
  NAND2xp5R_ASAP7_6t_R U503 ( .A(n453), .B(n451), .Y(n333) );
  XNOR2xp5f_ASAP7_6t_R U504 ( .A(n434), .B(n334), .Y(n453) );
  XNOR2xp5f_ASAP7_6t_R U505 ( .A(n458), .B(n433), .Y(n334) );
  NOR2xp5_ASAP7_6t_R U506 ( .A(n452), .B(n437), .Y(n336) );
  OAI22xp5_ASAP7_6t_R U507 ( .A1(n468), .A2(n348), .B1(n466), .B2(n469), .Y(
        n341) );
  XNOR2xp5f_ASAP7_6t_R U508 ( .A(n461), .B(n460), .Y(n468) );
  XNOR2xp5f_ASAP7_6t_R U509 ( .A(n415), .B(n443), .Y(n337) );
  NAND4xp25_ASAP7_6t_R U510 ( .A(n378), .B(n604), .C(n605), .D(n338), .Y(n377)
         );
  XNOR2xp5f_ASAP7_6t_R U511 ( .A(n411), .B(n520), .Y(n339) );
  NAND2xp5_ASAP7_6t_R U512 ( .A(n484), .B(n341), .Y(n347) );
  OAI22xp5_ASAP7_6t_R U513 ( .A1(n484), .A2(n295), .B1(n346), .B2(n354), .Y(
        n490) );
  MAJIxp5_ASAP7_6t_R U514 ( .A(n342), .B(n522), .C(n521), .Y(n573) );
  INVx1_ASAP7_6t_R U515 ( .A(n344), .Y(n402) );
  AOI31xp67_ASAP7_6t_R U516 ( .A1(n389), .A2(B[6]), .A3(n388), .B(n387), .Y(
        n344) );
  AOI31xp67_ASAP7_6t_R U517 ( .A1(A[1]), .A2(n391), .A3(B[7]), .B(n382), .Y(
        n409) );
  XNOR2xp5_ASAP7_6t_R U518 ( .A(n400), .B(n405), .Y(n343) );
  INVx1_ASAP7_6t_R U519 ( .A(n347), .Y(n346) );
  NAND2xp5R_ASAP7_6t_R U520 ( .A(n515), .B(n514), .Y(n412) );
  OR2x2_ASAP7_6t_R U521 ( .A(n401), .B(n404), .Y(n514) );
  NAND2xp5R_ASAP7_6t_R U522 ( .A(A[5]), .B(B[6]), .Y(n351) );
  NAND2xp5R_ASAP7_6t_R U523 ( .A(B[7]), .B(A[4]), .Y(n352) );
  NOR2x2R_ASAP7_6t_R U524 ( .A(n360), .B(n353), .Y(n382) );
  NOR2x1_ASAP7_6t_R U525 ( .A(n615), .B(n353), .Y(n387) );
  AOI21x1_ASAP7_6t_R U526 ( .A1(n379), .A2(n353), .B(n407), .Y(n400) );
  NAND2x2_ASAP7_6t_R U527 ( .A(A[2]), .B(B[7]), .Y(n353) );
  MAJIxp5_ASAP7_6t_R U528 ( .A(n492), .B(n489), .C(n490), .Y(n634) );
  XNOR2xp5f_ASAP7_6t_R U529 ( .A(n355), .B(n445), .Y(n492) );
  HB1x1_ASAP7_6t_R U530 ( .A(n639), .Y(n356) );
  MAJIxp5_ASAP7_6t_R U531 ( .A(n573), .B(n572), .C(n571), .Y(n639) );
  AO21x1_ASAP7_6t_R U532 ( .A1(n497), .A2(n357), .B(n496), .Y(n574) );
  XNOR2xp5f_ASAP7_6t_R U533 ( .A(n373), .B(n497), .Y(n358) );
  NAND2x2_ASAP7_6t_R U534 ( .A(B[7]), .B(A[3]), .Y(n359) );
  NAND2x2_ASAP7_6t_R U535 ( .A(B[6]), .B(A[1]), .Y(n360) );
  NAND2xp5R_ASAP7_6t_R U536 ( .A(B[6]), .B(A[2]), .Y(n361) );
  AOI21xp25_ASAP7_6t_R U537 ( .A1(n648), .A2(n647), .B(n646), .Y(n649) );
  OAI21xp25_ASAP7_6t_R U538 ( .A1(n638), .A2(n578), .B(n356), .Y(n579) );
  INVxp5_ASAP7_6t_R U539 ( .A(n507), .Y(n511) );
  INVxp5_ASAP7_6t_R U540 ( .A(n407), .Y(n408) );
  INVxp5_ASAP7_6t_R U541 ( .A(n485), .Y(n488) );
  OAI21xp25_ASAP7_6t_R U542 ( .A1(n367), .A2(n366), .B(n369), .Y(n362) );
  XNOR2xp5f_ASAP7_6t_R U543 ( .A(n416), .B(n415), .Y(n363) );
  OAI21xp5_ASAP7_6t_R U544 ( .A1(n609), .A2(n611), .B(n613), .Y(n631) );
  HB1x1_ASAP7_6t_R U545 ( .A(n455), .Y(n393) );
  NAND2xp5R_ASAP7_6t_R U546 ( .A(n493), .B(n631), .Y(n378) );
  XNOR2xp5f_ASAP7_6t_R U547 ( .A(n359), .B(n530), .Y(n512) );
  OA21x1_ASAP7_6t_R U548 ( .A1(n391), .A2(n389), .B(O[2]), .Y(n365) );
  INVx1_ASAP7_6t_R U549 ( .A(n368), .Y(n367) );
  NAND2xp5R_ASAP7_6t_R U550 ( .A(n472), .B(n473), .Y(n368) );
  INVx1_ASAP7_6t_R U551 ( .A(n370), .Y(n369) );
  NOR2xp5_ASAP7_6t_R U552 ( .A(n473), .B(n472), .Y(n370) );
  XNOR2xp5_ASAP7_6t_R U553 ( .A(n293), .B(n635), .Y(n371) );
  NAND2xp5R_ASAP7_6t_R U554 ( .A(n633), .B(n631), .Y(n372) );
  XNOR2xp5f_ASAP7_6t_R U555 ( .A(n641), .B(n640), .Y(O[12]) );
  NOR2x2R_ASAP7_6t_R U556 ( .A(n358), .B(n634), .Y(n603) );
  XNOR2xp5f_ASAP7_6t_R U557 ( .A(n373), .B(n497), .Y(n635) );
  INVxp5_ASAP7_6t_R U558 ( .A(n636), .Y(n376) );
  AOI21xp25_ASAP7_6t_R U559 ( .A1(n608), .A2(n610), .B(n612), .Y(O[8]) );
  HB1x1_ASAP7_6t_R U560 ( .A(n609), .Y(n612) );
  NAND2x2_ASAP7_6t_R U561 ( .A(A[6]), .B(B[6]), .Y(n594) );
  NAND2xp5R_ASAP7_6t_R U562 ( .A(B[6]), .B(A[3]), .Y(n379) );
  NAND2x2_ASAP7_6t_R U563 ( .A(A[4]), .B(B[6]), .Y(n530) );
  INVxp5_ASAP7_6t_R U564 ( .A(A[2]), .Y(n385) );
  INVxp5_ASAP7_6t_R U565 ( .A(n419), .Y(n420) );
  INVx1_ASAP7_6t_R U566 ( .A(O[2]), .Y(n430) );
  INVxp5_ASAP7_6t_R U567 ( .A(n508), .Y(n510) );
  TIELOxp5_ASAP7_6t_R U568 ( .L(O[1]) );
  AND2x4_ASAP7_6t_R U569 ( .A(B[4]), .B(A[2]), .Y(O[2]) );
  NAND2x2_ASAP7_6t_R U570 ( .A(B[6]), .B(A[2]), .Y(n380) );
  NAND2x2_ASAP7_6t_R U571 ( .A(B[7]), .B(A[3]), .Y(n406) );
  NOR2x2R_ASAP7_6t_R U572 ( .A(n380), .B(n406), .Y(n407) );
  AND2x4_ASAP7_6t_R U573 ( .A(B[6]), .B(A[0]), .Y(n391) );
  INVx1_ASAP7_6t_R U574 ( .A(A[1]), .Y(n381) );
  INVx1_ASAP7_6t_R U575 ( .A(B[7]), .Y(n549) );
  INVx1_ASAP7_6t_R U576 ( .A(n382), .Y(n383) );
  AND2x4_ASAP7_6t_R U577 ( .A(B[5]), .B(A[1]), .Y(n389) );
  NAND2x2_ASAP7_6t_R U578 ( .A(B[5]), .B(A[0]), .Y(n615) );
  NAND2xp5_ASAP7_6t_R U579 ( .A(B[5]), .B(n391), .Y(n392) );
  AOI21xp5_ASAP7_6t_R U580 ( .A1(n620), .A2(n458), .B(n419), .Y(n417) );
  OAI21xp5_ASAP7_6t_R U581 ( .A1(n402), .A2(n403), .B(n305), .Y(n508) );
  INVx2_ASAP7_6t_R U582 ( .A(n455), .Y(n434) );
  INVx1_ASAP7_6t_R U583 ( .A(n418), .Y(n424) );
  AOI21xp5_ASAP7_6t_R U584 ( .A1(A[3]), .A2(n420), .B(n458), .Y(n421) );
  AOI21xp5_ASAP7_6t_R U585 ( .A1(n422), .A2(n458), .B(n421), .Y(n423) );
  NAND2xp5R_ASAP7_6t_R U586 ( .A(A[0]), .B(B[6]), .Y(n428) );
  NAND2xp5R_ASAP7_6t_R U587 ( .A(B[5]), .B(A[1]), .Y(n427) );
  NAND2xp5R_ASAP7_6t_R U588 ( .A(n428), .B(n427), .Y(n429) );
  INVx1_ASAP7_6t_R U589 ( .A(n429), .Y(n431) );
  NAND2xp5R_ASAP7_6t_R U590 ( .A(n431), .B(n430), .Y(n462) );
  AND2x2_ASAP7_6t_R U591 ( .A(A[3]), .B(B[3]), .Y(n463) );
  NAND2xp5R_ASAP7_6t_R U592 ( .A(n462), .B(n463), .Y(n435) );
  INVx2_ASAP7_6t_R U593 ( .A(n435), .Y(n454) );
  INVx1_ASAP7_6t_R U594 ( .A(n453), .Y(n439) );
  AND2x2_ASAP7_6t_R U595 ( .A(A[5]), .B(B[3]), .Y(n448) );
  NOR2xp5_ASAP7_6t_R U596 ( .A(n456), .B(n435), .Y(n437) );
  NOR2xp5_ASAP7_6t_R U597 ( .A(n448), .B(n437), .Y(n436) );
  OAI21xp5_ASAP7_6t_R U598 ( .A1(A[4]), .A2(n454), .B(n448), .Y(n438) );
  AOI21xp5_ASAP7_6t_R U599 ( .A1(n439), .A2(n450), .B(n438), .Y(n440) );
  NAND2xp5R_ASAP7_6t_R U600 ( .A(A[6]), .B(B[3]), .Y(n442) );
  MAJIxp5_ASAP7_6t_R U601 ( .A(n363), .B(n442), .C(n444), .Y(n497) );
  INVx1_ASAP7_6t_R U602 ( .A(n446), .Y(n447) );
  NAND2xp5_ASAP7_6t_R U603 ( .A(n622), .B(n448), .Y(n449) );
  XNOR2xp5f_ASAP7_6t_R U604 ( .A(n455), .B(n454), .Y(n461) );
  INVx1_ASAP7_6t_R U605 ( .A(n462), .Y(n465) );
  NAND2xp5R_ASAP7_6t_R U606 ( .A(n465), .B(n464), .Y(n470) );
  NAND2x1_ASAP7_6t_R U607 ( .A(n470), .B(n471), .Y(n469) );
  OA21x2_ASAP7_6t_R U608 ( .A1(n471), .A2(n470), .B(n469), .Y(n475) );
  NAND2xp5R_ASAP7_6t_R U609 ( .A(A[4]), .B(B[1]), .Y(n481) );
  AOI22xp5_ASAP7_6t_R U610 ( .A1(A[2]), .A2(B[3]), .B1(A[3]), .B2(B[2]), .Y(
        n482) );
  NOR2x1_ASAP7_6t_R U611 ( .A(n481), .B(n482), .Y(n480) );
  AND2x2_ASAP7_6t_R U612 ( .A(A[5]), .B(B[1]), .Y(n476) );
  MAJIxp5_ASAP7_6t_R U613 ( .A(n475), .B(n480), .C(n476), .Y(n472) );
  INVx1_ASAP7_6t_R U614 ( .A(n362), .Y(n487) );
  INVx1_ASAP7_6t_R U615 ( .A(n472), .Y(n474) );
  NAND2xp5R_ASAP7_6t_R U616 ( .A(A[6]), .B(B[0]), .Y(n623) );
  MAJIxp5_ASAP7_6t_R U617 ( .A(n626), .B(n623), .C(n624), .Y(n628) );
  MAJIxp5_ASAP7_6t_R U618 ( .A(n488), .B(n487), .C(n486), .Y(n611) );
  XNOR2xp5f_ASAP7_6t_R U619 ( .A(n490), .B(n489), .Y(n491) );
  XOR2x2_ASAP7_6t_R U620 ( .A(n492), .B(n491), .Y(n613) );
  INVx1_ASAP7_6t_R U621 ( .A(n603), .Y(n604) );
  NOR2xp5_ASAP7_6t_R U622 ( .A(n495), .B(n494), .Y(n496) );
  NOR2xp5_ASAP7_6t_R U623 ( .A(n359), .B(n530), .Y(n500) );
  NAND2xp5_ASAP7_6t_R U624 ( .A(n538), .B(n498), .Y(n502) );
  NAND2xp5_ASAP7_6t_R U625 ( .A(n538), .B(n503), .Y(n499) );
  OAI21xp5_ASAP7_6t_R U626 ( .A1(n538), .A2(n500), .B(n499), .Y(n501) );
  NAND2xp5R_ASAP7_6t_R U627 ( .A(n506), .B(n505), .Y(n527) );
  XNOR2xp5f_ASAP7_6t_R U628 ( .A(n570), .B(n572), .Y(n519) );
  INVx1_ASAP7_6t_R U629 ( .A(n509), .Y(n516) );
  XNOR2xp5_ASAP7_6t_R U630 ( .A(n532), .B(n512), .Y(n513) );
  INVx1_ASAP7_6t_R U631 ( .A(n520), .Y(n522) );
  XNOR2xp5_ASAP7_6t_R U632 ( .A(n364), .B(n576), .Y(n524) );
  OAI21xp5_ASAP7_6t_R U633 ( .A1(n528), .A2(n569), .B(n527), .Y(n567) );
  NAND2xp5R_ASAP7_6t_R U634 ( .A(B[5]), .B(A[7]), .Y(n546) );
  INVxp5_ASAP7_6t_R U635 ( .A(n546), .Y(n543) );
  INVx1_ASAP7_6t_R U636 ( .A(n555), .Y(n559) );
  NOR2xp5_ASAP7_6t_R U637 ( .A(n594), .B(n559), .Y(n529) );
  AOI31xp33_ASAP7_6t_R U638 ( .A1(n559), .A2(n530), .A3(n594), .B(n529), .Y(
        n534) );
  INVx1_ASAP7_6t_R U639 ( .A(n359), .Y(n531) );
  INVx1_ASAP7_6t_R U640 ( .A(n530), .Y(n533) );
  MAJIxp5_ASAP7_6t_R U641 ( .A(n532), .B(n531), .C(n533), .Y(n553) );
  OAI22xp5_ASAP7_6t_R U642 ( .A1(n552), .A2(n594), .B1(n534), .B2(n538), .Y(
        n535) );
  AOI21xp5_ASAP7_6t_R U643 ( .A1(n536), .A2(n553), .B(n535), .Y(n542) );
  XNOR2xp5_ASAP7_6t_R U644 ( .A(n555), .B(n594), .Y(n537) );
  NAND2xp5_ASAP7_6t_R U645 ( .A(n538), .B(n537), .Y(n539) );
  NAND2xp5R_ASAP7_6t_R U646 ( .A(n542), .B(n541), .Y(n544) );
  INVx1_ASAP7_6t_R U647 ( .A(n544), .Y(n545) );
  INVx1_ASAP7_6t_R U648 ( .A(n594), .Y(n558) );
  NAND2xp5R_ASAP7_6t_R U649 ( .A(n558), .B(n595), .Y(n643) );
  OAI22xp5_ASAP7_6t_R U650 ( .A1(n550), .A2(n549), .B1(n548), .B2(n645), .Y(
        n551) );
  NAND2xp5R_ASAP7_6t_R U651 ( .A(n643), .B(n551), .Y(n563) );
  INVxp5_ASAP7_6t_R U652 ( .A(n563), .Y(n561) );
  NOR2xp5_ASAP7_6t_R U653 ( .A(n555), .B(n594), .Y(n556) );
  O2A1O1Ixp33_ASAP7_6t_R U654 ( .A1(n559), .A2(n558), .B(n557), .C(n556), .Y(
        n562) );
  NOR2xp5_ASAP7_6t_R U655 ( .A(n561), .B(n560), .Y(n564) );
  NOR2xp5_ASAP7_6t_R U656 ( .A(n564), .B(n642), .Y(n585) );
  INVx1_ASAP7_6t_R U657 ( .A(n585), .Y(n590) );
  XNOR2xp5_ASAP7_6t_R U658 ( .A(n570), .B(n569), .Y(n571) );
  NOR2x2R_ASAP7_6t_R U659 ( .A(n593), .B(n639), .Y(n586) );
  NOR2xp5_ASAP7_6t_R U660 ( .A(n578), .B(n586), .Y(n581) );
  NAND2xp5R_ASAP7_6t_R U661 ( .A(A[3]), .B(B[0]), .Y(n582) );
  INVxp5_ASAP7_6t_R U662 ( .A(n582), .Y(O[3]) );
  OA21x1_ASAP7_6t_R U663 ( .A1(n584), .A2(n583), .B(n624), .Y(O[5]) );
  NOR2xp5_ASAP7_6t_R U664 ( .A(n585), .B(n588), .Y(n587) );
  NOR2x1_ASAP7_6t_R U665 ( .A(n587), .B(n586), .Y(n599) );
  NOR2xp5_ASAP7_6t_R U666 ( .A(n590), .B(n589), .Y(n591) );
  INVx1_ASAP7_6t_R U667 ( .A(n595), .Y(n596) );
  NAND3xp33_ASAP7_6t_R U668 ( .A(n601), .B(n602), .C(n647), .Y(n607) );
  XNOR2xp5_ASAP7_6t_R U669 ( .A(n612), .B(n611), .Y(n614) );
  INVxp5_ASAP7_6t_R U670 ( .A(n615), .Y(n616) );
  NAND2xp5R_ASAP7_6t_R U671 ( .A(n300), .B(n616), .Y(n617) );
  NOR2xp5_ASAP7_6t_R U672 ( .A(n618), .B(n617), .Y(O[0]) );
  INVx1_ASAP7_6t_R U673 ( .A(B[0]), .Y(n621) );
  INVx1_ASAP7_6t_R U674 ( .A(B[1]), .Y(n619) );
  OAI22xp5_ASAP7_6t_R U675 ( .A1(n622), .A2(n621), .B1(n620), .B2(n619), .Y(
        O[4]) );
  XOR2xp5_ASAP7_6t_R U676 ( .A(n624), .B(n623), .Y(n625) );
  XNOR2xp5_ASAP7_6t_R U677 ( .A(n630), .B(n629), .Y(O[7]) );
  XNOR2xp5_ASAP7_6t_R U678 ( .A(n356), .B(n638), .Y(n640) );
  INVxp5_ASAP7_6t_R U679 ( .A(n642), .Y(n644) );
endmodule

