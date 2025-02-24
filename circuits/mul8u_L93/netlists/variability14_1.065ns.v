/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:24:10 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_,
         intadd_0_CI, intadd_0_SUM_0_, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, intadd_0_n1, intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_,
         intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI,
         intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1,
         intadd_2_A_0_, intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_,
         intadd_2_B_0_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_B_2_,
         intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI, intadd_3_SUM_1_,
         intadd_3_SUM_0_, intadd_3_n3, intadd_3_n2, intadd_3_n1, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142;
  assign O[1] = 1'b0;
  assign O[0] = O[3];

  FA_X1 intadd_0_U6 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_0_) );
  FA_X1 intadd_0_U5 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(O[10]) );
  FA_X1 intadd_0_U4 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(O[11]) );
  FA_X1 intadd_0_U3 ( .A(intadd_3_n1), .B(intadd_0_A_3_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(O[12]) );
  FA_X1 intadd_0_U2 ( .A(intadd_2_n1), .B(intadd_0_A_4_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(O[13]) );
  FA_X1 intadd_1_U6 ( .A(intadd_1_B_0_), .B(intadd_1_A_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_0_) );
  FA_X1 intadd_1_U5 ( .A(intadd_1_B_1_), .B(intadd_1_A_1_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_1_) );
  FA_X1 intadd_1_U4 ( .A(intadd_1_B_2_), .B(intadd_1_A_2_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  FA_X1 intadd_1_U3 ( .A(intadd_1_B_3_), .B(intadd_1_A_3_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  FA_X1 intadd_1_U2 ( .A(intadd_1_B_4_), .B(intadd_1_A_4_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_0_A_4_) );
  FA_X1 intadd_2_U5 ( .A(intadd_2_B_0_), .B(intadd_2_A_0_), .CI(
        intadd_1_SUM_0_), .CO(intadd_2_n4), .S(intadd_2_SUM_0_) );
  FA_X1 intadd_2_U4 ( .A(intadd_2_B_1_), .B(intadd_1_SUM_1_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  FA_X1 intadd_2_U3 ( .A(intadd_2_B_2_), .B(intadd_1_SUM_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  FA_X1 intadd_2_U2 ( .A(intadd_2_B_3_), .B(intadd_1_SUM_3_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_0_A_3_) );
  FA_X1 intadd_3_U4 ( .A(intadd_3_B_0_), .B(intadd_2_SUM_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_0_) );
  FA_X1 intadd_3_U3 ( .A(intadd_3_B_1_), .B(intadd_2_SUM_1_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_1_) );
  FA_X1 intadd_3_U2 ( .A(intadd_3_B_2_), .B(intadd_2_SUM_2_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_0_A_2_) );
  INV_X1 U95 ( .I(B[1]), .ZN(n123) );
  INV_X1 U96 ( .I(A[6]), .ZN(n128) );
  AOI22_X1 U97 ( .A1(A[4]), .A2(B[3]), .B1(A[5]), .B2(B[2]), .ZN(n101) );
  OAI21_X1 U98 ( .A1(n123), .A2(n128), .B(n101), .ZN(n102) );
  AOI21_X1 U99 ( .A1(B[7]), .A2(A[0]), .B(n102), .ZN(n104) );
  NAND2_X1 U100 ( .A1(A[7]), .A2(B[0]), .ZN(n103) );
  NOR2_X1 U101 ( .A1(n104), .A2(n103), .ZN(n142) );
  AND2_X1 U102 ( .A1(n104), .A2(n103), .Z(n105) );
  NAND2_X1 U103 ( .A1(A[3]), .A2(B[4]), .ZN(n108) );
  OAI21_X1 U104 ( .A1(n142), .A2(n105), .B(n108), .ZN(O[7]) );
  INV_X1 U105 ( .I(B[4]), .ZN(n109) );
  INV_X1 U106 ( .I(A[4]), .ZN(n111) );
  NAND2_X1 U107 ( .A1(A[3]), .A2(B[5]), .ZN(n119) );
  OAI21_X1 U108 ( .A1(n109), .A2(n111), .B(n119), .ZN(n124) );
  AOI21_X1 U109 ( .A1(B[3]), .A2(A[5]), .B(n124), .ZN(n107) );
  NAND2_X1 U110 ( .A1(A[6]), .A2(B[2]), .ZN(n106) );
  NOR2_X1 U111 ( .A1(n107), .A2(n106), .ZN(intadd_0_CI) );
  AOI21_X1 U112 ( .A1(n107), .A2(n106), .B(intadd_0_CI), .ZN(n141) );
  INV_X1 U113 ( .I(A[7]), .ZN(n137) );
  NOR2_X1 U114 ( .A1(n123), .A2(n137), .ZN(n140) );
  AND2_X1 U115 ( .A1(n138), .A2(intadd_0_SUM_0_), .Z(intadd_0_B_1_) );
  INV_X1 U116 ( .I(B[2]), .ZN(n116) );
  NOR2_X1 U117 ( .A1(n116), .A2(n137), .ZN(intadd_0_B_0_) );
  INV_X1 U118 ( .I(A[5]), .ZN(n122) );
  NOR2_X1 U119 ( .A1(n122), .A2(n109), .ZN(intadd_3_CI) );
  NAND2_X1 U120 ( .A1(A[4]), .A2(B[5]), .ZN(n110) );
  NOR2_X1 U121 ( .A1(n108), .A2(n110), .ZN(intadd_3_B_0_) );
  NOR2_X1 U122 ( .A1(n128), .A2(n109), .ZN(intadd_3_B_1_) );
  NOR2_X1 U123 ( .A1(n137), .A2(n109), .ZN(intadd_3_B_2_) );
  INV_X1 U124 ( .I(B[7]), .ZN(n113) );
  NOR2_X1 U125 ( .A1(n113), .A2(n128), .ZN(intadd_1_A_4_) );
  INV_X1 U126 ( .I(B[6]), .ZN(n112) );
  NOR2_X1 U127 ( .A1(n137), .A2(n112), .ZN(intadd_1_B_4_) );
  INV_X1 U128 ( .I(n110), .ZN(intadd_2_A_0_) );
  INV_X1 U129 ( .I(A[2]), .ZN(n115) );
  NOR2_X1 U130 ( .A1(n115), .A2(n112), .ZN(intadd_2_B_0_) );
  INV_X1 U131 ( .I(B[5]), .ZN(n114) );
  NOR2_X1 U132 ( .A1(n122), .A2(n114), .ZN(intadd_2_B_1_) );
  NOR2_X1 U133 ( .A1(n128), .A2(n114), .ZN(intadd_2_B_2_) );
  NOR2_X1 U134 ( .A1(n113), .A2(n115), .ZN(intadd_1_CI) );
  AND2_X1 U135 ( .A1(B[7]), .A2(A[1]), .Z(intadd_1_A_0_) );
  INV_X1 U136 ( .I(A[3]), .ZN(n118) );
  NOR2_X1 U137 ( .A1(n118), .A2(n112), .ZN(intadd_1_B_0_) );
  NOR2_X1 U138 ( .A1(n111), .A2(n112), .ZN(intadd_1_A_1_) );
  NOR2_X1 U139 ( .A1(n113), .A2(n118), .ZN(intadd_1_B_1_) );
  NOR2_X1 U140 ( .A1(n122), .A2(n112), .ZN(intadd_1_A_2_) );
  NOR2_X1 U141 ( .A1(n113), .A2(n111), .ZN(intadd_1_B_2_) );
  NOR2_X1 U142 ( .A1(n128), .A2(n112), .ZN(intadd_1_A_3_) );
  NOR2_X1 U143 ( .A1(n113), .A2(n122), .ZN(intadd_1_B_3_) );
  NOR2_X1 U144 ( .A1(n137), .A2(n114), .ZN(intadd_2_B_3_) );
  INV_X1 U146 ( .I(A[0]), .ZN(n117) );
  INV_X1 U147 ( .I(B[0]), .ZN(n121) );
  NOR2_X1 U148 ( .A1(n117), .A2(n121), .ZN(O[3]) );
  OAI22_X1 U149 ( .A1(n117), .A2(n116), .B1(n121), .B2(n115), .ZN(O[2]) );
  NOR2_X1 U150 ( .A1(n123), .A2(n118), .ZN(O[4]) );
  AOI22_X1 U151 ( .A1(B[1]), .A2(A[4]), .B1(A[5]), .B2(B[0]), .ZN(n120) );
  NAND2_X1 U152 ( .A1(n120), .A2(n119), .ZN(O[5]) );
  OAI22_X1 U153 ( .A1(n123), .A2(n122), .B1(n128), .B2(n121), .ZN(O[6]) );
  INV_X1 U154 ( .I(B[3]), .ZN(n127) );
  NOR2_X1 U155 ( .A1(n127), .A2(n137), .ZN(n130) );
  INV_X1 U156 ( .I(n124), .ZN(n126) );
  NAND2_X1 U157 ( .A1(B[3]), .A2(A[5]), .ZN(n125) );
  NOR2_X1 U158 ( .A1(n126), .A2(n125), .ZN(n132) );
  NOR2_X1 U159 ( .A1(n128), .A2(n127), .ZN(n131) );
  FA_X1 U160 ( .A(intadd_3_SUM_1_), .B(n130), .CI(n129), .CO(intadd_0_B_2_), 
        .S(intadd_0_A_1_) );
  FA_X1 U161 ( .A(intadd_3_SUM_0_), .B(n132), .CI(n131), .CO(n129), .S(
        intadd_0_A_0_) );
  INV_X1 U162 ( .I(intadd_0_n1), .ZN(n135) );
  NOR2_X1 U163 ( .A1(n137), .A2(intadd_1_n1), .ZN(n133) );
  AOI22_X1 U164 ( .A1(n137), .A2(intadd_1_n1), .B1(B[7]), .B2(n133), .ZN(n134)
         );
  XOR2_X1 U165 ( .A1(n135), .A2(n134), .Z(O[14]) );
  INV_X1 U166 ( .I(intadd_1_n1), .ZN(n136) );
  OAI22_X1 U167 ( .A1(n137), .A2(n136), .B1(n135), .B2(n134), .ZN(O[15]) );
  NOR2_X1 U168 ( .A1(n138), .A2(intadd_0_SUM_0_), .ZN(n139) );
  NOR2_X1 U169 ( .A1(intadd_0_B_1_), .A2(n139), .ZN(O[9]) );
  FA_X1 U170 ( .A(n142), .B(n141), .CI(n140), .CO(n138), .S(O[8]) );
endmodule

