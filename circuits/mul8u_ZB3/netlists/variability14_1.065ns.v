/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:15:28 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_,
         intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_6_,
         intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, intadd_0_n1, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_5_,
         intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_,
         intadd_1_B_0_, intadd_1_CI, intadd_1_SUM_4_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n6,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1,
         intadd_2_A_0_, intadd_2_B_5_, intadd_2_B_4_, intadd_2_B_3_,
         intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI,
         intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_,
         intadd_2_SUM_0_, intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3,
         intadd_2_n2, intadd_2_n1, intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_5_,
         intadd_3_B_4_, intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_0_,
         intadd_3_CI, intadd_3_SUM_4_, intadd_3_SUM_3_, intadd_3_SUM_2_,
         intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n6, intadd_3_n5,
         intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1, intadd_4_A_1_,
         intadd_4_A_0_, intadd_4_B_5_, intadd_4_B_4_, intadd_4_B_3_,
         intadd_4_B_2_, intadd_4_B_0_, intadd_4_CI, intadd_4_n6, intadd_4_n5,
         intadd_4_n4, intadd_4_n3, intadd_4_n2, intadd_4_n1, intadd_5_A_0_,
         intadd_5_B_4_, intadd_5_B_3_, intadd_5_B_2_, intadd_5_B_1_,
         intadd_5_B_0_, intadd_5_n5, intadd_5_n4, intadd_5_n3, intadd_5_n2,
         intadd_5_n1, intadd_6_A_4_, intadd_6_A_3_, intadd_6_A_2_,
         intadd_6_A_1_, intadd_6_A_0_, intadd_6_B_4_, intadd_6_B_3_,
         intadd_6_B_2_, intadd_6_B_1_, intadd_6_B_0_, intadd_6_CI, intadd_6_n5,
         intadd_6_n4, intadd_6_n3, intadd_6_n2, intadd_6_n1, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230;

  FA_X1 intadd_0_U12 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_0_) );
  FA_X1 intadd_0_U11 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_1_) );
  FA_X1 intadd_0_U10 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_2_) );
  FA_X1 intadd_0_U9 ( .A(intadd_0_B_3_), .B(intadd_0_A_3_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_3_) );
  FA_X1 intadd_0_U8 ( .A(intadd_0_B_4_), .B(intadd_0_A_4_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_4_) );
  FA_X1 intadd_0_U7 ( .A(intadd_0_B_5_), .B(intadd_0_A_5_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_5_) );
  FA_X1 intadd_0_U6 ( .A(intadd_0_B_6_), .B(intadd_0_A_6_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(O[9]) );
  FA_X1 intadd_0_U5 ( .A(intadd_4_n1), .B(intadd_0_A_7_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(O[10]) );
  FA_X1 intadd_0_U4 ( .A(intadd_3_n1), .B(intadd_0_A_8_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(O[11]) );
  FA_X1 intadd_0_U3 ( .A(intadd_2_n1), .B(intadd_0_A_9_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(O[12]) );
  FA_X1 intadd_0_U2 ( .A(intadd_1_n1), .B(intadd_0_A_10_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(O[13]) );
  FA_X1 intadd_1_U7 ( .A(intadd_1_B_0_), .B(intadd_1_A_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_0_) );
  FA_X1 intadd_1_U6 ( .A(intadd_1_B_1_), .B(intadd_1_A_1_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_1_) );
  FA_X1 intadd_1_U5 ( .A(intadd_1_B_2_), .B(intadd_1_A_2_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_2_) );
  FA_X1 intadd_1_U4 ( .A(intadd_1_B_3_), .B(intadd_1_A_3_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_3_) );
  FA_X1 intadd_1_U3 ( .A(intadd_1_B_4_), .B(intadd_1_A_4_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_4_) );
  FA_X1 intadd_1_U2 ( .A(intadd_1_B_5_), .B(intadd_1_A_5_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_0_A_9_) );
  FA_X1 intadd_2_U7 ( .A(intadd_2_B_0_), .B(intadd_2_A_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_0_) );
  FA_X1 intadd_2_U6 ( .A(intadd_2_B_1_), .B(intadd_1_SUM_0_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_1_) );
  FA_X1 intadd_2_U5 ( .A(intadd_2_B_2_), .B(intadd_1_SUM_1_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_2_) );
  FA_X1 intadd_2_U4 ( .A(intadd_2_B_3_), .B(intadd_1_SUM_2_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_3_) );
  FA_X1 intadd_2_U3 ( .A(intadd_2_B_4_), .B(intadd_1_SUM_3_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_4_) );
  FA_X1 intadd_2_U2 ( .A(intadd_2_B_5_), .B(intadd_1_SUM_4_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_0_A_8_) );
  FA_X1 intadd_3_U7 ( .A(intadd_3_B_0_), .B(intadd_3_A_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n6), .S(intadd_3_SUM_0_) );
  FA_X1 intadd_3_U6 ( .A(intadd_2_SUM_0_), .B(intadd_3_A_1_), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(intadd_3_SUM_1_) );
  FA_X1 intadd_3_U5 ( .A(intadd_3_B_2_), .B(intadd_2_SUM_1_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_2_) );
  FA_X1 intadd_3_U4 ( .A(intadd_3_B_3_), .B(intadd_2_SUM_2_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_3_) );
  FA_X1 intadd_3_U3 ( .A(intadd_3_B_4_), .B(intadd_2_SUM_3_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_4_) );
  FA_X1 intadd_3_U2 ( .A(intadd_3_B_5_), .B(intadd_2_SUM_4_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_0_A_7_) );
  FA_X1 intadd_4_U7 ( .A(intadd_4_B_0_), .B(intadd_4_A_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n6), .S(intadd_0_B_1_) );
  FA_X1 intadd_4_U6 ( .A(intadd_3_SUM_0_), .B(intadd_4_A_1_), .CI(intadd_4_n6), 
        .CO(intadd_4_n5), .S(intadd_0_A_2_) );
  FA_X1 intadd_4_U5 ( .A(intadd_4_B_2_), .B(intadd_3_SUM_1_), .CI(intadd_4_n5), 
        .CO(intadd_4_n4), .S(intadd_0_A_3_) );
  FA_X1 intadd_4_U4 ( .A(intadd_4_B_3_), .B(intadd_3_SUM_2_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_0_A_4_) );
  FA_X1 intadd_4_U3 ( .A(intadd_4_B_4_), .B(intadd_3_SUM_3_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_0_A_5_) );
  FA_X1 intadd_4_U2 ( .A(intadd_4_B_5_), .B(intadd_3_SUM_4_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_0_A_6_) );
  FA_X1 intadd_5_U6 ( .A(intadd_5_B_0_), .B(intadd_5_A_0_), .CI(
        intadd_0_SUM_0_), .CO(intadd_5_n5), .S(O[3]) );
  FA_X1 intadd_5_U5 ( .A(intadd_5_B_1_), .B(intadd_0_SUM_1_), .CI(intadd_5_n5), 
        .CO(intadd_5_n4), .S(O[4]) );
  FA_X1 intadd_5_U4 ( .A(intadd_5_B_2_), .B(intadd_0_SUM_2_), .CI(intadd_5_n4), 
        .CO(intadd_5_n3), .S(O[5]) );
  FA_X1 intadd_5_U3 ( .A(intadd_5_B_3_), .B(intadd_0_SUM_3_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(O[6]) );
  FA_X1 intadd_5_U2 ( .A(intadd_5_B_4_), .B(intadd_0_SUM_4_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(O[7]) );
  FA_X1 intadd_6_U6 ( .A(intadd_6_B_0_), .B(intadd_6_A_0_), .CI(intadd_6_CI), 
        .CO(intadd_6_n5), .S(intadd_1_B_2_) );
  FA_X1 intadd_6_U5 ( .A(intadd_6_B_1_), .B(intadd_6_A_1_), .CI(intadd_6_n5), 
        .CO(intadd_6_n4), .S(intadd_1_B_3_) );
  FA_X1 intadd_6_U4 ( .A(intadd_6_B_2_), .B(intadd_6_A_2_), .CI(intadd_6_n4), 
        .CO(intadd_6_n3), .S(intadd_1_A_4_) );
  FA_X1 intadd_6_U3 ( .A(intadd_6_B_3_), .B(intadd_6_A_3_), .CI(intadd_6_n3), 
        .CO(intadd_6_n2), .S(intadd_1_A_5_) );
  FA_X1 intadd_6_U2 ( .A(intadd_6_B_4_), .B(intadd_6_A_4_), .CI(intadd_6_n2), 
        .CO(intadd_6_n1), .S(intadd_0_A_10_) );
  AOI22_X1 U161 ( .A1(B[0]), .A2(A[1]), .B1(A[0]), .B2(B[1]), .ZN(n194) );
  INV_X1 U162 ( .I(n194), .ZN(O[1]) );
  NAND2_X1 U163 ( .A1(B[0]), .A2(A[2]), .ZN(n196) );
  NAND2_X1 U164 ( .A1(A[0]), .A2(B[2]), .ZN(n202) );
  NAND2_X1 U165 ( .A1(B[1]), .A2(A[1]), .ZN(n201) );
  XNOR2_X1 U166 ( .A1(n202), .A2(n201), .ZN(n195) );
  NOR2_X1 U167 ( .A1(n196), .A2(n195), .ZN(intadd_5_A_0_) );
  AOI21_X1 U168 ( .A1(n196), .A2(n195), .B(intadd_5_A_0_), .ZN(O[2]) );
  INV_X1 U169 ( .I(intadd_6_n1), .ZN(n199) );
  INV_X1 U170 ( .I(A[7]), .ZN(n221) );
  NAND2_X1 U171 ( .A1(B[7]), .A2(A[7]), .ZN(n197) );
  XOR2_X1 U172 ( .A1(n197), .A2(n199), .Z(n229) );
  NAND2_X1 U173 ( .A1(intadd_0_n1), .A2(n229), .ZN(n198) );
  OAI21_X1 U174 ( .A1(n199), .A2(n221), .B(n198), .ZN(O[15]) );
  AND2_X1 U175 ( .A1(intadd_5_n1), .A2(intadd_0_SUM_5_), .Z(intadd_0_B_6_) );
  INV_X1 U176 ( .I(B[1]), .ZN(n203) );
  NOR2_X1 U177 ( .A1(n203), .A2(n221), .ZN(intadd_0_B_5_) );
  INV_X1 U178 ( .I(B[0]), .ZN(n204) );
  INV_X1 U179 ( .I(A[3]), .ZN(n217) );
  NOR2_X1 U180 ( .A1(n204), .A2(n217), .ZN(intadd_5_B_0_) );
  INV_X1 U181 ( .I(A[4]), .ZN(n218) );
  NOR2_X1 U182 ( .A1(n204), .A2(n218), .ZN(intadd_5_B_1_) );
  INV_X1 U183 ( .I(A[5]), .ZN(n219) );
  NOR2_X1 U184 ( .A1(n204), .A2(n219), .ZN(intadd_5_B_2_) );
  INV_X1 U185 ( .I(A[6]), .ZN(n222) );
  NOR2_X1 U186 ( .A1(n204), .A2(n222), .ZN(intadd_5_B_3_) );
  NAND2_X1 U187 ( .A1(A[1]), .A2(B[3]), .ZN(n206) );
  NOR2_X1 U188 ( .A1(n202), .A2(n206), .ZN(intadd_4_B_0_) );
  AOI22_X1 U189 ( .A1(A[0]), .A2(B[3]), .B1(B[2]), .B2(A[1]), .ZN(n200) );
  NOR2_X1 U190 ( .A1(intadd_4_B_0_), .A2(n200), .ZN(intadd_0_CI) );
  INV_X1 U191 ( .I(A[2]), .ZN(n214) );
  NOR2_X1 U192 ( .A1(n214), .A2(n203), .ZN(intadd_0_A_0_) );
  NOR2_X1 U193 ( .A1(n202), .A2(n201), .ZN(intadd_0_B_0_) );
  NOR2_X1 U194 ( .A1(n203), .A2(n217), .ZN(intadd_0_A_1_) );
  NOR2_X1 U195 ( .A1(n203), .A2(n218), .ZN(intadd_0_B_2_) );
  NOR2_X1 U196 ( .A1(n203), .A2(n219), .ZN(intadd_0_B_3_) );
  NOR2_X1 U197 ( .A1(n203), .A2(n222), .ZN(intadd_0_B_4_) );
  NOR2_X1 U198 ( .A1(n204), .A2(n221), .ZN(intadd_5_B_4_) );
  NAND2_X1 U199 ( .A1(A[0]), .A2(B[3]), .ZN(n205) );
  NAND2_X1 U200 ( .A1(A[1]), .A2(B[4]), .ZN(n209) );
  NOR2_X1 U201 ( .A1(n205), .A2(n209), .ZN(intadd_3_B_0_) );
  NAND2_X1 U202 ( .A1(A[0]), .A2(B[4]), .ZN(n208) );
  AOI21_X1 U203 ( .A1(n206), .A2(n208), .B(intadd_3_B_0_), .ZN(intadd_4_CI) );
  INV_X1 U204 ( .I(B[2]), .ZN(n207) );
  NOR2_X1 U205 ( .A1(n214), .A2(n207), .ZN(intadd_4_A_0_) );
  NOR2_X1 U206 ( .A1(n207), .A2(n217), .ZN(intadd_4_A_1_) );
  NOR2_X1 U207 ( .A1(n207), .A2(n218), .ZN(intadd_4_B_2_) );
  NOR2_X1 U208 ( .A1(n207), .A2(n219), .ZN(intadd_4_B_3_) );
  NOR2_X1 U209 ( .A1(n207), .A2(n222), .ZN(intadd_4_B_4_) );
  NOR2_X1 U210 ( .A1(n207), .A2(n221), .ZN(intadd_4_B_5_) );
  NAND2_X1 U211 ( .A1(A[1]), .A2(B[5]), .ZN(n212) );
  NOR2_X1 U212 ( .A1(n208), .A2(n212), .ZN(intadd_2_B_0_) );
  NAND2_X1 U213 ( .A1(A[0]), .A2(B[5]), .ZN(n211) );
  AOI21_X1 U214 ( .A1(n209), .A2(n211), .B(intadd_2_B_0_), .ZN(intadd_3_CI) );
  INV_X1 U215 ( .I(B[3]), .ZN(n210) );
  NOR2_X1 U216 ( .A1(n214), .A2(n210), .ZN(intadd_3_A_0_) );
  NOR2_X1 U217 ( .A1(n210), .A2(n217), .ZN(intadd_3_A_1_) );
  NOR2_X1 U218 ( .A1(n210), .A2(n218), .ZN(intadd_3_B_2_) );
  NOR2_X1 U219 ( .A1(n210), .A2(n219), .ZN(intadd_3_B_3_) );
  NOR2_X1 U220 ( .A1(n210), .A2(n222), .ZN(intadd_3_B_4_) );
  NOR2_X1 U221 ( .A1(n221), .A2(n210), .ZN(intadd_3_B_5_) );
  NAND2_X1 U222 ( .A1(A[1]), .A2(B[6]), .ZN(n225) );
  NOR2_X1 U223 ( .A1(n211), .A2(n225), .ZN(intadd_1_B_0_) );
  NAND2_X1 U224 ( .A1(A[0]), .A2(B[6]), .ZN(n226) );
  AOI21_X1 U225 ( .A1(n226), .A2(n212), .B(intadd_1_B_0_), .ZN(intadd_2_CI) );
  INV_X1 U226 ( .I(B[4]), .ZN(n213) );
  NOR2_X1 U227 ( .A1(n214), .A2(n213), .ZN(intadd_2_A_0_) );
  NOR2_X1 U228 ( .A1(n213), .A2(n217), .ZN(intadd_2_B_1_) );
  NOR2_X1 U229 ( .A1(n213), .A2(n218), .ZN(intadd_2_B_2_) );
  NOR2_X1 U230 ( .A1(n213), .A2(n219), .ZN(intadd_2_B_3_) );
  NOR2_X1 U231 ( .A1(n213), .A2(n222), .ZN(intadd_2_B_4_) );
  NOR2_X1 U232 ( .A1(n221), .A2(n213), .ZN(intadd_2_B_5_) );
  INV_X1 U233 ( .I(B[5]), .ZN(n215) );
  NOR2_X1 U234 ( .A1(n214), .A2(n215), .ZN(intadd_1_CI) );
  NOR2_X1 U235 ( .A1(n215), .A2(n217), .ZN(intadd_1_A_1_) );
  NOR2_X1 U236 ( .A1(n215), .A2(n218), .ZN(intadd_1_A_2_) );
  NOR2_X1 U237 ( .A1(n215), .A2(n219), .ZN(intadd_1_A_3_) );
  NOR2_X1 U238 ( .A1(n215), .A2(n222), .ZN(intadd_1_B_4_) );
  NOR2_X1 U239 ( .A1(n221), .A2(n215), .ZN(intadd_1_B_5_) );
  NAND2_X1 U240 ( .A1(A[2]), .A2(B[7]), .ZN(n216) );
  NAND2_X1 U241 ( .A1(A[0]), .A2(B[7]), .ZN(n224) );
  AOI21_X1 U242 ( .A1(n216), .A2(n224), .B(n225), .ZN(intadd_6_CI) );
  INV_X1 U243 ( .I(B[6]), .ZN(n220) );
  NOR2_X1 U244 ( .A1(n220), .A2(n217), .ZN(intadd_6_A_0_) );
  INV_X1 U245 ( .I(n216), .ZN(intadd_6_B_0_) );
  NOR2_X1 U246 ( .A1(n220), .A2(n218), .ZN(intadd_6_A_1_) );
  INV_X1 U247 ( .I(B[7]), .ZN(n223) );
  NOR2_X1 U248 ( .A1(n223), .A2(n217), .ZN(intadd_6_B_1_) );
  NOR2_X1 U249 ( .A1(n220), .A2(n219), .ZN(intadd_6_A_2_) );
  NOR2_X1 U250 ( .A1(n223), .A2(n218), .ZN(intadd_6_B_2_) );
  NOR2_X1 U251 ( .A1(n220), .A2(n222), .ZN(intadd_6_A_3_) );
  NOR2_X1 U252 ( .A1(n223), .A2(n219), .ZN(intadd_6_B_3_) );
  NOR2_X1 U253 ( .A1(n221), .A2(n220), .ZN(intadd_6_A_4_) );
  NOR2_X1 U254 ( .A1(n223), .A2(n222), .ZN(intadd_6_B_4_) );
  AND2_X1 U255 ( .A1(B[0]), .A2(A[0]), .Z(O[0]) );
  XOR2_X1 U256 ( .A1(n225), .A2(n224), .Z(intadd_1_A_0_) );
  NAND2_X1 U257 ( .A1(B[6]), .A2(A[2]), .ZN(n228) );
  NAND3_X1 U258 ( .A1(B[7]), .A2(A[1]), .A3(n226), .ZN(n227) );
  XOR2_X1 U259 ( .A1(n228), .A2(n227), .Z(intadd_1_B_1_) );
  XOR2_X1 U260 ( .A1(intadd_0_n1), .A2(n229), .Z(O[14]) );
  NOR2_X1 U261 ( .A1(intadd_5_n1), .A2(intadd_0_SUM_5_), .ZN(n230) );
  NOR2_X1 U262 ( .A1(intadd_0_B_6_), .A2(n230), .ZN(O[8]) );
endmodule

