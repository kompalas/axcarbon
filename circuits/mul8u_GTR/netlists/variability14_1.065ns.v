/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:22:08 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_7_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_,
         intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI,
         intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1,
         intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_, intadd_2_A_1_,
         intadd_2_A_0_, intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_,
         intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI, intadd_2_SUM_4_,
         intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_A_4_, intadd_3_A_3_, intadd_3_A_2_, intadd_3_A_1_,
         intadd_3_A_0_, intadd_3_B_4_, intadd_3_B_3_, intadd_3_B_2_,
         intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI, intadd_3_SUM_3_,
         intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n5,
         intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1, intadd_4_A_0_,
         intadd_4_B_3_, intadd_4_B_2_, intadd_4_B_1_, intadd_4_B_0_,
         intadd_4_SUM_2_, intadd_4_SUM_1_, intadd_4_SUM_0_, intadd_4_n4,
         intadd_4_n3, intadd_4_n2, intadd_4_n1, intadd_5_A_2_, intadd_5_A_1_,
         intadd_5_A_0_, intadd_5_B_2_, intadd_5_B_1_, intadd_5_B_0_,
         intadd_5_CI, intadd_5_SUM_2_, intadd_5_SUM_1_, intadd_5_SUM_0_,
         intadd_5_n3, intadd_5_n2, intadd_5_n1, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194;
  assign O[1] = 1'b0;

  FA_X1 intadd_0_U9 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_0_) );
  FA_X1 intadd_0_U8 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_1_) );
  FA_X1 intadd_0_U7 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_2_) );
  FA_X1 intadd_0_U6 ( .A(intadd_0_B_3_), .B(intadd_0_A_3_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(O[9]) );
  FA_X1 intadd_0_U5 ( .A(intadd_0_B_4_), .B(intadd_0_A_4_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(O[10]) );
  FA_X1 intadd_0_U4 ( .A(intadd_4_n1), .B(intadd_0_A_5_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(O[11]) );
  FA_X1 intadd_0_U3 ( .A(intadd_1_n1), .B(intadd_0_A_6_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(O[12]) );
  FA_X1 intadd_0_U2 ( .A(intadd_0_B_7_), .B(intadd_0_A_7_), .CI(intadd_0_n2), 
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
        .CO(intadd_1_n1), .S(intadd_0_A_5_) );
  FA_X1 intadd_2_U6 ( .A(intadd_2_B_0_), .B(intadd_2_A_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_0_) );
  FA_X1 intadd_2_U5 ( .A(intadd_2_B_1_), .B(intadd_2_A_1_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_1_) );
  FA_X1 intadd_2_U4 ( .A(intadd_2_B_2_), .B(intadd_2_A_2_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_2_) );
  FA_X1 intadd_2_U3 ( .A(intadd_2_B_3_), .B(intadd_2_A_3_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_3_) );
  FA_X1 intadd_2_U2 ( .A(intadd_2_B_4_), .B(intadd_2_A_4_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_4_) );
  FA_X1 intadd_3_U6 ( .A(intadd_3_B_0_), .B(intadd_3_A_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n5), .S(intadd_3_SUM_0_) );
  FA_X1 intadd_3_U5 ( .A(intadd_3_B_1_), .B(intadd_3_A_1_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_1_) );
  FA_X1 intadd_3_U4 ( .A(intadd_3_B_2_), .B(intadd_3_A_2_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_2_) );
  FA_X1 intadd_3_U3 ( .A(intadd_3_B_3_), .B(intadd_3_A_3_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_3_) );
  FA_X1 intadd_3_U2 ( .A(intadd_3_B_4_), .B(intadd_3_A_4_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_0_A_7_) );
  FA_X1 intadd_4_U5 ( .A(intadd_4_B_0_), .B(intadd_4_A_0_), .CI(
        intadd_1_SUM_0_), .CO(intadd_4_n4), .S(intadd_4_SUM_0_) );
  FA_X1 intadd_4_U4 ( .A(intadd_4_B_1_), .B(intadd_1_SUM_1_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_1_) );
  FA_X1 intadd_4_U3 ( .A(intadd_4_B_2_), .B(intadd_1_SUM_2_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_2_) );
  FA_X1 intadd_4_U2 ( .A(intadd_4_B_3_), .B(intadd_1_SUM_3_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_0_A_4_) );
  FA_X1 intadd_5_U4 ( .A(intadd_5_B_0_), .B(intadd_5_A_0_), .CI(intadd_5_CI), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_0_) );
  FA_X1 intadd_5_U3 ( .A(intadd_5_B_1_), .B(intadd_5_A_1_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_1_) );
  FA_X1 intadd_5_U2 ( .A(intadd_5_B_2_), .B(intadd_5_A_2_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(intadd_5_SUM_2_) );
  NAND2_X1 U131 ( .A1(A[2]), .A2(B[4]), .ZN(n168) );
  INV_X1 U132 ( .I(n168), .ZN(O[2]) );
  NAND2_X1 U133 ( .A1(A[5]), .A2(B[0]), .ZN(n151) );
  INV_X1 U134 ( .I(B[2]), .ZN(n155) );
  INV_X1 U135 ( .I(A[3]), .ZN(n182) );
  NOR2_X1 U136 ( .A1(n155), .A2(n182), .ZN(n156) );
  AOI21_X1 U137 ( .A1(A[2]), .A2(B[3]), .B(n156), .ZN(n161) );
  NAND2_X1 U138 ( .A1(A[4]), .A2(B[1]), .ZN(n160) );
  XNOR2_X1 U139 ( .A1(n161), .A2(n160), .ZN(n150) );
  NOR2_X1 U140 ( .A1(n151), .A2(n150), .ZN(n194) );
  AOI21_X1 U141 ( .A1(n151), .A2(n150), .B(n194), .ZN(O[5]) );
  INV_X1 U142 ( .I(intadd_3_n1), .ZN(n154) );
  INV_X1 U143 ( .I(A[7]), .ZN(n179) );
  NAND2_X1 U144 ( .A1(A[7]), .A2(B[7]), .ZN(n152) );
  XNOR2_X1 U145 ( .A1(n152), .A2(intadd_3_n1), .ZN(n188) );
  NAND2_X1 U146 ( .A1(n188), .A2(intadd_0_n1), .ZN(n153) );
  OAI21_X1 U147 ( .A1(n154), .A2(n179), .B(n153), .ZN(O[15]) );
  INV_X1 U148 ( .I(intadd_5_SUM_2_), .ZN(intadd_0_A_3_) );
  INV_X1 U149 ( .I(B[0]), .ZN(n183) );
  INV_X1 U150 ( .I(A[6]), .ZN(n177) );
  NOR2_X1 U151 ( .A1(n183), .A2(n177), .ZN(n193) );
  NOR2_X1 U152 ( .A1(n183), .A2(n179), .ZN(n191) );
  AND2_X1 U153 ( .A1(n189), .A2(intadd_0_SUM_2_), .Z(intadd_0_B_3_) );
  INV_X1 U154 ( .I(intadd_5_SUM_1_), .ZN(intadd_0_A_2_) );
  INV_X1 U155 ( .I(B[1]), .ZN(n181) );
  NOR2_X1 U156 ( .A1(n181), .A2(n179), .ZN(intadd_0_B_2_) );
  INV_X1 U157 ( .I(A[4]), .ZN(n184) );
  INV_X1 U158 ( .I(B[3]), .ZN(n164) );
  NOR2_X1 U159 ( .A1(n184), .A2(n164), .ZN(intadd_4_B_0_) );
  NOR2_X1 U160 ( .A1(n155), .A2(n184), .ZN(n157) );
  AOI22_X1 U161 ( .A1(B[5]), .A2(A[1]), .B1(B[6]), .B2(A[0]), .ZN(n169) );
  NAND2_X1 U162 ( .A1(n169), .A2(n168), .ZN(n162) );
  AOI22_X1 U163 ( .A1(intadd_4_B_0_), .A2(n156), .B1(n157), .B2(n162), .ZN(
        intadd_5_B_0_) );
  NOR2_X1 U164 ( .A1(n182), .A2(n164), .ZN(n163) );
  NOR3_X1 U165 ( .A1(n163), .A2(n162), .A3(n157), .ZN(n159) );
  INV_X1 U166 ( .I(intadd_5_B_0_), .ZN(n158) );
  NOR2_X1 U167 ( .A1(n159), .A2(n158), .ZN(intadd_0_CI) );
  INV_X1 U168 ( .I(A[5]), .ZN(n176) );
  NOR2_X1 U169 ( .A1(n176), .A2(n181), .ZN(intadd_0_A_0_) );
  NOR2_X1 U170 ( .A1(n161), .A2(n160), .ZN(intadd_0_B_0_) );
  INV_X1 U171 ( .I(intadd_5_SUM_0_), .ZN(intadd_0_A_1_) );
  NOR2_X1 U172 ( .A1(n181), .A2(n177), .ZN(intadd_0_B_1_) );
  INV_X1 U173 ( .I(intadd_5_n1), .ZN(intadd_0_B_4_) );
  NAND2_X1 U174 ( .A1(B[2]), .A2(A[5]), .ZN(intadd_5_CI) );
  INV_X1 U175 ( .I(intadd_4_SUM_0_), .ZN(intadd_5_A_0_) );
  INV_X1 U176 ( .I(intadd_4_SUM_1_), .ZN(intadd_5_A_1_) );
  NAND2_X1 U177 ( .A1(B[2]), .A2(A[6]), .ZN(intadd_5_B_1_) );
  INV_X1 U178 ( .I(intadd_4_SUM_2_), .ZN(intadd_5_A_2_) );
  NAND2_X1 U179 ( .A1(B[2]), .A2(A[7]), .ZN(intadd_5_B_2_) );
  AND2_X1 U180 ( .A1(n163), .A2(n162), .Z(intadd_4_A_0_) );
  NOR2_X1 U181 ( .A1(n164), .A2(n176), .ZN(intadd_4_B_1_) );
  NOR2_X1 U182 ( .A1(n164), .A2(n177), .ZN(intadd_4_B_2_) );
  NOR2_X1 U183 ( .A1(n164), .A2(n179), .ZN(intadd_4_B_3_) );
  INV_X1 U184 ( .I(intadd_2_SUM_4_), .ZN(intadd_0_A_6_) );
  AND2_X1 U185 ( .A1(B[6]), .A2(A[1]), .Z(n174) );
  NAND2_X1 U186 ( .A1(n174), .A2(A[0]), .ZN(n185) );
  INV_X1 U187 ( .I(B[7]), .ZN(n178) );
  NOR2_X1 U188 ( .A1(n185), .A2(n178), .ZN(n173) );
  AOI22_X1 U189 ( .A1(B[6]), .A2(A[1]), .B1(A[0]), .B2(B[7]), .ZN(n165) );
  NOR2_X1 U190 ( .A1(n173), .A2(n165), .ZN(n172) );
  AND2_X1 U191 ( .A1(B[5]), .A2(A[2]), .Z(n171) );
  XNOR2_X1 U192 ( .A1(n172), .A2(n171), .ZN(n167) );
  NAND4_X1 U193 ( .A1(B[5]), .A2(B[6]), .A3(A[1]), .A4(A[0]), .ZN(n166) );
  NOR2_X1 U194 ( .A1(n167), .A2(n166), .ZN(O[0]) );
  AOI21_X1 U195 ( .A1(n167), .A2(n166), .B(O[0]), .ZN(intadd_1_CI) );
  INV_X1 U196 ( .I(B[4]), .ZN(n170) );
  NOR2_X1 U197 ( .A1(n170), .A2(n182), .ZN(intadd_1_A_0_) );
  NOR2_X1 U198 ( .A1(n169), .A2(n168), .ZN(intadd_1_B_0_) );
  NOR2_X1 U199 ( .A1(n170), .A2(n184), .ZN(intadd_1_A_1_) );
  INV_X1 U200 ( .I(intadd_2_SUM_0_), .ZN(intadd_1_B_1_) );
  INV_X1 U201 ( .I(intadd_2_SUM_1_), .ZN(intadd_1_A_2_) );
  NOR2_X1 U202 ( .A1(n170), .A2(n176), .ZN(intadd_1_B_2_) );
  INV_X1 U203 ( .I(intadd_2_SUM_2_), .ZN(intadd_1_A_3_) );
  NOR2_X1 U204 ( .A1(n170), .A2(n177), .ZN(intadd_1_B_3_) );
  INV_X1 U205 ( .I(intadd_2_SUM_3_), .ZN(intadd_1_A_4_) );
  NOR2_X1 U206 ( .A1(n170), .A2(n179), .ZN(intadd_1_B_4_) );
  INV_X1 U207 ( .I(intadd_2_n1), .ZN(intadd_0_B_7_) );
  NAND2_X1 U208 ( .A1(B[5]), .A2(A[3]), .ZN(intadd_2_A_0_) );
  AOI21_X1 U209 ( .A1(n172), .A2(n171), .B(O[0]), .ZN(intadd_2_B_0_) );
  INV_X1 U210 ( .I(intadd_3_SUM_0_), .ZN(intadd_2_A_1_) );
  NAND2_X1 U211 ( .A1(B[5]), .A2(A[4]), .ZN(intadd_2_B_1_) );
  INV_X1 U212 ( .I(intadd_3_SUM_1_), .ZN(intadd_2_A_2_) );
  NAND2_X1 U213 ( .A1(B[5]), .A2(A[5]), .ZN(intadd_2_B_2_) );
  NAND2_X1 U214 ( .A1(B[5]), .A2(A[6]), .ZN(intadd_2_A_3_) );
  INV_X1 U215 ( .I(intadd_3_SUM_2_), .ZN(intadd_2_B_3_) );
  INV_X1 U216 ( .I(intadd_3_SUM_3_), .ZN(intadd_2_A_4_) );
  NAND2_X1 U217 ( .A1(B[5]), .A2(A[7]), .ZN(intadd_2_B_4_) );
  AND2_X1 U218 ( .A1(A[2]), .A2(B[7]), .Z(intadd_3_B_0_) );
  AOI21_X1 U219 ( .A1(n174), .A2(intadd_3_B_0_), .B(n173), .ZN(n175) );
  INV_X1 U220 ( .I(n175), .ZN(intadd_3_CI) );
  INV_X1 U221 ( .I(B[6]), .ZN(n180) );
  NOR2_X1 U222 ( .A1(n180), .A2(n182), .ZN(intadd_3_A_0_) );
  NOR2_X1 U223 ( .A1(n180), .A2(n184), .ZN(intadd_3_A_1_) );
  NOR2_X1 U224 ( .A1(n178), .A2(n182), .ZN(intadd_3_B_1_) );
  NOR2_X1 U225 ( .A1(n180), .A2(n176), .ZN(intadd_3_A_2_) );
  NOR2_X1 U226 ( .A1(n178), .A2(n184), .ZN(intadd_3_B_2_) );
  NOR2_X1 U227 ( .A1(n178), .A2(n176), .ZN(intadd_3_A_3_) );
  NOR2_X1 U228 ( .A1(n180), .A2(n177), .ZN(intadd_3_B_3_) );
  NOR2_X1 U229 ( .A1(n178), .A2(n177), .ZN(intadd_3_A_4_) );
  NOR2_X1 U230 ( .A1(n180), .A2(n179), .ZN(intadd_3_B_4_) );
  NOR2_X1 U232 ( .A1(n182), .A2(n183), .ZN(O[3]) );
  OAI22_X1 U233 ( .A1(n184), .A2(n183), .B1(n182), .B2(n181), .ZN(O[4]) );
  NAND2_X1 U234 ( .A1(B[6]), .A2(A[2]), .ZN(n187) );
  NAND3_X1 U235 ( .A1(A[1]), .A2(B[7]), .A3(n185), .ZN(n186) );
  XNOR2_X1 U236 ( .A1(n187), .A2(n186), .ZN(intadd_2_CI) );
  XOR2_X1 U237 ( .A1(n188), .A2(intadd_0_n1), .Z(O[14]) );
  NOR2_X1 U238 ( .A1(n189), .A2(intadd_0_SUM_2_), .ZN(n190) );
  NOR2_X1 U239 ( .A1(intadd_0_B_3_), .A2(n190), .ZN(O[8]) );
  FA_X1 U240 ( .A(intadd_0_SUM_1_), .B(n192), .CI(n191), .CO(n189), .S(O[7])
         );
  FA_X1 U241 ( .A(n194), .B(n193), .CI(intadd_0_SUM_0_), .CO(n192), .S(O[6])
         );
endmodule

