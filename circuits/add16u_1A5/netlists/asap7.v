/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:51:35 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
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
         n233, n234, n235, n236, n237, n238, n239, n240;

  NOR2xp5_ASAP7_6t_R U77 ( .A(B[15]), .B(A[15]), .Y(n185) );
  NOR2xp5_ASAP7_6t_R U78 ( .A(n93), .B(n181), .Y(n221) );
  NAND3xp33R_ASAP7_6t_R U79 ( .A(n112), .B(n111), .C(n227), .Y(n236) );
  NOR2x2R_ASAP7_6t_R U80 ( .A(n141), .B(n208), .Y(n112) );
  NOR2xp5_ASAP7_6t_R U81 ( .A(A[0]), .B(B[0]), .Y(n192) );
  XNOR2xp5_ASAP7_6t_R U82 ( .A(A[6]), .B(B[6]), .Y(n202) );
  OA21x1_ASAP7_6t_R U83 ( .A1(B[1]), .A2(A[1]), .B(n100), .Y(n74) );
  NOR2x2_ASAP7_6t_R U84 ( .A(n162), .B(n149), .Y(n133) );
  NAND2x1p5_ASAP7_6t_R U85 ( .A(n152), .B(n204), .Y(n208) );
  NAND2xp5_ASAP7_6t_R U86 ( .A(n158), .B(n206), .Y(n131) );
  NAND2xp5R_ASAP7_6t_R U87 ( .A(n154), .B(n151), .Y(n157) );
  NOR2xp5_ASAP7_6t_R U88 ( .A(A[4]), .B(B[4]), .Y(n87) );
  INVx11_ASAP7_6t_R U89 ( .A(A[0]), .Y(n85) );
  NAND2xp5R_ASAP7_6t_R U90 ( .A(B[13]), .B(A[13]), .Y(n229) );
  XNOR2xp5f_ASAP7_6t_R U91 ( .A(n195), .B(n194), .Y(O[2]) );
  OAI21xp5_ASAP7_6t_R U92 ( .A1(n76), .A2(n74), .B(n75), .Y(n226) );
  XNOR2xp5_ASAP7_6t_R U93 ( .A(n100), .B(n193), .Y(O[1]) );
  INVxp5_ASAP7_6t_R U94 ( .A(n137), .Y(n135) );
  INVxp5_ASAP7_6t_R U95 ( .A(n156), .Y(n128) );
  OA21x1_ASAP7_6t_R U96 ( .A1(n184), .A2(n229), .B(n183), .Y(n237) );
  INVxp5_ASAP7_6t_R U97 ( .A(n131), .Y(n130) );
  INVx1_ASAP7_6t_R U98 ( .A(n232), .Y(n233) );
  INVxp5_ASAP7_6t_R U99 ( .A(n144), .Y(n78) );
  NAND2xp5_ASAP7_6t_R U100 ( .A(n182), .B(n221), .Y(n232) );
  INVxp5_ASAP7_6t_R U101 ( .A(n182), .Y(n184) );
  INVxp5_ASAP7_6t_R U102 ( .A(n84), .Y(n214) );
  NAND2x1_ASAP7_6t_R U103 ( .A(n163), .B(n86), .Y(n96) );
  INVx1_ASAP7_6t_R U104 ( .A(n225), .Y(n196) );
  INVxp5_ASAP7_6t_R U105 ( .A(n142), .Y(n136) );
  XOR2xp5r_ASAP7_6t_R U106 ( .A(B[3]), .B(A[3]), .Y(n197) );
  XNOR2xp5f_ASAP7_6t_R U107 ( .A(B[11]), .B(A[11]), .Y(n219) );
  XNOR2xp5f_ASAP7_6t_R U108 ( .A(A[2]), .B(B[2]), .Y(n194) );
  XNOR2xp5f_ASAP7_6t_R U109 ( .A(A[10]), .B(B[10]), .Y(n210) );
  NAND2xp5R_ASAP7_6t_R U110 ( .A(B[14]), .B(A[14]), .Y(n183) );
  XNOR2xp5f_ASAP7_6t_R U111 ( .A(A[8]), .B(B[8]), .Y(n205) );
  XNOR2xp5f_ASAP7_6t_R U112 ( .A(A[5]), .B(B[5]), .Y(n145) );
  XOR2xp5r_ASAP7_6t_R U113 ( .A(A[4]), .B(B[4]), .Y(n146) );
  XNOR2xp5f_ASAP7_6t_R U114 ( .A(A[7]), .B(B[7]), .Y(n167) );
  XOR2xp5r_ASAP7_6t_R U115 ( .A(B[12]), .B(A[12]), .Y(n142) );
  XNOR2xp5f_ASAP7_6t_R U116 ( .A(B[15]), .B(A[15]), .Y(n239) );
  XNOR2xp5f_ASAP7_6t_R U117 ( .A(B[1]), .B(A[1]), .Y(n193) );
  XNOR2xp5f_ASAP7_6t_R U118 ( .A(B[14]), .B(A[14]), .Y(n231) );
  XNOR2xp5f_ASAP7_6t_R U119 ( .A(B[13]), .B(A[13]), .Y(n170) );
  XOR2xp5r_ASAP7_6t_R U120 ( .A(A[9]), .B(B[9]), .Y(n154) );
  INVx11_ASAP7_6t_R U121 ( .A(B[0]), .Y(n124) );
  OAI211xp67b_ASAP7_6t_R U122 ( .A1(n139), .A2(n137), .B(n105), .C(n106), .Y(
        O[12]) );
  NOR2x2_ASAP7_6t_R U123 ( .A(A[5]), .B(B[5]), .Y(n160) );
  OA21x1_ASAP7_6t_R U124 ( .A1(B[3]), .A2(A[3]), .B(n99), .Y(n75) );
  NAND2xp5R_ASAP7_6t_R U125 ( .A(n223), .B(n225), .Y(n76) );
  NAND2xp5R_ASAP7_6t_R U126 ( .A(n103), .B(n206), .Y(n91) );
  OAI21xp5b_ASAP7_6t_R U127 ( .A1(n148), .A2(n149), .B(n147), .Y(n103) );
  NOR2x2R_ASAP7_6t_R U128 ( .A(A[7]), .B(B[7]), .Y(n81) );
  AOI31xp33_ASAP7_6t_R U129 ( .A1(n79), .A2(n114), .A3(n78), .B(n159), .Y(n134) );
  NAND2x1_ASAP7_6t_R U130 ( .A(n139), .B(n77), .Y(n105) );
  NOR2x1_ASAP7_6t_R U131 ( .A(n142), .B(n169), .Y(n77) );
  NOR2x2R_ASAP7_6t_R U132 ( .A(n160), .B(n159), .Y(n148) );
  NOR2x2_ASAP7_6t_R U133 ( .A(A[4]), .B(B[4]), .Y(n159) );
  NOR2xp5_ASAP7_6t_R U134 ( .A(n144), .B(n89), .Y(n80) );
  INVxp5_ASAP7_6t_R U135 ( .A(n89), .Y(n79) );
  XNOR2xp5_ASAP7_6t_R U136 ( .A(n80), .B(n146), .Y(O[4]) );
  NOR2x2R_ASAP7_6t_R U137 ( .A(n81), .B(n164), .Y(n147) );
  NOR2x2R_ASAP7_6t_R U138 ( .A(A[6]), .B(B[6]), .Y(n164) );
  INVx2_ASAP7_6t_R U139 ( .A(A[2]), .Y(n115) );
  INVx2_ASAP7_6t_R U140 ( .A(B[2]), .Y(n116) );
  OAI22xp5_ASAP7_6t_R U141 ( .A1(B[3]), .A2(A[3]), .B1(A[2]), .B2(B[2]), .Y(
        n222) );
  NAND2x2_ASAP7_6t_R U142 ( .A(A[6]), .B(B[6]), .Y(n82) );
  NAND2xp5R_ASAP7_6t_R U143 ( .A(A[6]), .B(B[6]), .Y(n83) );
  NAND2xp5R_ASAP7_6t_R U144 ( .A(A[10]), .B(B[10]), .Y(n84) );
  NAND2x2_ASAP7_6t_R U145 ( .A(A[5]), .B(B[5]), .Y(n86) );
  OAI21xp5_ASAP7_6t_R U146 ( .A1(B[1]), .A2(A[1]), .B(n100), .Y(n88) );
  INVx13_ASAP7_6t_R U147 ( .A(A[0]), .Y(n125) );
  NAND2xp5_ASAP7_6t_R U148 ( .A(n142), .B(n138), .Y(n137) );
  OA22x1_ASAP7_6t_R U149 ( .A1(n177), .A2(n175), .B1(n174), .B2(n173), .Y(n176) );
  NAND2xp5_ASAP7_6t_R U150 ( .A(n179), .B(n180), .Y(n120) );
  INVxp5_ASAP7_6t_R U151 ( .A(n178), .Y(n132) );
  INVxp5_ASAP7_6t_R U152 ( .A(n155), .Y(n151) );
  INVx1_ASAP7_6t_R U153 ( .A(n190), .Y(n139) );
  INVxp5_ASAP7_6t_R U154 ( .A(n177), .Y(n123) );
  INVxp5_ASAP7_6t_R U155 ( .A(n122), .Y(n121) );
  INVxp5_ASAP7_6t_R U156 ( .A(n186), .Y(n189) );
  AOI31xp67_ASAP7_6t_R U157 ( .A1(n225), .A2(n223), .A3(n224), .B(n222), .Y(
        n89) );
  OAI21xp5b_ASAP7_6t_R U158 ( .A1(n89), .A2(n207), .B(n150), .Y(n129) );
  OAI21xp5b_ASAP7_6t_R U159 ( .A1(n89), .A2(n92), .B(n91), .Y(n126) );
  NOR2xp5_ASAP7_6t_R U160 ( .A(n162), .B(n89), .Y(n200) );
  NOR2x1_ASAP7_6t_R U161 ( .A(n89), .B(n113), .Y(n169) );
  XNOR2xp5_ASAP7_6t_R U162 ( .A(n90), .B(n219), .Y(O[11]) );
  OAI21xp5_ASAP7_6t_R U163 ( .A1(n218), .A2(n126), .B(n217), .Y(n90) );
  NAND2xp5_ASAP7_6t_R U164 ( .A(n206), .B(n133), .Y(n92) );
  NOR2x2R_ASAP7_6t_R U165 ( .A(B[12]), .B(A[12]), .Y(n181) );
  NOR2x2R_ASAP7_6t_R U166 ( .A(B[13]), .B(A[13]), .Y(n93) );
  NAND2xp5R_ASAP7_6t_R U167 ( .A(n95), .B(n94), .Y(n182) );
  INVx1_ASAP7_6t_R U168 ( .A(B[14]), .Y(n94) );
  INVx1_ASAP7_6t_R U169 ( .A(A[14]), .Y(n95) );
  NAND2xp5R_ASAP7_6t_R U170 ( .A(A[9]), .B(B[9]), .Y(n97) );
  NAND2xp5R_ASAP7_6t_R U171 ( .A(A[9]), .B(B[9]), .Y(n98) );
  XNOR2xp5_ASAP7_6t_R U172 ( .A(n107), .B(n210), .Y(O[10]) );
  OAI21xp5_ASAP7_6t_R U173 ( .A1(n209), .A2(n126), .B(n98), .Y(n107) );
  OAI21xp25_ASAP7_6t_R U174 ( .A1(n155), .A2(n154), .B(n153), .Y(n156) );
  NAND2xp5R_ASAP7_6t_R U175 ( .A(n116), .B(n115), .Y(n99) );
  NOR2x2_ASAP7_6t_R U176 ( .A(n85), .B(n124), .Y(n100) );
  NOR2x2R_ASAP7_6t_R U177 ( .A(n172), .B(n171), .Y(n227) );
  AND2x4_ASAP7_6t_R U178 ( .A(B[12]), .B(A[12]), .Y(n171) );
  NAND2xp5R_ASAP7_6t_R U179 ( .A(n103), .B(n112), .Y(n178) );
  NAND2xp5R_ASAP7_6t_R U180 ( .A(n220), .B(n227), .Y(n234) );
  NOR2xp5_ASAP7_6t_R U181 ( .A(n141), .B(n211), .Y(n101) );
  NAND2x2_ASAP7_6t_R U182 ( .A(n213), .B(n212), .Y(n141) );
  NOR2xp5_ASAP7_6t_R U183 ( .A(n132), .B(n169), .Y(n122) );
  NAND2xp5R_ASAP7_6t_R U184 ( .A(n178), .B(n175), .Y(n102) );
  NOR2x2R_ASAP7_6t_R U185 ( .A(n125), .B(n124), .Y(n191) );
  AOI22xp25_ASAP7_6t_R U186 ( .A1(n136), .A2(n172), .B1(n169), .B2(n135), .Y(
        n106) );
  NAND4xp25_ASAP7_6t_R U187 ( .A(n236), .B(n234), .C(n233), .D(n235), .Y(n109)
         );
  XNOR2xp5f_ASAP7_6t_R U188 ( .A(n104), .B(n205), .Y(O[8]) );
  NAND2xp5R_ASAP7_6t_R U189 ( .A(n129), .B(n204), .Y(n104) );
  NAND2x2_ASAP7_6t_R U190 ( .A(n114), .B(n143), .Y(n162) );
  OAI21xp5_ASAP7_6t_R U191 ( .A1(n230), .A2(n238), .B(n229), .Y(n108) );
  XNOR2xp5f_ASAP7_6t_R U192 ( .A(n108), .B(n231), .Y(O[14]) );
  OAI21xp5_ASAP7_6t_R U193 ( .A1(n109), .A2(n238), .B(n237), .Y(n240) );
  NAND2xp5R_ASAP7_6t_R U194 ( .A(n101), .B(n227), .Y(n235) );
  NOR2xp5_ASAP7_6t_R U195 ( .A(n220), .B(n110), .Y(n175) );
  NOR2xp5_ASAP7_6t_R U196 ( .A(n141), .B(n211), .Y(n110) );
  NOR2x2R_ASAP7_6t_R U197 ( .A(A[9]), .B(B[9]), .Y(n140) );
  NAND2x2_ASAP7_6t_R U198 ( .A(B[3]), .B(A[3]), .Y(n143) );
  NAND2x2_ASAP7_6t_R U199 ( .A(A[4]), .B(B[4]), .Y(n114) );
  OAI21xp5b_ASAP7_6t_R U200 ( .A1(n148), .A2(n96), .B(n147), .Y(n111) );
  NAND2x1_ASAP7_6t_R U201 ( .A(n133), .B(n112), .Y(n113) );
  AND2x4_ASAP7_6t_R U202 ( .A(B[11]), .B(A[11]), .Y(n172) );
  NOR2x1_ASAP7_6t_R U203 ( .A(n113), .B(n228), .Y(n238) );
  XNOR2xp5f_ASAP7_6t_R U204 ( .A(n240), .B(n239), .Y(O[15]) );
  NAND2xp5R_ASAP7_6t_R U205 ( .A(n118), .B(n117), .Y(n215) );
  INVx1_ASAP7_6t_R U206 ( .A(A[10]), .Y(n117) );
  INVx1_ASAP7_6t_R U207 ( .A(B[10]), .Y(n118) );
  AOI21xp25_ASAP7_6t_R U208 ( .A1(n123), .A2(n121), .B(n119), .Y(O[13]) );
  OAI31xp5f_ASAP7_6t_R U209 ( .A1(n102), .A2(n169), .A3(n120), .B(n176), .Y(
        n119) );
  NAND2xp5R_ASAP7_6t_R U210 ( .A(n178), .B(n175), .Y(n190) );
  OAI21xp5_ASAP7_6t_R U211 ( .A1(B[1]), .A2(A[1]), .B(n191), .Y(n224) );
  AOI211xp25_ASAP7_6t_R U212 ( .A1(n130), .A2(n129), .B(n128), .C(n127), .Y(
        O[9]) );
  NOR2xp5_ASAP7_6t_R U213 ( .A(n157), .B(n129), .Y(n127) );
  NAND2x2_ASAP7_6t_R U214 ( .A(n82), .B(n199), .Y(n149) );
  INVx1_ASAP7_6t_R U215 ( .A(n133), .Y(n207) );
  XNOR2xp5_ASAP7_6t_R U216 ( .A(n134), .B(n145), .Y(O[5]) );
  NAND2xp5R_ASAP7_6t_R U217 ( .A(B[1]), .B(A[1]), .Y(n223) );
  INVx1_ASAP7_6t_R U218 ( .A(n172), .Y(n138) );
  NAND2x2_ASAP7_6t_R U219 ( .A(A[2]), .B(B[2]), .Y(n225) );
  NAND2x2_ASAP7_6t_R U220 ( .A(A[8]), .B(B[8]), .Y(n152) );
  NAND2x2_ASAP7_6t_R U221 ( .A(A[7]), .B(B[7]), .Y(n204) );
  NAND2x2_ASAP7_6t_R U222 ( .A(A[10]), .B(B[10]), .Y(n213) );
  NAND2x2_ASAP7_6t_R U223 ( .A(A[9]), .B(B[9]), .Y(n212) );
  NAND2x2_ASAP7_6t_R U224 ( .A(A[6]), .B(B[6]), .Y(n163) );
  NAND2x2_ASAP7_6t_R U225 ( .A(A[5]), .B(B[5]), .Y(n199) );
  OAI21xp5b_ASAP7_6t_R U226 ( .A1(B[11]), .A2(A[11]), .B(n215), .Y(n220) );
  NOR2x2R_ASAP7_6t_R U227 ( .A(A[8]), .B(B[8]), .Y(n155) );
  NOR2x1_ASAP7_6t_R U228 ( .A(n140), .B(n155), .Y(n211) );
  INVx1_ASAP7_6t_R U229 ( .A(n143), .Y(n144) );
  AND2x2_ASAP7_6t_R U230 ( .A(n204), .B(n152), .Y(n206) );
  OA21x2_ASAP7_6t_R U231 ( .A1(n96), .A2(n148), .B(n147), .Y(n150) );
  INVxp5_ASAP7_6t_R U232 ( .A(n154), .Y(n158) );
  OAI211xp33_ASAP7_6t_R U233 ( .A1(n155), .A2(n204), .B(n152), .C(n154), .Y(
        n153) );
  INVx1_ASAP7_6t_R U234 ( .A(n164), .Y(n161) );
  OR2x2_ASAP7_6t_R U235 ( .A(n87), .B(n160), .Y(n201) );
  NAND2xp5R_ASAP7_6t_R U236 ( .A(n161), .B(n148), .Y(n166) );
  OA21x2_ASAP7_6t_R U237 ( .A1(n164), .A2(n199), .B(n83), .Y(n165) );
  OAI21xp5b_ASAP7_6t_R U238 ( .A1(n166), .A2(n200), .B(n165), .Y(n168) );
  XNOR2xp5_ASAP7_6t_R U239 ( .A(n168), .B(n167), .Y(O[7]) );
  INVx1_ASAP7_6t_R U240 ( .A(n170), .Y(n180) );
  INVx1_ASAP7_6t_R U241 ( .A(n181), .Y(n179) );
  NAND2xp5_ASAP7_6t_R U242 ( .A(n170), .B(n227), .Y(n177) );
  AOI211xp25_ASAP7_6t_R U243 ( .A1(n172), .A2(n179), .B(n171), .C(n170), .Y(
        n174) );
  NOR2xp5_ASAP7_6t_R U244 ( .A(n181), .B(n180), .Y(n173) );
  AOI21xp5_ASAP7_6t_R U245 ( .A1(n232), .A2(n237), .B(n185), .Y(n186) );
  NAND2xp5_ASAP7_6t_R U246 ( .A(n237), .B(n227), .Y(n187) );
  AOI22xp25_ASAP7_6t_R U247 ( .A1(B[15]), .A2(A[15]), .B1(n187), .B2(n186), 
        .Y(n188) );
  OAI31xp5f_ASAP7_6t_R U248 ( .A1(n102), .A2(n169), .A3(n189), .B(n188), .Y(
        O[16]) );
  NOR2xp5_ASAP7_6t_R U249 ( .A(n192), .B(n100), .Y(O[0]) );
  NAND2xp5R_ASAP7_6t_R U250 ( .A(n88), .B(n223), .Y(n195) );
  OAI21xp5_ASAP7_6t_R U251 ( .A1(n196), .A2(n195), .B(n99), .Y(n198) );
  XNOR2xp5_ASAP7_6t_R U252 ( .A(n198), .B(n197), .Y(O[3]) );
  OAI21xp5b_ASAP7_6t_R U253 ( .A1(n201), .A2(n200), .B(n86), .Y(n203) );
  XNOR2xp5_ASAP7_6t_R U254 ( .A(n203), .B(n202), .Y(O[6]) );
  INVxp5_ASAP7_6t_R U255 ( .A(n211), .Y(n209) );
  NAND2xp5_ASAP7_6t_R U256 ( .A(n215), .B(n211), .Y(n218) );
  INVxp5_ASAP7_6t_R U257 ( .A(n97), .Y(n216) );
  AOI21xp25_ASAP7_6t_R U258 ( .A1(n216), .A2(n215), .B(n214), .Y(n217) );
  NAND4xp25_ASAP7_6t_R U259 ( .A(n236), .B(n235), .C(n234), .D(n221), .Y(n230)
         );
  NAND2xp5R_ASAP7_6t_R U260 ( .A(n227), .B(n226), .Y(n228) );
endmodule

