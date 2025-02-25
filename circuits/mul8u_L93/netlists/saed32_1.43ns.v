/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:57:39 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_1_A_4_,
         intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_B_3_, intadd_2_B_2_,
         intadd_2_B_1_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_n4,
         intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_B_2_, intadd_3_B_0_,
         intadd_3_CI, intadd_3_SUM_0_, intadd_3_n3, intadd_3_n2, intadd_3_n1,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146;
  assign O[1] = 1'b0;
  assign O[0] = O[3];

  FADDX1_RVT intadd_1_U5 ( .A(intadd_1_B_1_), .B(intadd_1_A_1_), .CI(
        intadd_1_n5), .CO(intadd_1_n4), .S(intadd_1_SUM_1_) );
  FADDX1_RVT intadd_1_U4 ( .A(intadd_1_B_2_), .B(intadd_1_A_2_), .CI(
        intadd_1_n4), .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  FADDX1_RVT intadd_1_U3 ( .A(intadd_1_B_3_), .B(intadd_1_A_3_), .CI(
        intadd_1_n3), .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  FADDX1_RVT intadd_1_U2 ( .A(intadd_1_B_4_), .B(intadd_1_A_4_), .CI(
        intadd_1_n2), .CO(intadd_1_n1), .S(intadd_0_A_4_) );
  FADDX1_RVT intadd_2_U4 ( .A(intadd_2_B_1_), .B(intadd_1_SUM_1_), .CI(
        intadd_2_n4), .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  FADDX1_RVT intadd_2_U3 ( .A(intadd_2_B_2_), .B(intadd_1_SUM_2_), .CI(
        intadd_2_n3), .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  FADDX1_RVT intadd_2_U2 ( .A(intadd_2_B_3_), .B(intadd_1_SUM_3_), .CI(
        intadd_2_n2), .CO(intadd_2_n1), .S(intadd_0_A_3_) );
  FADDX1_RVT intadd_3_U2 ( .A(intadd_3_B_2_), .B(intadd_2_SUM_2_), .CI(
        intadd_3_n2), .CO(intadd_3_n1), .S(intadd_0_A_2_) );
  XOR3X1_RVT U75 ( .A1(intadd_3_B_0_), .A2(n85), .A3(n87), .Y(intadd_3_SUM_0_)
         );
  INVX0_RVT U76 ( .A(intadd_3_CI), .Y(n85) );
  INVX1_RVT U77 ( .A(n114), .Y(n129) );
  AND2X1_RVT U78 ( .A1(intadd_3_B_0_), .A2(intadd_3_CI), .Y(n89) );
  NOR2X0_RVT U79 ( .A1(intadd_3_CI), .A2(intadd_3_B_0_), .Y(n88) );
  XOR2X1_RVT U80 ( .A1(n108), .A2(n107), .Y(n116) );
  XOR2X1_RVT U81 ( .A1(n106), .A2(n105), .Y(n107) );
  FADDX1_RVT U82 ( .A(n130), .B(n129), .CI(n131), .CO(n110) );
  AND2X1_RVT U83 ( .A1(n105), .A2(n108), .Y(n81) );
  AND2X1_RVT U84 ( .A1(n106), .A2(n108), .Y(n82) );
  XOR2X1_RVT U85 ( .A1(intadd_3_SUM_0_), .A2(n100), .Y(n108) );
  AND2X1_RVT U86 ( .A1(n105), .A2(n106), .Y(n83) );
  AO22X1_RVT U87 ( .A1(n111), .A2(intadd_0_A_2_), .A3(n110), .A4(n84), .Y(n113) );
  OR2X1_RVT U88 ( .A1(n111), .A2(intadd_0_A_2_), .Y(n84) );
  OR3X2_RVT U89 ( .A1(n81), .A2(n82), .A3(n83), .Y(n131) );
  OR2X2_RVT U90 ( .A1(n89), .A2(n86), .Y(intadd_3_n3) );
  NOR2X0_RVT U91 ( .A1(n88), .A2(n87), .Y(n86) );
  XNOR2X2_RVT U92 ( .A1(n124), .A2(n117), .Y(n87) );
  XOR2X1_RVT U93 ( .A1(n99), .A2(n98), .Y(n100) );
  FADDX1_RVT U94 ( .A(n109), .B(intadd_3_n3), .CI(intadd_2_SUM_1_), .CO(
        intadd_3_n2) );
  AND2X1_RVT U95 ( .A1(A[5]), .A2(B[4]), .Y(intadd_3_CI) );
  AND2X1_RVT U96 ( .A1(A[5]), .A2(B[5]), .Y(intadd_2_B_1_) );
  AND2X1_RVT U97 ( .A1(A[6]), .A2(B[3]), .Y(n98) );
  AO22X1_RVT U98 ( .A1(A[4]), .A2(intadd_3_CI), .A3(A[3]), .A4(intadd_2_B_1_), 
        .Y(n90) );
  AND2X1_RVT U99 ( .A1(B[3]), .A2(n90), .Y(n99) );
  NAND2X0_RVT U100 ( .A1(n98), .A2(n99), .Y(n93) );
  NAND2X0_RVT U101 ( .A1(n98), .A2(intadd_3_SUM_0_), .Y(n92) );
  NAND2X0_RVT U102 ( .A1(n99), .A2(intadd_3_SUM_0_), .Y(n91) );
  NAND3X0_RVT U103 ( .A1(n93), .A2(n92), .A3(n91), .Y(n96) );
  AND2X1_RVT U104 ( .A1(B[3]), .A2(A[7]), .Y(n95) );
  AND2X1_RVT U105 ( .A1(A[6]), .A2(B[4]), .Y(n109) );
  XOR3X1_RVT U106 ( .A1(intadd_3_n3), .A2(n109), .A3(intadd_2_SUM_1_), .Y(n94)
         );
  FADDX1_RVT U107 ( .A(n96), .B(n95), .CI(n94), .CO(n111), .S(n130) );
  AND2X1_RVT U108 ( .A1(B[2]), .A2(A[7]), .Y(n105) );
  AO22X1_RVT U109 ( .A1(A[5]), .A2(B[3]), .A3(A[4]), .A4(B[4]), .Y(n97) );
  AO21X1_RVT U110 ( .A1(A[3]), .A2(B[5]), .A3(n97), .Y(n104) );
  NAND3X0_RVT U111 ( .A1(A[6]), .A2(B[2]), .A3(n104), .Y(n103) );
  INVX1_RVT U112 ( .A(n103), .Y(n106) );
  AO22X1_RVT U113 ( .A1(B[1]), .A2(A[6]), .A3(A[4]), .A4(B[3]), .Y(n102) );
  AO22X1_RVT U114 ( .A1(B[7]), .A2(A[0]), .A3(B[2]), .A4(A[5]), .Y(n101) );
  OR2X1_RVT U115 ( .A1(n102), .A2(n101), .Y(n133) );
  NAND3X0_RVT U116 ( .A1(A[7]), .A2(B[0]), .A3(n133), .Y(n135) );
  INVX1_RVT U117 ( .A(n135), .Y(n146) );
  OA221X1_RVT U118 ( .A1(n104), .A2(A[6]), .A3(n104), .A4(B[2]), .A5(n103), 
        .Y(n145) );
  AND2X1_RVT U119 ( .A1(B[1]), .A2(A[7]), .Y(n144) );
  NAND2X0_RVT U120 ( .A1(n115), .A2(n116), .Y(n114) );
  XOR3X2_RVT U121 ( .A1(intadd_0_A_2_), .A2(n111), .A3(n110), .Y(O[11]) );
  XOR3X2_RVT U122 ( .A1(intadd_3_n1), .A2(intadd_0_A_3_), .A3(n113), .Y(O[12])
         );
  OR2X1_RVT U123 ( .A1(intadd_0_A_3_), .A2(intadd_3_n1), .Y(n112) );
  AO22X1_RVT U124 ( .A1(intadd_0_A_3_), .A2(intadd_3_n1), .A3(n113), .A4(n112), 
        .Y(n139) );
  XOR3X2_RVT U125 ( .A1(intadd_0_A_4_), .A2(intadd_2_n1), .A3(n139), .Y(O[13])
         );
  OA21X1_RVT U126 ( .A1(n116), .A2(n115), .A3(n114), .Y(O[9]) );
  AND2X1_RVT U127 ( .A1(A[3]), .A2(B[6]), .Y(n118) );
  AND2X1_RVT U128 ( .A1(B[7]), .A2(A[1]), .Y(n120) );
  AND2X1_RVT U129 ( .A1(B[7]), .A2(A[2]), .Y(n119) );
  XOR3X2_RVT U130 ( .A1(n118), .A2(n120), .A3(n119), .Y(n124) );
  AND2X1_RVT U131 ( .A1(A[2]), .A2(B[6]), .Y(n125) );
  AND2X1_RVT U132 ( .A1(A[4]), .A2(B[5]), .Y(n136) );
  XOR2X1_RVT U133 ( .A1(n125), .A2(n136), .Y(n117) );
  NAND2X0_RVT U134 ( .A1(n118), .A2(n120), .Y(n123) );
  NAND2X0_RVT U135 ( .A1(n118), .A2(n119), .Y(n122) );
  NAND2X0_RVT U136 ( .A1(n120), .A2(n119), .Y(n121) );
  NAND3X0_RVT U137 ( .A1(n123), .A2(n122), .A3(n121), .Y(intadd_1_n5) );
  NAND2X0_RVT U138 ( .A1(n136), .A2(n124), .Y(n128) );
  NAND2X0_RVT U139 ( .A1(n124), .A2(n125), .Y(n127) );
  NAND2X0_RVT U140 ( .A1(n125), .A2(n136), .Y(n126) );
  NAND3X0_RVT U141 ( .A1(n128), .A2(n127), .A3(n126), .Y(intadd_2_n4) );
  XOR3X2_RVT U142 ( .A1(n129), .A2(n131), .A3(n130), .Y(O[10]) );
  AND2X1_RVT U144 ( .A1(A[0]), .A2(B[0]), .Y(O[3]) );
  AO22X1_RVT U145 ( .A1(A[0]), .A2(B[2]), .A3(B[0]), .A4(A[2]), .Y(O[2]) );
  AND2X1_RVT U146 ( .A1(B[1]), .A2(A[3]), .Y(O[4]) );
  AO22X1_RVT U147 ( .A1(A[5]), .A2(B[0]), .A3(B[1]), .A4(A[4]), .Y(n132) );
  AO21X1_RVT U148 ( .A1(A[3]), .A2(B[5]), .A3(n132), .Y(O[5]) );
  AO22X1_RVT U149 ( .A1(A[5]), .A2(B[1]), .A3(A[6]), .A4(B[0]), .Y(O[6]) );
  AND2X1_RVT U150 ( .A1(A[7]), .A2(B[0]), .Y(n134) );
  AND2X1_RVT U151 ( .A1(A[3]), .A2(B[4]), .Y(n137) );
  AO221X1_RVT U152 ( .A1(n135), .A2(n134), .A3(n135), .A4(n133), .A5(n137), 
        .Y(O[7]) );
  AND2X1_RVT U153 ( .A1(A[6]), .A2(B[6]), .Y(intadd_1_A_3_) );
  AND2X1_RVT U154 ( .A1(A[4]), .A2(B[6]), .Y(intadd_1_A_1_) );
  AND2X1_RVT U155 ( .A1(B[7]), .A2(A[3]), .Y(intadd_1_B_1_) );
  AND2X1_RVT U156 ( .A1(A[5]), .A2(B[6]), .Y(intadd_1_A_2_) );
  AND2X1_RVT U157 ( .A1(B[7]), .A2(A[4]), .Y(intadd_1_B_2_) );
  AND2X1_RVT U158 ( .A1(B[7]), .A2(A[5]), .Y(intadd_1_B_3_) );
  AND2X1_RVT U159 ( .A1(A[6]), .A2(B[5]), .Y(intadd_2_B_2_) );
  AND2X1_RVT U160 ( .A1(A[7]), .A2(B[5]), .Y(intadd_2_B_3_) );
  AND2X1_RVT U161 ( .A1(A[7]), .A2(B[4]), .Y(intadd_3_B_2_) );
  AND2X1_RVT U162 ( .A1(n137), .A2(n136), .Y(intadd_3_B_0_) );
  AND2X1_RVT U163 ( .A1(B[7]), .A2(A[6]), .Y(intadd_1_A_4_) );
  AND2X1_RVT U164 ( .A1(A[7]), .A2(B[6]), .Y(intadd_1_B_4_) );
  INVX1_RVT U165 ( .A(intadd_1_n1), .Y(n142) );
  NAND3X0_RVT U166 ( .A1(A[7]), .A2(B[7]), .A3(n142), .Y(n141) );
  OR2X1_RVT U167 ( .A1(intadd_0_A_4_), .A2(intadd_2_n1), .Y(n138) );
  AO22X1_RVT U168 ( .A1(intadd_2_n1), .A2(intadd_0_A_4_), .A3(n139), .A4(n138), 
        .Y(n143) );
  NAND2X0_RVT U169 ( .A1(n143), .A2(n141), .Y(n140) );
  OAI221X1_RVT U170 ( .A1(n142), .A2(A[7]), .A3(n141), .A4(n143), .A5(n140), 
        .Y(O[14]) );
  OA221X1_RVT U171 ( .A1(intadd_1_n1), .A2(B[7]), .A3(intadd_1_n1), .A4(n143), 
        .A5(A[7]), .Y(O[15]) );
  FADDX1_RVT U172 ( .A(n146), .B(n145), .CI(n144), .CO(n115), .S(O[8]) );
endmodule

