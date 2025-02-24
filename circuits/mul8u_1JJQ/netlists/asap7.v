/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:51:28 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787;

  OAI21xp5_ASAP7_6t_R U338 ( .A1(n742), .A2(n741), .B(n740), .Y(n743) );
  OA21x1_ASAP7_6t_R U339 ( .A1(n723), .A2(n724), .B(n722), .Y(n376) );
  INVx1_ASAP7_6t_R U340 ( .A(A[0]), .Y(n769) );
  AOI21xp5_ASAP7_6t_R U341 ( .A1(n775), .A2(n774), .B(n772), .Y(n733) );
  BUFx3_ASAP7_6t_R U342 ( .A(n750), .Y(n327) );
  HB1x1_ASAP7_6t_R U343 ( .A(n592), .Y(n641) );
  AND2x2_ASAP7_6t_R U344 ( .A(A[2]), .B(B[7]), .Y(n619) );
  NAND2xp5_ASAP7_6t_R U345 ( .A(A[5]), .B(B[6]), .Y(n539) );
  INVx1_ASAP7_6t_R U346 ( .A(n747), .Y(n333) );
  INVx1_ASAP7_6t_R U347 ( .A(B[7]), .Y(n564) );
  INVx1_ASAP7_6t_R U348 ( .A(B[6]), .Y(n676) );
  AND2x2_ASAP7_6t_R U349 ( .A(A[6]), .B(B[4]), .Y(n514) );
  NAND2xp5R_ASAP7_6t_R U350 ( .A(A[5]), .B(B[4]), .Y(n553) );
  NAND2xp5R_ASAP7_6t_R U351 ( .A(B[2]), .B(A[2]), .Y(n626) );
  INVx1_ASAP7_6t_R U352 ( .A(n593), .Y(n542) );
  NAND2xp5R_ASAP7_6t_R U353 ( .A(A[4]), .B(B[3]), .Y(n572) );
  INVx2_ASAP7_6t_R U354 ( .A(B[0]), .Y(n543) );
  INVx4_ASAP7_6t_R U355 ( .A(B[2]), .Y(n759) );
  INVx8_ASAP7_6t_R U356 ( .A(A[5]), .Y(n603) );
  NAND2xp5R_ASAP7_6t_R U357 ( .A(n496), .B(n497), .Y(O[14]) );
  AND2x4_ASAP7_6t_R U358 ( .A(A[3]), .B(B[1]), .Y(n348) );
  OAI211xp67b_ASAP7_6t_R U359 ( .A1(n599), .A2(B[2]), .B(n348), .C(n649), .Y(
        n600) );
  OAI21xp5b_ASAP7_6t_R U360 ( .A1(n330), .A2(n329), .B(n328), .Y(n337) );
  AOI31xp33_ASAP7_6t_R U361 ( .A1(n673), .A2(n333), .A3(n770), .B(n676), .Y(
        n328) );
  NAND2xp5R_ASAP7_6t_R U362 ( .A(n675), .B(n457), .Y(n329) );
  INVxp5_ASAP7_6t_R U363 ( .A(n673), .Y(n330) );
  AOI31xp67_ASAP7_6t_R U364 ( .A1(n424), .A2(n349), .A3(n386), .B(n512), .Y(
        n577) );
  AOI21x1_ASAP7_6t_R U365 ( .A1(n549), .A2(n388), .B(n550), .Y(n512) );
  O2A1O1Ixp33_ASAP7_6t_R U366 ( .A1(n333), .A2(n462), .B(n327), .C(n337), .Y(
        n772) );
  NAND2xp5R_ASAP7_6t_R U367 ( .A(n334), .B(n570), .Y(n335) );
  OAI21xp5_ASAP7_6t_R U368 ( .A1(n660), .A2(n765), .B(n763), .Y(n665) );
  XNOR2xp5f_ASAP7_6t_R U369 ( .A(n658), .B(n659), .Y(n765) );
  NAND2x2_ASAP7_6t_R U370 ( .A(n624), .B(n569), .Y(n379) );
  INVx3_ASAP7_6t_R U371 ( .A(B[1]), .Y(n544) );
  NAND2xp5R_ASAP7_6t_R U372 ( .A(n600), .B(n427), .Y(n630) );
  XNOR2x2_ASAP7_6t_R U373 ( .A(n643), .B(n641), .Y(n475) );
  XNOR2x2_ASAP7_6t_R U374 ( .A(n634), .B(n633), .Y(n492) );
  OAI21xp5_ASAP7_6t_R U375 ( .A1(n646), .A2(n645), .B(n421), .Y(n407) );
  XNOR2xp5_ASAP7_6t_R U376 ( .A(n554), .B(n332), .Y(n359) );
  INVxp5_ASAP7_6t_R U377 ( .A(n566), .Y(n562) );
  INVxp5_ASAP7_6t_R U378 ( .A(n697), .Y(n708) );
  INVxp5_ASAP7_6t_R U379 ( .A(n398), .Y(n397) );
  XOR2xp5_ASAP7_6t_R U380 ( .A(n756), .B(n755), .Y(n761) );
  XNOR2xp5_ASAP7_6t_R U381 ( .A(n776), .B(n775), .Y(O[6]) );
  INVx2_ASAP7_6t_R U382 ( .A(n422), .Y(n401) );
  INVx1_ASAP7_6t_R U383 ( .A(n394), .Y(n395) );
  INVxp5_ASAP7_6t_R U384 ( .A(n477), .Y(n471) );
  INVx1_ASAP7_6t_R U385 ( .A(n756), .Y(n757) );
  INVx1_ASAP7_6t_R U386 ( .A(n485), .Y(n484) );
  INVx1_ASAP7_6t_R U387 ( .A(n505), .Y(n486) );
  INVxp5_ASAP7_6t_R U388 ( .A(n481), .Y(n480) );
  INVxp5_ASAP7_6t_R U389 ( .A(n739), .Y(n740) );
  INVx1_ASAP7_6t_R U390 ( .A(n554), .Y(n331) );
  INVx1_ASAP7_6t_R U391 ( .A(n638), .Y(n575) );
  NAND2xp5R_ASAP7_6t_R U392 ( .A(B[2]), .B(A[0]), .Y(n662) );
  NAND2xp5R_ASAP7_6t_R U393 ( .A(A[3]), .B(B[7]), .Y(n620) );
  XNOR2xp5f_ASAP7_6t_R U394 ( .A(n390), .B(n736), .Y(O[7]) );
  OAI21xp5_ASAP7_6t_R U395 ( .A1(n723), .A2(n724), .B(n722), .Y(n711) );
  XOR2xp5r_ASAP7_6t_R U396 ( .A(n342), .B(n735), .Y(n736) );
  INVxp5_ASAP7_6t_R U397 ( .A(n381), .Y(n382) );
  INVx1_ASAP7_6t_R U398 ( .A(n389), .Y(n390) );
  XNOR2xp5f_ASAP7_6t_R U399 ( .A(n730), .B(n729), .Y(n731) );
  XNOR2xp5_ASAP7_6t_R U400 ( .A(n748), .B(n747), .Y(n749) );
  OA21x1_ASAP7_6t_R U401 ( .A1(n464), .A2(n404), .B(n403), .Y(n374) );
  XNOR2xp5f_ASAP7_6t_R U402 ( .A(n536), .B(n535), .Y(n729) );
  INVx1_ASAP7_6t_R U403 ( .A(n737), .Y(n742) );
  XNOR2xp5f_ASAP7_6t_R U404 ( .A(n704), .B(n510), .Y(n697) );
  XNOR2xp5f_ASAP7_6t_R U405 ( .A(n534), .B(n533), .Y(n535) );
  XOR2xp5_ASAP7_6t_R U406 ( .A(n764), .B(n763), .Y(n766) );
  NAND2xp5_ASAP7_6t_R U407 ( .A(n580), .B(n615), .Y(n443) );
  XNOR2xp5f_ASAP7_6t_R U408 ( .A(n540), .B(n539), .Y(n541) );
  XNOR2xp5f_ASAP7_6t_R U409 ( .A(n530), .B(n529), .Y(n534) );
  OAI21xp5_ASAP7_6t_R U410 ( .A1(n514), .A2(n433), .B(n372), .Y(n560) );
  INVxp5_ASAP7_6t_R U411 ( .A(n762), .Y(n764) );
  INVxp5_ASAP7_6t_R U412 ( .A(n479), .Y(n476) );
  XNOR2xp5f_ASAP7_6t_R U413 ( .A(n519), .B(n518), .Y(n540) );
  XNOR2xp5_ASAP7_6t_R U414 ( .A(n758), .B(n757), .Y(n760) );
  OA21x1_ASAP7_6t_R U415 ( .A1(n506), .A2(n433), .B(n486), .Y(n519) );
  INVxp5_ASAP7_6t_R U416 ( .A(n379), .Y(n366) );
  INVxp5_ASAP7_6t_R U417 ( .A(n501), .Y(n432) );
  NAND2xp5R_ASAP7_6t_R U418 ( .A(B[2]), .B(n755), .Y(n661) );
  AND2x2_ASAP7_6t_R U419 ( .A(n514), .B(n515), .Y(n506) );
  INVx1_ASAP7_6t_R U420 ( .A(n755), .Y(n663) );
  NAND2xp5_ASAP7_6t_R U421 ( .A(n517), .B(n516), .Y(n509) );
  INVx1_ASAP7_6t_R U422 ( .A(n514), .Y(n507) );
  XNOR2xp5f_ASAP7_6t_R U423 ( .A(n517), .B(n516), .Y(n518) );
  INVx1_ASAP7_6t_R U424 ( .A(n533), .Y(n531) );
  INVx1_ASAP7_6t_R U425 ( .A(n576), .Y(n411) );
  INVx1_ASAP7_6t_R U426 ( .A(n616), .Y(n581) );
  INVx1_ASAP7_6t_R U427 ( .A(n700), .Y(n703) );
  INVx1_ASAP7_6t_R U428 ( .A(n677), .Y(n613) );
  INVx1_ASAP7_6t_R U429 ( .A(n687), .Y(n692) );
  INVx1_ASAP7_6t_R U430 ( .A(n701), .Y(n702) );
  NAND2x2_ASAP7_6t_R U431 ( .A(B[7]), .B(A[0]), .Y(n735) );
  OAI21xp5_ASAP7_6t_R U432 ( .A1(B[2]), .A2(B[0]), .B(A[6]), .Y(n361) );
  NAND2xp5R_ASAP7_6t_R U433 ( .A(A[7]), .B(B[3]), .Y(n558) );
  NAND2xp5R_ASAP7_6t_R U434 ( .A(A[7]), .B(B[7]), .Y(n739) );
  INVx2_ASAP7_6t_R U435 ( .A(n553), .Y(n332) );
  NAND2xp5R_ASAP7_6t_R U436 ( .A(A[7]), .B(B[4]), .Y(n516) );
  NAND2xp5R_ASAP7_6t_R U437 ( .A(A[6]), .B(B[5]), .Y(n517) );
  NAND2xp5R_ASAP7_6t_R U438 ( .A(B[3]), .B(A[1]), .Y(n668) );
  NAND2x2_ASAP7_6t_R U439 ( .A(B[5]), .B(A[1]), .Y(n646) );
  NAND2xp5R_ASAP7_6t_R U440 ( .A(A[6]), .B(B[6]), .Y(n527) );
  NAND2xp5R_ASAP7_6t_R U441 ( .A(A[5]), .B(B[5]), .Y(n557) );
  NAND2xp5R_ASAP7_6t_R U442 ( .A(B[4]), .B(A[1]), .Y(n670) );
  NAND2xp5R_ASAP7_6t_R U443 ( .A(A[3]), .B(B[6]), .Y(n616) );
  NAND2xp5R_ASAP7_6t_R U444 ( .A(A[7]), .B(B[6]), .Y(n701) );
  NAND2xp5R_ASAP7_6t_R U445 ( .A(A[6]), .B(B[7]), .Y(n700) );
  AND2x2_ASAP7_6t_R U446 ( .A(B[3]), .B(A[2]), .Y(n628) );
  NAND2xp5R_ASAP7_6t_R U447 ( .A(A[4]), .B(B[4]), .Y(n576) );
  NAND2x1_ASAP7_6t_R U448 ( .A(A[3]), .B(B[4]), .Y(n638) );
  NAND2xp5R_ASAP7_6t_R U449 ( .A(B[5]), .B(A[2]), .Y(n637) );
  NAND2xp5R_ASAP7_6t_R U450 ( .A(B[6]), .B(A[2]), .Y(n677) );
  NAND2x1_ASAP7_6t_R U451 ( .A(B[1]), .B(A[5]), .Y(n384) );
  NAND2xp5R_ASAP7_6t_R U452 ( .A(A[4]), .B(B[5]), .Y(n615) );
  NAND2xp5R_ASAP7_6t_R U453 ( .A(B[4]), .B(A[2]), .Y(n633) );
  OA21x1_ASAP7_6t_R U454 ( .A1(n645), .A2(n646), .B(n350), .Y(n403) );
  NAND2xp5R_ASAP7_6t_R U455 ( .A(n406), .B(n407), .Y(n682) );
  NAND2x2_ASAP7_6t_R U456 ( .A(B[0]), .B(A[7]), .Y(n549) );
  NAND2xp5R_ASAP7_6t_R U457 ( .A(n335), .B(n594), .Y(n367) );
  OAI21xp5b_ASAP7_6t_R U458 ( .A1(n544), .A2(n599), .B(n602), .Y(n334) );
  NAND2x1p5_ASAP7_6t_R U459 ( .A(n591), .B(n590), .Y(n452) );
  AND2x4_ASAP7_6t_R U460 ( .A(n379), .B(n335), .Y(n596) );
  NAND2xp5R_ASAP7_6t_R U461 ( .A(n768), .B(B[4]), .Y(n673) );
  NAND2x1_ASAP7_6t_R U462 ( .A(n664), .B(n665), .Y(n768) );
  INVx1_ASAP7_6t_R U463 ( .A(n750), .Y(n461) );
  XNOR2xp5_ASAP7_6t_R U464 ( .A(n336), .B(n672), .Y(n750) );
  XNOR2xp5f_ASAP7_6t_R U465 ( .A(n671), .B(n670), .Y(n336) );
  OAI21xp5_ASAP7_6t_R U466 ( .A1(n666), .A2(n416), .B(n414), .Y(n671) );
  AO21x1_ASAP7_6t_R U467 ( .A1(n770), .A2(n673), .B(n767), .Y(n462) );
  NOR2xp5_ASAP7_6t_R U468 ( .A(B[4]), .B(n768), .Y(n767) );
  XNOR2xp5_ASAP7_6t_R U469 ( .A(n338), .B(n669), .Y(n770) );
  XNOR2xp5f_ASAP7_6t_R U470 ( .A(n385), .B(n668), .Y(n338) );
  NOR2x2R_ASAP7_6t_R U471 ( .A(n626), .B(n339), .Y(n625) );
  XNOR2xp5f_ASAP7_6t_R U472 ( .A(n597), .B(n598), .Y(n339) );
  NAND2x2_ASAP7_6t_R U473 ( .A(A[3]), .B(B[1]), .Y(n598) );
  NAND2x2_ASAP7_6t_R U474 ( .A(A[4]), .B(B[0]), .Y(n597) );
  MAJIxp5_ASAP7_6t_R U475 ( .A(n612), .B(n611), .C(n637), .Y(n340) );
  XNOR2xp5_ASAP7_6t_R U476 ( .A(n469), .B(n641), .Y(n612) );
  INVxp5_ASAP7_6t_R U477 ( .A(n734), .Y(n341) );
  INVx1_ASAP7_6t_R U478 ( .A(n341), .Y(n342) );
  NAND2xp5R_ASAP7_6t_R U479 ( .A(n600), .B(n427), .Y(n345) );
  XOR2xp5r_ASAP7_6t_R U480 ( .A(n378), .B(n575), .Y(n469) );
  HB1x1_ASAP7_6t_R U481 ( .A(n550), .Y(n343) );
  HB1x1_ASAP7_6t_R U482 ( .A(n445), .Y(n344) );
  INVxp5_ASAP7_6t_R U483 ( .A(n751), .Y(n346) );
  INVx1_ASAP7_6t_R U484 ( .A(n346), .Y(n347) );
  NAND2xp5R_ASAP7_6t_R U485 ( .A(n648), .B(n647), .Y(n464) );
  INVxp5_ASAP7_6t_R U486 ( .A(n772), .Y(n773) );
  NAND2x2_ASAP7_6t_R U487 ( .A(B[2]), .B(A[5]), .Y(n550) );
  INVx2_ASAP7_6t_R U488 ( .A(n625), .Y(n427) );
  INVx2_ASAP7_6t_R U489 ( .A(n420), .Y(n672) );
  OAI21xp5_ASAP7_6t_R U490 ( .A1(n557), .A2(n538), .B(n537), .Y(n355) );
  INVxp5_ASAP7_6t_R U491 ( .A(n538), .Y(n525) );
  NAND2xp5_ASAP7_6t_R U492 ( .A(n621), .B(n584), .Y(n585) );
  OAI21xp5_ASAP7_6t_R U493 ( .A1(n549), .A2(n429), .B(n428), .Y(n413) );
  INVxp5_ASAP7_6t_R U494 ( .A(n709), .Y(n698) );
  NAND2xp5R_ASAP7_6t_R U495 ( .A(B[0]), .B(B[1]), .Y(n375) );
  NAND2xp5_ASAP7_6t_R U496 ( .A(n455), .B(n411), .Y(n477) );
  INVxp5_ASAP7_6t_R U497 ( .A(n712), .Y(n713) );
  INVxp5_ASAP7_6t_R U498 ( .A(n714), .Y(n717) );
  INVxp5_ASAP7_6t_R U499 ( .A(n706), .Y(n499) );
  AND2x2_ASAP7_6t_R U500 ( .A(B[1]), .B(A[5]), .Y(n349) );
  OR2x2_ASAP7_6t_R U501 ( .A(n676), .B(n636), .Y(n350) );
  INVxp5_ASAP7_6t_R U502 ( .A(n670), .Y(n631) );
  INVx1_ASAP7_6t_R U503 ( .A(n678), .Y(n466) );
  AND2x4_ASAP7_6t_R U504 ( .A(B[5]), .B(A[0]), .Y(n747) );
  NAND2xp5_ASAP7_6t_R U505 ( .A(n351), .B(n447), .Y(n362) );
  XNOR2xp5f_ASAP7_6t_R U506 ( .A(n351), .B(n551), .Y(n412) );
  XNOR2xp5f_ASAP7_6t_R U507 ( .A(n351), .B(n552), .Y(n370) );
  NAND2x2_ASAP7_6t_R U508 ( .A(B[2]), .B(A[6]), .Y(n351) );
  XNOR2xp5_ASAP7_6t_R U509 ( .A(n352), .B(n577), .Y(n479) );
  XNOR2xp5f_ASAP7_6t_R U510 ( .A(n409), .B(n352), .Y(n408) );
  XNOR2xp5f_ASAP7_6t_R U511 ( .A(n412), .B(n552), .Y(n352) );
  NAND2xp5R_ASAP7_6t_R U512 ( .A(n716), .B(n353), .Y(n719) );
  INVx1_ASAP7_6t_R U513 ( .A(n715), .Y(n353) );
  NAND2xp5R_ASAP7_6t_R U514 ( .A(n713), .B(n354), .Y(n715) );
  INVx1_ASAP7_6t_R U515 ( .A(n727), .Y(n354) );
  XNOR2xp5f_ASAP7_6t_R U516 ( .A(n356), .B(n589), .Y(n695) );
  XNOR2xp5f_ASAP7_6t_R U517 ( .A(n355), .B(n541), .Y(n589) );
  NAND2xp5R_ASAP7_6t_R U518 ( .A(n520), .B(n521), .Y(n537) );
  NAND2xp5R_ASAP7_6t_R U519 ( .A(n588), .B(n587), .Y(n356) );
  NAND3xp33R_ASAP7_6t_R U520 ( .A(n357), .B(n358), .C(n480), .Y(n587) );
  AO21x1_ASAP7_6t_R U521 ( .A1(n358), .A2(n357), .B(n564), .Y(n588) );
  NAND2xp5R_ASAP7_6t_R U522 ( .A(n562), .B(n563), .Y(n357) );
  OAI21xp5b_ASAP7_6t_R U523 ( .A1(n562), .A2(n563), .B(n568), .Y(n358) );
  NAND2xp5R_ASAP7_6t_R U524 ( .A(n671), .B(n417), .Y(n648) );
  NAND2xp5R_ASAP7_6t_R U525 ( .A(n648), .B(n647), .Y(n421) );
  INVx1_ASAP7_6t_R U526 ( .A(A[6]), .Y(n545) );
  XNOR2xp5f_ASAP7_6t_R U527 ( .A(n555), .B(n359), .Y(n490) );
  NAND2xp5R_ASAP7_6t_R U528 ( .A(A[7]), .B(B[2]), .Y(n554) );
  NAND2xp5R_ASAP7_6t_R U529 ( .A(n487), .B(n511), .Y(n555) );
  OAI21xp5b_ASAP7_6t_R U530 ( .A1(n364), .A2(n361), .B(n360), .Y(n511) );
  NAND2xp5R_ASAP7_6t_R U531 ( .A(A[6]), .B(B[3]), .Y(n360) );
  NAND2xp5R_ASAP7_6t_R U532 ( .A(n363), .B(n362), .Y(n487) );
  NOR2xp5_ASAP7_6t_R U533 ( .A(n365), .B(n364), .Y(n363) );
  NAND2xp5R_ASAP7_6t_R U534 ( .A(B[1]), .B(A[7]), .Y(n364) );
  INVx1_ASAP7_6t_R U535 ( .A(B[3]), .Y(n365) );
  OAI22xp5_ASAP7_6t_R U536 ( .A1(n594), .A2(n596), .B1(n467), .B2(n503), .Y(
        n378) );
  NOR2xp5_ASAP7_6t_R U537 ( .A(n367), .B(n366), .Y(n503) );
  XNOR2xp5_ASAP7_6t_R U538 ( .A(n632), .B(n593), .Y(n467) );
  OAI31x1f_ASAP7_6t_R U539 ( .A1(n494), .A2(n543), .A3(n384), .B(n456), .Y(
        n632) );
  XNOR2xp5f_ASAP7_6t_R U540 ( .A(n371), .B(n561), .Y(n567) );
  MAJIxp5_ASAP7_6t_R U541 ( .A(n556), .B(n332), .C(n368), .Y(n561) );
  XNOR2xp5f_ASAP7_6t_R U542 ( .A(n555), .B(n331), .Y(n368) );
  MAJIxp5_ASAP7_6t_R U543 ( .A(n370), .B(n551), .C(n369), .Y(n556) );
  AOI31xp33_ASAP7_6t_R U544 ( .A1(n349), .A2(n424), .A3(n386), .B(n512), .Y(
        n369) );
  XNOR2xp5f_ASAP7_6t_R U545 ( .A(n560), .B(n559), .Y(n371) );
  NAND2xp5R_ASAP7_6t_R U546 ( .A(n433), .B(B[4]), .Y(n372) );
  NAND2xp5R_ASAP7_6t_R U547 ( .A(n419), .B(n487), .Y(n433) );
  NAND2xp5R_ASAP7_6t_R U548 ( .A(n542), .B(n456), .Y(n373) );
  XNOR2xp5_ASAP7_6t_R U549 ( .A(n378), .B(n639), .Y(n642) );
  HB1x1_ASAP7_6t_R U550 ( .A(n695), .Y(n724) );
  NOR2x1_ASAP7_6t_R U551 ( .A(A[5]), .B(n548), .Y(n546) );
  XNOR2xp5_ASAP7_6t_R U552 ( .A(n598), .B(n597), .Y(n377) );
  XNOR2xp5f_ASAP7_6t_R U553 ( .A(n475), .B(n642), .Y(n380) );
  INVxp5_ASAP7_6t_R U554 ( .A(n777), .Y(n381) );
  NAND2xp5R_ASAP7_6t_R U555 ( .A(n785), .B(n784), .Y(n722) );
  OAI21xp5_ASAP7_6t_R U556 ( .A1(n464), .A2(n404), .B(n403), .Y(n400) );
  OAI21xp5_ASAP7_6t_R U557 ( .A1(n544), .A2(n599), .B(n602), .Y(n383) );
  XNOR2xp5_ASAP7_6t_R U558 ( .A(n340), .B(n689), .Y(n691) );
  INVxp5_ASAP7_6t_R U559 ( .A(n567), .Y(n563) );
  NAND2x1_ASAP7_6t_R U560 ( .A(A[6]), .B(B[0]), .Y(n447) );
  XNOR2xp5_ASAP7_6t_R U561 ( .A(n452), .B(n466), .Y(n614) );
  OAI21xp25_ASAP7_6t_R U562 ( .A1(n658), .A2(n655), .B(n657), .Y(n385) );
  INVxp5_ASAP7_6t_R U563 ( .A(n656), .Y(n655) );
  NAND2xp5R_ASAP7_6t_R U564 ( .A(A[7]), .B(B[1]), .Y(n386) );
  NAND2x2_ASAP7_6t_R U565 ( .A(A[7]), .B(B[1]), .Y(n387) );
  NAND2x2_ASAP7_6t_R U566 ( .A(A[6]), .B(B[1]), .Y(n388) );
  NAND2x1_ASAP7_6t_R U567 ( .A(n729), .B(n730), .Y(n714) );
  NAND2xp5R_ASAP7_6t_R U568 ( .A(n436), .B(n434), .Y(n685) );
  INVxp5_ASAP7_6t_R U569 ( .A(n733), .Y(n389) );
  NAND2xp5_ASAP7_6t_R U570 ( .A(n781), .B(n783), .Y(n787) );
  NAND2x2_ASAP7_6t_R U571 ( .A(A[6]), .B(B[0]), .Y(n391) );
  NAND2xp5R_ASAP7_6t_R U572 ( .A(A[5]), .B(B[0]), .Y(n392) );
  NAND2xp5R_ASAP7_6t_R U573 ( .A(A[5]), .B(B[0]), .Y(n393) );
  INVx2_ASAP7_6t_R U574 ( .A(n623), .Y(n658) );
  INVx6_ASAP7_6t_R U575 ( .A(A[4]), .Y(n599) );
  XOR2x2_ASAP7_6t_R U576 ( .A(n635), .B(n453), .Y(n645) );
  NAND2xp5R_ASAP7_6t_R U577 ( .A(n765), .B(n762), .Y(n664) );
  INVxp5_ASAP7_6t_R U578 ( .A(n778), .Y(n394) );
  OAI22xp5_ASAP7_6t_R U579 ( .A1(n440), .A2(n397), .B1(n396), .B2(n684), .Y(
        n785) );
  NOR2xp5_ASAP7_6t_R U580 ( .A(n619), .B(n398), .Y(n396) );
  MAJIxp5_ASAP7_6t_R U581 ( .A(n614), .B(n613), .C(n340), .Y(n684) );
  XNOR2xp5f_ASAP7_6t_R U582 ( .A(n583), .B(n399), .Y(n398) );
  INVx1_ASAP7_6t_R U583 ( .A(n439), .Y(n399) );
  NAND2xp5R_ASAP7_6t_R U584 ( .A(n400), .B(n682), .Y(n644) );
  XNOR2xp5f_ASAP7_6t_R U585 ( .A(n401), .B(n596), .Y(n493) );
  XNOR2xp5f_ASAP7_6t_R U586 ( .A(n423), .B(n402), .Y(n610) );
  INVxp5_ASAP7_6t_R U587 ( .A(n422), .Y(n402) );
  INVx1_ASAP7_6t_R U588 ( .A(n405), .Y(n404) );
  NAND2xp5R_ASAP7_6t_R U589 ( .A(n646), .B(n645), .Y(n405) );
  AOI21xp25_ASAP7_6t_R U590 ( .A1(n645), .A2(n646), .B(n676), .Y(n406) );
  XNOR2xp5_ASAP7_6t_R U591 ( .A(n493), .B(n492), .Y(n453) );
  XNOR2xp5f_ASAP7_6t_R U592 ( .A(n455), .B(n408), .Y(n491) );
  XNOR2xp5f_ASAP7_6t_R U593 ( .A(n577), .B(n411), .Y(n409) );
  OAI22xp5_ASAP7_6t_R U594 ( .A1(n441), .A2(n474), .B1(n572), .B2(n484), .Y(
        n455) );
  XNOR2xp5f_ASAP7_6t_R U595 ( .A(n413), .B(n343), .Y(n441) );
  INVx1_ASAP7_6t_R U596 ( .A(n410), .Y(n474) );
  NAND2xp5R_ASAP7_6t_R U597 ( .A(n373), .B(n573), .Y(n485) );
  NAND3xp33R_ASAP7_6t_R U598 ( .A(n473), .B(n573), .C(n572), .Y(n410) );
  NAND2x1_ASAP7_6t_R U599 ( .A(n513), .B(n391), .Y(n552) );
  NAND2xp5R_ASAP7_6t_R U600 ( .A(n668), .B(n667), .Y(n414) );
  XNOR2xp5_ASAP7_6t_R U601 ( .A(n415), .B(n627), .Y(n666) );
  AOI21xp5_ASAP7_6t_R U602 ( .A1(n626), .A2(n377), .B(n625), .Y(n415) );
  NOR2xp5_ASAP7_6t_R U603 ( .A(n668), .B(n667), .Y(n416) );
  OAI21xp5b_ASAP7_6t_R U604 ( .A1(n658), .A2(n655), .B(n657), .Y(n667) );
  NAND2xp5R_ASAP7_6t_R U605 ( .A(n420), .B(n631), .Y(n417) );
  XNOR2xp5f_ASAP7_6t_R U606 ( .A(n418), .B(n345), .Y(n420) );
  XNOR2xp5f_ASAP7_6t_R U607 ( .A(n629), .B(n628), .Y(n418) );
  NAND2xp5R_ASAP7_6t_R U608 ( .A(n590), .B(n465), .Y(n583) );
  INVx1_ASAP7_6t_R U609 ( .A(n583), .Y(n437) );
  NAND2xp5R_ASAP7_6t_R U610 ( .A(n331), .B(n511), .Y(n419) );
  INVx1_ASAP7_6t_R U611 ( .A(n447), .Y(n424) );
  NAND2x2_ASAP7_6t_R U612 ( .A(B[3]), .B(A[5]), .Y(n551) );
  NAND2x2_ASAP7_6t_R U613 ( .A(n624), .B(n472), .Y(n654) );
  NAND2xp5R_ASAP7_6t_R U614 ( .A(n542), .B(n456), .Y(n473) );
  NAND2x2_ASAP7_6t_R U615 ( .A(n571), .B(n391), .Y(n456) );
  OAI211xp67b_ASAP7_6t_R U616 ( .A1(n590), .A2(n451), .B(n448), .C(n450), .Y(
        n680) );
  INVx1_ASAP7_6t_R U617 ( .A(n632), .Y(n422) );
  NAND2xp5R_ASAP7_6t_R U618 ( .A(n670), .B(n672), .Y(n647) );
  OR2x4_ASAP7_6t_R U619 ( .A(n578), .B(n491), .Y(n590) );
  OAI22xp5_ASAP7_6t_R U620 ( .A1(n575), .A2(n378), .B1(n446), .B2(n592), .Y(
        n578) );
  NOR2x1_ASAP7_6t_R U621 ( .A(n431), .B(n474), .Y(n430) );
  XNOR2xp5f_ASAP7_6t_R U622 ( .A(n596), .B(n595), .Y(n423) );
  INVx1_ASAP7_6t_R U623 ( .A(n591), .Y(n449) );
  OAI21xp5_ASAP7_6t_R U624 ( .A1(n747), .A2(n746), .B(n461), .Y(n460) );
  XNOR2xp5f_ASAP7_6t_R U625 ( .A(n579), .B(n426), .Y(n582) );
  NAND2xp5R_ASAP7_6t_R U626 ( .A(n478), .B(n425), .Y(n579) );
  NAND2xp5R_ASAP7_6t_R U627 ( .A(n477), .B(n479), .Y(n425) );
  NAND2xp5R_ASAP7_6t_R U628 ( .A(n454), .B(n576), .Y(n478) );
  XNOR2xp5f_ASAP7_6t_R U629 ( .A(n618), .B(n615), .Y(n426) );
  AOI211xp5_ASAP7_6t_R U630 ( .A1(n609), .A2(n608), .B(n470), .C(n607), .Y(
        n629) );
  XNOR2xp5f_ASAP7_6t_R U631 ( .A(n430), .B(n441), .Y(n592) );
  OAI21xp5b_ASAP7_6t_R U632 ( .A1(n388), .A2(n547), .B(n549), .Y(n428) );
  INVx1_ASAP7_6t_R U633 ( .A(n546), .Y(n429) );
  OAI22xp5_ASAP7_6t_R U634 ( .A1(n574), .A2(n432), .B1(n573), .B2(n572), .Y(
        n431) );
  XOR2x2_ASAP7_6t_R U635 ( .A(n489), .B(n488), .Y(n439) );
  A2O1A1Ixp33_ASAP7_6t_R U636 ( .A1(n439), .A2(n440), .B(n435), .C(n583), .Y(
        n434) );
  NOR2xp5_ASAP7_6t_R U637 ( .A(n440), .B(n439), .Y(n435) );
  A2O1A1Ixp33_ASAP7_6t_R U638 ( .A1(n439), .A2(n619), .B(n438), .C(n437), .Y(
        n436) );
  NOR2xp5_ASAP7_6t_R U639 ( .A(n619), .B(n439), .Y(n438) );
  INVx1_ASAP7_6t_R U640 ( .A(n619), .Y(n440) );
  OAI22xp5_ASAP7_6t_R U641 ( .A1(n580), .A2(n615), .B1(n579), .B2(n442), .Y(
        n568) );
  INVx1_ASAP7_6t_R U642 ( .A(n443), .Y(n442) );
  XNOR2xp5f_ASAP7_6t_R U643 ( .A(n621), .B(n620), .Y(n468) );
  XNOR2xp5f_ASAP7_6t_R U644 ( .A(n444), .B(n568), .Y(n621) );
  XNOR2xp5f_ASAP7_6t_R U645 ( .A(n567), .B(n566), .Y(n444) );
  NAND2xp5_ASAP7_6t_R U646 ( .A(n751), .B(n445), .Y(n781) );
  XOR2xp5_ASAP7_6t_R U647 ( .A(n344), .B(n752), .Y(n753) );
  OAI21xp5_ASAP7_6t_R U648 ( .A1(n751), .A2(n445), .B(n752), .Y(n782) );
  XNOR2xp5f_ASAP7_6t_R U649 ( .A(n684), .B(n685), .Y(n445) );
  INVx1_ASAP7_6t_R U650 ( .A(n502), .Y(n446) );
  NAND2xp5R_ASAP7_6t_R U651 ( .A(n679), .B(n449), .Y(n448) );
  NAND3xp33R_ASAP7_6t_R U652 ( .A(n590), .B(n591), .C(n451), .Y(n450) );
  INVx1_ASAP7_6t_R U653 ( .A(n679), .Y(n451) );
  XNOR2xp5_ASAP7_6t_R U654 ( .A(n452), .B(n688), .Y(n689) );
  INVxp5_ASAP7_6t_R U655 ( .A(n455), .Y(n454) );
  INVxp5_ASAP7_6t_R U656 ( .A(n456), .Y(n574) );
  A2O1A1Ixp33_ASAP7_6t_R U657 ( .A1(n675), .A2(n674), .B(n770), .C(n673), .Y(
        n746) );
  NOR2xp5_ASAP7_6t_R U658 ( .A(n458), .B(n747), .Y(n457) );
  INVxp5_ASAP7_6t_R U659 ( .A(n674), .Y(n458) );
  OAI211xp67b_ASAP7_6t_R U660 ( .A1(n462), .A2(n333), .B(n460), .C(n459), .Y(
        n774) );
  NAND2xp5R_ASAP7_6t_R U661 ( .A(A[0]), .B(B[6]), .Y(n459) );
  XNOR2xp5f_ASAP7_6t_R U662 ( .A(n464), .B(n463), .Y(n775) );
  XOR2xp5r_ASAP7_6t_R U663 ( .A(n645), .B(n646), .Y(n463) );
  AND2x2_ASAP7_6t_R U664 ( .A(n741), .B(n706), .Y(n705) );
  OAI21xp5_ASAP7_6t_R U665 ( .A1(n697), .A2(n709), .B(n714), .Y(n738) );
  AOI21x1_ASAP7_6t_R U666 ( .A1(n589), .A2(n588), .B(n565), .Y(n730) );
  NAND2xp5R_ASAP7_6t_R U667 ( .A(n466), .B(n591), .Y(n465) );
  NAND2x1_ASAP7_6t_R U668 ( .A(n578), .B(n491), .Y(n591) );
  NAND2xp5R_ASAP7_6t_R U669 ( .A(n640), .B(n575), .Y(n502) );
  NAND3x1_ASAP7_6t_R U670 ( .A(n777), .B(n778), .C(n779), .Y(n751) );
  OAI21xp5_ASAP7_6t_R U671 ( .A1(n735), .A2(n734), .B(n733), .Y(n777) );
  XNOR2xp5f_ASAP7_6t_R U672 ( .A(n683), .B(n686), .Y(n778) );
  MAJIxp5_ASAP7_6t_R U673 ( .A(n612), .B(n611), .C(n637), .Y(n690) );
  OAI22xp5_ASAP7_6t_R U674 ( .A1(n596), .A2(n594), .B1(n503), .B2(n467), .Y(
        n640) );
  NAND2xp5R_ASAP7_6t_R U675 ( .A(A[3]), .B(B[5]), .Y(n678) );
  XNOR2xp5f_ASAP7_6t_R U676 ( .A(n468), .B(n622), .Y(n784) );
  XNOR2xp5f_ASAP7_6t_R U677 ( .A(n680), .B(n690), .Y(n683) );
  XNOR2x2_ASAP7_6t_R U678 ( .A(n556), .B(n490), .Y(n580) );
  NAND2x2_ASAP7_6t_R U679 ( .A(A[3]), .B(B[3]), .Y(n594) );
  XOR2x2_ASAP7_6t_R U680 ( .A(n593), .B(n594), .Y(n634) );
  NAND2x1_ASAP7_6t_R U681 ( .A(n734), .B(n735), .Y(n779) );
  INVx4_ASAP7_6t_R U682 ( .A(n605), .Y(n624) );
  NAND2x2_ASAP7_6t_R U683 ( .A(B[0]), .B(B[1]), .Y(n605) );
  AOI211xp5_ASAP7_6t_R U684 ( .A1(A[3]), .A2(n606), .B(n604), .C(n375), .Y(
        n470) );
  AND2x4_ASAP7_6t_R U685 ( .A(B[0]), .B(A[2]), .Y(n649) );
  AOI21xp5_ASAP7_6t_R U686 ( .A1(n476), .A2(n478), .B(n471), .Y(n488) );
  NAND3xp33_ASAP7_6t_R U687 ( .A(n624), .B(n472), .C(B[2]), .Y(n656) );
  AND2x4_ASAP7_6t_R U688 ( .A(A[1]), .B(A[2]), .Y(n472) );
  NAND4xp75_ASAP7_6t_R U689 ( .A(n624), .B(n545), .C(A[5]), .D(A[4]), .Y(n573)
         );
  OA21x1_ASAP7_6t_R U690 ( .A1(n681), .A2(n374), .B(n682), .Y(n686) );
  XNOR2xp5f_ASAP7_6t_R U691 ( .A(n475), .B(n642), .Y(n681) );
  NOR2xp5_ASAP7_6t_R U692 ( .A(n599), .B(n564), .Y(n481) );
  NOR2xp5_ASAP7_6t_R U693 ( .A(n706), .B(n741), .Y(n498) );
  O2A1O1Ixp33_ASAP7_6t_R U694 ( .A1(n727), .A2(n712), .B(n482), .C(n699), .Y(
        n741) );
  INVx1_ASAP7_6t_R U695 ( .A(n738), .Y(n482) );
  AND2x4_ASAP7_6t_R U696 ( .A(n483), .B(n695), .Y(n727) );
  INVx1_ASAP7_6t_R U697 ( .A(n696), .Y(n483) );
  NAND2x2_ASAP7_6t_R U698 ( .A(B[2]), .B(A[4]), .Y(n593) );
  INVx1_ASAP7_6t_R U699 ( .A(n580), .Y(n618) );
  XNOR2xp5f_ASAP7_6t_R U700 ( .A(n580), .B(n617), .Y(n489) );
  INVx2_ASAP7_6t_R U701 ( .A(n387), .Y(n513) );
  XNOR2xp5f_ASAP7_6t_R U702 ( .A(A[4]), .B(A[6]), .Y(n494) );
  INVx2_ASAP7_6t_R U703 ( .A(n495), .Y(n569) );
  NAND3x2_ASAP7_6t_R U704 ( .A(n603), .B(A[4]), .C(A[3]), .Y(n495) );
  NAND2xp5R_ASAP7_6t_R U705 ( .A(n500), .B(n705), .Y(n496) );
  AOI31xp33_ASAP7_6t_R U706 ( .A1(n728), .A2(n499), .A3(n694), .B(n498), .Y(
        n497) );
  NAND2xp5R_ASAP7_6t_R U707 ( .A(n728), .B(n694), .Y(n500) );
  NOR2xp5_ASAP7_6t_R U708 ( .A(n593), .B(n572), .Y(n501) );
  INVxp5_ASAP7_6t_R U709 ( .A(n621), .Y(n586) );
  HB1x1_ASAP7_6t_R U710 ( .A(n782), .Y(n783) );
  AO22x1_ASAP7_6t_R U711 ( .A1(B[0]), .A2(A[3]), .B1(B[1]), .B2(A[2]), .Y(n504) );
  OAI21xp5_ASAP7_6t_R U712 ( .A1(A[5]), .A2(A[3]), .B(A[4]), .Y(n604) );
  INVx1_ASAP7_6t_R U713 ( .A(n650), .Y(n651) );
  AND2x4_ASAP7_6t_R U714 ( .A(B[1]), .B(A[1]), .Y(n650) );
  AND2x4_ASAP7_6t_R U715 ( .A(O[0]), .B(n650), .Y(n755) );
  AND2x4_ASAP7_6t_R U716 ( .A(B[0]), .B(A[0]), .Y(O[0]) );
  INVxp5_ASAP7_6t_R U717 ( .A(n780), .Y(O[8]) );
  INVx1_ASAP7_6t_R U718 ( .A(n558), .Y(n515) );
  NOR2xp5_ASAP7_6t_R U719 ( .A(B[4]), .B(n515), .Y(n505) );
  NAND2xp5R_ASAP7_6t_R U720 ( .A(A[7]), .B(B[5]), .Y(n528) );
  NOR2xp5_ASAP7_6t_R U721 ( .A(n507), .B(n528), .Y(n508) );
  AOI21xp5_ASAP7_6t_R U722 ( .A1(n519), .A2(n509), .B(n508), .Y(n530) );
  MAJIxp5_ASAP7_6t_R U723 ( .A(n530), .B(n528), .C(n527), .Y(n704) );
  XOR2xp5_ASAP7_6t_R U724 ( .A(n700), .B(n701), .Y(n510) );
  INVxp5_ASAP7_6t_R U725 ( .A(n557), .Y(n526) );
  NAND2x2_ASAP7_6t_R U726 ( .A(B[1]), .B(A[5]), .Y(n571) );
  NAND2x2_ASAP7_6t_R U727 ( .A(A[6]), .B(B[1]), .Y(n548) );
  INVx1_ASAP7_6t_R U728 ( .A(n561), .Y(n520) );
  XNOR2xp5_ASAP7_6t_R U729 ( .A(n560), .B(n515), .Y(n521) );
  NOR2xp5_ASAP7_6t_R U730 ( .A(n520), .B(n521), .Y(n538) );
  INVx1_ASAP7_6t_R U731 ( .A(n540), .Y(n522) );
  NAND2xp5_ASAP7_6t_R U732 ( .A(n522), .B(n676), .Y(n524) );
  MAJIxp5_ASAP7_6t_R U733 ( .A(n537), .B(n539), .C(n522), .Y(n523) );
  AOI31xp33_ASAP7_6t_R U734 ( .A1(n526), .A2(n525), .A3(n524), .B(n523), .Y(
        n536) );
  INVx1_ASAP7_6t_R U735 ( .A(n536), .Y(n532) );
  NAND2xp5R_ASAP7_6t_R U736 ( .A(A[5]), .B(B[7]), .Y(n533) );
  XOR2xp5_ASAP7_6t_R U737 ( .A(n528), .B(n527), .Y(n529) );
  MAJIxp5_ASAP7_6t_R U738 ( .A(n532), .B(n531), .C(n534), .Y(n709) );
  NAND2x2_ASAP7_6t_R U739 ( .A(A[5]), .B(B[0]), .Y(n602) );
  INVx1_ASAP7_6t_R U740 ( .A(n392), .Y(n547) );
  XNOR2xp5_ASAP7_6t_R U741 ( .A(n558), .B(n557), .Y(n559) );
  NAND2xp5R_ASAP7_6t_R U742 ( .A(A[4]), .B(B[6]), .Y(n566) );
  INVx1_ASAP7_6t_R U743 ( .A(n587), .Y(n565) );
  INVxp5_ASAP7_6t_R U744 ( .A(n620), .Y(n584) );
  NAND2x2_ASAP7_6t_R U745 ( .A(B[2]), .B(A[3]), .Y(n608) );
  INVx1_ASAP7_6t_R U746 ( .A(n608), .Y(n570) );
  MAJIxp5_ASAP7_6t_R U747 ( .A(n583), .B(n582), .C(n581), .Y(n622) );
  AOI22xp5_ASAP7_6t_R U748 ( .A1(n586), .A2(n620), .B1(n622), .B2(n585), .Y(
        n696) );
  INVx1_ASAP7_6t_R U749 ( .A(n696), .Y(n723) );
  INVx1_ASAP7_6t_R U750 ( .A(n634), .Y(n595) );
  INVx1_ASAP7_6t_R U751 ( .A(n383), .Y(n609) );
  NAND3xp33_ASAP7_6t_R U752 ( .A(n543), .B(B[1]), .C(A[4]), .Y(n601) );
  AOI21xp5_ASAP7_6t_R U753 ( .A1(n393), .A2(n601), .B(n608), .Y(n607) );
  NAND2xp5R_ASAP7_6t_R U754 ( .A(n759), .B(n603), .Y(n606) );
  MAJIxp5_ASAP7_6t_R U755 ( .A(n630), .B(n628), .C(n629), .Y(n635) );
  MAJIxp5_ASAP7_6t_R U756 ( .A(n610), .B(n633), .C(n635), .Y(n643) );
  INVx1_ASAP7_6t_R U757 ( .A(n643), .Y(n611) );
  XNOR2xp5_ASAP7_6t_R U758 ( .A(n616), .B(n615), .Y(n617) );
  NOR2xp5_ASAP7_6t_R U759 ( .A(n738), .B(n711), .Y(n694) );
  INVx1_ASAP7_6t_R U760 ( .A(A[1]), .Y(n636) );
  NAND2xp5R_ASAP7_6t_R U761 ( .A(n348), .B(n649), .Y(n627) );
  NAND2xp5R_ASAP7_6t_R U762 ( .A(n504), .B(n627), .Y(n623) );
  OAI21xp5b_ASAP7_6t_R U763 ( .A1(n636), .A2(n759), .B(n654), .Y(n657) );
  XOR2xp5_ASAP7_6t_R U764 ( .A(n638), .B(n637), .Y(n639) );
  XNOR2xp5f_ASAP7_6t_R U765 ( .A(n644), .B(n380), .Y(n734) );
  INVx2_ASAP7_6t_R U766 ( .A(n649), .Y(n652) );
  NAND2xp5R_ASAP7_6t_R U767 ( .A(n652), .B(n651), .Y(n653) );
  NAND2x1_ASAP7_6t_R U768 ( .A(n654), .B(n653), .Y(n756) );
  AOI22xp25_ASAP7_6t_R U769 ( .A1(n759), .A2(n663), .B1(n756), .B2(n661), .Y(
        n660) );
  NAND2xp5R_ASAP7_6t_R U770 ( .A(n657), .B(n656), .Y(n659) );
  AND2x2_ASAP7_6t_R U771 ( .A(B[3]), .B(A[0]), .Y(n763) );
  A2O1A1Ixp33_ASAP7_6t_R U772 ( .A1(n663), .A2(n662), .B(n756), .C(n661), .Y(
        n762) );
  INVx1_ASAP7_6t_R U773 ( .A(n666), .Y(n669) );
  INVx1_ASAP7_6t_R U774 ( .A(n768), .Y(n675) );
  NAND2xp5R_ASAP7_6t_R U775 ( .A(B[4]), .B(A[0]), .Y(n674) );
  XNOR2xp5_ASAP7_6t_R U776 ( .A(n678), .B(n677), .Y(n688) );
  NAND2xp5R_ASAP7_6t_R U777 ( .A(B[7]), .B(A[1]), .Y(n687) );
  XNOR2xp5_ASAP7_6t_R U778 ( .A(n688), .B(n687), .Y(n679) );
  INVx1_ASAP7_6t_R U779 ( .A(n686), .Y(n693) );
  MAJIxp5_ASAP7_6t_R U780 ( .A(n691), .B(n692), .C(n693), .Y(n752) );
  OAI211xp67b_ASAP7_6t_R U781 ( .A1(n784), .A2(n785), .B(n781), .C(n782), .Y(
        n728) );
  NOR2xp5_ASAP7_6t_R U782 ( .A(n729), .B(n730), .Y(n712) );
  NOR2xp5_ASAP7_6t_R U783 ( .A(n708), .B(n698), .Y(n699) );
  MAJIxp5_ASAP7_6t_R U784 ( .A(n704), .B(n703), .C(n702), .Y(n737) );
  XNOR2xp5_ASAP7_6t_R U785 ( .A(n737), .B(n739), .Y(n706) );
  INVx1_ASAP7_6t_R U786 ( .A(n728), .Y(n707) );
  INVx1_ASAP7_6t_R U787 ( .A(n707), .Y(n745) );
  XNOR2xp5_ASAP7_6t_R U788 ( .A(n709), .B(n708), .Y(n716) );
  INVx1_ASAP7_6t_R U789 ( .A(n716), .Y(n710) );
  AND2x2_ASAP7_6t_R U790 ( .A(n710), .B(n714), .Y(n721) );
  AOI22xp25_ASAP7_6t_R U791 ( .A1(n717), .A2(n716), .B1(n721), .B2(n715), .Y(
        n718) );
  A2O1A1Ixp33_ASAP7_6t_R U792 ( .A1(n376), .A2(n728), .B(n719), .C(n718), .Y(
        n720) );
  AOI31xp33_ASAP7_6t_R U793 ( .A1(n745), .A2(n721), .A3(n376), .B(n720), .Y(
        O[13]) );
  NAND2xp5R_ASAP7_6t_R U794 ( .A(n728), .B(n722), .Y(n726) );
  XNOR2xp5_ASAP7_6t_R U795 ( .A(n724), .B(n723), .Y(n725) );
  XNOR2xp5f_ASAP7_6t_R U796 ( .A(n726), .B(n725), .Y(O[11]) );
  AOI21x1_ASAP7_6t_R U797 ( .A1(n728), .A2(n376), .B(n727), .Y(n732) );
  XNOR2xp5f_ASAP7_6t_R U798 ( .A(n732), .B(n731), .Y(O[12]) );
  NOR2xp5_ASAP7_6t_R U799 ( .A(n742), .B(n738), .Y(n744) );
  AOI31xp33_ASAP7_6t_R U800 ( .A1(n745), .A2(n376), .A3(n744), .B(n743), .Y(
        O[15]) );
  INVxp5_ASAP7_6t_R U801 ( .A(n746), .Y(n748) );
  XNOR2xp5_ASAP7_6t_R U802 ( .A(n327), .B(n749), .Y(O[5]) );
  XNOR2xp5_ASAP7_6t_R U803 ( .A(n347), .B(n753), .Y(O[9]) );
  AOI22xp5_ASAP7_6t_R U804 ( .A1(B[0]), .A2(A[1]), .B1(B[1]), .B2(A[0]), .Y(
        n754) );
  NOR2xp5_ASAP7_6t_R U805 ( .A(n754), .B(n755), .Y(O[1]) );
  NOR2xp5_ASAP7_6t_R U806 ( .A(n769), .B(n755), .Y(n758) );
  OAI22xp5_ASAP7_6t_R U807 ( .A1(B[2]), .A2(n761), .B1(n760), .B2(n759), .Y(
        O[2]) );
  XNOR2xp5_ASAP7_6t_R U808 ( .A(n765), .B(n766), .Y(O[3]) );
  O2A1O1Ixp33_ASAP7_6t_R U809 ( .A1(n769), .A2(n768), .B(B[4]), .C(n767), .Y(
        n771) );
  XNOR2xp5_ASAP7_6t_R U810 ( .A(n771), .B(n770), .Y(O[4]) );
  NAND2xp5R_ASAP7_6t_R U811 ( .A(n774), .B(n773), .Y(n776) );
  A2O1A1Ixp33_ASAP7_6t_R U812 ( .A1(n382), .A2(n779), .B(n395), .C(n347), .Y(
        n780) );
  XOR2xp5_ASAP7_6t_R U813 ( .A(n784), .B(n785), .Y(n786) );
  XNOR2xp5_ASAP7_6t_R U814 ( .A(n787), .B(n786), .Y(O[10]) );
endmodule

