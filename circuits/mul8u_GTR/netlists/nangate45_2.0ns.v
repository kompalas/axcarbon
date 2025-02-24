/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:22:56 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_,
         intadd_1_SUM_0_, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_,
         intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_4_, intadd_2_B_3_,
         intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI,
         intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_,
         intadd_2_SUM_0_, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_4_, intadd_3_A_3_, intadd_3_A_2_,
         intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_4_, intadd_3_B_3_,
         intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI,
         intadd_3_SUM_4_, intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_,
         intadd_3_SUM_0_, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_A_3_, intadd_4_A_2_, intadd_4_A_1_,
         intadd_4_A_0_, intadd_4_B_3_, intadd_4_B_2_, intadd_4_B_1_,
         intadd_4_B_0_, intadd_4_CI, intadd_4_SUM_2_, intadd_4_SUM_1_,
         intadd_4_SUM_0_, intadd_4_n4, intadd_4_n3, intadd_4_n2, intadd_4_n1,
         intadd_5_A_0_, intadd_5_B_3_, intadd_5_B_2_, intadd_5_B_1_,
         intadd_5_B_0_, intadd_5_SUM_3_, intadd_5_SUM_2_, intadd_5_SUM_1_,
         intadd_5_SUM_0_, intadd_5_n4, intadd_5_n3, intadd_5_n2, intadd_5_n1,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189;
  assign O[1] = 1'b0;

  FA_X1 intadd_0_U8 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_0_) );
  FA_X1 intadd_0_U7 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_1_) );
  FA_X1 intadd_0_U6 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_2_) );
  FA_X1 intadd_0_U5 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_3_) );
  FA_X1 intadd_0_U4 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_4_) );
  FA_X1 intadd_0_U3 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_5_) );
  FA_X1 intadd_0_U2 ( .A(intadd_0_A_6_), .B(intadd_1_n1), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_6_) );
  FA_X1 intadd_1_U6 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_0_) );
  FA_X1 intadd_1_U5 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_1_) );
  FA_X1 intadd_1_U4 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  FA_X1 intadd_1_U3 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  FA_X1 intadd_1_U2 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_0_A_5_) );
  FA_X1 intadd_2_U6 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_0_) );
  FA_X1 intadd_2_U5 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_1_) );
  FA_X1 intadd_2_U4 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_2_) );
  FA_X1 intadd_2_U3 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_3_) );
  FA_X1 intadd_2_U2 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_4_) );
  FA_X1 intadd_3_U6 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n5), .S(intadd_3_SUM_0_) );
  FA_X1 intadd_3_U5 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_1_) );
  FA_X1 intadd_3_U4 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_2_) );
  FA_X1 intadd_3_U3 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_3_) );
  FA_X1 intadd_3_U2 ( .A(intadd_3_A_4_), .B(intadd_3_B_4_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_4_) );
  FA_X1 intadd_4_U5 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n4), .S(intadd_4_SUM_0_) );
  FA_X1 intadd_4_U4 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_1_) );
  FA_X1 intadd_4_U3 ( .A(intadd_4_A_2_), .B(intadd_4_B_2_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_2_) );
  FA_X1 intadd_4_U2 ( .A(intadd_4_A_3_), .B(intadd_4_B_3_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(O[9]) );
  FA_X1 intadd_5_U5 ( .A(intadd_5_A_0_), .B(intadd_5_B_0_), .CI(
        intadd_2_SUM_0_), .CO(intadd_5_n4), .S(intadd_5_SUM_0_) );
  FA_X1 intadd_5_U4 ( .A(intadd_2_SUM_1_), .B(intadd_5_B_1_), .CI(intadd_5_n4), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_1_) );
  FA_X1 intadd_5_U3 ( .A(intadd_2_SUM_2_), .B(intadd_5_B_2_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_2_) );
  FA_X1 intadd_5_U2 ( .A(intadd_2_SUM_3_), .B(intadd_5_B_3_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(intadd_5_SUM_3_) );
  NAND2_X1 U126 ( .A1(A[2]), .A2(B[4]), .ZN(n163) );
  INV_X1 U127 ( .A(n163), .ZN(O[2]) );
  INV_X1 U128 ( .A(intadd_0_SUM_3_), .ZN(O[10]) );
  INV_X1 U129 ( .A(intadd_0_SUM_4_), .ZN(O[11]) );
  INV_X1 U130 ( .A(intadd_4_n1), .ZN(intadd_0_B_3_) );
  INV_X1 U131 ( .A(B[2]), .ZN(n148) );
  INV_X1 U132 ( .A(A[3]), .ZN(n162) );
  NOR2_X1 U133 ( .A1(n148), .A2(n162), .ZN(n149) );
  AOI21_X1 U134 ( .B1(A[2]), .B2(B[3]), .A(n149), .ZN(n146) );
  INV_X1 U135 ( .A(A[4]), .ZN(n167) );
  INV_X1 U136 ( .A(B[1]), .ZN(n176) );
  NOR3_X1 U137 ( .A1(n146), .A2(n167), .A3(n176), .ZN(intadd_4_B_0_) );
  INV_X1 U138 ( .A(A[5]), .ZN(n170) );
  INV_X1 U139 ( .A(B[0]), .ZN(n150) );
  NAND2_X1 U140 ( .A1(A[4]), .A2(B[1]), .ZN(n145) );
  AOI21_X1 U141 ( .B1(n146), .B2(n145), .A(intadd_4_B_0_), .ZN(n147) );
  INV_X1 U142 ( .A(n147), .ZN(n185) );
  NOR3_X1 U143 ( .A1(n170), .A2(n150), .A3(n185), .ZN(n188) );
  INV_X1 U144 ( .A(A[6]), .ZN(n175) );
  NOR2_X1 U145 ( .A1(n150), .A2(n175), .ZN(n187) );
  INV_X1 U146 ( .A(A[7]), .ZN(n180) );
  NOR2_X1 U147 ( .A1(n150), .A2(n180), .ZN(n183) );
  AND2_X1 U148 ( .A1(n189), .A2(intadd_4_SUM_2_), .ZN(intadd_4_B_3_) );
  INV_X1 U149 ( .A(intadd_0_SUM_1_), .ZN(intadd_4_A_2_) );
  INV_X1 U150 ( .A(B[3]), .ZN(n169) );
  NOR2_X1 U151 ( .A1(n167), .A2(n169), .ZN(intadd_5_B_0_) );
  NOR2_X1 U152 ( .A1(n148), .A2(n167), .ZN(n172) );
  AOI22_X1 U153 ( .A1(B[6]), .A2(A[0]), .B1(A[1]), .B2(B[5]), .ZN(n164) );
  NAND2_X1 U154 ( .A1(n164), .A2(n163), .ZN(n171) );
  AOI22_X1 U155 ( .A1(intadd_5_B_0_), .A2(n149), .B1(n172), .B2(n171), .ZN(
        intadd_0_B_0_) );
  INV_X1 U156 ( .A(intadd_0_SUM_0_), .ZN(intadd_4_A_1_) );
  INV_X1 U157 ( .A(intadd_0_SUM_2_), .ZN(intadd_4_A_3_) );
  INV_X1 U158 ( .A(intadd_5_SUM_0_), .ZN(intadd_0_A_0_) );
  INV_X1 U159 ( .A(intadd_5_SUM_1_), .ZN(intadd_0_A_1_) );
  INV_X1 U160 ( .A(intadd_5_SUM_2_), .ZN(intadd_0_A_2_) );
  INV_X1 U161 ( .A(intadd_5_SUM_3_), .ZN(intadd_0_A_3_) );
  INV_X1 U162 ( .A(intadd_5_n1), .ZN(intadd_0_B_4_) );
  AND3_X1 U163 ( .A1(n171), .A2(A[3]), .A3(B[3]), .ZN(intadd_5_A_0_) );
  INV_X1 U164 ( .A(intadd_2_SUM_4_), .ZN(intadd_0_A_4_) );
  INV_X1 U165 ( .A(intadd_2_n1), .ZN(intadd_0_B_5_) );
  INV_X1 U166 ( .A(intadd_1_SUM_0_), .ZN(intadd_2_A_1_) );
  INV_X1 U167 ( .A(intadd_1_SUM_1_), .ZN(intadd_2_A_2_) );
  INV_X1 U168 ( .A(intadd_1_SUM_2_), .ZN(intadd_2_A_3_) );
  INV_X1 U169 ( .A(intadd_1_SUM_3_), .ZN(intadd_2_A_4_) );
  INV_X1 U170 ( .A(intadd_3_SUM_0_), .ZN(intadd_1_A_1_) );
  INV_X1 U171 ( .A(intadd_3_SUM_1_), .ZN(intadd_1_A_2_) );
  INV_X1 U172 ( .A(intadd_3_SUM_2_), .ZN(intadd_1_B_3_) );
  INV_X1 U173 ( .A(intadd_3_SUM_3_), .ZN(intadd_1_A_4_) );
  INV_X1 U174 ( .A(intadd_3_SUM_4_), .ZN(intadd_0_A_6_) );
  AND2_X1 U175 ( .A1(B[7]), .A2(A[2]), .ZN(intadd_3_B_0_) );
  INV_X1 U176 ( .A(intadd_0_SUM_5_), .ZN(O[12]) );
  INV_X1 U177 ( .A(intadd_0_SUM_6_), .ZN(O[13]) );
  NOR2_X1 U179 ( .A1(n162), .A2(n150), .ZN(O[3]) );
  OAI22_X1 U180 ( .A1(n167), .A2(n150), .B1(n162), .B2(n176), .ZN(O[4]) );
  INV_X1 U181 ( .A(B[7]), .ZN(n152) );
  NOR2_X1 U182 ( .A1(n152), .A2(n175), .ZN(intadd_3_A_4_) );
  NOR2_X1 U183 ( .A1(n152), .A2(n170), .ZN(intadd_3_A_3_) );
  INV_X1 U184 ( .A(B[6]), .ZN(n153) );
  NOR2_X1 U185 ( .A1(n153), .A2(n175), .ZN(intadd_3_B_3_) );
  NOR2_X1 U186 ( .A1(n153), .A2(n167), .ZN(intadd_3_A_1_) );
  NOR2_X1 U187 ( .A1(n152), .A2(n162), .ZN(intadd_3_B_1_) );
  NOR2_X1 U188 ( .A1(n153), .A2(n162), .ZN(intadd_3_A_0_) );
  NAND2_X1 U189 ( .A1(A[1]), .A2(B[7]), .ZN(n158) );
  NAND2_X1 U190 ( .A1(B[6]), .A2(A[2]), .ZN(n161) );
  NAND2_X1 U191 ( .A1(B[6]), .A2(A[1]), .ZN(n155) );
  NAND2_X1 U192 ( .A1(A[0]), .A2(B[7]), .ZN(n154) );
  NOR2_X1 U193 ( .A1(n155), .A2(n154), .ZN(n159) );
  INV_X1 U194 ( .A(n159), .ZN(n151) );
  OAI21_X1 U195 ( .B1(n158), .B2(n161), .A(n151), .ZN(intadd_3_CI) );
  NOR2_X1 U196 ( .A1(n153), .A2(n170), .ZN(intadd_3_A_2_) );
  NOR2_X1 U197 ( .A1(n152), .A2(n167), .ZN(intadd_3_B_2_) );
  NOR2_X1 U198 ( .A1(n153), .A2(n180), .ZN(intadd_3_B_4_) );
  NAND2_X1 U199 ( .A1(B[5]), .A2(A[7]), .ZN(intadd_1_B_4_) );
  NAND2_X1 U200 ( .A1(B[5]), .A2(A[5]), .ZN(intadd_1_B_2_) );
  NAND2_X1 U201 ( .A1(B[5]), .A2(A[4]), .ZN(intadd_1_B_1_) );
  NAND2_X1 U202 ( .A1(B[5]), .A2(A[3]), .ZN(intadd_1_A_0_) );
  AOI21_X1 U203 ( .B1(n155), .B2(n154), .A(n159), .ZN(n156) );
  AND2_X1 U204 ( .A1(B[5]), .A2(A[2]), .ZN(n157) );
  XNOR2_X1 U205 ( .A(n156), .B(n157), .ZN(n166) );
  NAND4_X1 U206 ( .A1(B[6]), .A2(A[1]), .A3(A[0]), .A4(B[5]), .ZN(n165) );
  NOR2_X1 U207 ( .A1(n166), .A2(n165), .ZN(O[0]) );
  AOI21_X1 U208 ( .B1(n157), .B2(n156), .A(O[0]), .ZN(intadd_1_B_0_) );
  XOR2_X1 U209 ( .A(n159), .B(n158), .Z(n160) );
  XNOR2_X1 U210 ( .A(n161), .B(n160), .ZN(intadd_1_CI) );
  NAND2_X1 U211 ( .A1(B[5]), .A2(A[6]), .ZN(intadd_1_A_3_) );
  INV_X1 U212 ( .A(B[4]), .ZN(n168) );
  NOR2_X1 U213 ( .A1(n168), .A2(n175), .ZN(intadd_2_B_3_) );
  NOR2_X1 U214 ( .A1(n168), .A2(n170), .ZN(intadd_2_B_2_) );
  NOR2_X1 U215 ( .A1(n168), .A2(n162), .ZN(intadd_2_A_0_) );
  NOR2_X1 U216 ( .A1(n164), .A2(n163), .ZN(intadd_2_B_0_) );
  AOI21_X1 U217 ( .B1(n166), .B2(n165), .A(O[0]), .ZN(intadd_2_CI) );
  NOR2_X1 U218 ( .A1(n168), .A2(n167), .ZN(intadd_2_B_1_) );
  NOR2_X1 U219 ( .A1(n168), .A2(n180), .ZN(intadd_2_B_4_) );
  NOR2_X1 U220 ( .A1(n169), .A2(n180), .ZN(intadd_5_B_3_) );
  NOR2_X1 U221 ( .A1(n169), .A2(n175), .ZN(intadd_5_B_2_) );
  NOR2_X1 U222 ( .A1(n169), .A2(n170), .ZN(intadd_5_B_1_) );
  NAND2_X1 U223 ( .A1(B[2]), .A2(A[7]), .ZN(intadd_0_B_2_) );
  NAND2_X1 U224 ( .A1(B[2]), .A2(A[5]), .ZN(intadd_0_CI) );
  NAND2_X1 U225 ( .A1(B[2]), .A2(A[6]), .ZN(intadd_0_B_1_) );
  NOR2_X1 U226 ( .A1(n170), .A2(n176), .ZN(intadd_4_A_0_) );
  AOI211_X1 U227 ( .C1(A[3]), .C2(B[3]), .A(n172), .B(n171), .ZN(n174) );
  INV_X1 U228 ( .A(intadd_0_B_0_), .ZN(n173) );
  NOR2_X1 U229 ( .A1(n174), .A2(n173), .ZN(intadd_4_CI) );
  NOR2_X1 U230 ( .A1(n176), .A2(n175), .ZN(intadd_4_B_1_) );
  NOR2_X1 U231 ( .A1(n176), .A2(n180), .ZN(intadd_4_B_2_) );
  INV_X1 U232 ( .A(intadd_3_n1), .ZN(n181) );
  NAND2_X1 U233 ( .A1(A[7]), .A2(B[7]), .ZN(n177) );
  XNOR2_X1 U234 ( .A(intadd_3_n1), .B(n177), .ZN(n182) );
  INV_X1 U235 ( .A(intadd_0_n1), .ZN(n178) );
  NAND2_X1 U236 ( .A1(n182), .A2(n178), .ZN(n179) );
  OAI21_X1 U237 ( .B1(n181), .B2(n180), .A(n179), .ZN(O[15]) );
  XNOR2_X1 U238 ( .A(n182), .B(intadd_0_n1), .ZN(O[14]) );
  FA_X1 U239 ( .A(intadd_4_SUM_1_), .B(n184), .CI(n183), .CO(n189), .S(O[7])
         );
  NAND2_X1 U240 ( .A1(A[5]), .A2(B[0]), .ZN(n186) );
  AOI21_X1 U241 ( .B1(n186), .B2(n185), .A(n188), .ZN(O[5]) );
  FA_X1 U242 ( .A(n188), .B(n187), .CI(intadd_4_SUM_0_), .CO(n184), .S(O[6])
         );
  XOR2_X1 U243 ( .A(n189), .B(intadd_4_SUM_2_), .Z(O[8]) );
endmodule

