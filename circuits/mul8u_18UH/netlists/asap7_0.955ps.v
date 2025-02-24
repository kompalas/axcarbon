/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:25:43 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163;
  assign O[0] = O[9];
  assign O[3] = O[9];
  assign O[6] = O[9];
  assign O[2] = O[13];
  assign O[8] = O[10];
  assign O[5] = O[10];
  assign O[4] = O[1];

  INVxp5_ASAP7_6t_R U66 ( .A(A[7]), .Y(n141) );
  INVxp5_ASAP7_6t_R U67 ( .A(B[6]), .Y(n127) );
  OAI21xp5b_ASAP7_6t_R U68 ( .A1(n125), .A2(n117), .B(n116), .Y(n118) );
  NAND2xp5R_ASAP7_6t_R U69 ( .A(n154), .B(n153), .Y(n158) );
  NAND2xp5R_ASAP7_6t_R U70 ( .A(n125), .B(O[1]), .Y(n153) );
  NOR2x1_ASAP7_6t_R U71 ( .A(n126), .B(n125), .Y(n129) );
  NAND2xp5R_ASAP7_6t_R U72 ( .A(n111), .B(n107), .Y(n101) );
  NAND2x2_ASAP7_6t_R U73 ( .A(n111), .B(n110), .Y(n125) );
  INVx3_ASAP7_6t_R U74 ( .A(B[7]), .Y(n60) );
  NAND2x1_ASAP7_6t_R U75 ( .A(B[5]), .B(A[7]), .Y(n155) );
  AND2x2_ASAP7_6t_R U76 ( .A(A[7]), .B(B[3]), .Y(O[10]) );
  INVx4_ASAP7_6t_R U77 ( .A(A[3]), .Y(n61) );
  XNOR2xp5f_ASAP7_6t_R U78 ( .A(n70), .B(n123), .Y(n115) );
  XNOR2xp5f_ASAP7_6t_R U79 ( .A(n158), .B(n157), .Y(n159) );
  XOR2xp5r_ASAP7_6t_R U80 ( .A(B[5]), .B(B[4]), .Y(n147) );
  XNOR2xp5f_ASAP7_6t_R U81 ( .A(n163), .B(n162), .Y(O[12]) );
  XNOR2xp5f_ASAP7_6t_R U82 ( .A(n75), .B(n159), .Y(n163) );
  INVx1_ASAP7_6t_R U83 ( .A(n74), .Y(n75) );
  XNOR2xp5_ASAP7_6t_R U84 ( .A(n151), .B(n150), .Y(O[11]) );
  XNOR2xp5_ASAP7_6t_R U85 ( .A(n144), .B(n143), .Y(n151) );
  INVxp5_ASAP7_6t_R U86 ( .A(n161), .Y(n100) );
  XNOR2xp5_ASAP7_6t_R U87 ( .A(n149), .B(n148), .Y(n150) );
  AND2x2_ASAP7_6t_R U88 ( .A(n120), .B(n98), .Y(n99) );
  NAND3xp33R_ASAP7_6t_R U89 ( .A(n98), .B(A[5]), .C(B[4]), .Y(n161) );
  NAND2xp5R_ASAP7_6t_R U90 ( .A(n146), .B(n145), .Y(n120) );
  NAND2xp5R_ASAP7_6t_R U91 ( .A(n147), .B(A[6]), .Y(n148) );
  INVx1_ASAP7_6t_R U92 ( .A(n135), .Y(n136) );
  OAI21xp5_ASAP7_6t_R U93 ( .A1(B[5]), .A2(B[4]), .B(A[6]), .Y(n106) );
  NAND2xp5R_ASAP7_6t_R U94 ( .A(A[5]), .B(B[7]), .Y(n126) );
  NAND2xp5R_ASAP7_6t_R U95 ( .A(A[5]), .B(B[5]), .Y(n145) );
  NAND2xp5R_ASAP7_6t_R U96 ( .A(B[4]), .B(A[7]), .Y(n146) );
  OAI21xp5_ASAP7_6t_R U97 ( .A1(n100), .A2(n119), .B(n99), .Y(n77) );
  INVx2_ASAP7_6t_R U98 ( .A(n113), .Y(n89) );
  OAI21xp5_ASAP7_6t_R U99 ( .A1(n58), .A2(n57), .B(n139), .Y(n59) );
  NAND2xp5R_ASAP7_6t_R U100 ( .A(n90), .B(n91), .Y(n139) );
  OAI21xp5_ASAP7_6t_R U101 ( .A1(n135), .A2(n66), .B(n92), .Y(n57) );
  AOI21xp5_ASAP7_6t_R U102 ( .A1(n66), .A2(n135), .B(n134), .Y(n58) );
  XNOR2xp5f_ASAP7_6t_R U103 ( .A(n97), .B(n144), .Y(n119) );
  XNOR2xp5f_ASAP7_6t_R U104 ( .A(n59), .B(n132), .Y(O[14]) );
  NAND2x2_ASAP7_6t_R U105 ( .A(n111), .B(n102), .Y(n144) );
  NAND2x2_ASAP7_6t_R U106 ( .A(B[7]), .B(A[3]), .Y(n95) );
  NAND2x2_ASAP7_6t_R U107 ( .A(n71), .B(n95), .Y(n111) );
  NOR2x2R_ASAP7_6t_R U108 ( .A(n61), .B(n60), .Y(n96) );
  NAND2xp5R_ASAP7_6t_R U109 ( .A(n155), .B(n160), .Y(n62) );
  INVx1_ASAP7_6t_R U110 ( .A(n72), .Y(n63) );
  NAND2x2_ASAP7_6t_R U111 ( .A(B[6]), .B(A[4]), .Y(n72) );
  INVxp5_ASAP7_6t_R U112 ( .A(n139), .Y(n64) );
  INVxp5_ASAP7_6t_R U113 ( .A(n64), .Y(n65) );
  AO22x1_ASAP7_6t_R U114 ( .A1(A[5]), .A2(B[6]), .B1(B[7]), .B2(A[4]), .Y(n110) );
  AND2x2_ASAP7_6t_R U115 ( .A(O[1]), .B(n123), .Y(n82) );
  NAND2xp5R_ASAP7_6t_R U116 ( .A(B[7]), .B(A[7]), .Y(n92) );
  INVxp5_ASAP7_6t_R U117 ( .A(n121), .Y(n124) );
  OAI21xp5_ASAP7_6t_R U118 ( .A1(n72), .A2(n112), .B(n69), .Y(n121) );
  NAND2xp5R_ASAP7_6t_R U119 ( .A(B[6]), .B(A[6]), .Y(n156) );
  XNOR2xp5f_ASAP7_6t_R U120 ( .A(n66), .B(n136), .Y(n137) );
  NAND2xp5R_ASAP7_6t_R U121 ( .A(n87), .B(n62), .Y(n66) );
  INVx1_ASAP7_6t_R U122 ( .A(n103), .Y(n67) );
  INVx1_ASAP7_6t_R U123 ( .A(n103), .Y(n142) );
  AND2x2_ASAP7_6t_R U124 ( .A(n96), .B(n63), .Y(n68) );
  NAND3xp33R_ASAP7_6t_R U125 ( .A(n154), .B(n156), .C(n153), .Y(n130) );
  AND2x4_ASAP7_6t_R U126 ( .A(A[5]), .B(B[7]), .Y(n69) );
  AND2x4_ASAP7_6t_R U127 ( .A(A[5]), .B(B[7]), .Y(n70) );
  NAND2x2_ASAP7_6t_R U128 ( .A(B[6]), .B(A[4]), .Y(n71) );
  HB1x1_ASAP7_6t_R U129 ( .A(n134), .Y(n138) );
  XNOR2xp5f_ASAP7_6t_R U130 ( .A(n129), .B(n128), .Y(n79) );
  AND2x4_ASAP7_6t_R U131 ( .A(A[5]), .B(B[7]), .Y(O[1]) );
  INVx1_ASAP7_6t_R U132 ( .A(n67), .Y(n143) );
  INVxp5_ASAP7_6t_R U133 ( .A(n152), .Y(n74) );
  NOR2x1_ASAP7_6t_R U134 ( .A(n68), .B(n142), .Y(n104) );
  NAND2xp5R_ASAP7_6t_R U135 ( .A(n155), .B(n160), .Y(n88) );
  XNOR2xp5f_ASAP7_6t_R U136 ( .A(n121), .B(n156), .Y(n117) );
  NAND2xp5R_ASAP7_6t_R U137 ( .A(n125), .B(n115), .Y(n116) );
  AND2x4_ASAP7_6t_R U138 ( .A(B[6]), .B(A[6]), .Y(n123) );
  NAND2x1_ASAP7_6t_R U139 ( .A(n77), .B(n76), .Y(n87) );
  XNOR2xp5f_ASAP7_6t_R U140 ( .A(n152), .B(n118), .Y(n76) );
  AOI31xp33_ASAP7_6t_R U141 ( .A1(n131), .A2(n79), .A3(n130), .B(n78), .Y(n134) );
  AOI21xp5_ASAP7_6t_R U142 ( .A1(n131), .A2(n130), .B(n79), .Y(n78) );
  NAND2xp5R_ASAP7_6t_R U143 ( .A(n152), .B(n80), .Y(n131) );
  AOI22xp25_ASAP7_6t_R U144 ( .A1(n125), .A2(n82), .B1(n122), .B2(n81), .Y(n80) );
  NOR2xp5_ASAP7_6t_R U145 ( .A(n156), .B(n124), .Y(n81) );
  NAND2xp5R_ASAP7_6t_R U146 ( .A(n119), .B(n120), .Y(n160) );
  XNOR2xp5f_ASAP7_6t_R U147 ( .A(n137), .B(n138), .Y(O[13]) );
  INVx1_ASAP7_6t_R U148 ( .A(n83), .Y(n91) );
  AOI31xp33_ASAP7_6t_R U149 ( .A1(n88), .A2(n87), .A3(n85), .B(n84), .Y(n83)
         );
  NOR2xp5_ASAP7_6t_R U150 ( .A(n127), .B(n92), .Y(n84) );
  INVxp5_ASAP7_6t_R U151 ( .A(n92), .Y(n85) );
  NAND2xp5R_ASAP7_6t_R U152 ( .A(n134), .B(n86), .Y(n90) );
  NAND3xp33_ASAP7_6t_R U153 ( .A(n87), .B(n88), .C(B[6]), .Y(n86) );
  NAND2x1_ASAP7_6t_R U154 ( .A(n96), .B(n89), .Y(n102) );
  AOI21x1_ASAP7_6t_R U155 ( .A1(n89), .A2(n114), .B(n93), .Y(n103) );
  OAI21xp25_ASAP7_6t_R U156 ( .A1(n141), .A2(n140), .B(n65), .Y(O[15]) );
  XNOR2xp5_ASAP7_6t_R U157 ( .A(n103), .B(n94), .Y(n97) );
  NAND2xp5R_ASAP7_6t_R U158 ( .A(n122), .B(n121), .Y(n154) );
  TIELOxp5_ASAP7_6t_R U159 ( .L(O[9]) );
  AND2x4_ASAP7_6t_R U160 ( .A(A[5]), .B(B[7]), .Y(n114) );
  NAND2x2_ASAP7_6t_R U161 ( .A(B[6]), .B(A[4]), .Y(n113) );
  AOI22xp5_ASAP7_6t_R U162 ( .A1(A[5]), .A2(B[6]), .B1(B[7]), .B2(A[4]), .Y(
        n93) );
  NAND2x2_ASAP7_6t_R U163 ( .A(B[5]), .B(B[4]), .Y(n107) );
  NAND2xp5_ASAP7_6t_R U164 ( .A(n107), .B(A[6]), .Y(n94) );
  INVx1_ASAP7_6t_R U165 ( .A(n155), .Y(n98) );
  INVx1_ASAP7_6t_R U166 ( .A(n101), .Y(n105) );
  NAND2x1_ASAP7_6t_R U167 ( .A(n105), .B(n104), .Y(n109) );
  AOI31xp67_ASAP7_6t_R U168 ( .A1(n107), .A2(n144), .A3(n67), .B(n106), .Y(
        n108) );
  NAND2x2_ASAP7_6t_R U169 ( .A(n109), .B(n108), .Y(n152) );
  INVx1_ASAP7_6t_R U170 ( .A(A[3]), .Y(n112) );
  NAND2xp5R_ASAP7_6t_R U171 ( .A(B[6]), .B(A[7]), .Y(n135) );
  INVx1_ASAP7_6t_R U172 ( .A(n125), .Y(n122) );
  AND2x2_ASAP7_6t_R U173 ( .A(B[7]), .B(A[6]), .Y(n128) );
  A2O1A1Ixp33_ASAP7_6t_R U174 ( .A1(n131), .A2(n130), .B(n129), .C(n128), .Y(
        n140) );
  INVx1_ASAP7_6t_R U175 ( .A(n140), .Y(n132) );
  NAND2xp5R_ASAP7_6t_R U176 ( .A(A[6]), .B(B[5]), .Y(n133) );
  INVxp5_ASAP7_6t_R U177 ( .A(n133), .Y(O[7]) );
  XNOR2xp5_ASAP7_6t_R U178 ( .A(n146), .B(n145), .Y(n149) );
  XOR2xp5_ASAP7_6t_R U179 ( .A(n156), .B(n155), .Y(n157) );
  NAND2xp5_ASAP7_6t_R U180 ( .A(n161), .B(n160), .Y(n162) );
endmodule

