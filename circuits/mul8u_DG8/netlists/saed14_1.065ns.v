/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:14:24 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_,
         intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n9,
         intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_5_, intadd_1_A_4_,
         intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_,
         intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI, intadd_1_SUM_4_,
         intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_5_,
         intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n6, intadd_2_n5,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_1_,
         intadd_3_A_0_, intadd_3_B_5_, intadd_3_B_4_, intadd_3_B_3_,
         intadd_3_B_2_, intadd_3_B_0_, intadd_3_CI, intadd_3_SUM_4_,
         intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_,
         intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_A_0_, intadd_4_B_4_, intadd_4_B_3_,
         intadd_4_B_2_, intadd_4_B_1_, intadd_4_B_0_, intadd_4_n5, intadd_4_n4,
         intadd_4_n3, intadd_4_n2, intadd_4_n1, intadd_5_A_4_, intadd_5_A_3_,
         intadd_5_A_2_, intadd_5_A_1_, intadd_5_A_0_, intadd_5_B_4_,
         intadd_5_B_3_, intadd_5_B_2_, intadd_5_B_1_, intadd_5_B_0_,
         intadd_5_CI, intadd_5_n5, intadd_5_n4, intadd_5_n3, intadd_5_n2,
         intadd_5_n1, intadd_6_B_2_, intadd_6_B_1_, intadd_6_B_0_, intadd_6_CI,
         intadd_6_n3, intadd_6_n2, intadd_6_n1, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203;

  SAEDRVT14_ADDF_V1_0P5 intadd_4_U6 ( .A(intadd_3_SUM_0_), .B(intadd_4_A_0_), 
        .CI(intadd_4_B_0_), .CO(intadd_4_n5), .S(intadd_0_A_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U7 ( .A(intadd_3_CI), .B(intadd_3_A_0_), .CI(
        intadd_3_B_0_), .CO(intadd_3_n6), .S(intadd_3_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U5 ( .A(intadd_4_n5), .B(intadd_3_SUM_1_), 
        .CI(intadd_4_B_1_), .CO(intadd_4_n4), .S(intadd_0_A_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U6 ( .A(intadd_3_n6), .B(intadd_3_A_1_), .CI(
        intadd_2_SUM_0_), .CO(intadd_3_n5), .S(intadd_3_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U7 ( .A(intadd_2_CI), .B(intadd_2_A_0_), .CI(
        intadd_2_B_0_), .CO(intadd_2_n6), .S(intadd_2_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U4 ( .A(intadd_4_n4), .B(intadd_3_SUM_2_), 
        .CI(intadd_4_B_2_), .CO(intadd_4_n3), .S(intadd_0_A_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U5 ( .A(intadd_3_n5), .B(intadd_2_SUM_1_), 
        .CI(intadd_3_B_2_), .CO(intadd_3_n4), .S(intadd_3_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U6 ( .A(intadd_2_n6), .B(intadd_2_A_1_), .CI(
        intadd_1_SUM_0_), .CO(intadd_2_n5), .S(intadd_2_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U7 ( .A(intadd_1_CI), .B(intadd_1_A_0_), .CI(
        intadd_1_B_0_), .CO(intadd_1_n6), .S(intadd_1_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U3 ( .A(intadd_4_n3), .B(intadd_3_SUM_3_), 
        .CI(intadd_4_B_3_), .CO(intadd_4_n2), .S(intadd_0_A_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U4 ( .A(intadd_3_n4), .B(intadd_2_SUM_2_), 
        .CI(intadd_3_B_3_), .CO(intadd_3_n3), .S(intadd_3_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U5 ( .A(intadd_2_n5), .B(intadd_1_SUM_1_), 
        .CI(intadd_2_B_2_), .CO(intadd_2_n4), .S(intadd_2_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U6 ( .A(intadd_1_n6), .B(intadd_1_A_1_), .CI(
        intadd_1_B_1_), .CO(intadd_1_n5), .S(intadd_1_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U3 ( .A(intadd_3_n3), .B(intadd_2_SUM_3_), 
        .CI(intadd_3_B_4_), .CO(intadd_3_n2), .S(intadd_3_SUM_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U4 ( .A(intadd_2_n4), .B(intadd_1_SUM_2_), 
        .CI(intadd_2_B_3_), .CO(intadd_2_n3), .S(intadd_2_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U5 ( .A(intadd_1_n5), .B(intadd_1_A_2_), .CI(
        intadd_1_B_2_), .CO(intadd_1_n4), .S(intadd_1_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_4_U2 ( .A(intadd_4_n2), .B(intadd_3_SUM_4_), 
        .CI(intadd_4_B_4_), .CO(intadd_4_n1), .S(intadd_0_A_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U3 ( .A(intadd_2_n3), .B(intadd_1_SUM_3_), 
        .CI(intadd_2_B_4_), .CO(intadd_2_n2), .S(intadd_2_SUM_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U4 ( .A(intadd_1_n4), .B(intadd_1_A_3_), .CI(
        intadd_1_B_3_), .CO(intadd_1_n3), .S(intadd_1_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_3_U2 ( .A(intadd_3_n2), .B(intadd_2_SUM_4_), 
        .CI(intadd_3_B_5_), .CO(intadd_3_n1), .S(intadd_0_A_5_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U3 ( .A(intadd_1_n3), .B(intadd_1_A_4_), .CI(
        intadd_1_B_4_), .CO(intadd_1_n2), .S(intadd_1_SUM_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_2_U2 ( .A(intadd_2_n2), .B(intadd_1_SUM_4_), 
        .CI(intadd_2_B_5_), .CO(intadd_2_n1), .S(intadd_0_A_6_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_1_U2 ( .A(intadd_1_n2), .B(intadd_1_A_5_), .CI(
        intadd_1_B_5_), .CO(intadd_1_n1), .S(intadd_0_A_7_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_5_U6 ( .A(intadd_5_CI), .B(intadd_5_A_0_), .CI(
        intadd_5_B_0_), .CO(intadd_5_n5), .S(intadd_1_A_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_5_U5 ( .A(intadd_5_n5), .B(intadd_5_A_1_), .CI(
        intadd_5_B_1_), .CO(intadd_5_n4), .S(intadd_1_B_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_5_U4 ( .A(intadd_5_n4), .B(intadd_5_A_2_), .CI(
        intadd_5_B_2_), .CO(intadd_5_n3), .S(intadd_1_A_4_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_5_U3 ( .A(intadd_5_n3), .B(intadd_5_A_3_), .CI(
        intadd_5_B_3_), .CO(intadd_5_n2), .S(intadd_1_A_5_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_5_U2 ( .A(intadd_5_n2), .B(intadd_5_A_4_), .CI(
        intadd_5_B_4_), .CO(intadd_5_n1), .S(intadd_0_A_8_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U10 ( .A(intadd_0_CI), .B(intadd_0_A_0_), 
        .CI(intadd_0_B_0_), .CO(intadd_0_n9), .S(intadd_0_SUM_0_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U9 ( .A(intadd_0_n9), .B(intadd_0_A_1_), .CI(
        intadd_0_B_1_), .CO(intadd_0_n8), .S(intadd_0_SUM_1_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U8 ( .A(intadd_0_n8), .B(intadd_0_A_2_), .CI(
        intadd_0_B_2_), .CO(intadd_0_n7), .S(intadd_0_SUM_2_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U7 ( .A(intadd_0_n7), .B(intadd_0_A_3_), .CI(
        intadd_0_B_3_), .CO(intadd_0_n6), .S(intadd_0_SUM_3_) );
  SAEDRVT14_ADDF_V1_0P5 intadd_6_U4 ( .A(intadd_6_CI), .B(intadd_0_SUM_0_), 
        .CI(intadd_6_B_0_), .CO(intadd_6_n3), .S(O[5]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_6_U3 ( .A(intadd_6_n3), .B(intadd_0_SUM_1_), 
        .CI(intadd_6_B_1_), .CO(intadd_6_n2), .S(O[6]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_6_U2 ( .A(intadd_6_n2), .B(intadd_0_SUM_2_), 
        .CI(intadd_6_B_2_), .CO(intadd_6_n1), .S(O[7]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U6 ( .A(intadd_0_n6), .B(intadd_0_A_4_), .CI(
        intadd_0_B_4_), .CO(intadd_0_n5), .S(O[9]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(intadd_0_n5), .B(intadd_0_A_5_), .CI(
        intadd_4_n1), .CO(intadd_0_n4), .S(O[10]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(intadd_0_A_6_), .CI(
        intadd_3_n1), .CO(intadd_0_n3), .S(O[11]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(intadd_0_A_7_), .CI(
        intadd_2_n1), .CO(intadd_0_n2), .S(O[12]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(intadd_0_A_8_), .CI(
        intadd_1_n1), .CO(intadd_0_n1), .S(O[13]) );
  SAEDRVT14_TIE0_V1_2 U141 ( .X(O[1]) );
  SAEDRVT14_NR2_1 U142 ( .A1(n197), .A2(n196), .X(n200) );
  SAEDRVT14_NR2_1 U143 ( .A1(n197), .A2(n190), .X(intadd_5_A_0_) );
  SAEDRVT14_NR2_1 U144 ( .A1(n193), .A2(n175), .X(intadd_1_CI) );
  SAEDRVT14_NR2_1 U145 ( .A1(n197), .A2(n180), .X(intadd_1_A_0_) );
  SAEDRVT14_NR2_1 U146 ( .A1(n194), .A2(n180), .X(intadd_1_B_1_) );
  SAEDRVT14_AOI21_0P75 U147 ( .A1(A[0]), .A2(B[6]), .B(n198), .X(n199) );
  SAEDRVT14_NR2_1 U148 ( .A1(n194), .A2(n196), .X(intadd_5_CI) );
  SAEDRVT14_AN3_0P5 U149 ( .A1(A[1]), .A2(n195), .A3(B[5]), .X(intadd_2_B_0_)
         );
  SAEDRVT14_AOI21_0P75 U150 ( .A1(n193), .A2(n175), .B(intadd_1_CI), .X(
        intadd_2_CI) );
  SAEDRVT14_NR2_1 U151 ( .A1(n194), .A2(n182), .X(intadd_2_A_1_) );
  SAEDRVT14_NR2_1 U152 ( .A1(n182), .A2(n189), .X(intadd_2_B_2_) );
  SAEDRVT14_NR2_1 U153 ( .A1(n189), .A2(n180), .X(intadd_1_B_2_) );
  SAEDRVT14_NR2_1 U154 ( .A1(n189), .A2(n196), .X(intadd_5_B_1_) );
  SAEDRVT14_NR2_1 U155 ( .A1(n194), .A2(n190), .X(intadd_5_A_1_) );
  SAEDRVT14_NR2_1 U156 ( .A1(n181), .A2(n182), .X(n195) );
  SAEDRVT14_NR2_1 U157 ( .A1(n182), .A2(n197), .X(intadd_2_A_0_) );
  SAEDRVT14_NR2_1 U158 ( .A1(n177), .A2(n197), .X(intadd_3_A_0_) );
  SAEDRVT14_AN3_0P5 U159 ( .A1(B[3]), .A2(A[1]), .A3(n195), .X(intadd_3_CI) );
  SAEDRVT14_NR2_1 U160 ( .A1(intadd_2_B_0_), .A2(n184), .X(intadd_3_B_0_) );
  SAEDRVT14_OA22_U_0P5 U161 ( .A1(n183), .A2(n182), .B1(n181), .B2(n180), .X(
        n184) );
  SAEDRVT14_NR2_1 U162 ( .A1(n194), .A2(n177), .X(intadd_3_A_1_) );
  SAEDRVT14_NR2_1 U163 ( .A1(n177), .A2(n189), .X(intadd_3_B_2_) );
  SAEDRVT14_NR2_1 U164 ( .A1(n177), .A2(n188), .X(intadd_3_B_3_) );
  SAEDRVT14_NR2_1 U165 ( .A1(n182), .A2(n188), .X(intadd_2_B_3_) );
  SAEDRVT14_NR2_1 U166 ( .A1(n180), .A2(n188), .X(intadd_1_A_3_) );
  SAEDRVT14_NR2_1 U167 ( .A1(n196), .A2(n188), .X(intadd_5_B_2_) );
  SAEDRVT14_NR2_1 U168 ( .A1(n189), .A2(n190), .X(intadd_5_A_2_) );
  SAEDRVT14_AOI21_0P75 U169 ( .A1(A[1]), .A2(B[3]), .B(n195), .X(n172) );
  SAEDRVT14_NR2_1 U170 ( .A1(n194), .A2(n178), .X(intadd_4_B_0_) );
  SAEDRVT14_NR2_1 U171 ( .A1(n179), .A2(n178), .X(intadd_4_A_0_) );
  SAEDRVT14_NR2_1 U172 ( .A1(n178), .A2(n189), .X(intadd_4_B_1_) );
  SAEDRVT14_NR2_1 U173 ( .A1(n178), .A2(n188), .X(intadd_4_B_2_) );
  SAEDRVT14_NR2_1 U174 ( .A1(n178), .A2(n187), .X(intadd_4_B_3_) );
  SAEDRVT14_NR2_1 U175 ( .A1(n177), .A2(n187), .X(intadd_3_B_4_) );
  SAEDRVT14_NR2_1 U176 ( .A1(n182), .A2(n187), .X(intadd_2_B_4_) );
  SAEDRVT14_NR2_1 U177 ( .A1(n180), .A2(n187), .X(intadd_1_B_4_) );
  SAEDRVT14_NR2_1 U178 ( .A1(n196), .A2(n187), .X(intadd_5_B_3_) );
  SAEDRVT14_NR2_1 U179 ( .A1(n190), .A2(n188), .X(intadd_5_A_3_) );
  SAEDRVT14_AOI21_0P75 U180 ( .A1(B[1]), .A2(A[3]), .B(n185), .X(n203) );
  SAEDRVT14_NR2_1 U181 ( .A1(n176), .A2(n189), .X(intadd_0_B_0_) );
  SAEDRVT14_AN3_0P5 U182 ( .A1(A[3]), .A2(B[1]), .A3(n185), .X(intadd_0_CI) );
  SAEDRVT14_NR2_1 U183 ( .A1(n203), .A2(n202), .X(intadd_6_B_0_) );
  SAEDRVT14_NR2_1 U184 ( .A1(n176), .A2(n188), .X(intadd_0_B_1_) );
  SAEDRVT14_NR2_1 U185 ( .A1(n176), .A2(n187), .X(intadd_0_B_2_) );
  SAEDRVT14_NR2_1 U186 ( .A1(n176), .A2(n186), .X(intadd_0_B_3_) );
  SAEDRVT14_AN2_MM_0P5 U187 ( .A1(intadd_6_n1), .A2(intadd_0_SUM_3_), .X(
        intadd_0_B_4_) );
  SAEDRVT14_NR2_1 U188 ( .A1(n178), .A2(n186), .X(intadd_4_B_4_) );
  SAEDRVT14_NR2_1 U189 ( .A1(n177), .A2(n186), .X(intadd_3_B_5_) );
  SAEDRVT14_NR2_1 U190 ( .A1(n182), .A2(n186), .X(intadd_2_B_5_) );
  SAEDRVT14_NR2_1 U191 ( .A1(n186), .A2(n180), .X(intadd_1_B_5_) );
  SAEDRVT14_NR2_1 U192 ( .A1(n186), .A2(n196), .X(intadd_5_B_4_) );
  SAEDRVT14_NR2_1 U193 ( .A1(n190), .A2(n187), .X(intadd_5_A_4_) );
  SAEDRVT14_NR2_1 U194 ( .A1(n181), .A2(n173), .X(O[0]) );
  SAEDRVT14_NR2_1 U195 ( .A1(n173), .A2(n188), .X(intadd_6_CI) );
  SAEDRVT14_NR2_1 U196 ( .A1(n173), .A2(n187), .X(intadd_6_B_1_) );
  SAEDRVT14_NR2_1 U197 ( .A1(n173), .A2(n186), .X(intadd_6_B_2_) );
  SAEDRVT14_INV_0P5 U198 ( .A(A[3]), .X(n194) );
  SAEDRVT14_INV_0P5 U199 ( .A(B[0]), .X(n173) );
  SAEDRVT14_INV_0P5 U200 ( .A(B[3]), .X(n177) );
  SAEDRVT14_INV_0P5 U201 ( .A(A[0]), .X(n181) );
  SAEDRVT14_OAI22_0P5 U202 ( .A1(n194), .A2(n173), .B1(n177), .B2(n181), .X(
        n168) );
  SAEDRVT14_AO21_U_0P5 U203 ( .A1(B[1]), .A2(A[2]), .B(n168), .X(O[3]) );
  SAEDRVT14_INV_0P5 U204 ( .A(B[2]), .X(n178) );
  SAEDRVT14_INV_0P5 U205 ( .A(O[0]), .X(n169) );
  SAEDRVT14_INV_0P5 U206 ( .A(A[2]), .X(n197) );
  SAEDRVT14_OAI22_0P5 U207 ( .A1(n178), .A2(n169), .B1(n197), .B2(n173), .X(
        O[2]) );
  SAEDRVT14_INV_0P5 U208 ( .A(B[7]), .X(n190) );
  SAEDRVT14_INV_0P5 U209 ( .A(A[7]), .X(n186) );
  SAEDRVT14_NR2_1 U210 ( .A1(n190), .A2(n186), .X(n170) );
  SAEDRVT14_EO2_V1_0P75 U211 ( .A1(n170), .A2(intadd_5_n1), .X(n171) );
  SAEDRVT14_ND2_CDC_0P5 U212 ( .A1(n171), .A2(intadd_0_n1), .X(n201) );
  SAEDRVT14_OA21_1 U213 ( .A1(n171), .A2(intadd_0_n1), .B(n201), .X(O[14]) );
  SAEDRVT14_INV_0P5 U214 ( .A(B[5]), .X(n180) );
  SAEDRVT14_INV_0P5 U215 ( .A(B[4]), .X(n182) );
  SAEDRVT14_INV_0P5 U216 ( .A(A[6]), .X(n187) );
  SAEDRVT14_INV_0P5 U217 ( .A(A[5]), .X(n188) );
  SAEDRVT14_OAI21_0P5 U218 ( .A1(n178), .A2(n197), .B(n172), .X(n185) );
  SAEDRVT14_ND2_CDC_0P5 U219 ( .A1(B[0]), .A2(A[4]), .X(n202) );
  SAEDRVT14_INV_0P5 U220 ( .A(A[4]), .X(n189) );
  SAEDRVT14_INV_0P5 U221 ( .A(B[1]), .X(n176) );
  SAEDRVT14_ND2_CDC_0P5 U222 ( .A1(A[0]), .A2(B[6]), .X(n193) );
  SAEDRVT14_ND2_CDC_0P5 U223 ( .A1(A[1]), .A2(B[7]), .X(n198) );
  SAEDRVT14_INV_0P5 U224 ( .A(A[1]), .X(n183) );
  SAEDRVT14_INV_0P5 U225 ( .A(B[6]), .X(n196) );
  SAEDRVT14_OAI22_0P5 U226 ( .A1(n183), .A2(n196), .B1(n181), .B2(n190), .X(
        n174) );
  SAEDRVT14_OA21_1 U227 ( .A1(n193), .A2(n198), .B(n174), .X(intadd_1_B_0_) );
  SAEDRVT14_ND2_CDC_0P5 U228 ( .A1(A[1]), .A2(B[5]), .X(n175) );
  SAEDRVT14_AOI22_0P5 U229 ( .A1(A[1]), .A2(intadd_3_A_0_), .B1(A[0]), .B2(
        intadd_2_A_0_), .X(n179) );
  SAEDRVT14_ND2_CDC_0P5 U230 ( .A1(A[1]), .A2(B[6]), .X(n192) );
  SAEDRVT14_INV_0P5 U231 ( .A(intadd_5_A_0_), .X(n191) );
  SAEDRVT14_OAI22_0P5 U232 ( .A1(n198), .A2(n193), .B1(n192), .B2(n191), .X(
        intadd_5_B_0_) );
  SAEDRVT14_EO2_V1_0P75 U233 ( .A1(n200), .A2(n199), .X(intadd_1_A_1_) );
  SAEDRVT14_AO21B_0P5 U234 ( .A1(intadd_5_n1), .A2(A[7]), .B(n201), .X(O[15])
         );
  SAEDRVT14_OA21B_1 U235 ( .A1(intadd_6_n1), .A2(intadd_0_SUM_3_), .B(
        intadd_0_B_4_), .X(O[8]) );
  SAEDRVT14_AOI21_0P75 U236 ( .A1(n203), .A2(n202), .B(intadd_6_B_0_), .X(O[4]) );
endmodule

