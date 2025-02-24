/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:18:45 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154;
  assign O[0] = O[14];
  assign O[3] = A[4];
  assign O[2] = A[11];
  assign O[1] = B[9];

  AO22x1_ASAP7_6t_R U50 ( .A1(n100), .A2(n99), .B1(n112), .B2(n111), .Y(n101)
         );
  INVxp5_ASAP7_6t_R U51 ( .A(B[6]), .Y(n125) );
  INVx1_ASAP7_6t_R U52 ( .A(A[15]), .Y(n100) );
  INVx1_ASAP7_6t_R U53 ( .A(B[15]), .Y(n99) );
  NOR2xp5_ASAP7_6t_R U54 ( .A(A[14]), .B(B[14]), .Y(n97) );
  NAND2xp5R_ASAP7_6t_R U55 ( .A(B[9]), .B(A[9]), .Y(n135) );
  NAND2x1_ASAP7_6t_R U56 ( .A(B[13]), .B(A[13]), .Y(n107) );
  INVx8_ASAP7_6t_R U57 ( .A(B[8]), .Y(n88) );
  INVx13_ASAP7_6t_R U58 ( .A(B[6]), .Y(n60) );
  XNOR2xp5_ASAP7_6t_R U59 ( .A(n92), .B(n91), .Y(O[10]) );
  INVx13_ASAP7_6t_R U60 ( .A(A[6]), .Y(n127) );
  INVx13_ASAP7_6t_R U61 ( .A(A[8]), .Y(n89) );
  OAI21xp5b_ASAP7_6t_R U62 ( .A1(A[7]), .A2(B[7]), .B(n126), .Y(n116) );
  INVx1_ASAP7_6t_R U63 ( .A(A[9]), .Y(n117) );
  INVxp5_ASAP7_6t_R U64 ( .A(n83), .Y(n90) );
  XNOR2xp5_ASAP7_6t_R U65 ( .A(A[12]), .B(B[12]), .Y(n142) );
  OA21x2_ASAP7_6t_R U66 ( .A1(n97), .A2(n107), .B(n94), .Y(n111) );
  INVx1_ASAP7_6t_R U67 ( .A(A[10]), .Y(n131) );
  NAND2xp5R_ASAP7_6t_R U68 ( .A(n81), .B(A[9]), .Y(n123) );
  INVx2_ASAP7_6t_R U69 ( .A(B[10]), .Y(n72) );
  XNOR2xp5_ASAP7_6t_R U70 ( .A(n130), .B(n129), .Y(O[8]) );
  NAND2xp5R_ASAP7_6t_R U71 ( .A(n52), .B(n50), .Y(n130) );
  INVx1_ASAP7_6t_R U72 ( .A(n134), .Y(n79) );
  OAI21xp5_ASAP7_6t_R U73 ( .A1(n135), .A2(n134), .B(n73), .Y(n136) );
  OAI21xp5_ASAP7_6t_R U74 ( .A1(A[7]), .A2(B[7]), .B(n49), .Y(n50) );
  NAND2x1_ASAP7_6t_R U75 ( .A(n133), .B(n135), .Y(n80) );
  XNOR2xp5f_ASAP7_6t_R U76 ( .A(A[7]), .B(B[7]), .Y(n128) );
  XNOR2xp5f_ASAP7_6t_R U77 ( .A(A[8]), .B(B[8]), .Y(n129) );
  XOR2xp5r_ASAP7_6t_R U78 ( .A(B[10]), .B(A[10]), .Y(n91) );
  XNOR2xp5f_ASAP7_6t_R U79 ( .A(A[14]), .B(B[14]), .Y(n109) );
  XNOR2xp5f_ASAP7_6t_R U80 ( .A(A[15]), .B(B[15]), .Y(n113) );
  XOR2xp5r_ASAP7_6t_R U81 ( .A(A[11]), .B(B[11]), .Y(n139) );
  INVx13_ASAP7_6t_R U82 ( .A(A[6]), .Y(n61) );
  AOI21xp5_ASAP7_6t_R U83 ( .A1(n85), .A2(n106), .B(n46), .Y(n62) );
  AOI21xp5_ASAP7_6t_R U84 ( .A1(n66), .A2(n46), .B(n64), .Y(n63) );
  OAI21xp5_ASAP7_6t_R U85 ( .A1(n105), .A2(n70), .B(n144), .Y(n46) );
  NAND2xp5R_ASAP7_6t_R U86 ( .A(n59), .B(n47), .Y(n85) );
  NOR2x2R_ASAP7_6t_R U87 ( .A(n115), .B(n120), .Y(n47) );
  NAND2x1_ASAP7_6t_R U88 ( .A(n116), .B(n47), .Y(n138) );
  INVx6_ASAP7_6t_R U89 ( .A(A[12]), .Y(n96) );
  INVx6_ASAP7_6t_R U90 ( .A(B[12]), .Y(n95) );
  NOR2xp5_ASAP7_6t_R U91 ( .A(n86), .B(n69), .Y(n48) );
  NAND2xp5R_ASAP7_6t_R U92 ( .A(n61), .B(n60), .Y(n49) );
  NAND2x2_ASAP7_6t_R U93 ( .A(n61), .B(n60), .Y(n126) );
  OAI21xp5_ASAP7_6t_R U94 ( .A1(B[13]), .A2(A[13]), .B(n148), .Y(n108) );
  AND2x4_ASAP7_6t_R U95 ( .A(A[8]), .B(B[8]), .Y(n51) );
  NAND2xp5R_ASAP7_6t_R U96 ( .A(B[7]), .B(A[7]), .Y(n52) );
  NAND2x2_ASAP7_6t_R U97 ( .A(n127), .B(n60), .Y(n53) );
  AOI21xp5_ASAP7_6t_R U98 ( .A1(n75), .A2(n58), .B(n90), .Y(n92) );
  NOR2xp5_ASAP7_6t_R U99 ( .A(n51), .B(n120), .Y(n54) );
  NAND2xp5R_ASAP7_6t_R U100 ( .A(n127), .B(n60), .Y(n55) );
  NAND2xp5R_ASAP7_6t_R U101 ( .A(n132), .B(n71), .Y(n56) );
  NAND2xp5R_ASAP7_6t_R U102 ( .A(n132), .B(n71), .Y(n57) );
  NAND2xp5R_ASAP7_6t_R U103 ( .A(n132), .B(n71), .Y(n137) );
  INVx8_ASAP7_6t_R U104 ( .A(A[10]), .Y(n71) );
  INVx13_ASAP7_6t_R U105 ( .A(B[10]), .Y(n132) );
  OAI21xp5_ASAP7_6t_R U106 ( .A1(B[9]), .A2(A[9]), .B(n82), .Y(n103) );
  NAND3xp33_ASAP7_6t_R U107 ( .A(n66), .B(n85), .C(n48), .Y(n65) );
  OAI21xp5_ASAP7_6t_R U108 ( .A1(B[9]), .A2(A[9]), .B(n119), .Y(n86) );
  NAND2xp5R_ASAP7_6t_R U109 ( .A(A[14]), .B(B[14]), .Y(n94) );
  AOI21xp25_ASAP7_6t_R U110 ( .A1(n74), .A2(n147), .B(n146), .Y(n152) );
  OA21x1_ASAP7_6t_R U111 ( .A1(B[9]), .A2(A[9]), .B(n77), .Y(n58) );
  OAI21xp5b_ASAP7_6t_R U112 ( .A1(A[7]), .A2(B[7]), .B(n53), .Y(n59) );
  NOR2x2R_ASAP7_6t_R U113 ( .A(n145), .B(O[5]), .Y(n144) );
  AND2x4_ASAP7_6t_R U114 ( .A(B[11]), .B(A[11]), .Y(O[5]) );
  AND2x4_ASAP7_6t_R U115 ( .A(B[12]), .B(A[12]), .Y(n145) );
  AOI22xp5_ASAP7_6t_R U116 ( .A1(B[10]), .A2(A[10]), .B1(A[9]), .B2(B[9]), .Y(
        n105) );
  OAI21xp5_ASAP7_6t_R U117 ( .A1(n62), .A2(n112), .B(n111), .Y(n114) );
  NAND2xp5R_ASAP7_6t_R U118 ( .A(n65), .B(n63), .Y(n110) );
  INVx1_ASAP7_6t_R U119 ( .A(n107), .Y(n64) );
  INVx1_ASAP7_6t_R U120 ( .A(n108), .Y(n66) );
  OAI21xp5_ASAP7_6t_R U121 ( .A1(n138), .A2(n80), .B(n93), .Y(n67) );
  OAI21xp25_ASAP7_6t_R U122 ( .A1(n80), .A2(n138), .B(n93), .Y(n68) );
  AOI21x1_ASAP7_6t_R U123 ( .A1(n105), .A2(n103), .B(n104), .Y(n93) );
  OAI21xp5_ASAP7_6t_R U124 ( .A1(A[11]), .A2(B[11]), .B(n57), .Y(n69) );
  OAI21xp5_ASAP7_6t_R U125 ( .A1(A[11]), .A2(B[11]), .B(n137), .Y(n70) );
  NAND2xp5R_ASAP7_6t_R U126 ( .A(A[10]), .B(B[10]), .Y(n73) );
  NAND2xp5R_ASAP7_6t_R U127 ( .A(A[10]), .B(B[10]), .Y(n133) );
  NAND2xp5R_ASAP7_6t_R U128 ( .A(n96), .B(n95), .Y(n74) );
  NAND2xp5R_ASAP7_6t_R U129 ( .A(n54), .B(n87), .Y(n75) );
  OAI21xp5_ASAP7_6t_R U130 ( .A1(n80), .A2(n138), .B(n93), .Y(n76) );
  OAI21xp25_ASAP7_6t_R U131 ( .A1(n80), .A2(n138), .B(n93), .Y(n153) );
  NAND2xp5R_ASAP7_6t_R U132 ( .A(n89), .B(n88), .Y(n77) );
  NAND2x2_ASAP7_6t_R U133 ( .A(n89), .B(n88), .Y(n82) );
  NAND2xp5R_ASAP7_6t_R U134 ( .A(A[8]), .B(B[8]), .Y(n78) );
  NAND2xp5R_ASAP7_6t_R U135 ( .A(n89), .B(n88), .Y(n81) );
  NAND2xp5R_ASAP7_6t_R U136 ( .A(n89), .B(n88), .Y(n119) );
  OAI21xp5_ASAP7_6t_R U137 ( .A1(A[11]), .A2(B[11]), .B(n56), .Y(n104) );
  OAI21xp5_ASAP7_6t_R U138 ( .A1(A[7]), .A2(B[7]), .B(n55), .Y(n87) );
  NAND2xp5R_ASAP7_6t_R U139 ( .A(B[9]), .B(A[9]), .Y(n83) );
  NOR2xp5_ASAP7_6t_R U140 ( .A(n145), .B(O[5]), .Y(n84) );
  TIELOxp5_ASAP7_6t_R U141 ( .L(O[4]) );
  AND2x4_ASAP7_6t_R U142 ( .A(A[8]), .B(B[8]), .Y(n115) );
  AND2x4_ASAP7_6t_R U143 ( .A(B[7]), .B(A[7]), .Y(n120) );
  AND3x1_ASAP7_6t_R U144 ( .A(n84), .B(n67), .C(n111), .Y(n102) );
  NAND2xp5R_ASAP7_6t_R U145 ( .A(n96), .B(n95), .Y(n148) );
  NOR2xp5_ASAP7_6t_R U146 ( .A(n97), .B(n108), .Y(n98) );
  INVx1_ASAP7_6t_R U147 ( .A(n98), .Y(n112) );
  OAI22xp5_ASAP7_6t_R U148 ( .A1(n102), .A2(n101), .B1(n100), .B2(n99), .Y(
        O[16]) );
  NOR2xp5_ASAP7_6t_R U149 ( .A(n86), .B(n69), .Y(n106) );
  XNOR2xp5f_ASAP7_6t_R U150 ( .A(n110), .B(n109), .Y(O[14]) );
  XNOR2xp5f_ASAP7_6t_R U151 ( .A(n114), .B(n113), .Y(O[15]) );
  NAND4xp25_ASAP7_6t_R U152 ( .A(n116), .B(n78), .C(n52), .D(n117), .Y(n122)
         );
  AOI22xp5_ASAP7_6t_R U153 ( .A1(n117), .A2(n81), .B1(A[9]), .B2(n78), .Y(n118) );
  AOI31xp33_ASAP7_6t_R U154 ( .A1(n120), .A2(A[9]), .A3(n82), .B(n118), .Y(
        n121) );
  OAI211xp67b_ASAP7_6t_R U155 ( .A1(n87), .A2(n123), .B(n122), .C(n121), .Y(
        n124) );
  XNOR2xp5_ASAP7_6t_R U156 ( .A(n124), .B(B[9]), .Y(O[9]) );
  OAI21xp25_ASAP7_6t_R U157 ( .A1(n127), .A2(n125), .B(n55), .Y(O[6]) );
  XNOR2xp5_ASAP7_6t_R U158 ( .A(n53), .B(n128), .Y(O[7]) );
  AND2x2_ASAP7_6t_R U159 ( .A(n72), .B(n131), .Y(n134) );
  AOI31xp33_ASAP7_6t_R U160 ( .A1(n58), .A2(n75), .A3(n79), .B(n136), .Y(n140)
         );
  XNOR2xp5_ASAP7_6t_R U161 ( .A(n140), .B(n139), .Y(O[11]) );
  INVx1_ASAP7_6t_R U162 ( .A(O[5]), .Y(n141) );
  NAND2xp5R_ASAP7_6t_R U163 ( .A(n76), .B(n141), .Y(n143) );
  XNOR2xp5_ASAP7_6t_R U164 ( .A(n143), .B(n142), .Y(O[12]) );
  XOR2xp5_ASAP7_6t_R U165 ( .A(B[13]), .B(A[13]), .Y(n149) );
  INVx1_ASAP7_6t_R U166 ( .A(n149), .Y(n147) );
  AND2x2_ASAP7_6t_R U167 ( .A(n147), .B(n144), .Y(n154) );
  AOI211xp25_ASAP7_6t_R U168 ( .A1(n74), .A2(O[5]), .B(n145), .C(n147), .Y(
        n146) );
  NAND2xp5_ASAP7_6t_R U169 ( .A(n149), .B(n74), .Y(n150) );
  NOR2xp5_ASAP7_6t_R U170 ( .A(n68), .B(n150), .Y(n151) );
  AOI211xp25_ASAP7_6t_R U171 ( .A1(n154), .A2(n153), .B(n151), .C(n152), .Y(
        O[13]) );
endmodule

