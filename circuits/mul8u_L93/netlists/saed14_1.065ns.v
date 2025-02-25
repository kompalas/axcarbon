/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:21:54 2025
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
         intadd_3_SUM_0_, intadd_3_n3, intadd_3_n2, intadd_3_n1, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131;
  assign O[0] = O[3];

  SAEDRVT14_ADDF_V1_0P5 intadd_3_U4 ( .A(intadd_3_CI), .B(intadd_2_SUM_0_), 
        .CI(intadd_3_B_0_), .CO(intadd_3_n3), .S(intadd_3_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U5 ( .A(intadd_1_SUM_0_), .B(intadd_2_A_0_), 
        .CI(intadd_2_B_0_), .CO(intadd_2_n4), .S(intadd_2_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U6 ( .A(intadd_1_CI), .B(intadd_1_A_0_), .CI(
        intadd_1_B_0_), .CO(intadd_1_n5), .S(intadd_1_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U3 ( .A(intadd_3_n3), .B(intadd_2_SUM_1_), 
        .CI(intadd_3_B_1_), .CO(intadd_3_n2), .S(intadd_3_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U4 ( .A(intadd_2_n4), .B(intadd_1_SUM_1_), 
        .CI(intadd_2_B_1_), .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U5 ( .A(intadd_1_n5), .B(intadd_1_A_1_), .CI(
        intadd_1_B_1_), .CO(intadd_1_n4), .S(intadd_1_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U3 ( .A(intadd_2_n3), .B(intadd_1_SUM_2_), 
        .CI(intadd_2_B_2_), .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U4 ( .A(intadd_1_n4), .B(intadd_1_A_2_), .CI(
        intadd_1_B_2_), .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U2 ( .A(intadd_3_n2), .B(intadd_2_SUM_2_), 
        .CI(intadd_3_B_2_), .CO(intadd_3_n1), .S(intadd_0_A_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U3 ( .A(intadd_1_n3), .B(intadd_1_A_3_), .CI(
        intadd_1_B_3_), .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U2 ( .A(intadd_2_n2), .B(intadd_1_SUM_3_), 
        .CI(intadd_2_B_3_), .CO(intadd_2_n1), .S(intadd_0_A_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U2 ( .A(intadd_1_n2), .B(intadd_1_A_4_), .CI(
        intadd_1_B_4_), .CO(intadd_1_n1), .S(intadd_0_A_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U6 ( .A(intadd_0_CI), .B(intadd_0_A_0_), .CI(
        intadd_0_B_0_), .CO(intadd_0_n5), .S(intadd_0_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(intadd_0_n5), .B(intadd_0_A_1_), .CI(
        intadd_0_B_1_), .CO(intadd_0_n4), .S(O[10]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(intadd_0_A_2_), .CI(
        intadd_0_B_2_), .CO(intadd_0_n3), .S(O[11]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(intadd_0_A_3_), .CI(
        intadd_3_n1), .CO(intadd_0_n2), .S(O[12]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(intadd_0_A_4_), .CI(
        intadd_2_n1), .CO(intadd_0_n1), .S(O[13]) );
  SAEDRVT14_TIE0_V1_2 U90 ( .X(O[1]) );
  SAEDRVT14_AN2_MM_0P5 U91 ( .A1(B[7]), .A2(A[1]), .X(intadd_1_A_0_) );
  SAEDRVT14_NR2_1 U92 ( .A1(n127), .A2(n110), .X(intadd_1_CI) );
  SAEDRVT14_NR2_1 U93 ( .A1(n109), .A2(n108), .X(intadd_1_B_0_) );
  SAEDRVT14_NR2_1 U94 ( .A1(n107), .A2(n106), .X(intadd_2_A_0_) );
  SAEDRVT14_NR2_1 U95 ( .A1(n110), .A2(n108), .X(intadd_2_B_0_) );
  SAEDRVT14_NR2_1 U96 ( .A1(n127), .A2(n109), .X(intadd_1_B_1_) );
  SAEDRVT14_NR2_1 U97 ( .A1(n107), .A2(n108), .X(intadd_1_A_1_) );
  SAEDRVT14_NR2_1 U98 ( .A1(n112), .A2(n111), .X(intadd_3_CI) );
  SAEDRVT14_AN3_0P5 U99 ( .A1(B[4]), .A2(A[3]), .A3(intadd_2_A_0_), .X(
        intadd_3_B_0_) );
  SAEDRVT14_NR2_1 U100 ( .A1(n112), .A2(n106), .X(intadd_2_B_1_) );
  SAEDRVT14_NR2_1 U101 ( .A1(n127), .A2(n107), .X(intadd_1_B_2_) );
  SAEDRVT14_NR2_1 U102 ( .A1(n112), .A2(n108), .X(intadd_1_A_2_) );
  SAEDRVT14_NR2_1 U103 ( .A1(n115), .A2(n114), .X(n118) );
  SAEDRVT14_AN3_0P5 U104 ( .A1(B[3]), .A2(A[5]), .A3(n113), .X(n119) );
  SAEDRVT14_NR2_1 U105 ( .A1(n115), .A2(n111), .X(intadd_3_B_1_) );
  SAEDRVT14_NR2_1 U106 ( .A1(n115), .A2(n106), .X(intadd_2_B_2_) );
  SAEDRVT14_NR2_1 U107 ( .A1(n127), .A2(n112), .X(intadd_1_B_3_) );
  SAEDRVT14_NR2_1 U108 ( .A1(n115), .A2(n108), .X(intadd_1_A_3_) );
  SAEDRVT14_AOI21_0P75 U109 ( .A1(B[7]), .A2(A[0]), .B(n100), .X(n102) );
  SAEDRVT14_AOI21_0P75 U110 ( .A1(A[5]), .A2(B[3]), .B(n113), .X(n121) );
  SAEDRVT14_NR2_1 U111 ( .A1(n102), .A2(n101), .X(n125) );
  SAEDRVT14_NR2_1 U112 ( .A1(n121), .A2(n120), .X(intadd_0_CI) );
  SAEDRVT14_NR2_1 U113 ( .A1(n105), .A2(n126), .X(intadd_0_B_0_) );
  SAEDRVT14_AN2_MM_0P5 U114 ( .A1(n131), .A2(intadd_0_SUM_0_), .X(
        intadd_0_B_1_) );
  SAEDRVT14_NR2_1 U115 ( .A1(n114), .A2(n126), .X(n117) );
  SAEDRVT14_NR2_1 U116 ( .A1(n126), .A2(n111), .X(intadd_3_B_2_) );
  SAEDRVT14_NR2_1 U117 ( .A1(n126), .A2(n106), .X(intadd_2_B_3_) );
  SAEDRVT14_NR2_1 U118 ( .A1(n126), .A2(n108), .X(intadd_1_B_4_) );
  SAEDRVT14_NR2_1 U119 ( .A1(n127), .A2(n115), .X(intadd_1_A_4_) );
  SAEDRVT14_NR2_1 U120 ( .A1(n122), .A2(n126), .X(n123) );
  SAEDRVT14_AOI21_0P75 U121 ( .A1(n121), .A2(n120), .B(intadd_0_CI), .X(n124)
         );
  SAEDRVT14_INV_0P5 U122 ( .A(A[0]), .X(n96) );
  SAEDRVT14_INV_0P5 U123 ( .A(B[2]), .X(n105) );
  SAEDRVT14_INV_0P5 U124 ( .A(B[0]), .X(n97) );
  SAEDRVT14_INV_0P5 U125 ( .A(A[2]), .X(n110) );
  SAEDRVT14_OAI22_0P5 U126 ( .A1(n96), .A2(n105), .B1(n97), .B2(n110), .X(O[2]) );
  SAEDRVT14_NR2_1 U127 ( .A1(n96), .A2(n97), .X(O[3]) );
  SAEDRVT14_INV_0P5 U128 ( .A(B[1]), .X(n122) );
  SAEDRVT14_INV_0P5 U129 ( .A(A[3]), .X(n109) );
  SAEDRVT14_NR2_1 U130 ( .A1(n122), .A2(n109), .X(O[4]) );
  SAEDRVT14_INV_0P5 U131 ( .A(A[5]), .X(n112) );
  SAEDRVT14_INV_0P5 U132 ( .A(A[6]), .X(n115) );
  SAEDRVT14_OAI22_0P5 U133 ( .A1(n112), .A2(n122), .B1(n115), .B2(n97), .X(
        O[6]) );
  SAEDRVT14_INV_0P5 U134 ( .A(A[4]), .X(n107) );
  SAEDRVT14_ND2_CDC_0P5 U135 ( .A1(A[3]), .A2(B[5]), .X(n104) );
  SAEDRVT14_OAI21_0P5 U136 ( .A1(n107), .A2(n122), .B(n104), .X(n98) );
  SAEDRVT14_AO21_U_0P5 U137 ( .A1(A[5]), .A2(B[0]), .B(n98), .X(O[5]) );
  SAEDRVT14_OAI22_0P5 U138 ( .A1(n112), .A2(n105), .B1(n122), .B2(n115), .X(
        n99) );
  SAEDRVT14_AO21_U_0P5 U139 ( .A1(A[4]), .A2(B[3]), .B(n99), .X(n100) );
  SAEDRVT14_ND2_CDC_0P5 U140 ( .A1(A[7]), .A2(B[0]), .X(n101) );
  SAEDRVT14_AOI21_0P75 U141 ( .A1(n102), .A2(n101), .B(n125), .X(n103) );
  SAEDRVT14_AO21_U_0P5 U142 ( .A1(B[4]), .A2(A[3]), .B(n103), .X(O[7]) );
  SAEDRVT14_INV_0P5 U143 ( .A(A[7]), .X(n126) );
  SAEDRVT14_INV_0P5 U144 ( .A(B[6]), .X(n108) );
  SAEDRVT14_INV_0P5 U145 ( .A(B[7]), .X(n127) );
  SAEDRVT14_INV_0P5 U146 ( .A(B[5]), .X(n106) );
  SAEDRVT14_INV_0P5 U147 ( .A(B[4]), .X(n111) );
  SAEDRVT14_OAI21_0P5 U148 ( .A1(n111), .A2(n107), .B(n104), .X(n113) );
  SAEDRVT14_ND2_CDC_0P5 U149 ( .A1(B[2]), .A2(A[6]), .X(n120) );
  SAEDRVT14_INV_0P5 U150 ( .A(B[3]), .X(n114) );
  SAEDRVT14_ADDF_V1_0P5 U151 ( .A(intadd_3_SUM_1_), .B(n117), .CI(n116), .CO(
        intadd_0_B_2_), .S(intadd_0_A_1_) );
  SAEDRVT14_ADDF_V1_0P5 U152 ( .A(intadd_3_SUM_0_), .B(n119), .CI(n118), .CO(
        n116), .S(intadd_0_A_0_) );
  SAEDRVT14_ADDF_V1_0P5 U153 ( .A(n125), .B(n124), .CI(n123), .CO(n131), .S(
        O[8]) );
  SAEDRVT14_AOI21_0P75 U154 ( .A1(intadd_1_n1), .A2(n126), .B(intadd_0_n1), 
        .X(n130) );
  SAEDRVT14_NR2_1 U155 ( .A1(intadd_1_n1), .A2(n127), .X(n128) );
  SAEDRVT14_ND2_CDC_0P5 U156 ( .A1(A[7]), .A2(n128), .X(n129) );
  SAEDRVT14_MUXI2_U_0P5 U157 ( .D0(intadd_0_n1), .D1(n130), .S(n129), .X(O[14]) );
  SAEDRVT14_AO32_U_0P5 U158 ( .A1(A[7]), .A2(B[7]), .A3(intadd_0_n1), .B1(A[7]), .B2(intadd_1_n1), .X(O[15]) );
  SAEDRVT14_OA21B_1 U159 ( .A1(n131), .A2(intadd_0_SUM_0_), .B(intadd_0_B_1_), 
        .X(O[9]) );
endmodule

