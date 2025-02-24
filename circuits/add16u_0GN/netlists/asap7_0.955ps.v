/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:15:03 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
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
         n189, n190, n191, n192, n193, n194, n195, n196;
  assign O[0] = O[2];
  assign O[1] = A[2];

  OAI21xp5_ASAP7_6t_R U64 ( .A1(n190), .A2(n189), .B(n188), .Y(n191) );
  NAND2x1_ASAP7_6t_R U65 ( .A(n73), .B(n76), .Y(n63) );
  INVx4_ASAP7_6t_R U66 ( .A(B[7]), .Y(n89) );
  NAND2xp5_ASAP7_6t_R U67 ( .A(B[5]), .B(A[5]), .Y(n170) );
  INVx5_ASAP7_6t_R U68 ( .A(B[9]), .Y(n85) );
  INVx5_ASAP7_6t_R U69 ( .A(B[8]), .Y(n91) );
  NAND2x2_ASAP7_6t_R U70 ( .A(A[8]), .B(B[8]), .Y(n95) );
  NAND2xp5R_ASAP7_6t_R U71 ( .A(n153), .B(n93), .Y(n94) );
  NAND2xp5R_ASAP7_6t_R U72 ( .A(n156), .B(n155), .Y(n159) );
  INVx1_ASAP7_6t_R U73 ( .A(n59), .Y(n81) );
  NAND2xp5R_ASAP7_6t_R U74 ( .A(n194), .B(n185), .Y(n59) );
  OAI211xp67b_ASAP7_6t_R U75 ( .A1(n161), .A2(n160), .B(n159), .C(n60), .Y(
        n163) );
  NAND3xp33R_ASAP7_6t_R U76 ( .A(n158), .B(n157), .C(n181), .Y(n60) );
  XNOR2xp5_ASAP7_6t_R U77 ( .A(A[11]), .B(B[11]), .Y(n149) );
  OAI21xp25_ASAP7_6t_R U78 ( .A1(n172), .A2(n171), .B(n80), .Y(n174) );
  NOR2x2_ASAP7_6t_R U79 ( .A(n172), .B(n166), .Y(n88) );
  XNOR2xp5f_ASAP7_6t_R U80 ( .A(n174), .B(n173), .Y(O[6]) );
  INVx1_ASAP7_6t_R U81 ( .A(n83), .Y(n79) );
  NAND2xp5R_ASAP7_6t_R U82 ( .A(n145), .B(n139), .Y(n142) );
  NAND2xp5R_ASAP7_6t_R U83 ( .A(n90), .B(n89), .Y(n65) );
  NAND2x2_ASAP7_6t_R U84 ( .A(A[3]), .B(B[3]), .Y(n67) );
  INVx5_ASAP7_6t_R U85 ( .A(A[7]), .Y(n90) );
  NOR2x1_ASAP7_6t_R U86 ( .A(n178), .B(n94), .Y(n106) );
  XNOR2xp5_ASAP7_6t_R U87 ( .A(n171), .B(n169), .Y(O[5]) );
  INVx1_ASAP7_6t_R U88 ( .A(n125), .Y(n93) );
  INVxp5_ASAP7_6t_R U89 ( .A(n189), .Y(n193) );
  INVxp5_ASAP7_6t_R U90 ( .A(n154), .Y(n101) );
  XOR2xp5r_ASAP7_6t_R U91 ( .A(n165), .B(n67), .Y(O[4]) );
  OA21x1_ASAP7_6t_R U92 ( .A1(n99), .A2(n98), .B(n131), .Y(n154) );
  XNOR2xp5f_ASAP7_6t_R U93 ( .A(A[4]), .B(B[4]), .Y(n165) );
  XNOR2xp5f_ASAP7_6t_R U94 ( .A(A[13]), .B(B[13]), .Y(n104) );
  XOR2xp5r_ASAP7_6t_R U95 ( .A(B[9]), .B(A[9]), .Y(n182) );
  NAND2xp5R_ASAP7_6t_R U96 ( .A(B[15]), .B(A[15]), .Y(n121) );
  XNOR2xp5f_ASAP7_6t_R U97 ( .A(B[12]), .B(A[12]), .Y(n130) );
  XNOR2xp5f_ASAP7_6t_R U98 ( .A(B[10]), .B(A[10]), .Y(n195) );
  XNOR2xp5f_ASAP7_6t_R U99 ( .A(B[15]), .B(A[15]), .Y(n115) );
  XOR2xp5r_ASAP7_6t_R U100 ( .A(A[7]), .B(B[7]), .Y(n176) );
  XOR2xp5r_ASAP7_6t_R U101 ( .A(B[5]), .B(A[5]), .Y(n169) );
  XNOR2xp5f_ASAP7_6t_R U102 ( .A(A[14]), .B(B[14]), .Y(n162) );
  XNOR2xp5f_ASAP7_6t_R U103 ( .A(A[6]), .B(B[6]), .Y(n173) );
  XOR2xp5r_ASAP7_6t_R U104 ( .A(A[8]), .B(B[8]), .Y(n140) );
  AOI21x1_ASAP7_6t_R U105 ( .A1(n152), .A2(n61), .B(n151), .Y(n155) );
  NOR2x2R_ASAP7_6t_R U106 ( .A(B[13]), .B(A[13]), .Y(n151) );
  NAND2xp5R_ASAP7_6t_R U107 ( .A(B[13]), .B(A[13]), .Y(n61) );
  NOR2x2R_ASAP7_6t_R U108 ( .A(B[12]), .B(A[12]), .Y(n152) );
  XNOR2xp5f_ASAP7_6t_R U109 ( .A(n196), .B(n195), .Y(O[10]) );
  INVx1_ASAP7_6t_R U110 ( .A(n157), .Y(n148) );
  NAND2xp5R_ASAP7_6t_R U111 ( .A(n73), .B(n76), .Y(n62) );
  NAND2xp5R_ASAP7_6t_R U112 ( .A(n73), .B(n76), .Y(n82) );
  NAND2x2_ASAP7_6t_R U113 ( .A(n86), .B(n85), .Y(n76) );
  AOI21xp25_ASAP7_6t_R U114 ( .A1(n68), .A2(n130), .B(n129), .Y(n133) );
  OA21x1_ASAP7_6t_R U115 ( .A1(n187), .A2(n72), .B(n77), .Y(n188) );
  OA21x1_ASAP7_6t_R U116 ( .A1(n108), .A2(n107), .B(n70), .Y(n117) );
  INVxp5_ASAP7_6t_R U117 ( .A(n130), .Y(n127) );
  NAND2xp5R_ASAP7_6t_R U118 ( .A(n92), .B(n91), .Y(n72) );
  HB1x1_ASAP7_6t_R U119 ( .A(n153), .Y(n64) );
  NOR2x2R_ASAP7_6t_R U120 ( .A(n147), .B(n128), .Y(n153) );
  NOR2x2R_ASAP7_6t_R U121 ( .A(A[11]), .B(B[11]), .Y(n128) );
  NOR2x2R_ASAP7_6t_R U122 ( .A(B[10]), .B(A[10]), .Y(n147) );
  NAND2xp5R_ASAP7_6t_R U123 ( .A(n87), .B(n164), .Y(n66) );
  NAND2xp5R_ASAP7_6t_R U124 ( .A(A[11]), .B(B[11]), .Y(n68) );
  NAND2xp5R_ASAP7_6t_R U125 ( .A(n64), .B(n130), .Y(n136) );
  NAND2xp5R_ASAP7_6t_R U126 ( .A(n96), .B(n186), .Y(n69) );
  NAND2x2_ASAP7_6t_R U127 ( .A(B[10]), .B(A[10]), .Y(n96) );
  INVxp5_ASAP7_6t_R U128 ( .A(n81), .Y(n78) );
  NAND2xp5R_ASAP7_6t_R U129 ( .A(A[13]), .B(B[13]), .Y(n70) );
  NAND2xp5R_ASAP7_6t_R U130 ( .A(A[13]), .B(B[13]), .Y(n71) );
  NAND2x2_ASAP7_6t_R U131 ( .A(n92), .B(n91), .Y(n73) );
  NAND2xp5R_ASAP7_6t_R U132 ( .A(n92), .B(n91), .Y(n179) );
  NAND2x2_ASAP7_6t_R U133 ( .A(n74), .B(n75), .Y(n175) );
  INVx13_ASAP7_6t_R U134 ( .A(A[6]), .Y(n74) );
  INVx13_ASAP7_6t_R U135 ( .A(B[6]), .Y(n75) );
  NAND2xp5R_ASAP7_6t_R U136 ( .A(n86), .B(n85), .Y(n77) );
  NAND2xp5R_ASAP7_6t_R U137 ( .A(n86), .B(n85), .Y(n84) );
  NAND2x2_ASAP7_6t_R U138 ( .A(n90), .B(n89), .Y(n138) );
  INVx1_ASAP7_6t_R U139 ( .A(n126), .Y(n161) );
  AOI21xp25_ASAP7_6t_R U140 ( .A1(n83), .A2(n64), .B(n118), .Y(n124) );
  NAND2xp5R_ASAP7_6t_R U141 ( .A(B[5]), .B(A[5]), .Y(n80) );
  NAND2xp5R_ASAP7_6t_R U142 ( .A(n179), .B(n84), .Y(n125) );
  OAI21xp25_ASAP7_6t_R U143 ( .A1(n184), .A2(n63), .B(n97), .Y(n83) );
  OAI21xp5b_ASAP7_6t_R U144 ( .A1(n184), .A2(n82), .B(n97), .Y(n126) );
  INVx13_ASAP7_6t_R U145 ( .A(A[9]), .Y(n86) );
  NAND2x2_ASAP7_6t_R U146 ( .A(n88), .B(n168), .Y(n185) );
  NAND2x2_ASAP7_6t_R U147 ( .A(n87), .B(n164), .Y(n168) );
  AOI21xp25_ASAP7_6t_R U148 ( .A1(n124), .A2(n119), .B(n123), .Y(O[16]) );
  OAI211xp33_ASAP7_6t_R U149 ( .A1(n146), .A2(n175), .B(n140), .C(n65), .Y(
        n143) );
  NAND2x1_ASAP7_6t_R U150 ( .A(n96), .B(n186), .Y(n110) );
  NAND2x2_ASAP7_6t_R U151 ( .A(A[9]), .B(B[9]), .Y(n186) );
  INVxp5_ASAP7_6t_R U152 ( .A(n186), .Y(n187) );
  INVx1_ASAP7_6t_R U153 ( .A(n152), .Y(n100) );
  INVxp5_ASAP7_6t_R U154 ( .A(n166), .Y(n167) );
  OA21x1_ASAP7_6t_R U155 ( .A1(A[3]), .A2(B[3]), .B(n67), .Y(O[3]) );
  TIEHIxp5_ASAP7_6t_R U156 ( .H(O[2]) );
  NAND2x2_ASAP7_6t_R U157 ( .A(A[3]), .B(B[3]), .Y(n164) );
  NAND2x2_ASAP7_6t_R U158 ( .A(A[4]), .B(B[4]), .Y(n87) );
  NOR2x2R_ASAP7_6t_R U159 ( .A(B[5]), .B(A[5]), .Y(n172) );
  NOR2x2R_ASAP7_6t_R U160 ( .A(A[4]), .B(B[4]), .Y(n166) );
  OA21x2_ASAP7_6t_R U161 ( .A1(n74), .A2(n75), .B(n170), .Y(n194) );
  NAND2x2_ASAP7_6t_R U162 ( .A(n194), .B(n185), .Y(n181) );
  NAND2x2_ASAP7_6t_R U163 ( .A(n138), .B(n175), .Y(n178) );
  INVx13_ASAP7_6t_R U164 ( .A(A[8]), .Y(n92) );
  NAND3xp33_ASAP7_6t_R U165 ( .A(n181), .B(n106), .C(n100), .Y(n103) );
  NAND2x2_ASAP7_6t_R U166 ( .A(A[7]), .B(B[7]), .Y(n139) );
  AND2x4_ASAP7_6t_R U167 ( .A(n95), .B(n139), .Y(n184) );
  INVx1_ASAP7_6t_R U168 ( .A(n110), .Y(n97) );
  INVx1_ASAP7_6t_R U169 ( .A(B[12]), .Y(n99) );
  INVx1_ASAP7_6t_R U170 ( .A(A[12]), .Y(n98) );
  NAND2xp5R_ASAP7_6t_R U171 ( .A(A[11]), .B(B[11]), .Y(n131) );
  A2O1A1Ixp33_ASAP7_6t_R U172 ( .A1(n64), .A2(n126), .B(n101), .C(n100), .Y(
        n102) );
  NAND2xp5R_ASAP7_6t_R U173 ( .A(n103), .B(n102), .Y(n105) );
  XNOR2xp5f_ASAP7_6t_R U174 ( .A(n105), .B(n104), .Y(O[13]) );
  NAND2xp5R_ASAP7_6t_R U175 ( .A(n106), .B(n181), .Y(n119) );
  NOR2xp5_ASAP7_6t_R U176 ( .A(n63), .B(n184), .Y(n111) );
  INVx1_ASAP7_6t_R U177 ( .A(B[14]), .Y(n108) );
  INVx1_ASAP7_6t_R U178 ( .A(A[14]), .Y(n107) );
  NAND2xp5_ASAP7_6t_R U179 ( .A(n117), .B(n154), .Y(n109) );
  O2A1O1Ixp5_ASAP7_6t_R U180 ( .A1(n69), .A2(n111), .B(n153), .C(n109), .Y(
        n114) );
  NOR2xp5_ASAP7_6t_R U181 ( .A(n152), .B(n151), .Y(n113) );
  INVx1_ASAP7_6t_R U182 ( .A(n117), .Y(n112) );
  OAI22xp5_ASAP7_6t_R U183 ( .A1(A[14]), .A2(B[14]), .B1(n113), .B2(n112), .Y(
        n120) );
  AOI21xp5_ASAP7_6t_R U184 ( .A1(n119), .A2(n114), .B(n120), .Y(n116) );
  XNOR2xp5_ASAP7_6t_R U185 ( .A(n116), .B(n115), .Y(O[15]) );
  NAND3xp33_ASAP7_6t_R U186 ( .A(n154), .B(n117), .C(n121), .Y(n118) );
  NAND2xp5_ASAP7_6t_R U187 ( .A(n121), .B(n120), .Y(n122) );
  OAI21xp5_ASAP7_6t_R U188 ( .A1(B[15]), .A2(A[15]), .B(n122), .Y(n123) );
  NOR2x1_ASAP7_6t_R U189 ( .A(n62), .B(n178), .Y(n157) );
  NAND2xp5R_ASAP7_6t_R U190 ( .A(n181), .B(n157), .Y(n137) );
  NAND4xp25_ASAP7_6t_R U191 ( .A(n137), .B(n79), .C(n127), .D(n68), .Y(n135)
         );
  AOI211xp25_ASAP7_6t_R U192 ( .A1(n147), .A2(n68), .B(n128), .C(n130), .Y(
        n129) );
  NOR2xp5_ASAP7_6t_R U193 ( .A(n136), .B(n79), .Y(n132) );
  NOR2xp5_ASAP7_6t_R U194 ( .A(n133), .B(n132), .Y(n134) );
  OAI211xp33_ASAP7_6t_R U195 ( .A1(n137), .A2(n136), .B(n135), .C(n134), .Y(
        O[12]) );
  INVx1_ASAP7_6t_R U196 ( .A(n139), .Y(n146) );
  INVx1_ASAP7_6t_R U197 ( .A(n140), .Y(n145) );
  NOR2xp5_ASAP7_6t_R U198 ( .A(n140), .B(n178), .Y(n141) );
  AOI22xp25_ASAP7_6t_R U199 ( .A1(n143), .A2(n142), .B1(n78), .B2(n141), .Y(
        n144) );
  OAI31xp5f_ASAP7_6t_R U200 ( .A1(n146), .A2(n78), .A3(n145), .B(n144), .Y(
        O[8]) );
  O2A1O1Ixp33_ASAP7_6t_R U201 ( .A1(n81), .A2(n148), .B(n161), .C(n147), .Y(
        n150) );
  XNOR2xp5_ASAP7_6t_R U202 ( .A(n150), .B(n149), .Y(O[11]) );
  NAND2x1_ASAP7_6t_R U203 ( .A(n153), .B(n155), .Y(n160) );
  NAND2xp5_ASAP7_6t_R U204 ( .A(n154), .B(n71), .Y(n156) );
  INVx1_ASAP7_6t_R U205 ( .A(n160), .Y(n158) );
  XNOR2xp5_ASAP7_6t_R U206 ( .A(n163), .B(n162), .Y(O[14]) );
  NAND2xp5R_ASAP7_6t_R U207 ( .A(n66), .B(n167), .Y(n171) );
  NAND2xp5_ASAP7_6t_R U208 ( .A(n175), .B(n181), .Y(n177) );
  XNOR2xp5_ASAP7_6t_R U209 ( .A(n177), .B(n176), .Y(O[7]) );
  INVx1_ASAP7_6t_R U210 ( .A(n178), .Y(n190) );
  INVx1_ASAP7_6t_R U211 ( .A(n184), .Y(n180) );
  A2O1A1Ixp33_ASAP7_6t_R U212 ( .A1(n190), .A2(n181), .B(n180), .C(n72), .Y(
        n183) );
  XNOR2xp5_ASAP7_6t_R U213 ( .A(n183), .B(n182), .Y(O[9]) );
  NAND2xp5_ASAP7_6t_R U214 ( .A(n184), .B(n186), .Y(n189) );
  HB1x1_ASAP7_6t_R U215 ( .A(n185), .Y(n192) );
  AOI31xp33_ASAP7_6t_R U216 ( .A1(n194), .A2(n193), .A3(n192), .B(n191), .Y(
        n196) );
endmodule

