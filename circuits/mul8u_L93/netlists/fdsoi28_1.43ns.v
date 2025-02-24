/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:24:32 2025
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
         intadd_3_SUM_0_, intadd_3_n3, intadd_3_n2, intadd_3_n1, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134;
  assign O[1] = 1'b0;
  assign O[0] = O[3];

  FA_X1 intadd_0_U6 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_0_) );
  FA_X1 intadd_0_U5 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(O[10]) );
  FA_X1 intadd_0_U4 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(O[11]) );
  FA_X1 intadd_0_U3 ( .A(intadd_0_A_3_), .B(intadd_3_n1), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(O[12]) );
  FA_X1 intadd_0_U2 ( .A(intadd_0_A_4_), .B(intadd_2_n1), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(O[13]) );
  FA_X1 intadd_1_U6 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_0_) );
  FA_X1 intadd_1_U5 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_1_) );
  FA_X1 intadd_1_U4 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  FA_X1 intadd_1_U3 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  FA_X1 intadd_1_U2 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_0_A_4_) );
  FA_X1 intadd_2_U5 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(
        intadd_1_SUM_0_), .CO(intadd_2_n4), .S(intadd_2_SUM_0_) );
  FA_X1 intadd_2_U4 ( .A(intadd_1_SUM_1_), .B(intadd_2_B_1_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  FA_X1 intadd_2_U3 ( .A(intadd_1_SUM_2_), .B(intadd_2_B_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  FA_X1 intadd_2_U2 ( .A(intadd_1_SUM_3_), .B(intadd_2_B_3_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_0_A_3_) );
  FA_X1 intadd_3_U4 ( .A(intadd_2_SUM_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_0_) );
  FA_X1 intadd_3_U3 ( .A(intadd_2_SUM_1_), .B(intadd_3_B_1_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_1_) );
  FA_X1 intadd_3_U2 ( .A(intadd_2_SUM_2_), .B(intadd_3_B_2_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_0_A_2_) );
  INV_X1 U91 ( .A(B[4]), .ZN(n114) );
  INV_X1 U92 ( .A(A[4]), .ZN(n109) );
  NAND2_X1 U93 ( .A1(A[3]), .A2(B[5]), .ZN(n102) );
  OAI21_X1 U94 ( .B1(n114), .B2(n109), .A(n102), .ZN(n116) );
  AOI21_X1 U95 ( .B1(B[3]), .B2(A[5]), .A(n116), .ZN(n100) );
  NAND2_X1 U96 ( .A1(A[6]), .A2(B[2]), .ZN(n99) );
  NOR2_X1 U97 ( .A1(n100), .A2(n99), .ZN(intadd_0_CI) );
  INV_X1 U98 ( .A(B[1]), .ZN(n105) );
  INV_X1 U99 ( .A(A[6]), .ZN(n124) );
  AOI22_X1 U100 ( .A1(A[4]), .A2(B[3]), .B1(A[5]), .B2(B[2]), .ZN(n97) );
  OAI21_X1 U101 ( .B1(n105), .B2(n124), .A(n97), .ZN(n98) );
  AOI21_X1 U102 ( .B1(B[7]), .B2(A[0]), .A(n98), .ZN(n107) );
  NAND2_X1 U103 ( .A1(A[7]), .A2(B[0]), .ZN(n106) );
  NOR2_X1 U104 ( .A1(n107), .A2(n106), .ZN(n134) );
  AOI21_X1 U105 ( .B1(n100), .B2(n99), .A(intadd_0_CI), .ZN(n133) );
  INV_X1 U106 ( .A(A[7]), .ZN(n129) );
  NOR2_X1 U107 ( .A1(n105), .A2(n129), .ZN(n132) );
  AND2_X1 U108 ( .A1(n131), .A2(intadd_0_SUM_0_), .ZN(intadd_0_B_1_) );
  NAND2_X1 U109 ( .A1(A[4]), .A2(B[5]), .ZN(n112) );
  INV_X1 U110 ( .A(n112), .ZN(intadd_2_A_0_) );
  AND2_X1 U111 ( .A1(B[7]), .A2(A[1]), .ZN(intadd_1_A_0_) );
  INV_X1 U113 ( .A(A[0]), .ZN(n101) );
  INV_X1 U114 ( .A(B[0]), .ZN(n104) );
  NOR2_X1 U115 ( .A1(n101), .A2(n104), .ZN(O[3]) );
  INV_X1 U116 ( .A(B[2]), .ZN(n122) );
  INV_X1 U117 ( .A(A[2]), .ZN(n110) );
  OAI22_X1 U118 ( .A1(n101), .A2(n122), .B1(n104), .B2(n110), .ZN(O[2]) );
  INV_X1 U119 ( .A(A[3]), .ZN(n108) );
  NOR2_X1 U120 ( .A1(n105), .A2(n108), .ZN(O[4]) );
  AOI22_X1 U121 ( .A1(B[1]), .A2(A[4]), .B1(A[5]), .B2(B[0]), .ZN(n103) );
  NAND2_X1 U122 ( .A1(n103), .A2(n102), .ZN(O[5]) );
  INV_X1 U123 ( .A(A[5]), .ZN(n115) );
  OAI22_X1 U124 ( .A1(n105), .A2(n115), .B1(n124), .B2(n104), .ZN(O[6]) );
  NAND2_X1 U125 ( .A1(A[3]), .A2(B[4]), .ZN(n113) );
  OAI221_X1 U126 ( .B1(n134), .B2(n107), .C1(n134), .C2(n106), .A(n113), .ZN(
        O[7]) );
  INV_X1 U127 ( .A(B[6]), .ZN(n123) );
  NOR2_X1 U128 ( .A1(n124), .A2(n123), .ZN(intadd_1_A_3_) );
  INV_X1 U129 ( .A(B[7]), .ZN(n125) );
  NOR2_X1 U130 ( .A1(n125), .A2(n110), .ZN(intadd_1_B_0_) );
  NOR2_X1 U131 ( .A1(n108), .A2(n123), .ZN(intadd_1_CI) );
  NOR2_X1 U132 ( .A1(n109), .A2(n123), .ZN(intadd_1_A_1_) );
  NOR2_X1 U133 ( .A1(n125), .A2(n108), .ZN(intadd_1_B_1_) );
  NOR2_X1 U134 ( .A1(n115), .A2(n123), .ZN(intadd_1_A_2_) );
  NOR2_X1 U135 ( .A1(n125), .A2(n109), .ZN(intadd_1_B_2_) );
  NOR2_X1 U136 ( .A1(n125), .A2(n115), .ZN(intadd_1_B_3_) );
  INV_X1 U137 ( .A(B[5]), .ZN(n111) );
  NOR2_X1 U138 ( .A1(n124), .A2(n111), .ZN(intadd_2_B_2_) );
  NOR2_X1 U139 ( .A1(n115), .A2(n111), .ZN(intadd_2_B_1_) );
  NOR2_X1 U140 ( .A1(n110), .A2(n123), .ZN(intadd_2_B_0_) );
  NOR2_X1 U141 ( .A1(n129), .A2(n111), .ZN(intadd_2_B_3_) );
  NOR2_X1 U142 ( .A1(n129), .A2(n114), .ZN(intadd_3_B_2_) );
  NOR2_X1 U143 ( .A1(n124), .A2(n114), .ZN(intadd_3_B_1_) );
  NOR2_X1 U144 ( .A1(n113), .A2(n112), .ZN(intadd_3_B_0_) );
  NOR2_X1 U145 ( .A1(n115), .A2(n114), .ZN(intadd_3_CI) );
  INV_X1 U146 ( .A(B[3]), .ZN(n117) );
  NOR2_X1 U147 ( .A1(n117), .A2(n129), .ZN(n119) );
  AND3_X1 U148 ( .A1(A[5]), .A2(B[3]), .A3(n116), .ZN(n121) );
  NOR2_X1 U149 ( .A1(n124), .A2(n117), .ZN(n120) );
  FA_X1 U150 ( .A(intadd_3_SUM_1_), .B(n119), .CI(n118), .CO(intadd_0_B_2_), 
        .S(intadd_0_A_1_) );
  FA_X1 U151 ( .A(intadd_3_SUM_0_), .B(n121), .CI(n120), .CO(n118), .S(
        intadd_0_A_0_) );
  NOR2_X1 U152 ( .A1(n122), .A2(n129), .ZN(intadd_0_B_0_) );
  NOR2_X1 U153 ( .A1(n129), .A2(n123), .ZN(intadd_1_A_4_) );
  NOR2_X1 U154 ( .A1(n125), .A2(n124), .ZN(intadd_1_B_4_) );
  NOR2_X1 U155 ( .A1(n125), .A2(n129), .ZN(n126) );
  MUX2_X1 U156 ( .A(n126), .B(n129), .S(intadd_1_n1), .Z(n127) );
  XOR2_X1 U157 ( .A(intadd_0_n1), .B(n127), .Z(O[14]) );
  INV_X1 U158 ( .A(intadd_1_n1), .ZN(n130) );
  NAND2_X1 U159 ( .A1(n127), .A2(intadd_0_n1), .ZN(n128) );
  OAI21_X1 U160 ( .B1(n130), .B2(n129), .A(n128), .ZN(O[15]) );
  XOR2_X1 U161 ( .A(n131), .B(intadd_0_SUM_0_), .Z(O[9]) );
  FA_X1 U162 ( .A(n134), .B(n133), .CI(n132), .CO(n131), .S(O[8]) );
endmodule

