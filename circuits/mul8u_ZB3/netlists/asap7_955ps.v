/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:29:40 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
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
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613;

  NAND2xp5_ASAP7_6t_R U364 ( .A(B[6]), .B(A[3]), .Y(n377) );
  NAND2xp5_ASAP7_6t_R U365 ( .A(B[7]), .B(A[2]), .Y(n375) );
  NAND2xp5_ASAP7_6t_R U366 ( .A(A[0]), .B(B[4]), .Y(n443) );
  NAND4xp25_ASAP7_6t_R U367 ( .A(A[1]), .B(A[0]), .C(B[4]), .D(B[3]), .Y(n444)
         );
  NAND2xp5_ASAP7_6t_R U368 ( .A(n582), .B(n583), .Y(n584) );
  NAND2xp5_ASAP7_6t_R U369 ( .A(B[7]), .B(A[1]), .Y(n374) );
  NAND2xp5_ASAP7_6t_R U370 ( .A(A[1]), .B(B[5]), .Y(n393) );
  NAND3xp33_ASAP7_6t_R U371 ( .A(n372), .B(A[1]), .C(B[6]), .Y(n371) );
  NAND2xp5_ASAP7_6t_R U372 ( .A(A[2]), .B(B[5]), .Y(n394) );
  NAND4xp25_ASAP7_6t_R U373 ( .A(B[6]), .B(A[1]), .C(A[0]), .D(B[5]), .Y(n397)
         );
  NAND2xp5_ASAP7_6t_R U374 ( .A(A[2]), .B(B[4]), .Y(n431) );
  NAND2xp5_ASAP7_6t_R U375 ( .A(A[3]), .B(B[4]), .Y(n426) );
  NAND2xp5_ASAP7_6t_R U376 ( .A(A[4]), .B(B[4]), .Y(n421) );
  XNOR2xp5_ASAP7_6t_R U377 ( .A(n380), .B(n379), .Y(n406) );
  AOI22xp25_ASAP7_6t_R U378 ( .A1(n378), .A2(n377), .B1(n376), .B2(n375), .Y(
        n379) );
  NAND2xp5_ASAP7_6t_R U379 ( .A(A[4]), .B(B[5]), .Y(n407) );
  MAJx1_ASAP7_6t_R U380 ( .A(n380), .B(n375), .C(n377), .Y(n369) );
  NAND3xp33_ASAP7_6t_R U381 ( .A(B[7]), .B(A[3]), .C(n358), .Y(n353) );
  NAND2xp5_ASAP7_6t_R U382 ( .A(A[2]), .B(B[3]), .Y(n447) );
  NAND2xp5_ASAP7_6t_R U383 ( .A(A[4]), .B(B[3]), .Y(n456) );
  NAND2xp5_ASAP7_6t_R U384 ( .A(A[5]), .B(B[4]), .Y(n436) );
  XNOR2xp5_ASAP7_6t_R U385 ( .A(n356), .B(n355), .Y(n382) );
  NAND2xp5_ASAP7_6t_R U386 ( .A(B[7]), .B(A[4]), .Y(n355) );
  NAND2xp5_ASAP7_6t_R U387 ( .A(A[1]), .B(B[3]), .Y(n442) );
  NAND4xp25_ASAP7_6t_R U388 ( .A(A[1]), .B(A[0]), .C(B[3]), .D(B[2]), .Y(n486)
         );
  NAND2xp5_ASAP7_6t_R U389 ( .A(A[2]), .B(B[2]), .Y(n484) );
  NAND2xp5_ASAP7_6t_R U390 ( .A(A[3]), .B(B[2]), .Y(n489) );
  NAND2xp5_ASAP7_6t_R U391 ( .A(A[4]), .B(B[2]), .Y(n479) );
  NAND2xp5_ASAP7_6t_R U392 ( .A(A[5]), .B(B[2]), .Y(n492) );
  NAND2xp5_ASAP7_6t_R U393 ( .A(A[6]), .B(B[2]), .Y(n474) );
  NAND2xp5_ASAP7_6t_R U394 ( .A(A[6]), .B(B[3]), .Y(n469) );
  NAND2xp5_ASAP7_6t_R U395 ( .A(A[6]), .B(B[4]), .Y(n417) );
  NAND2xp5_ASAP7_6t_R U396 ( .A(A[6]), .B(B[5]), .Y(n413) );
  MAJx1_ASAP7_6t_R U397 ( .A(n391), .B(n388), .C(n389), .Y(n416) );
  NAND2xp5_ASAP7_6t_R U398 ( .A(B[6]), .B(A[5]), .Y(n356) );
  XNOR2xp5_ASAP7_6t_R U399 ( .A(n360), .B(n359), .Y(n385) );
  NAND2xp5_ASAP7_6t_R U400 ( .A(B[7]), .B(A[5]), .Y(n359) );
  NAND4xp25_ASAP7_6t_R U401 ( .A(A[1]), .B(A[0]), .C(B[2]), .D(B[1]), .Y(n513)
         );
  NAND2xp5_ASAP7_6t_R U402 ( .A(A[2]), .B(B[1]), .Y(n512) );
  NAND2xp5_ASAP7_6t_R U403 ( .A(A[4]), .B(B[1]), .Y(n515) );
  NAND2xp5_ASAP7_6t_R U404 ( .A(A[6]), .B(B[1]), .Y(n522) );
  NAND2xp5_ASAP7_6t_R U405 ( .A(A[7]), .B(B[1]), .Y(n527) );
  NAND2xp5_ASAP7_6t_R U406 ( .A(A[7]), .B(B[2]), .Y(n499) );
  NAND2xp5_ASAP7_6t_R U407 ( .A(A[7]), .B(B[3]), .Y(n539) );
  NAND2xp5_ASAP7_6t_R U408 ( .A(A[7]), .B(B[4]), .Y(n531) );
  NAND2xp5_ASAP7_6t_R U409 ( .A(A[7]), .B(B[5]), .Y(n543) );
  NAND3xp33_ASAP7_6t_R U410 ( .A(B[6]), .B(A[7]), .C(n364), .Y(n363) );
  NAND2xp5_ASAP7_6t_R U411 ( .A(B[6]), .B(A[6]), .Y(n360) );
  NAND2xp5_ASAP7_6t_R U412 ( .A(A[3]), .B(B[0]), .Y(n552) );
  NAND2xp5_ASAP7_6t_R U413 ( .A(A[4]), .B(B[0]), .Y(n564) );
  NAND2xp5_ASAP7_6t_R U414 ( .A(A[5]), .B(B[0]), .Y(n590) );
  NAND2xp5_ASAP7_6t_R U415 ( .A(A[6]), .B(B[0]), .Y(n576) );
  NAND2xp5_ASAP7_6t_R U416 ( .A(A[7]), .B(B[0]), .Y(n596) );
  NAND2xp5_ASAP7_6t_R U417 ( .A(n368), .B(n366), .Y(n365) );
  NAND2xp5_ASAP7_6t_R U418 ( .A(A[7]), .B(B[7]), .Y(n366) );
  NAND2xp5_ASAP7_6t_R U419 ( .A(n551), .B(n550), .Y(n549) );
  XNOR2xp5_ASAP7_6t_R U420 ( .A(n557), .B(n556), .Y(O[3]) );
  AOI22xp25_ASAP7_6t_R U421 ( .A1(n555), .A2(n554), .B1(n553), .B2(n552), .Y(
        n557) );
  XNOR2xp5_ASAP7_6t_R U422 ( .A(n569), .B(n568), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U423 ( .A1(n567), .A2(n566), .B1(n565), .B2(n564), .Y(
        n569) );
  XNOR2xp5_ASAP7_6t_R U424 ( .A(n595), .B(n594), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U425 ( .A1(n593), .A2(n592), .B1(n591), .B2(n590), .Y(
        n594) );
  XNOR2xp5_ASAP7_6t_R U426 ( .A(n581), .B(n580), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U427 ( .A1(n579), .A2(n578), .B1(n577), .B2(n576), .Y(
        n581) );
  XNOR2xp5_ASAP7_6t_R U428 ( .A(n601), .B(n600), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U429 ( .A1(n599), .A2(n598), .B1(n597), .B2(n596), .Y(
        n600) );
  XNOR2xp5_ASAP7_6t_R U430 ( .A(n589), .B(n588), .Y(O[9]) );
  AOI22xp25_ASAP7_6t_R U431 ( .A1(n587), .A2(n586), .B1(n585), .B2(n584), .Y(
        n588) );
  XNOR2xp5_ASAP7_6t_R U432 ( .A(n575), .B(n574), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U433 ( .A1(n573), .A2(n572), .B1(n571), .B2(n570), .Y(
        n575) );
  XNOR2xp5_ASAP7_6t_R U434 ( .A(n607), .B(n606), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U435 ( .A1(n605), .A2(n604), .B1(n603), .B2(n602), .Y(
        n606) );
  XNOR2xp5_ASAP7_6t_R U436 ( .A(n563), .B(n562), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U437 ( .A1(n561), .A2(n560), .B1(n559), .B2(n558), .Y(
        n563) );
  XNOR2xp5_ASAP7_6t_R U438 ( .A(n613), .B(n612), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U439 ( .A1(n611), .A2(n610), .B1(n609), .B2(n608), .Y(
        n612) );
  O2A1O1Ixp33_ASAP7_6t_R U440 ( .A1(n548), .A2(n547), .B(n546), .C(n554), .Y(
        O[2]) );
  AND2x2_ASAP7_6t_R U441 ( .A(A[0]), .B(B[0]), .Y(O[0]) );
  AO22x1_ASAP7_6t_R U442 ( .A1(A[1]), .A2(B[0]), .B1(A[0]), .B2(B[1]), .Y(O[1]) );
  INVxp5_ASAP7_6t_R U443 ( .A(n360), .Y(n367) );
  INVxp5_ASAP7_6t_R U444 ( .A(n356), .Y(n362) );
  AND2x2_ASAP7_6t_R U445 ( .A(B[6]), .B(A[4]), .Y(n358) );
  INVxp5_ASAP7_6t_R U446 ( .A(n377), .Y(n376) );
  OAI21xp5_ASAP7_6t_R U447 ( .A1(A[0]), .A2(A[2]), .B(B[6]), .Y(n352) );
  OR2x2_ASAP7_6t_R U448 ( .A(n374), .B(n352), .Y(n380) );
  A2O1A1Ixp33_ASAP7_6t_R U449 ( .A1(A[3]), .A2(B[7]), .B(n358), .C(n353), .Y(
        n370) );
  NOR2xp5_ASAP7_6t_R U450 ( .A(n369), .B(n370), .Y(n354) );
  AOI31xp33_ASAP7_6t_R U451 ( .A1(A[4]), .A2(B[7]), .A3(n376), .B(n354), .Y(
        n381) );
  NOR2xp5_ASAP7_6t_R U452 ( .A(n381), .B(n382), .Y(n357) );
  AOI31xp33_ASAP7_6t_R U453 ( .A1(A[5]), .A2(B[7]), .A3(n358), .B(n357), .Y(
        n384) );
  NOR2xp5_ASAP7_6t_R U454 ( .A(n384), .B(n385), .Y(n361) );
  AOI31xp33_ASAP7_6t_R U455 ( .A1(A[6]), .A2(B[7]), .A3(n362), .B(n361), .Y(
        n540) );
  AND2x2_ASAP7_6t_R U456 ( .A(B[7]), .B(A[6]), .Y(n364) );
  A2O1A1Ixp33_ASAP7_6t_R U457 ( .A1(A[7]), .A2(B[6]), .B(n364), .C(n363), .Y(
        n541) );
  NOR2xp5_ASAP7_6t_R U458 ( .A(n540), .B(n541), .Y(n368) );
  A2O1A1Ixp33_ASAP7_6t_R U459 ( .A1(B[7]), .A2(n367), .B(n368), .C(A[7]), .Y(
        n545) );
  OAI31x1f_ASAP7_6t_R U460 ( .A1(n368), .A2(n367), .A3(n366), .B(n365), .Y(
        n551) );
  XOR2xp5_ASAP7_6t_R U461 ( .A(n370), .B(n369), .Y(n391) );
  AND2x2_ASAP7_6t_R U462 ( .A(A[5]), .B(B[5]), .Y(n388) );
  AND2x2_ASAP7_6t_R U463 ( .A(A[3]), .B(B[5]), .Y(n399) );
  AND2x2_ASAP7_6t_R U464 ( .A(B[7]), .B(A[0]), .Y(n372) );
  A2O1A1Ixp33_ASAP7_6t_R U465 ( .A1(A[1]), .A2(B[6]), .B(n372), .C(n371), .Y(
        n395) );
  MAJIxp5_ASAP7_6t_R U466 ( .A(n397), .B(n395), .C(n394), .Y(n400) );
  OAI211xp67b_ASAP7_6t_R U467 ( .A1(A[0]), .A2(n374), .B(A[2]), .C(B[6]), .Y(
        n373) );
  O2A1O1A1Ixp33_ASAP7_6t_R U468 ( .A1(A[0]), .A2(A[2]), .B(B[6]), .C(n374), 
        .D(n373), .Y(n402) );
  MAJIxp5_ASAP7_6t_R U469 ( .A(n399), .B(n400), .C(n402), .Y(n405) );
  INVxp5_ASAP7_6t_R U470 ( .A(n375), .Y(n378) );
  MAJIxp5_ASAP7_6t_R U471 ( .A(n405), .B(n406), .C(n407), .Y(n389) );
  INVxp5_ASAP7_6t_R U472 ( .A(n413), .Y(n383) );
  XOR2xp5_ASAP7_6t_R U473 ( .A(n382), .B(n381), .Y(n414) );
  MAJIxp5_ASAP7_6t_R U474 ( .A(n416), .B(n383), .C(n414), .Y(n544) );
  INVxp5_ASAP7_6t_R U475 ( .A(n544), .Y(n387) );
  HAxp5_ASAP7_6t_R U476 ( .A(n385), .B(n384), .SN(n542) );
  HAxp5_ASAP7_6t_R U477 ( .A(n543), .B(n542), .SN(n386) );
  HAxp5_ASAP7_6t_R U478 ( .A(n387), .B(n386), .SN(n560) );
  INVxp5_ASAP7_6t_R U479 ( .A(n417), .Y(n412) );
  HAxp5_ASAP7_6t_R U480 ( .A(n389), .B(n388), .SN(n390) );
  HAxp5_ASAP7_6t_R U481 ( .A(n391), .B(n390), .SN(n418) );
  INVxp5_ASAP7_6t_R U482 ( .A(n393), .Y(n392) );
  A2O1A1Ixp33_ASAP7_6t_R U483 ( .A1(A[0]), .A2(B[6]), .B(n392), .C(n397), .Y(
        n430) );
  OR2x2_ASAP7_6t_R U484 ( .A(n393), .B(n443), .Y(n433) );
  MAJIxp5_ASAP7_6t_R U485 ( .A(n431), .B(n430), .C(n433), .Y(n427) );
  INVxp5_ASAP7_6t_R U486 ( .A(n427), .Y(n398) );
  HAxp5_ASAP7_6t_R U487 ( .A(n395), .B(n394), .SN(n396) );
  HAxp5_ASAP7_6t_R U488 ( .A(n397), .B(n396), .SN(n425) );
  MAJIxp5_ASAP7_6t_R U489 ( .A(n398), .B(n425), .C(n426), .Y(n423) );
  INVxp5_ASAP7_6t_R U490 ( .A(n423), .Y(n404) );
  HAxp5_ASAP7_6t_R U491 ( .A(n400), .B(n399), .SN(n401) );
  HAxp5_ASAP7_6t_R U492 ( .A(n402), .B(n401), .SN(n403) );
  INVxp5_ASAP7_6t_R U493 ( .A(n403), .Y(n422) );
  MAJIxp5_ASAP7_6t_R U494 ( .A(n421), .B(n404), .C(n422), .Y(n438) );
  INVxp5_ASAP7_6t_R U495 ( .A(n438), .Y(n411) );
  INVxp5_ASAP7_6t_R U496 ( .A(n405), .Y(n410) );
  INVxp5_ASAP7_6t_R U497 ( .A(n406), .Y(n408) );
  HAxp5_ASAP7_6t_R U498 ( .A(n408), .B(n407), .SN(n409) );
  HAxp5_ASAP7_6t_R U499 ( .A(n410), .B(n409), .SN(n435) );
  MAJIxp5_ASAP7_6t_R U500 ( .A(n411), .B(n436), .C(n435), .Y(n419) );
  MAJIxp5_ASAP7_6t_R U501 ( .A(n412), .B(n418), .C(n419), .Y(n533) );
  HAxp5_ASAP7_6t_R U502 ( .A(n414), .B(n413), .SN(n415) );
  HAxp5_ASAP7_6t_R U503 ( .A(n416), .B(n415), .SN(n530) );
  MAJIxp5_ASAP7_6t_R U504 ( .A(n533), .B(n531), .C(n530), .Y(n558) );
  HAxp5_ASAP7_6t_R U505 ( .A(n418), .B(n417), .SN(n420) );
  HAxp5_ASAP7_6t_R U506 ( .A(n420), .B(n419), .SN(n537) );
  HAxp5_ASAP7_6t_R U507 ( .A(n537), .B(n539), .SN(n440) );
  HAxp5_ASAP7_6t_R U508 ( .A(n422), .B(n421), .SN(n424) );
  HAxp5_ASAP7_6t_R U509 ( .A(n424), .B(n423), .SN(n464) );
  AND2x2_ASAP7_6t_R U510 ( .A(A[5]), .B(B[3]), .Y(n462) );
  INVxp5_ASAP7_6t_R U511 ( .A(n425), .Y(n429) );
  HAxp5_ASAP7_6t_R U512 ( .A(n427), .B(n426), .SN(n428) );
  HAxp5_ASAP7_6t_R U513 ( .A(n429), .B(n428), .SN(n458) );
  XOR2xp5_ASAP7_6t_R U514 ( .A(n430), .B(n433), .Y(n432) );
  HAxp5_ASAP7_6t_R U515 ( .A(n432), .B(n431), .SN(n453) );
  AND2x2_ASAP7_6t_R U516 ( .A(A[3]), .B(B[3]), .Y(n451) );
  AND2x2_ASAP7_6t_R U517 ( .A(A[0]), .B(B[5]), .Y(n434) );
  A2O1A1Ixp33_ASAP7_6t_R U518 ( .A1(B[4]), .A2(A[1]), .B(n434), .C(n433), .Y(
        n445) );
  MAJIxp5_ASAP7_6t_R U519 ( .A(n447), .B(n445), .C(n444), .Y(n450) );
  MAJIxp5_ASAP7_6t_R U520 ( .A(n453), .B(n451), .C(n450), .Y(n455) );
  MAJIxp5_ASAP7_6t_R U521 ( .A(n458), .B(n455), .C(n456), .Y(n461) );
  MAJIxp5_ASAP7_6t_R U522 ( .A(n464), .B(n462), .C(n461), .Y(n466) );
  INVxp5_ASAP7_6t_R U523 ( .A(n435), .Y(n437) );
  HAxp5_ASAP7_6t_R U524 ( .A(n437), .B(n436), .SN(n439) );
  HAxp5_ASAP7_6t_R U525 ( .A(n439), .B(n438), .SN(n467) );
  MAJIxp5_ASAP7_6t_R U526 ( .A(n466), .B(n467), .C(n469), .Y(n536) );
  HAxp5_ASAP7_6t_R U527 ( .A(n440), .B(n536), .SN(n573) );
  INVxp5_ASAP7_6t_R U528 ( .A(n444), .Y(n441) );
  AO21x1_ASAP7_6t_R U529 ( .A1(n443), .A2(n442), .B(n441), .Y(n483) );
  MAJIxp5_ASAP7_6t_R U530 ( .A(n484), .B(n486), .C(n483), .Y(n488) );
  HAxp5_ASAP7_6t_R U531 ( .A(n445), .B(n444), .SN(n446) );
  HAxp5_ASAP7_6t_R U532 ( .A(n447), .B(n446), .SN(n448) );
  INVxp5_ASAP7_6t_R U533 ( .A(n448), .Y(n491) );
  INVxp5_ASAP7_6t_R U534 ( .A(n489), .Y(n449) );
  MAJIxp5_ASAP7_6t_R U535 ( .A(n488), .B(n491), .C(n449), .Y(n478) );
  HAxp5_ASAP7_6t_R U536 ( .A(n451), .B(n450), .SN(n452) );
  HAxp5_ASAP7_6t_R U537 ( .A(n453), .B(n452), .SN(n454) );
  INVxp5_ASAP7_6t_R U538 ( .A(n454), .Y(n482) );
  MAJIxp5_ASAP7_6t_R U539 ( .A(n479), .B(n478), .C(n482), .Y(n493) );
  HAxp5_ASAP7_6t_R U540 ( .A(n456), .B(n455), .SN(n457) );
  HAxp5_ASAP7_6t_R U541 ( .A(n458), .B(n457), .SN(n459) );
  INVxp5_ASAP7_6t_R U542 ( .A(n459), .Y(n495) );
  INVxp5_ASAP7_6t_R U543 ( .A(n492), .Y(n460) );
  MAJIxp5_ASAP7_6t_R U544 ( .A(n493), .B(n495), .C(n460), .Y(n473) );
  HAxp5_ASAP7_6t_R U545 ( .A(n462), .B(n461), .SN(n463) );
  HAxp5_ASAP7_6t_R U546 ( .A(n464), .B(n463), .SN(n465) );
  INVxp5_ASAP7_6t_R U547 ( .A(n465), .Y(n477) );
  MAJIxp5_ASAP7_6t_R U548 ( .A(n474), .B(n473), .C(n477), .Y(n498) );
  INVxp5_ASAP7_6t_R U549 ( .A(n498), .Y(n472) );
  INVxp5_ASAP7_6t_R U550 ( .A(n466), .Y(n471) );
  INVxp5_ASAP7_6t_R U551 ( .A(n467), .Y(n468) );
  HAxp5_ASAP7_6t_R U552 ( .A(n469), .B(n468), .SN(n470) );
  HAxp5_ASAP7_6t_R U553 ( .A(n471), .B(n470), .SN(n497) );
  MAJIxp5_ASAP7_6t_R U554 ( .A(n472), .B(n497), .C(n499), .Y(n574) );
  INVxp5_ASAP7_6t_R U555 ( .A(n527), .Y(n496) );
  INVxp5_ASAP7_6t_R U556 ( .A(n473), .Y(n475) );
  HAxp5_ASAP7_6t_R U557 ( .A(n475), .B(n474), .SN(n476) );
  HAxp5_ASAP7_6t_R U558 ( .A(n477), .B(n476), .SN(n525) );
  INVxp5_ASAP7_6t_R U559 ( .A(n478), .Y(n480) );
  HAxp5_ASAP7_6t_R U560 ( .A(n480), .B(n479), .SN(n481) );
  HAxp5_ASAP7_6t_R U561 ( .A(n482), .B(n481), .SN(n505) );
  AND2x2_ASAP7_6t_R U562 ( .A(A[5]), .B(B[1]), .Y(n503) );
  XOR2xp5_ASAP7_6t_R U563 ( .A(n486), .B(n483), .Y(n485) );
  HAxp5_ASAP7_6t_R U564 ( .A(n485), .B(n484), .SN(n509) );
  AND2x2_ASAP7_6t_R U565 ( .A(A[3]), .B(B[1]), .Y(n507) );
  AND2x2_ASAP7_6t_R U566 ( .A(A[1]), .B(B[2]), .Y(n487) );
  A2O1A1Ixp33_ASAP7_6t_R U567 ( .A1(B[3]), .A2(A[0]), .B(n487), .C(n486), .Y(
        n510) );
  MAJIxp5_ASAP7_6t_R U568 ( .A(n512), .B(n513), .C(n510), .Y(n506) );
  MAJIxp5_ASAP7_6t_R U569 ( .A(n509), .B(n507), .C(n506), .Y(n516) );
  HAxp5_ASAP7_6t_R U570 ( .A(n489), .B(n488), .SN(n490) );
  HAxp5_ASAP7_6t_R U571 ( .A(n491), .B(n490), .SN(n518) );
  MAJIxp5_ASAP7_6t_R U572 ( .A(n516), .B(n518), .C(n515), .Y(n502) );
  MAJIxp5_ASAP7_6t_R U573 ( .A(n505), .B(n503), .C(n502), .Y(n519) );
  HAxp5_ASAP7_6t_R U574 ( .A(n493), .B(n492), .SN(n494) );
  HAxp5_ASAP7_6t_R U575 ( .A(n495), .B(n494), .SN(n520) );
  MAJIxp5_ASAP7_6t_R U576 ( .A(n519), .B(n520), .C(n522), .Y(n529) );
  MAJIxp5_ASAP7_6t_R U577 ( .A(n496), .B(n525), .C(n529), .Y(n589) );
  INVxp5_ASAP7_6t_R U578 ( .A(n497), .Y(n501) );
  HAxp5_ASAP7_6t_R U579 ( .A(n499), .B(n498), .SN(n500) );
  HAxp5_ASAP7_6t_R U580 ( .A(n501), .B(n500), .SN(n585) );
  INVxp5_ASAP7_6t_R U581 ( .A(n576), .Y(n579) );
  HAxp5_ASAP7_6t_R U582 ( .A(n503), .B(n502), .SN(n504) );
  HAxp5_ASAP7_6t_R U583 ( .A(n505), .B(n504), .SN(n580) );
  INVxp5_ASAP7_6t_R U584 ( .A(n564), .Y(n567) );
  HAxp5_ASAP7_6t_R U585 ( .A(n507), .B(n506), .SN(n508) );
  HAxp5_ASAP7_6t_R U586 ( .A(n509), .B(n508), .SN(n568) );
  HAxp5_ASAP7_6t_R U587 ( .A(n513), .B(n510), .SN(n511) );
  HAxp5_ASAP7_6t_R U588 ( .A(n512), .B(n511), .SN(n556) );
  INVxp5_ASAP7_6t_R U589 ( .A(A[2]), .Y(n547) );
  INVxp5_ASAP7_6t_R U590 ( .A(B[0]), .Y(n548) );
  AND2x2_ASAP7_6t_R U591 ( .A(A[0]), .B(B[2]), .Y(n514) );
  A2O1A1Ixp33_ASAP7_6t_R U592 ( .A1(A[1]), .A2(B[1]), .B(n514), .C(n513), .Y(
        n546) );
  OR3x1_ASAP7_6t_R U593 ( .A(n547), .B(n548), .C(n546), .Y(n553) );
  MAJIxp5_ASAP7_6t_R U594 ( .A(n556), .B(n552), .C(n553), .Y(n565) );
  MAJIxp5_ASAP7_6t_R U595 ( .A(n567), .B(n568), .C(n565), .Y(n591) );
  HAxp5_ASAP7_6t_R U596 ( .A(n516), .B(n515), .SN(n517) );
  HAxp5_ASAP7_6t_R U597 ( .A(n518), .B(n517), .SN(n595) );
  MAJIxp5_ASAP7_6t_R U598 ( .A(n591), .B(n595), .C(n590), .Y(n577) );
  MAJIxp5_ASAP7_6t_R U599 ( .A(n579), .B(n580), .C(n577), .Y(n597) );
  INVxp5_ASAP7_6t_R U600 ( .A(n519), .Y(n524) );
  INVxp5_ASAP7_6t_R U601 ( .A(n520), .Y(n521) );
  HAxp5_ASAP7_6t_R U602 ( .A(n522), .B(n521), .SN(n523) );
  HAxp5_ASAP7_6t_R U603 ( .A(n524), .B(n523), .SN(n601) );
  MAJIxp5_ASAP7_6t_R U604 ( .A(n597), .B(n601), .C(n596), .Y(n582) );
  INVxp5_ASAP7_6t_R U605 ( .A(n525), .Y(n526) );
  HAxp5_ASAP7_6t_R U606 ( .A(n527), .B(n526), .SN(n528) );
  HAxp5_ASAP7_6t_R U607 ( .A(n529), .B(n528), .SN(n583) );
  MAJIxp5_ASAP7_6t_R U608 ( .A(n589), .B(n585), .C(n584), .Y(n571) );
  MAJIxp5_ASAP7_6t_R U609 ( .A(n573), .B(n574), .C(n571), .Y(n607) );
  INVxp5_ASAP7_6t_R U610 ( .A(n530), .Y(n532) );
  HAxp5_ASAP7_6t_R U611 ( .A(n532), .B(n531), .SN(n535) );
  INVxp5_ASAP7_6t_R U612 ( .A(n533), .Y(n534) );
  HAxp5_ASAP7_6t_R U613 ( .A(n535), .B(n534), .SN(n605) );
  INVxp5_ASAP7_6t_R U614 ( .A(n536), .Y(n538) );
  MAJIxp5_ASAP7_6t_R U615 ( .A(n539), .B(n538), .C(n537), .Y(n603) );
  INVxp5_ASAP7_6t_R U616 ( .A(n603), .Y(n604) );
  MAJIxp5_ASAP7_6t_R U617 ( .A(n607), .B(n605), .C(n604), .Y(n562) );
  MAJIxp5_ASAP7_6t_R U618 ( .A(n560), .B(n558), .C(n562), .Y(n609) );
  HAxp5_ASAP7_6t_R U619 ( .A(n541), .B(n540), .SN(n613) );
  MAJIxp5_ASAP7_6t_R U620 ( .A(n544), .B(n543), .C(n542), .Y(n611) );
  INVxp5_ASAP7_6t_R U621 ( .A(n611), .Y(n608) );
  MAJIxp5_ASAP7_6t_R U622 ( .A(n609), .B(n613), .C(n608), .Y(n550) );
  NAND2xp5_ASAP7_6t_R U623 ( .A(n545), .B(n549), .Y(O[15]) );
  INVxp5_ASAP7_6t_R U624 ( .A(n553), .Y(n554) );
  OA21x1_ASAP7_6t_R U625 ( .A1(n551), .A2(n550), .B(n549), .Y(O[14]) );
  INVxp5_ASAP7_6t_R U626 ( .A(n552), .Y(n555) );
  INVxp5_ASAP7_6t_R U627 ( .A(n558), .Y(n561) );
  INVxp5_ASAP7_6t_R U628 ( .A(n560), .Y(n559) );
  INVxp5_ASAP7_6t_R U629 ( .A(n565), .Y(n566) );
  INVxp5_ASAP7_6t_R U630 ( .A(n571), .Y(n572) );
  INVxp5_ASAP7_6t_R U631 ( .A(n573), .Y(n570) );
  INVxp5_ASAP7_6t_R U632 ( .A(n577), .Y(n578) );
  OA21x1_ASAP7_6t_R U633 ( .A1(n583), .A2(n582), .B(n584), .Y(O[8]) );
  INVxp5_ASAP7_6t_R U634 ( .A(n584), .Y(n587) );
  INVxp5_ASAP7_6t_R U635 ( .A(n585), .Y(n586) );
  INVxp5_ASAP7_6t_R U636 ( .A(n590), .Y(n593) );
  INVxp5_ASAP7_6t_R U637 ( .A(n591), .Y(n592) );
  INVxp5_ASAP7_6t_R U638 ( .A(n596), .Y(n599) );
  INVxp5_ASAP7_6t_R U639 ( .A(n597), .Y(n598) );
  INVxp5_ASAP7_6t_R U640 ( .A(n605), .Y(n602) );
  INVxp5_ASAP7_6t_R U641 ( .A(n609), .Y(n610) );
endmodule

