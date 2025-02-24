/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:53:45 2025
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
         n178;
  assign O[0] = O[2];
  assign O[1] = A[2];

  NOR2x1_ASAP7_6t_R U64 ( .A(n152), .B(n82), .Y(n155) );
  NAND2xp5R_ASAP7_6t_R U65 ( .A(B[13]), .B(A[13]), .Y(n170) );
  NOR2x1_ASAP7_6t_R U66 ( .A(B[12]), .B(A[12]), .Y(n168) );
  NOR2x2R_ASAP7_6t_R U67 ( .A(A[6]), .B(B[6]), .Y(n148) );
  INVx1_ASAP7_6t_R U68 ( .A(n88), .Y(n81) );
  NOR2x2R_ASAP7_6t_R U69 ( .A(n83), .B(n88), .Y(n82) );
  XOR2xp5_ASAP7_6t_R U70 ( .A(B[5]), .B(A[5]), .Y(n143) );
  AOI31xp33_ASAP7_6t_R U71 ( .A1(n165), .A2(n171), .A3(n164), .B(n168), .Y(
        n166) );
  NAND2xp5R_ASAP7_6t_R U72 ( .A(n124), .B(n153), .Y(n164) );
  INVxp5_ASAP7_6t_R U73 ( .A(n151), .Y(n152) );
  NOR2xp5_ASAP7_6t_R U74 ( .A(B[3]), .B(A[3]), .Y(n97) );
  INVx1_ASAP7_6t_R U75 ( .A(n113), .Y(n65) );
  NOR2xp5_ASAP7_6t_R U76 ( .A(B[9]), .B(A[9]), .Y(n71) );
  NAND2xp5R_ASAP7_6t_R U77 ( .A(B[15]), .B(A[15]), .Y(n136) );
  NOR2xp5_ASAP7_6t_R U78 ( .A(A[6]), .B(B[6]), .Y(n75) );
  INVxp5_ASAP7_6t_R U79 ( .A(n59), .Y(n60) );
  AO21x1_ASAP7_6t_R U80 ( .A1(n86), .A2(n110), .B(n109), .Y(n111) );
  XNOR2xp5_ASAP7_6t_R U81 ( .A(n144), .B(n143), .Y(O[5]) );
  INVx1_ASAP7_6t_R U82 ( .A(n76), .Y(n83) );
  XNOR2xp5_ASAP7_6t_R U83 ( .A(n140), .B(n99), .Y(O[4]) );
  AOI21xp5_ASAP7_6t_R U84 ( .A1(n168), .A2(n170), .B(n167), .Y(n172) );
  XNOR2xp5f_ASAP7_6t_R U85 ( .A(A[4]), .B(B[4]), .Y(n140) );
  NAND2xp5R_ASAP7_6t_R U86 ( .A(A[4]), .B(B[4]), .Y(n70) );
  NAND2xp5R_ASAP7_6t_R U87 ( .A(A[14]), .B(B[14]), .Y(n119) );
  XNOR2xp5f_ASAP7_6t_R U88 ( .A(A[6]), .B(B[6]), .Y(n146) );
  XOR2xp5r_ASAP7_6t_R U89 ( .A(A[11]), .B(B[11]), .Y(n112) );
  XOR2xp5r_ASAP7_6t_R U90 ( .A(A[7]), .B(B[7]), .Y(n149) );
  XNOR2xp5f_ASAP7_6t_R U91 ( .A(B[10]), .B(A[10]), .Y(n162) );
  XOR2xp5r_ASAP7_6t_R U92 ( .A(B[8]), .B(A[8]), .Y(n154) );
  XOR2xp5r_ASAP7_6t_R U93 ( .A(B[13]), .B(A[13]), .Y(n78) );
  XOR2xp5r_ASAP7_6t_R U94 ( .A(B[9]), .B(A[9]), .Y(n157) );
  XNOR2xp5f_ASAP7_6t_R U95 ( .A(B[12]), .B(A[12]), .Y(n110) );
  XNOR2xp5f_ASAP7_6t_R U96 ( .A(B[15]), .B(A[15]), .Y(n130) );
  XNOR2xp5f_ASAP7_6t_R U97 ( .A(A[14]), .B(B[14]), .Y(n177) );
  INVxp5_ASAP7_6t_R U98 ( .A(n164), .Y(n59) );
  INVx2_ASAP7_6t_R U99 ( .A(n153), .Y(n88) );
  NAND2xp5R_ASAP7_6t_R U100 ( .A(A[11]), .B(B[11]), .Y(n116) );
  NAND2xp5_ASAP7_6t_R U101 ( .A(n176), .B(n93), .Y(n80) );
  AOI211xp25_ASAP7_6t_R U102 ( .A1(n79), .A2(n86), .B(n66), .C(n110), .Y(n109)
         );
  NOR2x2R_ASAP7_6t_R U103 ( .A(A[4]), .B(B[4]), .Y(n141) );
  NAND2x1_ASAP7_6t_R U104 ( .A(n100), .B(n151), .Y(n158) );
  NOR2xp5_ASAP7_6t_R U105 ( .A(n123), .B(n122), .Y(n124) );
  NAND2xp5_ASAP7_6t_R U106 ( .A(n161), .B(n73), .Y(n163) );
  NAND2xp5_ASAP7_6t_R U107 ( .A(n86), .B(n107), .Y(n108) );
  NOR2xp5_ASAP7_6t_R U108 ( .A(n71), .B(n156), .Y(n61) );
  OR2x2_ASAP7_6t_R U109 ( .A(A[6]), .B(B[6]), .Y(n62) );
  OR2x2_ASAP7_6t_R U110 ( .A(B[8]), .B(A[8]), .Y(n63) );
  NAND2xp5R_ASAP7_6t_R U111 ( .A(n65), .B(n64), .Y(n123) );
  INVx1_ASAP7_6t_R U112 ( .A(n66), .Y(n64) );
  NOR2xp5_ASAP7_6t_R U113 ( .A(n79), .B(n66), .Y(n169) );
  NOR2x2R_ASAP7_6t_R U114 ( .A(A[11]), .B(B[11]), .Y(n66) );
  XOR2xp5r_ASAP7_6t_R U115 ( .A(n67), .B(n112), .Y(O[11]) );
  AOI21xp5_ASAP7_6t_R U116 ( .A1(n93), .A2(n176), .B(n79), .Y(n67) );
  NAND2xp5R_ASAP7_6t_R U117 ( .A(n89), .B(n153), .Y(n93) );
  INVx1_ASAP7_6t_R U118 ( .A(n134), .Y(n176) );
  NAND2xp5R_ASAP7_6t_R U119 ( .A(B[3]), .B(A[3]), .Y(n68) );
  NAND2xp5R_ASAP7_6t_R U120 ( .A(B[3]), .B(A[3]), .Y(n69) );
  NAND2xp5R_ASAP7_6t_R U121 ( .A(B[9]), .B(A[9]), .Y(n72) );
  NAND2xp5R_ASAP7_6t_R U122 ( .A(B[9]), .B(A[9]), .Y(n73) );
  NAND2xp5R_ASAP7_6t_R U123 ( .A(n170), .B(n119), .Y(n133) );
  INVx1_ASAP7_6t_R U124 ( .A(n122), .Y(n89) );
  NAND2xp5R_ASAP7_6t_R U125 ( .A(n70), .B(n68), .Y(n74) );
  NOR2xp5_ASAP7_6t_R U126 ( .A(n75), .B(n94), .Y(n76) );
  NOR2x2R_ASAP7_6t_R U127 ( .A(n145), .B(n141), .Y(n105) );
  NOR2x2R_ASAP7_6t_R U128 ( .A(B[5]), .B(A[5]), .Y(n145) );
  NAND2xp5R_ASAP7_6t_R U129 ( .A(B[5]), .B(A[5]), .Y(n77) );
  XOR2xp5r_ASAP7_6t_R U130 ( .A(n166), .B(n78), .Y(O[13]) );
  NOR2x2R_ASAP7_6t_R U131 ( .A(B[10]), .B(A[10]), .Y(n79) );
  INVxp5_ASAP7_6t_R U132 ( .A(n125), .Y(n126) );
  XNOR2xp5_ASAP7_6t_R U133 ( .A(n90), .B(n157), .Y(O[9]) );
  AOI31xp33_ASAP7_6t_R U134 ( .A1(n129), .A2(n164), .A3(n128), .B(n135), .Y(
        n131) );
  NAND2xp5R_ASAP7_6t_R U135 ( .A(n62), .B(n81), .Y(n150) );
  OAI21xp5b_ASAP7_6t_R U136 ( .A1(n85), .A2(n82), .B(n63), .Y(n90) );
  NAND2xp5R_ASAP7_6t_R U137 ( .A(n84), .B(n91), .Y(n104) );
  OAI21xp25_ASAP7_6t_R U138 ( .A1(n145), .A2(n144), .B(n77), .Y(n147) );
  NAND2xp5R_ASAP7_6t_R U139 ( .A(B[5]), .B(A[5]), .Y(n84) );
  NAND2x2_ASAP7_6t_R U140 ( .A(n103), .B(n98), .Y(n96) );
  OA21x1_ASAP7_6t_R U141 ( .A1(n115), .A2(n114), .B(n160), .Y(n102) );
  NAND2xp5R_ASAP7_6t_R U142 ( .A(n169), .B(n134), .Y(n165) );
  HB1x1_ASAP7_6t_R U143 ( .A(n158), .Y(n85) );
  HB1x1_ASAP7_6t_R U144 ( .A(n116), .Y(n86) );
  NAND2xp5R_ASAP7_6t_R U145 ( .A(n173), .B(n172), .Y(n174) );
  XNOR2xp5f_ASAP7_6t_R U146 ( .A(n178), .B(n177), .Y(O[14]) );
  INVx2_ASAP7_6t_R U147 ( .A(n87), .Y(n153) );
  AOI21x1_ASAP7_6t_R U148 ( .A1(n96), .A2(n105), .B(n104), .Y(n87) );
  NOR2x2_ASAP7_6t_R U149 ( .A(A[7]), .B(B[7]), .Y(n94) );
  NAND2x1_ASAP7_6t_R U150 ( .A(n159), .B(n95), .Y(n122) );
  NAND2xp5R_ASAP7_6t_R U151 ( .A(n158), .B(n95), .Y(n125) );
  NOR2x2R_ASAP7_6t_R U152 ( .A(n101), .B(n156), .Y(n95) );
  NOR2x2_ASAP7_6t_R U153 ( .A(B[8]), .B(A[8]), .Y(n156) );
  NAND2xp5R_ASAP7_6t_R U154 ( .A(B[6]), .B(A[6]), .Y(n91) );
  OAI211xp33_ASAP7_6t_R U155 ( .A1(n80), .A2(n108), .B(n92), .C(n111), .Y(
        O[12]) );
  NAND2xp5_ASAP7_6t_R U156 ( .A(n80), .B(n106), .Y(n92) );
  A2O1A1Ixp33_ASAP7_6t_R U157 ( .A1(n93), .A2(n176), .B(n175), .C(n174), .Y(
        n178) );
  NOR2x2R_ASAP7_6t_R U158 ( .A(n94), .B(n148), .Y(n159) );
  A2O1A1Ixp33_ASAP7_6t_R U159 ( .A1(n76), .A2(n153), .B(n85), .C(n61), .Y(n161) );
  NAND2xp5R_ASAP7_6t_R U160 ( .A(n74), .B(n142), .Y(n144) );
  NAND2x2_ASAP7_6t_R U161 ( .A(B[3]), .B(A[3]), .Y(n98) );
  INVx1_ASAP7_6t_R U162 ( .A(n69), .Y(n99) );
  NOR2xp5_ASAP7_6t_R U163 ( .A(n97), .B(n99), .Y(O[3]) );
  NAND2x2_ASAP7_6t_R U164 ( .A(A[4]), .B(B[4]), .Y(n103) );
  TIEHIxp5_ASAP7_6t_R U165 ( .H(O[2]) );
  INVx1_ASAP7_6t_R U166 ( .A(B[10]), .Y(n115) );
  INVx1_ASAP7_6t_R U167 ( .A(A[10]), .Y(n114) );
  NAND2xp5R_ASAP7_6t_R U168 ( .A(B[9]), .B(A[9]), .Y(n160) );
  NAND2x2_ASAP7_6t_R U169 ( .A(A[7]), .B(B[7]), .Y(n151) );
  NAND2x2_ASAP7_6t_R U170 ( .A(A[8]), .B(B[8]), .Y(n100) );
  NOR2x2_ASAP7_6t_R U171 ( .A(B[9]), .B(A[9]), .Y(n101) );
  NAND2xp5R_ASAP7_6t_R U172 ( .A(n102), .B(n125), .Y(n134) );
  NOR2x2R_ASAP7_6t_R U173 ( .A(B[10]), .B(A[10]), .Y(n113) );
  INVx1_ASAP7_6t_R U174 ( .A(n110), .Y(n107) );
  NOR2xp5_ASAP7_6t_R U175 ( .A(n123), .B(n107), .Y(n106) );
  OAI21xp5b_ASAP7_6t_R U176 ( .A1(n115), .A2(n114), .B(n72), .Y(n121) );
  INVx1_ASAP7_6t_R U177 ( .A(A[12]), .Y(n118) );
  INVx1_ASAP7_6t_R U178 ( .A(B[12]), .Y(n117) );
  OA21x2_ASAP7_6t_R U179 ( .A1(n118), .A2(n117), .B(n116), .Y(n171) );
  INVx1_ASAP7_6t_R U180 ( .A(n171), .Y(n120) );
  AOI211xp5_ASAP7_6t_R U181 ( .A1(n169), .A2(n121), .B(n120), .C(n133), .Y(
        n129) );
  NAND2xp5_ASAP7_6t_R U182 ( .A(n126), .B(n169), .Y(n128) );
  NOR2xp5_ASAP7_6t_R U183 ( .A(B[13]), .B(A[13]), .Y(n167) );
  NOR2xp5_ASAP7_6t_R U184 ( .A(n168), .B(n167), .Y(n127) );
  OAI22xp5_ASAP7_6t_R U185 ( .A1(A[14]), .A2(B[14]), .B1(n127), .B2(n133), .Y(
        n135) );
  XNOR2xp5f_ASAP7_6t_R U186 ( .A(n131), .B(n130), .Y(O[15]) );
  NAND2xp5_ASAP7_6t_R U187 ( .A(n171), .B(n136), .Y(n132) );
  NOR2xp5_ASAP7_6t_R U188 ( .A(n133), .B(n132), .Y(n139) );
  NAND2xp5_ASAP7_6t_R U189 ( .A(n136), .B(n135), .Y(n137) );
  OAI21xp5_ASAP7_6t_R U190 ( .A1(B[15]), .A2(A[15]), .B(n137), .Y(n138) );
  AOI31xp33_ASAP7_6t_R U191 ( .A1(n139), .A2(n60), .A3(n165), .B(n138), .Y(
        O[16]) );
  INVx1_ASAP7_6t_R U192 ( .A(n141), .Y(n142) );
  XNOR2xp5_ASAP7_6t_R U193 ( .A(n147), .B(n146), .Y(O[6]) );
  XNOR2xp5_ASAP7_6t_R U194 ( .A(n150), .B(n149), .Y(O[7]) );
  XNOR2xp5_ASAP7_6t_R U195 ( .A(n155), .B(n154), .Y(O[8]) );
  XNOR2xp5_ASAP7_6t_R U196 ( .A(n163), .B(n162), .Y(O[10]) );
  NAND2xp5_ASAP7_6t_R U197 ( .A(n169), .B(n172), .Y(n175) );
  NAND2xp5_ASAP7_6t_R U198 ( .A(n171), .B(n170), .Y(n173) );
endmodule

