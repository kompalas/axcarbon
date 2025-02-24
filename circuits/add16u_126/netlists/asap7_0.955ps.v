/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:16:54 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168;
  assign O[2] = O[3];
  assign O[4] = A[3];
  assign O[0] = A[8];
  assign O[1] = B[0];

  NOR2xp5_ASAP7_6t_R U58 ( .A(B[15]), .B(A[15]), .Y(n163) );
  AND2x2_ASAP7_6t_R U59 ( .A(n103), .B(n104), .Y(n162) );
  INVx1_ASAP7_6t_R U60 ( .A(n150), .Y(n153) );
  INVx4_ASAP7_6t_R U61 ( .A(B[9]), .Y(n83) );
  INVx4_ASAP7_6t_R U62 ( .A(B[8]), .Y(n80) );
  INVx4_ASAP7_6t_R U63 ( .A(A[9]), .Y(n82) );
  INVx2_ASAP7_6t_R U64 ( .A(A[10]), .Y(n96) );
  INVx1_ASAP7_6t_R U65 ( .A(n74), .Y(n73) );
  NAND3xp33R_ASAP7_6t_R U66 ( .A(n72), .B(n92), .C(n93), .Y(O[10]) );
  AND2x4_ASAP7_6t_R U67 ( .A(B[13]), .B(A[13]), .Y(n150) );
  AND2x4_ASAP7_6t_R U68 ( .A(n97), .B(n98), .Y(n144) );
  INVxp5_ASAP7_6t_R U69 ( .A(n165), .Y(n156) );
  NAND2x1p5_ASAP7_6t_R U70 ( .A(n130), .B(n126), .Y(n89) );
  NAND2xp5R_ASAP7_6t_R U71 ( .A(n117), .B(n116), .Y(n118) );
  INVx2_ASAP7_6t_R U72 ( .A(A[14]), .Y(n155) );
  INVx2_ASAP7_6t_R U73 ( .A(B[14]), .Y(n154) );
  XNOR2xp5_ASAP7_6t_R U74 ( .A(n131), .B(n128), .Y(O[6]) );
  NAND2xp5R_ASAP7_6t_R U75 ( .A(n108), .B(n107), .Y(n109) );
  AOI21xp5_ASAP7_6t_R U76 ( .A1(n106), .A2(n108), .B(n105), .Y(n110) );
  NAND2xp5R_ASAP7_6t_R U77 ( .A(B[15]), .B(A[15]), .Y(n164) );
  INVxp5_ASAP7_6t_R U78 ( .A(n151), .Y(n152) );
  XOR2xp5r_ASAP7_6t_R U79 ( .A(n125), .B(n66), .Y(O[5]) );
  XNOR2xp5f_ASAP7_6t_R U80 ( .A(B[5]), .B(A[5]), .Y(n125) );
  XNOR2xp5f_ASAP7_6t_R U81 ( .A(A[8]), .B(B[8]), .Y(n135) );
  XOR2xp5r_ASAP7_6t_R U82 ( .A(A[6]), .B(B[6]), .Y(n128) );
  XNOR2xp5f_ASAP7_6t_R U83 ( .A(A[9]), .B(B[9]), .Y(n139) );
  XNOR2xp5f_ASAP7_6t_R U84 ( .A(B[7]), .B(A[7]), .Y(n132) );
  XOR2xp5r_ASAP7_6t_R U85 ( .A(A[14]), .B(B[14]), .Y(n147) );
  XOR2xp5r_ASAP7_6t_R U86 ( .A(B[15]), .B(A[15]), .Y(n159) );
  XOR2xp5r_ASAP7_6t_R U87 ( .A(A[11]), .B(B[11]), .Y(n115) );
  XOR2xp5r_ASAP7_6t_R U88 ( .A(B[13]), .B(A[13]), .Y(n108) );
  XNOR2xp5f_ASAP7_6t_R U89 ( .A(A[12]), .B(B[12]), .Y(n100) );
  NAND2x2_ASAP7_6t_R U90 ( .A(B[10]), .B(A[10]), .Y(n97) );
  NAND2xp5_ASAP7_6t_R U91 ( .A(n97), .B(n98), .Y(n77) );
  NAND2xp5R_ASAP7_6t_R U92 ( .A(n58), .B(n57), .Y(n61) );
  NAND2xp5_ASAP7_6t_R U93 ( .A(n134), .B(n90), .Y(n63) );
  OAI21xp5_ASAP7_6t_R U94 ( .A1(B[11]), .A2(A[11]), .B(n114), .Y(n56) );
  INVxp5_ASAP7_6t_R U95 ( .A(n145), .Y(n107) );
  AOI22xp25_ASAP7_6t_R U96 ( .A1(n83), .A2(n82), .B1(n81), .B2(n80), .Y(n65)
         );
  NAND2xp5_ASAP7_6t_R U97 ( .A(n134), .B(n90), .Y(n62) );
  XNOR2xp5_ASAP7_6t_R U98 ( .A(n140), .B(n139), .Y(O[9]) );
  NAND3xp33_ASAP7_6t_R U99 ( .A(n138), .B(n137), .C(n91), .Y(n92) );
  INVxp5_ASAP7_6t_R U100 ( .A(n167), .Y(n78) );
  AO31x1_ASAP7_6t_R U101 ( .A1(n166), .A2(n165), .A3(n164), .B(n163), .Y(n54)
         );
  INVx4_ASAP7_6t_R U102 ( .A(A[8]), .Y(n81) );
  NAND2xp5R_ASAP7_6t_R U103 ( .A(n104), .B(n55), .Y(n101) );
  NAND2xp5R_ASAP7_6t_R U104 ( .A(n71), .B(n168), .Y(n55) );
  AOI21xp5_ASAP7_6t_R U105 ( .A1(n144), .A2(n61), .B(n56), .Y(n168) );
  NAND2xp5R_ASAP7_6t_R U106 ( .A(n69), .B(n59), .Y(n71) );
  NAND2xp5R_ASAP7_6t_R U107 ( .A(n83), .B(n82), .Y(n57) );
  NAND2xp5R_ASAP7_6t_R U108 ( .A(n81), .B(n80), .Y(n58) );
  OAI21xp5b_ASAP7_6t_R U109 ( .A1(n79), .A2(n89), .B(n64), .Y(n69) );
  NOR2xp5_ASAP7_6t_R U110 ( .A(n77), .B(n63), .Y(n59) );
  OAI21xp5b_ASAP7_6t_R U111 ( .A1(A[11]), .A2(B[11]), .B(n114), .Y(n60) );
  INVx2_ASAP7_6t_R U112 ( .A(n138), .Y(n113) );
  AOI21xp5_ASAP7_6t_R U113 ( .A1(n138), .A2(n137), .B(n136), .Y(n140) );
  NAND2xp5R_ASAP7_6t_R U114 ( .A(n134), .B(n138), .Y(n70) );
  AO22x1_ASAP7_6t_R U115 ( .A1(n83), .A2(n82), .B1(n81), .B2(n80), .Y(n143) );
  NAND2x2_ASAP7_6t_R U116 ( .A(A[8]), .B(B[8]), .Y(n90) );
  NOR2xp5_ASAP7_6t_R U117 ( .A(n87), .B(n129), .Y(n64) );
  NAND2xp5R_ASAP7_6t_R U118 ( .A(B[4]), .B(A[4]), .Y(n66) );
  NAND2x2_ASAP7_6t_R U119 ( .A(B[9]), .B(A[9]), .Y(n98) );
  OA21x1_ASAP7_6t_R U120 ( .A1(n145), .A2(n104), .B(n103), .Y(n106) );
  NAND2x2_ASAP7_6t_R U121 ( .A(A[12]), .B(B[12]), .Y(n103) );
  A2O1A1Ixp33_ASAP7_6t_R U122 ( .A1(n144), .A2(n143), .B(n60), .C(n162), .Y(
        n67) );
  NAND2x1p5_ASAP7_6t_R U123 ( .A(n134), .B(n90), .Y(n99) );
  NAND2xp5R_ASAP7_6t_R U124 ( .A(n168), .B(n71), .Y(n68) );
  OAI21xp5_ASAP7_6t_R U125 ( .A1(n89), .A2(n79), .B(n88), .Y(n141) );
  XNOR2xp5f_ASAP7_6t_R U126 ( .A(n70), .B(n135), .Y(O[8]) );
  XNOR2xp5f_ASAP7_6t_R U127 ( .A(A[10]), .B(B[10]), .Y(n85) );
  OA22x1_ASAP7_6t_R U128 ( .A1(n73), .A2(n138), .B1(n94), .B2(n112), .Y(n72)
         );
  NOR2xp5_ASAP7_6t_R U129 ( .A(n61), .B(n94), .Y(n74) );
  AOI211xp25_ASAP7_6t_R U130 ( .A1(n111), .A2(n68), .B(n75), .C(n110), .Y(
        O[13]) );
  NOR2xp5_ASAP7_6t_R U131 ( .A(n109), .B(n68), .Y(n75) );
  AOI21xp25_ASAP7_6t_R U132 ( .A1(n78), .A2(n68), .B(n54), .Y(O[16]) );
  NAND2x2_ASAP7_6t_R U133 ( .A(A[7]), .B(B[7]), .Y(n134) );
  NOR2x2R_ASAP7_6t_R U134 ( .A(n76), .B(n124), .Y(n79) );
  NAND2x2_ASAP7_6t_R U135 ( .A(B[4]), .B(A[4]), .Y(n124) );
  NOR2x2_ASAP7_6t_R U136 ( .A(B[5]), .B(A[5]), .Y(n76) );
  XNOR2xp5_ASAP7_6t_R U137 ( .A(n160), .B(n159), .Y(O[15]) );
  XNOR2xp5_ASAP7_6t_R U138 ( .A(n148), .B(n147), .Y(O[14]) );
  NOR2xp5_ASAP7_6t_R U139 ( .A(n77), .B(n62), .Y(n142) );
  NOR2xp5_ASAP7_6t_R U140 ( .A(n127), .B(n79), .Y(n131) );
  INVx1_ASAP7_6t_R U141 ( .A(n99), .Y(n84) );
  AOI211xp5_ASAP7_6t_R U142 ( .A1(n113), .A2(n65), .B(n115), .C(n122), .Y(n121) );
  OR2x2_ASAP7_6t_R U143 ( .A(n84), .B(n143), .Y(n112) );
  NOR2x2R_ASAP7_6t_R U144 ( .A(B[7]), .B(A[7]), .Y(n87) );
  NAND2xp5R_ASAP7_6t_R U145 ( .A(n155), .B(n154), .Y(n151) );
  NAND2x2_ASAP7_6t_R U146 ( .A(A[11]), .B(B[11]), .Y(n104) );
  NAND2xp5R_ASAP7_6t_R U147 ( .A(n96), .B(n95), .Y(n114) );
  NOR2x2R_ASAP7_6t_R U148 ( .A(A[12]), .B(B[12]), .Y(n145) );
  INVxp5_ASAP7_6t_R U149 ( .A(n115), .Y(n116) );
  TIEHIxp5_ASAP7_6t_R U150 ( .H(O[3]) );
  INVx1_ASAP7_6t_R U151 ( .A(n85), .Y(n94) );
  INVx1_ASAP7_6t_R U152 ( .A(n98), .Y(n86) );
  NOR2xp5_ASAP7_6t_R U153 ( .A(n85), .B(n86), .Y(n91) );
  AOI22xp25_ASAP7_6t_R U154 ( .A1(n86), .A2(n85), .B1(n61), .B2(n91), .Y(n93)
         );
  NAND2x2_ASAP7_6t_R U155 ( .A(A[6]), .B(B[6]), .Y(n130) );
  NAND2x2_ASAP7_6t_R U156 ( .A(A[5]), .B(B[5]), .Y(n126) );
  NOR2x2R_ASAP7_6t_R U157 ( .A(A[6]), .B(B[6]), .Y(n129) );
  NOR2xp5_ASAP7_6t_R U158 ( .A(n87), .B(n129), .Y(n88) );
  BUFx3_ASAP7_6t_R U159 ( .A(n141), .Y(n138) );
  AND2x2_ASAP7_6t_R U160 ( .A(n134), .B(n90), .Y(n137) );
  INVx1_ASAP7_6t_R U161 ( .A(B[10]), .Y(n95) );
  XNOR2xp5f_ASAP7_6t_R U162 ( .A(n101), .B(n100), .Y(O[12]) );
  INVx1_ASAP7_6t_R U163 ( .A(n162), .Y(n102) );
  NOR2xp5_ASAP7_6t_R U164 ( .A(n108), .B(n102), .Y(n111) );
  NOR2xp5_ASAP7_6t_R U165 ( .A(n145), .B(n108), .Y(n105) );
  NAND2xp5_ASAP7_6t_R U166 ( .A(n115), .B(n114), .Y(n119) );
  INVxp5_ASAP7_6t_R U167 ( .A(n119), .Y(n123) );
  NAND2xp5R_ASAP7_6t_R U168 ( .A(n112), .B(n144), .Y(n122) );
  INVxp5_ASAP7_6t_R U169 ( .A(n114), .Y(n117) );
  OAI31xp5f_ASAP7_6t_R U170 ( .A1(n138), .A2(n61), .A3(n119), .B(n118), .Y(
        n120) );
  AOI211xp25_ASAP7_6t_R U171 ( .A1(n123), .A2(n122), .B(n121), .C(n120), .Y(
        O[11]) );
  INVx1_ASAP7_6t_R U172 ( .A(n126), .Y(n127) );
  AOI21xp25_ASAP7_6t_R U173 ( .A1(n131), .A2(n130), .B(n129), .Y(n133) );
  XNOR2xp5_ASAP7_6t_R U174 ( .A(n133), .B(n132), .Y(O[7]) );
  AND2x2_ASAP7_6t_R U175 ( .A(n81), .B(n80), .Y(n136) );
  NAND3xp33R_ASAP7_6t_R U176 ( .A(n142), .B(n69), .C(n162), .Y(n158) );
  A2O1A1Ixp33_ASAP7_6t_R U177 ( .A1(n144), .A2(n143), .B(n60), .C(n162), .Y(
        n157) );
  NOR2xp5_ASAP7_6t_R U178 ( .A(B[13]), .B(A[13]), .Y(n146) );
  NOR2xp5_ASAP7_6t_R U179 ( .A(n146), .B(n145), .Y(n149) );
  AOI31xp33_ASAP7_6t_R U180 ( .A1(n158), .A2(n157), .A3(n149), .B(n150), .Y(
        n148) );
  NAND2xp5_ASAP7_6t_R U181 ( .A(n151), .B(n149), .Y(n165) );
  OAI22xp5_ASAP7_6t_R U182 ( .A1(n155), .A2(n154), .B1(n153), .B2(n152), .Y(
        n161) );
  AOI31xp33_ASAP7_6t_R U183 ( .A1(n158), .A2(n67), .A3(n156), .B(n161), .Y(
        n160) );
  INVx1_ASAP7_6t_R U184 ( .A(n161), .Y(n166) );
  NAND3xp33_ASAP7_6t_R U185 ( .A(n166), .B(n162), .C(n164), .Y(n167) );
endmodule

