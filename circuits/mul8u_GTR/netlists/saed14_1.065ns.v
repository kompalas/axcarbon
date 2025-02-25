/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:18:10 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_7_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_4_,
         intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_,
         intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_,
         intadd_1_B_0_, intadd_1_CI, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_4_, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_4_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n5, intadd_2_n4,
         intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_4_, intadd_3_A_3_,
         intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_4_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_,
         intadd_3_CI, intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_,
         intadd_3_SUM_0_, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_B_3_, intadd_4_B_2_, intadd_4_B_1_,
         intadd_4_B_0_, intadd_4_CI, intadd_4_SUM_2_, intadd_4_SUM_1_,
         intadd_4_SUM_0_, intadd_4_n4, intadd_4_n3, intadd_4_n2, intadd_4_n1,
         intadd_5_B_2_, intadd_5_B_1_, intadd_5_B_0_, intadd_5_CI, intadd_5_n3,
         intadd_5_n2, intadd_5_n1, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188;

  SAEDRVT14_ADDF_V1_0P5 intadd_5_U4 ( .A(intadd_5_CI), .B(intadd_4_SUM_0_), 
        .CI(intadd_5_B_0_), .CO(intadd_5_n3), .S(intadd_0_A_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U5 ( .A(intadd_4_CI), .B(intadd_1_SUM_0_), 
        .CI(intadd_4_B_0_), .CO(intadd_4_n4), .S(intadd_4_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U6 ( .A(intadd_1_CI), .B(intadd_1_A_0_), .CI(
        intadd_1_B_0_), .CO(intadd_1_n5), .S(intadd_1_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_5_U3 ( .A(intadd_5_n3), .B(intadd_4_SUM_1_), 
        .CI(intadd_5_B_1_), .CO(intadd_5_n2), .S(intadd_0_A_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U4 ( .A(intadd_4_n4), .B(intadd_1_SUM_1_), 
        .CI(intadd_4_B_1_), .CO(intadd_4_n3), .S(intadd_4_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U5 ( .A(intadd_1_n5), .B(intadd_1_A_1_), .CI(
        intadd_1_B_1_), .CO(intadd_1_n4), .S(intadd_1_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U6 ( .A(intadd_2_CI), .B(intadd_2_A_0_), .CI(
        intadd_2_B_0_), .CO(intadd_2_n5), .S(intadd_2_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U3 ( .A(intadd_4_n3), .B(intadd_1_SUM_2_), 
        .CI(intadd_4_B_2_), .CO(intadd_4_n2), .S(intadd_4_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U4 ( .A(intadd_1_n4), .B(intadd_1_A_2_), .CI(
        intadd_1_B_2_), .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U5 ( .A(intadd_2_n5), .B(intadd_2_A_1_), .CI(
        intadd_2_B_1_), .CO(intadd_2_n4), .S(intadd_2_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_5_U2 ( .A(intadd_5_n2), .B(intadd_4_SUM_2_), 
        .CI(intadd_5_B_2_), .CO(intadd_5_n1), .S(intadd_0_A_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U3 ( .A(intadd_1_n3), .B(intadd_1_A_3_), .CI(
        intadd_1_B_3_), .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U4 ( .A(intadd_2_n4), .B(intadd_2_A_2_), .CI(
        intadd_2_B_2_), .CO(intadd_2_n3), .S(intadd_2_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U2 ( .A(intadd_4_n2), .B(intadd_1_SUM_3_), 
        .CI(intadd_4_B_3_), .CO(intadd_4_n1), .S(intadd_0_A_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U3 ( .A(intadd_2_n3), .B(intadd_2_A_3_), .CI(
        intadd_2_B_3_), .CO(intadd_2_n2), .S(intadd_2_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U2 ( .A(intadd_1_n2), .B(intadd_1_A_4_), .CI(
        intadd_1_B_4_), .CO(intadd_1_n1), .S(intadd_0_A_5_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U2 ( .A(intadd_2_n2), .B(intadd_2_A_4_), .CI(
        intadd_2_B_4_), .CO(intadd_2_n1), .S(intadd_2_SUM_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U6 ( .A(intadd_3_CI), .B(intadd_3_A_0_), .CI(
        intadd_3_B_0_), .CO(intadd_3_n5), .S(intadd_3_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U5 ( .A(intadd_3_n5), .B(intadd_3_A_1_), .CI(
        intadd_3_B_1_), .CO(intadd_3_n4), .S(intadd_3_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U4 ( .A(intadd_3_n4), .B(intadd_3_A_2_), .CI(
        intadd_3_B_2_), .CO(intadd_3_n3), .S(intadd_3_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U3 ( .A(intadd_3_n3), .B(intadd_3_A_3_), .CI(
        intadd_3_B_3_), .CO(intadd_3_n2), .S(intadd_3_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U2 ( .A(intadd_3_n2), .B(intadd_3_A_4_), .CI(
        intadd_3_B_4_), .CO(intadd_3_n1), .S(intadd_0_A_7_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U9 ( .A(intadd_0_CI), .B(intadd_0_A_0_), .CI(
        intadd_0_B_0_), .CO(intadd_0_n8), .S(intadd_0_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U8 ( .A(intadd_0_n8), .B(intadd_0_A_1_), .CI(
        intadd_0_B_1_), .CO(intadd_0_n7), .S(intadd_0_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U7 ( .A(intadd_0_n7), .B(intadd_0_A_2_), .CI(
        intadd_0_B_2_), .CO(intadd_0_n6), .S(intadd_0_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U6 ( .A(intadd_0_n6), .B(intadd_0_A_3_), .CI(
        intadd_0_B_3_), .CO(intadd_0_n5), .S(O[9]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(intadd_0_n5), .B(intadd_0_A_4_), .CI(
        intadd_5_n1), .CO(intadd_0_n4), .S(O[10]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(intadd_0_A_5_), .CI(
        intadd_4_n1), .CO(intadd_0_n3), .S(O[11]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(intadd_0_A_6_), .CI(
        intadd_1_n1), .CO(intadd_0_n2), .S(O[12]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(intadd_0_A_7_), .CI(
        intadd_0_B_7_), .CO(intadd_0_n1), .S(O[13]) );
  SAEDRVT14_TIE0_V1_2 U128 ( .X(O[1]) );
  SAEDRVT14_OR3_0P5 U129 ( .A1(n186), .A2(n185), .A3(O[2]), .X(n181) );
  SAEDRVT14_NR2_1 U130 ( .A1(n186), .A2(n182), .X(n184) );
  SAEDRVT14_AOI21_0P75 U131 ( .A1(n156), .A2(n155), .B(O[0]), .X(intadd_2_B_0_) );
  SAEDRVT14_AOI21_0P75 U132 ( .A1(n168), .A2(n183), .B(n182), .X(intadd_3_B_0_) );
  SAEDRVT14_NR2_1 U133 ( .A1(n172), .A2(n171), .X(intadd_3_CI) );
  SAEDRVT14_NR2_1 U134 ( .A1(n170), .A2(n169), .X(intadd_3_A_0_) );
  SAEDRVT14_NR2_1 U135 ( .A1(n162), .A2(n169), .X(intadd_1_A_0_) );
  SAEDRVT14_AOI21_0P75 U136 ( .A1(n158), .A2(n157), .B(O[0]), .X(intadd_1_B_0_) );
  SAEDRVT14_NR2_1 U137 ( .A1(n162), .A2(n167), .X(intadd_1_B_1_) );
  SAEDRVT14_NR2_1 U138 ( .A1(n172), .A2(n169), .X(intadd_3_B_1_) );
  SAEDRVT14_NR2_1 U139 ( .A1(n170), .A2(n167), .X(intadd_3_A_1_) );
  SAEDRVT14_NR2_1 U140 ( .A1(n159), .A2(n167), .X(intadd_4_CI) );
  SAEDRVT14_AN3_0P5 U141 ( .A1(A[3]), .A2(B[3]), .A3(n181), .X(intadd_4_B_0_)
         );
  SAEDRVT14_NR2_1 U142 ( .A1(n159), .A2(n166), .X(intadd_4_B_1_) );
  SAEDRVT14_NR2_1 U143 ( .A1(n162), .A2(n166), .X(intadd_1_B_2_) );
  SAEDRVT14_NR2_1 U144 ( .A1(n172), .A2(n167), .X(intadd_3_B_2_) );
  SAEDRVT14_NR2_1 U145 ( .A1(n170), .A2(n166), .X(intadd_3_A_2_) );
  SAEDRVT14_NR2_1 U146 ( .A1(n153), .A2(n152), .X(n155) );
  SAEDRVT14_NR2_1 U147 ( .A1(n168), .A2(n182), .X(n153) );
  SAEDRVT14_AN2_MM_0P5 U148 ( .A1(A[1]), .A2(B[5]), .X(n185) );
  SAEDRVT14_AOI21_0P75 U149 ( .A1(A[3]), .A2(B[3]), .B(n181), .X(n164) );
  SAEDRVT14_NR2_1 U150 ( .A1(n164), .A2(n163), .X(intadd_5_B_0_) );
  SAEDRVT14_AN3_0P5 U151 ( .A1(A[4]), .A2(B[1]), .A3(n150), .X(intadd_0_B_0_)
         );
  SAEDRVT14_NR2_1 U152 ( .A1(n160), .A2(n166), .X(intadd_5_CI) );
  SAEDRVT14_NR2_1 U153 ( .A1(n160), .A2(n165), .X(intadd_5_B_1_) );
  SAEDRVT14_NR2_1 U154 ( .A1(n159), .A2(n165), .X(intadd_4_B_2_) );
  SAEDRVT14_NR2_1 U155 ( .A1(n162), .A2(n165), .X(intadd_1_B_3_) );
  SAEDRVT14_NR2_1 U156 ( .A1(n170), .A2(n165), .X(intadd_3_B_3_) );
  SAEDRVT14_NR2_1 U157 ( .A1(n172), .A2(n166), .X(intadd_3_A_3_) );
  SAEDRVT14_NR2_1 U158 ( .A1(n167), .A2(n161), .X(n151) );
  SAEDRVT14_NR2_1 U159 ( .A1(n166), .A2(n161), .X(intadd_0_A_0_) );
  SAEDRVT14_AOI21_0P75 U160 ( .A1(n164), .A2(n163), .B(intadd_5_B_0_), .X(
        intadd_0_CI) );
  SAEDRVT14_NR2_1 U161 ( .A1(n174), .A2(n173), .X(n176) );
  SAEDRVT14_NR2_1 U162 ( .A1(n161), .A2(n165), .X(intadd_0_B_1_) );
  SAEDRVT14_NR2_1 U163 ( .A1(n161), .A2(n177), .X(intadd_0_B_2_) );
  SAEDRVT14_AN2_MM_0P5 U164 ( .A1(n188), .A2(intadd_0_SUM_2_), .X(
        intadd_0_B_3_) );
  SAEDRVT14_NR2_1 U165 ( .A1(n160), .A2(n177), .X(intadd_5_B_2_) );
  SAEDRVT14_NR2_1 U166 ( .A1(n159), .A2(n177), .X(intadd_4_B_3_) );
  SAEDRVT14_NR2_1 U167 ( .A1(n162), .A2(n177), .X(intadd_1_B_4_) );
  SAEDRVT14_NR2_1 U168 ( .A1(n170), .A2(n177), .X(intadd_3_B_4_) );
  SAEDRVT14_NR2_1 U169 ( .A1(n172), .A2(n165), .X(intadd_3_A_4_) );
  SAEDRVT14_NR2_1 U170 ( .A1(n158), .A2(n157), .X(O[0]) );
  SAEDRVT14_NR2_1 U171 ( .A1(n171), .A2(n162), .X(O[2]) );
  SAEDRVT14_NR2_1 U172 ( .A1(n178), .A2(n165), .X(n175) );
  SAEDRVT14_NR2_1 U173 ( .A1(n178), .A2(n177), .X(n179) );
  SAEDRVT14_INV_0P5 U174 ( .A(A[3]), .X(n169) );
  SAEDRVT14_INV_0P5 U175 ( .A(B[0]), .X(n178) );
  SAEDRVT14_NR2_1 U176 ( .A1(n169), .A2(n178), .X(O[3]) );
  SAEDRVT14_INV_0P5 U177 ( .A(B[1]), .X(n161) );
  SAEDRVT14_INV_0P5 U178 ( .A(A[4]), .X(n167) );
  SAEDRVT14_OAI22_0P5 U179 ( .A1(n169), .A2(n161), .B1(n167), .B2(n178), .X(
        O[4]) );
  SAEDRVT14_INV_0P5 U180 ( .A(B[7]), .X(n172) );
  SAEDRVT14_INV_0P5 U181 ( .A(A[7]), .X(n177) );
  SAEDRVT14_NR2_1 U182 ( .A1(n172), .A2(n177), .X(n147) );
  SAEDRVT14_EO2_V1_0P75 U183 ( .A1(n147), .A2(intadd_3_n1), .X(n148) );
  SAEDRVT14_ND2_CDC_0P5 U184 ( .A1(n148), .A2(intadd_0_n1), .X(n187) );
  SAEDRVT14_OA21_1 U185 ( .A1(n148), .A2(intadd_0_n1), .B(n187), .X(O[14]) );
  SAEDRVT14_INV_0P5 U186 ( .A(intadd_2_n1), .X(intadd_0_B_7_) );
  SAEDRVT14_INV_0P5 U187 ( .A(intadd_2_SUM_4_), .X(intadd_0_A_6_) );
  SAEDRVT14_INV_0P5 U188 ( .A(intadd_3_SUM_3_), .X(intadd_2_A_4_) );
  SAEDRVT14_INV_0P5 U189 ( .A(B[4]), .X(n162) );
  SAEDRVT14_INV_0P5 U190 ( .A(intadd_2_SUM_3_), .X(intadd_1_A_4_) );
  SAEDRVT14_INV_0P5 U191 ( .A(intadd_3_SUM_2_), .X(intadd_2_B_3_) );
  SAEDRVT14_INV_0P5 U192 ( .A(B[3]), .X(n159) );
  SAEDRVT14_INV_0P5 U193 ( .A(A[6]), .X(n165) );
  SAEDRVT14_INV_0P5 U194 ( .A(intadd_2_SUM_2_), .X(intadd_1_A_3_) );
  SAEDRVT14_INV_0P5 U195 ( .A(intadd_3_SUM_1_), .X(intadd_2_A_2_) );
  SAEDRVT14_INV_0P5 U196 ( .A(A[2]), .X(n171) );
  SAEDRVT14_INV_0P5 U197 ( .A(B[2]), .X(n160) );
  SAEDRVT14_OAI22_0P5 U198 ( .A1(n171), .A2(n159), .B1(n169), .B2(n160), .X(
        n150) );
  SAEDRVT14_ND2_CDC_0P5 U199 ( .A1(A[5]), .A2(B[0]), .X(n174) );
  SAEDRVT14_INV_0P5 U200 ( .A(intadd_0_B_0_), .X(n149) );
  SAEDRVT14_OAI21_0P5 U201 ( .A1(n151), .A2(n150), .B(n149), .X(n173) );
  SAEDRVT14_INV_0P5 U202 ( .A(A[5]), .X(n166) );
  SAEDRVT14_INV_0P5 U203 ( .A(intadd_2_SUM_1_), .X(intadd_1_A_2_) );
  SAEDRVT14_INV_0P5 U204 ( .A(intadd_3_SUM_0_), .X(intadd_2_A_1_) );
  SAEDRVT14_INV_0P5 U205 ( .A(intadd_2_SUM_0_), .X(intadd_1_A_1_) );
  SAEDRVT14_ND2_CDC_0P5 U206 ( .A1(B[6]), .A2(A[0]), .X(n168) );
  SAEDRVT14_INV_0P5 U207 ( .A(n168), .X(n186) );
  SAEDRVT14_ND2_CDC_0P5 U208 ( .A1(n186), .A2(n185), .X(n158) );
  SAEDRVT14_ND2_CDC_0P5 U209 ( .A1(A[1]), .A2(B[7]), .X(n182) );
  SAEDRVT14_AOI22_0P5 U210 ( .A1(B[6]), .A2(A[1]), .B1(A[0]), .B2(B[7]), .X(
        n152) );
  SAEDRVT14_ND2_CDC_0P5 U211 ( .A1(B[5]), .A2(A[2]), .X(n154) );
  SAEDRVT14_EO2_V1_0P75 U212 ( .A1(n155), .A2(n154), .X(n157) );
  SAEDRVT14_INV_0P5 U213 ( .A(n154), .X(n156) );
  SAEDRVT14_ND2_CDC_0P5 U214 ( .A1(B[2]), .A2(A[4]), .X(n163) );
  SAEDRVT14_INV_0P5 U215 ( .A(B[6]), .X(n170) );
  SAEDRVT14_ND2_CDC_0P5 U216 ( .A1(B[6]), .A2(A[2]), .X(n183) );
  SAEDRVT14_AOI21_0P75 U217 ( .A1(n174), .A2(n173), .B(n176), .X(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 U218 ( .A(n176), .B(n175), .CI(intadd_0_SUM_0_), .CO(
        n180), .S(O[6]) );
  SAEDRVT14_ADDF_V1_0P5 U219 ( .A(intadd_0_SUM_1_), .B(n180), .CI(n179), .CO(
        n188), .S(O[7]) );
  SAEDRVT14_ND2_CDC_0P5 U220 ( .A1(B[5]), .A2(A[7]), .X(intadd_2_B_4_) );
  SAEDRVT14_ND2_CDC_0P5 U221 ( .A1(B[5]), .A2(A[5]), .X(intadd_2_B_2_) );
  SAEDRVT14_ND2_CDC_0P5 U222 ( .A1(B[5]), .A2(A[4]), .X(intadd_2_B_1_) );
  SAEDRVT14_ND2_CDC_0P5 U223 ( .A1(B[5]), .A2(A[3]), .X(intadd_2_A_0_) );
  SAEDRVT14_EO2_V1_0P75 U224 ( .A1(n184), .A2(n183), .X(intadd_2_CI) );
  SAEDRVT14_ND2_CDC_0P5 U225 ( .A1(B[5]), .A2(A[6]), .X(intadd_2_A_3_) );
  SAEDRVT14_OA21_1 U226 ( .A1(n186), .A2(n185), .B(O[2]), .X(intadd_1_CI) );
  SAEDRVT14_AO21B_0P5 U227 ( .A1(intadd_3_n1), .A2(A[7]), .B(n187), .X(O[15])
         );
  SAEDRVT14_OA21B_1 U228 ( .A1(n188), .A2(intadd_0_SUM_2_), .B(intadd_0_B_3_), 
        .X(O[8]) );
endmodule

