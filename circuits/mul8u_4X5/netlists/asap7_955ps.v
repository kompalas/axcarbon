/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:30:20 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598;

  XOR2xp5_ASAP7_6t_R U352 ( .A(n378), .B(n377), .Y(n341) );
  NAND2xp5_ASAP7_6t_R U353 ( .A(B[7]), .B(A[1]), .Y(n366) );
  NAND2xp5_ASAP7_6t_R U354 ( .A(A[1]), .B(B[5]), .Y(n390) );
  NAND2xp5_ASAP7_6t_R U355 ( .A(B[7]), .B(A[3]), .Y(n373) );
  NAND2xp5_ASAP7_6t_R U356 ( .A(B[6]), .B(A[4]), .Y(n375) );
  NAND2xp5_ASAP7_6t_R U357 ( .A(n350), .B(n349), .Y(n378) );
  NAND4xp25_ASAP7_6t_R U358 ( .A(B[6]), .B(B[7]), .C(A[3]), .D(A[2]), .Y(n350)
         );
  NAND2xp5_ASAP7_6t_R U359 ( .A(n371), .B(n370), .Y(n349) );
  NAND2xp5_ASAP7_6t_R U360 ( .A(A[0]), .B(B[4]), .Y(n416) );
  NAND2xp5_ASAP7_6t_R U361 ( .A(n567), .B(n568), .Y(n569) );
  NAND4xp25_ASAP7_6t_R U362 ( .A(B[6]), .B(A[1]), .C(A[0]), .D(B[5]), .Y(n395)
         );
  NAND3xp33_ASAP7_6t_R U363 ( .A(n364), .B(A[1]), .C(B[6]), .Y(n363) );
  NAND2xp5_ASAP7_6t_R U364 ( .A(A[2]), .B(B[5]), .Y(n392) );
  NAND2xp5_ASAP7_6t_R U365 ( .A(B[6]), .B(A[2]), .Y(n368) );
  AOI22xp25_ASAP7_6t_R U366 ( .A1(B[6]), .A2(A[3]), .B1(B[7]), .B2(A[2]), .Y(
        n348) );
  NAND2xp5_ASAP7_6t_R U367 ( .A(A[2]), .B(B[4]), .Y(n423) );
  NAND2xp5_ASAP7_6t_R U368 ( .A(A[3]), .B(B[4]), .Y(n432) );
  NAND2xp5_ASAP7_6t_R U369 ( .A(A[4]), .B(B[4]), .Y(n443) );
  NAND2xp5_ASAP7_6t_R U370 ( .A(A[4]), .B(B[5]), .Y(n402) );
  MAJx1_ASAP7_6t_R U371 ( .A(n397), .B(n398), .C(n400), .Y(n405) );
  NAND2xp5_ASAP7_6t_R U372 ( .A(A[1]), .B(B[3]), .Y(n415) );
  AOI22xp25_ASAP7_6t_R U373 ( .A1(A[1]), .A2(B[4]), .B1(A[0]), .B2(B[5]), .Y(
        n417) );
  NAND2xp5_ASAP7_6t_R U374 ( .A(A[2]), .B(B[3]), .Y(n427) );
  NAND2xp5_ASAP7_6t_R U375 ( .A(A[4]), .B(B[3]), .Y(n447) );
  NAND2xp5_ASAP7_6t_R U376 ( .A(A[5]), .B(B[4]), .Y(n457) );
  AOI22xp25_ASAP7_6t_R U377 ( .A1(n376), .A2(n375), .B1(n374), .B2(n373), .Y(
        n377) );
  NAND2xp5_ASAP7_6t_R U378 ( .A(A[5]), .B(B[5]), .Y(n409) );
  NAND3xp33_ASAP7_6t_R U379 ( .A(B[7]), .B(A[4]), .C(n356), .Y(n351) );
  NAND4xp25_ASAP7_6t_R U380 ( .A(A[1]), .B(A[0]), .C(B[3]), .D(B[2]), .Y(n482)
         );
  NAND2xp5_ASAP7_6t_R U381 ( .A(A[2]), .B(B[2]), .Y(n483) );
  NAND2xp5_ASAP7_6t_R U382 ( .A(A[3]), .B(B[2]), .Y(n489) );
  NAND2xp5_ASAP7_6t_R U383 ( .A(A[2]), .B(B[1]), .Y(n342) );
  NAND2xp5_ASAP7_6t_R U384 ( .A(A[4]), .B(B[2]), .Y(n477) );
  NAND2xp5_ASAP7_6t_R U385 ( .A(A[5]), .B(B[2]), .Y(n492) );
  NAND2xp5_ASAP7_6t_R U386 ( .A(A[6]), .B(B[2]), .Y(n473) );
  NAND2xp5_ASAP7_6t_R U387 ( .A(A[6]), .B(B[3]), .Y(n462) );
  MAJx1_ASAP7_6t_R U388 ( .A(n454), .B(n453), .C(n452), .Y(n465) );
  NAND2xp5_ASAP7_6t_R U389 ( .A(A[6]), .B(B[4]), .Y(n467) );
  NAND2xp5_ASAP7_6t_R U390 ( .A(A[6]), .B(B[5]), .Y(n411) );
  XNOR2xp5_ASAP7_6t_R U391 ( .A(n354), .B(n353), .Y(n386) );
  NAND2xp5_ASAP7_6t_R U392 ( .A(B[7]), .B(A[5]), .Y(n353) );
  AOI22xp25_ASAP7_6t_R U393 ( .A1(A[1]), .A2(B[2]), .B1(A[0]), .B2(B[3]), .Y(
        n343) );
  NAND2xp5_ASAP7_6t_R U394 ( .A(A[3]), .B(B[1]), .Y(n506) );
  NAND2xp5_ASAP7_6t_R U395 ( .A(A[4]), .B(B[1]), .Y(n510) );
  NAND2xp5_ASAP7_6t_R U396 ( .A(A[6]), .B(B[1]), .Y(n517) );
  NAND2xp5_ASAP7_6t_R U397 ( .A(A[7]), .B(B[1]), .Y(n522) );
  NAND2xp5_ASAP7_6t_R U398 ( .A(A[7]), .B(B[2]), .Y(n499) );
  NAND2xp5_ASAP7_6t_R U399 ( .A(A[7]), .B(B[3]), .Y(n533) );
  NAND2xp5_ASAP7_6t_R U400 ( .A(A[7]), .B(B[4]), .Y(n526) );
  NAND2xp5_ASAP7_6t_R U401 ( .A(A[7]), .B(B[5]), .Y(n537) );
  NAND3xp33_ASAP7_6t_R U402 ( .A(B[6]), .B(A[7]), .C(n358), .Y(n357) );
  NAND2xp5_ASAP7_6t_R U403 ( .A(B[6]), .B(A[6]), .Y(n354) );
  NAND2xp5_ASAP7_6t_R U404 ( .A(A[3]), .B(B[0]), .Y(n346) );
  NAND2xp5_ASAP7_6t_R U405 ( .A(A[4]), .B(B[0]), .Y(n549) );
  NAND2xp5_ASAP7_6t_R U406 ( .A(A[5]), .B(B[0]), .Y(n575) );
  NAND2xp5_ASAP7_6t_R U407 ( .A(A[6]), .B(B[0]), .Y(n561) );
  NAND2xp5_ASAP7_6t_R U408 ( .A(A[7]), .B(B[0]), .Y(n581) );
  NAND2xp5_ASAP7_6t_R U409 ( .A(n362), .B(n360), .Y(n359) );
  NAND2xp5_ASAP7_6t_R U410 ( .A(A[7]), .B(B[7]), .Y(n360) );
  NAND2xp5_ASAP7_6t_R U411 ( .A(n542), .B(n541), .Y(n540) );
  XNOR2xp5_ASAP7_6t_R U412 ( .A(n554), .B(n553), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U413 ( .A1(n552), .A2(n551), .B1(n550), .B2(n549), .Y(
        n553) );
  XNOR2xp5_ASAP7_6t_R U414 ( .A(n580), .B(n579), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U415 ( .A1(n578), .A2(n577), .B1(n576), .B2(n575), .Y(
        n579) );
  XNOR2xp5_ASAP7_6t_R U416 ( .A(n566), .B(n565), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U417 ( .A1(n564), .A2(n563), .B1(n562), .B2(n561), .Y(
        n566) );
  XNOR2xp5_ASAP7_6t_R U418 ( .A(n586), .B(n585), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U419 ( .A1(n584), .A2(n583), .B1(n582), .B2(n581), .Y(
        n585) );
  XNOR2xp5_ASAP7_6t_R U420 ( .A(n574), .B(n573), .Y(O[9]) );
  AOI22xp25_ASAP7_6t_R U421 ( .A1(n572), .A2(n571), .B1(n570), .B2(n569), .Y(
        n573) );
  XNOR2xp5_ASAP7_6t_R U422 ( .A(n560), .B(n559), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U423 ( .A1(n558), .A2(n557), .B1(n556), .B2(n555), .Y(
        n559) );
  XNOR2xp5_ASAP7_6t_R U424 ( .A(n592), .B(n591), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U425 ( .A1(n590), .A2(n589), .B1(n588), .B2(n587), .Y(
        n591) );
  XNOR2xp5_ASAP7_6t_R U426 ( .A(n548), .B(n547), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U427 ( .A1(n546), .A2(n545), .B1(n544), .B2(n543), .Y(
        n548) );
  XNOR2xp5_ASAP7_6t_R U428 ( .A(n598), .B(n597), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U429 ( .A1(n596), .A2(n595), .B1(n594), .B2(n593), .Y(
        n597) );
  AND2x2_ASAP7_6t_R U430 ( .A(A[0]), .B(B[0]), .Y(O[0]) );
  INVxp5_ASAP7_6t_R U431 ( .A(n343), .Y(n344) );
  NOR2xp5_ASAP7_6t_R U432 ( .A(n343), .B(n342), .Y(n486) );
  INVxp5_ASAP7_6t_R U433 ( .A(n486), .Y(n507) );
  A2O1A1Ixp33_ASAP7_6t_R U434 ( .A1(B[1]), .A2(A[2]), .B(n344), .C(n507), .Y(
        n345) );
  NOR2xp5_ASAP7_6t_R U435 ( .A(n346), .B(n345), .Y(n550) );
  AOI21xp25_ASAP7_6t_R U436 ( .A1(n346), .A2(n345), .B(n550), .Y(O[3]) );
  AO22x1_ASAP7_6t_R U437 ( .A1(A[1]), .A2(B[0]), .B1(A[0]), .B2(B[1]), .Y(O[1]) );
  AO22x1_ASAP7_6t_R U438 ( .A1(A[2]), .A2(B[0]), .B1(A[1]), .B2(B[1]), .Y(n347) );
  AO21x1_ASAP7_6t_R U439 ( .A1(A[0]), .A2(B[2]), .B(n347), .Y(O[2]) );
  INVxp5_ASAP7_6t_R U440 ( .A(n354), .Y(n361) );
  AND2x2_ASAP7_6t_R U441 ( .A(B[6]), .B(A[5]), .Y(n356) );
  INVxp5_ASAP7_6t_R U442 ( .A(n375), .Y(n374) );
  INVxp5_ASAP7_6t_R U443 ( .A(n373), .Y(n376) );
  AOI31xp33_ASAP7_6t_R U444 ( .A1(n376), .A2(B[6]), .A3(A[2]), .B(n348), .Y(
        n371) );
  OAI21xp5_ASAP7_6t_R U445 ( .A1(A[2]), .A2(A[0]), .B(B[6]), .Y(n365) );
  NOR2xp5_ASAP7_6t_R U446 ( .A(n366), .B(n365), .Y(n370) );
  MAJIxp5_ASAP7_6t_R U447 ( .A(n376), .B(n374), .C(n378), .Y(n379) );
  A2O1A1Ixp33_ASAP7_6t_R U448 ( .A1(A[4]), .A2(B[7]), .B(n356), .C(n351), .Y(
        n380) );
  NOR2xp5_ASAP7_6t_R U449 ( .A(n379), .B(n380), .Y(n352) );
  AOI31xp33_ASAP7_6t_R U450 ( .A1(A[5]), .A2(B[7]), .A3(n374), .B(n352), .Y(
        n385) );
  NOR2xp5_ASAP7_6t_R U451 ( .A(n385), .B(n386), .Y(n355) );
  AOI31xp33_ASAP7_6t_R U452 ( .A1(A[6]), .A2(B[7]), .A3(n356), .B(n355), .Y(
        n534) );
  AND2x2_ASAP7_6t_R U453 ( .A(B[7]), .B(A[6]), .Y(n358) );
  A2O1A1Ixp33_ASAP7_6t_R U454 ( .A1(A[7]), .A2(B[6]), .B(n358), .C(n357), .Y(
        n535) );
  NOR2xp5_ASAP7_6t_R U455 ( .A(n534), .B(n535), .Y(n362) );
  A2O1A1Ixp33_ASAP7_6t_R U456 ( .A1(B[7]), .A2(n361), .B(n362), .C(A[7]), .Y(
        n539) );
  OAI31x1f_ASAP7_6t_R U457 ( .A1(n362), .A2(n361), .A3(n360), .B(n359), .Y(
        n542) );
  AND2x2_ASAP7_6t_R U458 ( .A(A[3]), .B(B[5]), .Y(n397) );
  AND2x2_ASAP7_6t_R U459 ( .A(B[7]), .B(A[0]), .Y(n364) );
  A2O1A1Ixp33_ASAP7_6t_R U460 ( .A1(A[1]), .A2(B[6]), .B(n364), .C(n363), .Y(
        n393) );
  MAJIxp5_ASAP7_6t_R U461 ( .A(n395), .B(n393), .C(n392), .Y(n398) );
  NOR2xp5_ASAP7_6t_R U462 ( .A(A[0]), .B(n366), .Y(n369) );
  INVxp5_ASAP7_6t_R U463 ( .A(n365), .Y(n367) );
  OAI22xp5_ASAP7_6t_R U464 ( .A1(n369), .A2(n368), .B1(n367), .B2(n366), .Y(
        n400) );
  XOR2xp5_ASAP7_6t_R U465 ( .A(n371), .B(n370), .Y(n403) );
  INVxp5_ASAP7_6t_R U466 ( .A(n402), .Y(n372) );
  MAJIxp5_ASAP7_6t_R U467 ( .A(n405), .B(n403), .C(n372), .Y(n406) );
  MAJIxp5_ASAP7_6t_R U468 ( .A(n409), .B(n406), .C(n341), .Y(n414) );
  INVxp5_ASAP7_6t_R U469 ( .A(n411), .Y(n384) );
  INVxp5_ASAP7_6t_R U470 ( .A(n379), .Y(n382) );
  INVxp5_ASAP7_6t_R U471 ( .A(n380), .Y(n381) );
  HAxp5_ASAP7_6t_R U472 ( .A(n382), .B(n381), .SN(n383) );
  INVxp5_ASAP7_6t_R U473 ( .A(n383), .Y(n412) );
  MAJIxp5_ASAP7_6t_R U474 ( .A(n414), .B(n384), .C(n412), .Y(n538) );
  INVxp5_ASAP7_6t_R U475 ( .A(n538), .Y(n388) );
  HAxp5_ASAP7_6t_R U476 ( .A(n386), .B(n385), .SN(n536) );
  HAxp5_ASAP7_6t_R U477 ( .A(n537), .B(n536), .SN(n387) );
  HAxp5_ASAP7_6t_R U478 ( .A(n388), .B(n387), .SN(n545) );
  INVxp5_ASAP7_6t_R U479 ( .A(n467), .Y(n410) );
  INVxp5_ASAP7_6t_R U480 ( .A(n443), .Y(n401) );
  INVxp5_ASAP7_6t_R U481 ( .A(n390), .Y(n389) );
  A2O1A1Ixp33_ASAP7_6t_R U482 ( .A1(A[0]), .A2(B[6]), .B(n389), .C(n395), .Y(
        n422) );
  NOR2xp5_ASAP7_6t_R U483 ( .A(n390), .B(n416), .Y(n421) );
  INVxp5_ASAP7_6t_R U484 ( .A(n421), .Y(n391) );
  MAJIxp5_ASAP7_6t_R U485 ( .A(n423), .B(n422), .C(n391), .Y(n433) );
  INVxp5_ASAP7_6t_R U486 ( .A(n433), .Y(n396) );
  HAxp5_ASAP7_6t_R U487 ( .A(n393), .B(n392), .SN(n394) );
  HAxp5_ASAP7_6t_R U488 ( .A(n395), .B(n394), .SN(n431) );
  MAJIxp5_ASAP7_6t_R U489 ( .A(n396), .B(n431), .C(n432), .Y(n445) );
  HAxp5_ASAP7_6t_R U490 ( .A(n398), .B(n397), .SN(n399) );
  HAxp5_ASAP7_6t_R U491 ( .A(n400), .B(n399), .SN(n442) );
  MAJIxp5_ASAP7_6t_R U492 ( .A(n401), .B(n445), .C(n442), .Y(n455) );
  HAxp5_ASAP7_6t_R U493 ( .A(n403), .B(n402), .SN(n404) );
  HAxp5_ASAP7_6t_R U494 ( .A(n405), .B(n404), .SN(n456) );
  MAJIxp5_ASAP7_6t_R U495 ( .A(n455), .B(n457), .C(n456), .Y(n469) );
  INVxp5_ASAP7_6t_R U496 ( .A(n406), .Y(n407) );
  HAxp5_ASAP7_6t_R U497 ( .A(n341), .B(n407), .SN(n408) );
  HAxp5_ASAP7_6t_R U498 ( .A(n409), .B(n408), .SN(n466) );
  MAJIxp5_ASAP7_6t_R U499 ( .A(n410), .B(n469), .C(n466), .Y(n528) );
  HAxp5_ASAP7_6t_R U500 ( .A(n412), .B(n411), .SN(n413) );
  HAxp5_ASAP7_6t_R U501 ( .A(n414), .B(n413), .SN(n525) );
  MAJIxp5_ASAP7_6t_R U502 ( .A(n528), .B(n526), .C(n525), .Y(n543) );
  NOR2xp5_ASAP7_6t_R U503 ( .A(n416), .B(n415), .Y(n418) );
  AO21x1_ASAP7_6t_R U504 ( .A1(n416), .A2(n415), .B(n418), .Y(n481) );
  MAJIxp5_ASAP7_6t_R U505 ( .A(n483), .B(n482), .C(n481), .Y(n488) );
  INVxp5_ASAP7_6t_R U506 ( .A(n488), .Y(n420) );
  OR2x2_ASAP7_6t_R U507 ( .A(n421), .B(n417), .Y(n426) );
  INVxp5_ASAP7_6t_R U508 ( .A(n418), .Y(n425) );
  HAxp5_ASAP7_6t_R U509 ( .A(n426), .B(n425), .SN(n419) );
  HAxp5_ASAP7_6t_R U510 ( .A(n427), .B(n419), .SN(n487) );
  MAJIxp5_ASAP7_6t_R U511 ( .A(n420), .B(n487), .C(n489), .Y(n478) );
  INVxp5_ASAP7_6t_R U512 ( .A(n478), .Y(n430) );
  HAxp5_ASAP7_6t_R U513 ( .A(n422), .B(n421), .SN(n424) );
  HAxp5_ASAP7_6t_R U514 ( .A(n424), .B(n423), .SN(n437) );
  AND2x2_ASAP7_6t_R U515 ( .A(A[3]), .B(B[3]), .Y(n436) );
  MAJIxp5_ASAP7_6t_R U516 ( .A(n427), .B(n426), .C(n425), .Y(n438) );
  HAxp5_ASAP7_6t_R U517 ( .A(n436), .B(n438), .SN(n428) );
  HAxp5_ASAP7_6t_R U518 ( .A(n437), .B(n428), .SN(n429) );
  INVxp5_ASAP7_6t_R U519 ( .A(n429), .Y(n480) );
  MAJIxp5_ASAP7_6t_R U520 ( .A(n477), .B(n430), .C(n480), .Y(n493) );
  INVxp5_ASAP7_6t_R U521 ( .A(n431), .Y(n435) );
  HAxp5_ASAP7_6t_R U522 ( .A(n433), .B(n432), .SN(n434) );
  HAxp5_ASAP7_6t_R U523 ( .A(n435), .B(n434), .SN(n449) );
  MAJIxp5_ASAP7_6t_R U524 ( .A(n438), .B(n437), .C(n436), .Y(n448) );
  HAxp5_ASAP7_6t_R U525 ( .A(n447), .B(n448), .SN(n439) );
  HAxp5_ASAP7_6t_R U526 ( .A(n449), .B(n439), .SN(n440) );
  INVxp5_ASAP7_6t_R U527 ( .A(n440), .Y(n495) );
  INVxp5_ASAP7_6t_R U528 ( .A(n492), .Y(n441) );
  MAJIxp5_ASAP7_6t_R U529 ( .A(n493), .B(n495), .C(n441), .Y(n472) );
  INVxp5_ASAP7_6t_R U530 ( .A(n442), .Y(n444) );
  HAxp5_ASAP7_6t_R U531 ( .A(n444), .B(n443), .SN(n446) );
  HAxp5_ASAP7_6t_R U532 ( .A(n446), .B(n445), .SN(n453) );
  AND2x2_ASAP7_6t_R U533 ( .A(A[5]), .B(B[3]), .Y(n452) );
  MAJIxp5_ASAP7_6t_R U534 ( .A(n449), .B(n448), .C(n447), .Y(n454) );
  HAxp5_ASAP7_6t_R U535 ( .A(n452), .B(n454), .SN(n450) );
  HAxp5_ASAP7_6t_R U536 ( .A(n453), .B(n450), .SN(n451) );
  INVxp5_ASAP7_6t_R U537 ( .A(n451), .Y(n476) );
  MAJIxp5_ASAP7_6t_R U538 ( .A(n473), .B(n472), .C(n476), .Y(n498) );
  INVxp5_ASAP7_6t_R U539 ( .A(n498), .Y(n461) );
  INVxp5_ASAP7_6t_R U540 ( .A(n455), .Y(n459) );
  HAxp5_ASAP7_6t_R U541 ( .A(n457), .B(n456), .SN(n458) );
  HAxp5_ASAP7_6t_R U542 ( .A(n459), .B(n458), .SN(n464) );
  HAxp5_ASAP7_6t_R U543 ( .A(n462), .B(n464), .SN(n460) );
  HAxp5_ASAP7_6t_R U544 ( .A(n465), .B(n460), .SN(n497) );
  MAJIxp5_ASAP7_6t_R U545 ( .A(n461), .B(n497), .C(n499), .Y(n560) );
  INVxp5_ASAP7_6t_R U546 ( .A(n462), .Y(n463) );
  MAJIxp5_ASAP7_6t_R U547 ( .A(n465), .B(n464), .C(n463), .Y(n531) );
  INVxp5_ASAP7_6t_R U548 ( .A(n531), .Y(n471) );
  HAxp5_ASAP7_6t_R U549 ( .A(n467), .B(n466), .SN(n468) );
  HAxp5_ASAP7_6t_R U550 ( .A(n469), .B(n468), .SN(n532) );
  HAxp5_ASAP7_6t_R U551 ( .A(n533), .B(n532), .SN(n470) );
  HAxp5_ASAP7_6t_R U552 ( .A(n471), .B(n470), .SN(n555) );
  INVxp5_ASAP7_6t_R U553 ( .A(n522), .Y(n496) );
  INVxp5_ASAP7_6t_R U554 ( .A(n472), .Y(n474) );
  HAxp5_ASAP7_6t_R U555 ( .A(n474), .B(n473), .SN(n475) );
  HAxp5_ASAP7_6t_R U556 ( .A(n476), .B(n475), .SN(n520) );
  HAxp5_ASAP7_6t_R U557 ( .A(n478), .B(n477), .SN(n479) );
  HAxp5_ASAP7_6t_R U558 ( .A(n480), .B(n479), .SN(n505) );
  AND2x2_ASAP7_6t_R U559 ( .A(A[5]), .B(B[1]), .Y(n503) );
  XOR2xp5_ASAP7_6t_R U560 ( .A(n482), .B(n481), .Y(n484) );
  HAxp5_ASAP7_6t_R U561 ( .A(n484), .B(n483), .SN(n509) );
  INVxp5_ASAP7_6t_R U562 ( .A(n506), .Y(n485) );
  MAJIxp5_ASAP7_6t_R U563 ( .A(n509), .B(n486), .C(n485), .Y(n511) );
  INVxp5_ASAP7_6t_R U564 ( .A(n487), .Y(n491) );
  HAxp5_ASAP7_6t_R U565 ( .A(n489), .B(n488), .SN(n490) );
  HAxp5_ASAP7_6t_R U566 ( .A(n491), .B(n490), .SN(n513) );
  MAJIxp5_ASAP7_6t_R U567 ( .A(n511), .B(n513), .C(n510), .Y(n502) );
  MAJIxp5_ASAP7_6t_R U568 ( .A(n505), .B(n503), .C(n502), .Y(n514) );
  HAxp5_ASAP7_6t_R U569 ( .A(n493), .B(n492), .SN(n494) );
  HAxp5_ASAP7_6t_R U570 ( .A(n495), .B(n494), .SN(n515) );
  MAJIxp5_ASAP7_6t_R U571 ( .A(n514), .B(n515), .C(n517), .Y(n524) );
  MAJIxp5_ASAP7_6t_R U572 ( .A(n496), .B(n520), .C(n524), .Y(n574) );
  INVxp5_ASAP7_6t_R U573 ( .A(n497), .Y(n501) );
  HAxp5_ASAP7_6t_R U574 ( .A(n499), .B(n498), .SN(n500) );
  HAxp5_ASAP7_6t_R U575 ( .A(n501), .B(n500), .SN(n570) );
  INVxp5_ASAP7_6t_R U576 ( .A(n561), .Y(n564) );
  HAxp5_ASAP7_6t_R U577 ( .A(n503), .B(n502), .SN(n504) );
  HAxp5_ASAP7_6t_R U578 ( .A(n505), .B(n504), .SN(n565) );
  HAxp5_ASAP7_6t_R U579 ( .A(n507), .B(n506), .SN(n508) );
  HAxp5_ASAP7_6t_R U580 ( .A(n509), .B(n508), .SN(n554) );
  INVxp5_ASAP7_6t_R U581 ( .A(n549), .Y(n552) );
  MAJIxp5_ASAP7_6t_R U582 ( .A(n554), .B(n552), .C(n550), .Y(n576) );
  HAxp5_ASAP7_6t_R U583 ( .A(n511), .B(n510), .SN(n512) );
  HAxp5_ASAP7_6t_R U584 ( .A(n513), .B(n512), .SN(n580) );
  MAJIxp5_ASAP7_6t_R U585 ( .A(n576), .B(n580), .C(n575), .Y(n562) );
  MAJIxp5_ASAP7_6t_R U586 ( .A(n564), .B(n565), .C(n562), .Y(n582) );
  INVxp5_ASAP7_6t_R U587 ( .A(n514), .Y(n519) );
  INVxp5_ASAP7_6t_R U588 ( .A(n515), .Y(n516) );
  HAxp5_ASAP7_6t_R U589 ( .A(n517), .B(n516), .SN(n518) );
  HAxp5_ASAP7_6t_R U590 ( .A(n519), .B(n518), .SN(n586) );
  MAJIxp5_ASAP7_6t_R U591 ( .A(n582), .B(n586), .C(n581), .Y(n567) );
  INVxp5_ASAP7_6t_R U592 ( .A(n520), .Y(n521) );
  HAxp5_ASAP7_6t_R U593 ( .A(n522), .B(n521), .SN(n523) );
  HAxp5_ASAP7_6t_R U594 ( .A(n524), .B(n523), .SN(n568) );
  MAJIxp5_ASAP7_6t_R U595 ( .A(n574), .B(n570), .C(n569), .Y(n557) );
  MAJIxp5_ASAP7_6t_R U596 ( .A(n560), .B(n555), .C(n557), .Y(n592) );
  INVxp5_ASAP7_6t_R U597 ( .A(n525), .Y(n527) );
  HAxp5_ASAP7_6t_R U598 ( .A(n527), .B(n526), .SN(n530) );
  INVxp5_ASAP7_6t_R U599 ( .A(n528), .Y(n529) );
  HAxp5_ASAP7_6t_R U600 ( .A(n530), .B(n529), .SN(n590) );
  MAJIxp5_ASAP7_6t_R U601 ( .A(n533), .B(n532), .C(n531), .Y(n588) );
  INVxp5_ASAP7_6t_R U602 ( .A(n588), .Y(n589) );
  MAJIxp5_ASAP7_6t_R U603 ( .A(n592), .B(n590), .C(n589), .Y(n547) );
  MAJIxp5_ASAP7_6t_R U604 ( .A(n545), .B(n543), .C(n547), .Y(n594) );
  HAxp5_ASAP7_6t_R U605 ( .A(n535), .B(n534), .SN(n598) );
  MAJIxp5_ASAP7_6t_R U606 ( .A(n538), .B(n537), .C(n536), .Y(n596) );
  INVxp5_ASAP7_6t_R U607 ( .A(n596), .Y(n593) );
  MAJIxp5_ASAP7_6t_R U608 ( .A(n594), .B(n598), .C(n593), .Y(n541) );
  NAND2xp5_ASAP7_6t_R U609 ( .A(n539), .B(n540), .Y(O[15]) );
  OA21x1_ASAP7_6t_R U610 ( .A1(n542), .A2(n541), .B(n540), .Y(O[14]) );
  INVxp5_ASAP7_6t_R U611 ( .A(n543), .Y(n546) );
  INVxp5_ASAP7_6t_R U612 ( .A(n545), .Y(n544) );
  INVxp5_ASAP7_6t_R U613 ( .A(n550), .Y(n551) );
  INVxp5_ASAP7_6t_R U614 ( .A(n555), .Y(n558) );
  INVxp5_ASAP7_6t_R U615 ( .A(n557), .Y(n556) );
  INVxp5_ASAP7_6t_R U616 ( .A(n562), .Y(n563) );
  OA21x1_ASAP7_6t_R U617 ( .A1(n568), .A2(n567), .B(n569), .Y(O[8]) );
  INVxp5_ASAP7_6t_R U618 ( .A(n569), .Y(n572) );
  INVxp5_ASAP7_6t_R U619 ( .A(n570), .Y(n571) );
  INVxp5_ASAP7_6t_R U620 ( .A(n575), .Y(n578) );
  INVxp5_ASAP7_6t_R U621 ( .A(n576), .Y(n577) );
  INVxp5_ASAP7_6t_R U622 ( .A(n581), .Y(n584) );
  INVxp5_ASAP7_6t_R U623 ( .A(n582), .Y(n583) );
  INVxp5_ASAP7_6t_R U624 ( .A(n590), .Y(n587) );
  INVxp5_ASAP7_6t_R U625 ( .A(n594), .Y(n595) );
endmodule

