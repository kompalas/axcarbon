/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:32:21 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286;
  assign O[0] = O[3];

  NAND2xp5_ASAP7_6t_R U173 ( .A(B[6]), .B(A[3]), .Y(n179) );
  NAND2xp5_ASAP7_6t_R U174 ( .A(n274), .B(n273), .Y(n272) );
  NAND2xp5_ASAP7_6t_R U175 ( .A(A[4]), .B(B[5]), .Y(n177) );
  NAND2xp5_ASAP7_6t_R U176 ( .A(B[6]), .B(A[2]), .Y(n178) );
  NAND2xp5_ASAP7_6t_R U177 ( .A(B[7]), .B(A[3]), .Y(n210) );
  NAND2xp5_ASAP7_6t_R U178 ( .A(B[6]), .B(A[4]), .Y(n209) );
  NAND2xp5_ASAP7_6t_R U179 ( .A(B[7]), .B(A[1]), .Y(n181) );
  NAND2xp5_ASAP7_6t_R U180 ( .A(B[7]), .B(A[2]), .Y(n180) );
  NAND4xp25_ASAP7_6t_R U181 ( .A(A[3]), .B(A[4]), .C(B[5]), .D(B[4]), .Y(n186)
         );
  NAND2xp5_ASAP7_6t_R U182 ( .A(A[5]), .B(B[4]), .Y(n187) );
  NAND2xp5_ASAP7_6t_R U183 ( .A(A[5]), .B(B[5]), .Y(n214) );
  NAND2xp5_ASAP7_6t_R U184 ( .A(B[7]), .B(A[4]), .Y(n231) );
  NAND2xp5_ASAP7_6t_R U185 ( .A(B[6]), .B(A[5]), .Y(n230) );
  AOI22xp25_ASAP7_6t_R U186 ( .A1(A[3]), .A2(B[5]), .B1(A[4]), .B2(B[4]), .Y(
        n167) );
  NAND2xp5_ASAP7_6t_R U187 ( .A(A[5]), .B(B[3]), .Y(n166) );
  NAND2xp5_ASAP7_6t_R U188 ( .A(A[6]), .B(B[3]), .Y(n193) );
  NAND2xp5_ASAP7_6t_R U189 ( .A(A[6]), .B(B[4]), .Y(n204) );
  NAND2xp5_ASAP7_6t_R U190 ( .A(A[6]), .B(B[5]), .Y(n227) );
  NAND2xp5_ASAP7_6t_R U191 ( .A(B[7]), .B(A[5]), .Y(n246) );
  NAND2xp5_ASAP7_6t_R U192 ( .A(B[6]), .B(A[6]), .Y(n245) );
  NAND2xp5_ASAP7_6t_R U193 ( .A(n167), .B(n166), .Y(n199) );
  NAND3xp33_ASAP7_6t_R U194 ( .A(B[2]), .B(A[6]), .C(n199), .Y(n198) );
  NAND2xp5_ASAP7_6t_R U195 ( .A(A[7]), .B(B[2]), .Y(n196) );
  MAJx1_ASAP7_6t_R U196 ( .A(n193), .B(n192), .C(n191), .Y(n201) );
  NAND2xp5_ASAP7_6t_R U197 ( .A(A[7]), .B(B[3]), .Y(n200) );
  NAND2xp5_ASAP7_6t_R U198 ( .A(A[7]), .B(B[4]), .Y(n223) );
  NAND4xp25_ASAP7_6t_R U199 ( .A(B[7]), .B(A[7]), .C(B[6]), .D(A[6]), .Y(n254)
         );
  NAND2xp5_ASAP7_6t_R U200 ( .A(n161), .B(n160), .Y(n162) );
  AOI22xp25_ASAP7_6t_R U201 ( .A1(B[7]), .A2(A[0]), .B1(A[5]), .B2(B[2]), .Y(
        n160) );
  AOI22xp25_ASAP7_6t_R U202 ( .A1(A[6]), .A2(B[1]), .B1(A[4]), .B2(B[3]), .Y(
        n161) );
  NAND3xp33_ASAP7_6t_R U203 ( .A(A[7]), .B(B[0]), .C(n162), .Y(n275) );
  NAND2xp5_ASAP7_6t_R U204 ( .A(A[7]), .B(B[1]), .Y(n276) );
  AOI22xp25_ASAP7_6t_R U205 ( .A1(A[4]), .A2(B[1]), .B1(A[5]), .B2(B[0]), .Y(
        n159) );
  XNOR2xp5_ASAP7_6t_R U206 ( .A(n280), .B(n279), .Y(O[8]) );
  AOI22xp25_ASAP7_6t_R U207 ( .A1(n278), .A2(n277), .B1(n276), .B2(n275), .Y(
        n280) );
  XNOR2xp5_ASAP7_6t_R U208 ( .A(n271), .B(n270), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U209 ( .A1(n269), .A2(n272), .B1(n268), .B2(n267), .Y(
        n270) );
  XNOR2xp5_ASAP7_6t_R U210 ( .A(n286), .B(n285), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U211 ( .A1(n284), .A2(n283), .B1(n282), .B2(n281), .Y(
        n285) );
  XNOR2xp5_ASAP7_6t_R U212 ( .A(n251), .B(n239), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U213 ( .A1(n252), .A2(n250), .B1(n238), .B2(n237), .Y(
        n239) );
  XNOR2xp5_ASAP7_6t_R U214 ( .A(n253), .B(n260), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U215 ( .A1(n249), .A2(n262), .B1(n248), .B2(n261), .Y(
        n253) );
  OAI21xp5_ASAP7_6t_R U216 ( .A1(A[1]), .A2(A[2]), .B(B[7]), .Y(n168) );
  OAI21xp25_ASAP7_6t_R U217 ( .A1(n164), .A2(n228), .B(n159), .Y(O[5]) );
  TIELOxp5_ASAP7_6t_R U218 ( .L(O[1]) );
  AND2x2_ASAP7_6t_R U219 ( .A(A[0]), .B(B[0]), .Y(O[3]) );
  AND2x2_ASAP7_6t_R U220 ( .A(A[3]), .B(B[1]), .Y(O[4]) );
  AO22x1_ASAP7_6t_R U221 ( .A1(A[2]), .A2(B[0]), .B1(B[2]), .B2(A[0]), .Y(O[2]) );
  INVxp5_ASAP7_6t_R U222 ( .A(A[3]), .Y(n164) );
  INVxp5_ASAP7_6t_R U223 ( .A(B[5]), .Y(n228) );
  AO22x1_ASAP7_6t_R U224 ( .A1(A[6]), .A2(B[0]), .B1(A[5]), .B2(B[1]), .Y(O[6]) );
  INVxp5_ASAP7_6t_R U225 ( .A(B[4]), .Y(n165) );
  A2O1A1Ixp33_ASAP7_6t_R U226 ( .A1(A[7]), .A2(B[0]), .B(n162), .C(n275), .Y(
        n163) );
  OAI21xp5_ASAP7_6t_R U227 ( .A1(n165), .A2(n164), .B(n163), .Y(O[7]) );
  NOR2xp5_ASAP7_6t_R U228 ( .A(n167), .B(n166), .Y(n190) );
  AOI21xp25_ASAP7_6t_R U229 ( .A1(A[1]), .A2(A[2]), .B(n168), .Y(n169) );
  HAxp5_ASAP7_6t_R U230 ( .A(n179), .B(n169), .SN(n175) );
  HAxp5_ASAP7_6t_R U231 ( .A(n175), .B(n177), .SN(n170) );
  HAxp5_ASAP7_6t_R U232 ( .A(n170), .B(n178), .SN(n171) );
  INVxp5_ASAP7_6t_R U233 ( .A(n171), .Y(n185) );
  HAxp5_ASAP7_6t_R U234 ( .A(n186), .B(n185), .SN(n172) );
  HAxp5_ASAP7_6t_R U235 ( .A(n187), .B(n172), .SN(n191) );
  HAxp5_ASAP7_6t_R U236 ( .A(n190), .B(n191), .SN(n173) );
  HAxp5_ASAP7_6t_R U237 ( .A(n173), .B(n193), .SN(n195) );
  INVxp5_ASAP7_6t_R U238 ( .A(n195), .Y(n174) );
  MAJIxp5_ASAP7_6t_R U239 ( .A(n196), .B(n198), .C(n174), .Y(n267) );
  INVxp5_ASAP7_6t_R U240 ( .A(n267), .Y(n269) );
  INVxp5_ASAP7_6t_R U241 ( .A(n175), .Y(n176) );
  MAJIxp5_ASAP7_6t_R U242 ( .A(n178), .B(n177), .C(n176), .Y(n213) );
  XOR2xp5_ASAP7_6t_R U243 ( .A(n210), .B(n209), .Y(n182) );
  MAJIxp5_ASAP7_6t_R U244 ( .A(n181), .B(n180), .C(n179), .Y(n207) );
  HAxp5_ASAP7_6t_R U245 ( .A(n182), .B(n207), .SN(n215) );
  INVxp5_ASAP7_6t_R U246 ( .A(n215), .Y(n183) );
  HAxp5_ASAP7_6t_R U247 ( .A(n214), .B(n183), .SN(n184) );
  HAxp5_ASAP7_6t_R U248 ( .A(n213), .B(n184), .SN(n205) );
  INVxp5_ASAP7_6t_R U249 ( .A(n205), .Y(n189) );
  MAJIxp5_ASAP7_6t_R U250 ( .A(n187), .B(n186), .C(n185), .Y(n203) );
  HAxp5_ASAP7_6t_R U251 ( .A(n204), .B(n203), .SN(n188) );
  HAxp5_ASAP7_6t_R U252 ( .A(n189), .B(n188), .SN(n202) );
  INVxp5_ASAP7_6t_R U253 ( .A(n190), .Y(n192) );
  HAxp5_ASAP7_6t_R U254 ( .A(n200), .B(n201), .SN(n194) );
  HAxp5_ASAP7_6t_R U255 ( .A(n202), .B(n194), .SN(n271) );
  HAxp5_ASAP7_6t_R U256 ( .A(n195), .B(n198), .SN(n197) );
  HAxp5_ASAP7_6t_R U257 ( .A(n197), .B(n196), .SN(n274) );
  A2O1A1Ixp33_ASAP7_6t_R U258 ( .A1(B[2]), .A2(A[6]), .B(n199), .C(n198), .Y(
        n279) );
  MAJIxp5_ASAP7_6t_R U259 ( .A(n275), .B(n279), .C(n276), .Y(n273) );
  MAJIxp5_ASAP7_6t_R U260 ( .A(n269), .B(n271), .C(n272), .Y(n286) );
  MAJIxp5_ASAP7_6t_R U261 ( .A(n202), .B(n201), .C(n200), .Y(n281) );
  INVxp5_ASAP7_6t_R U262 ( .A(n203), .Y(n206) );
  MAJIxp5_ASAP7_6t_R U263 ( .A(n206), .B(n205), .C(n204), .Y(n220) );
  INVxp5_ASAP7_6t_R U264 ( .A(n207), .Y(n208) );
  MAJIxp5_ASAP7_6t_R U265 ( .A(n210), .B(n209), .C(n208), .Y(n229) );
  HAxp5_ASAP7_6t_R U266 ( .A(n231), .B(n230), .SN(n211) );
  HAxp5_ASAP7_6t_R U267 ( .A(n229), .B(n211), .SN(n212) );
  INVxp5_ASAP7_6t_R U268 ( .A(n212), .Y(n225) );
  HAxp5_ASAP7_6t_R U269 ( .A(n225), .B(n227), .SN(n217) );
  INVxp5_ASAP7_6t_R U270 ( .A(n213), .Y(n216) );
  MAJIxp5_ASAP7_6t_R U271 ( .A(n216), .B(n215), .C(n214), .Y(n224) );
  HAxp5_ASAP7_6t_R U272 ( .A(n217), .B(n224), .SN(n218) );
  INVxp5_ASAP7_6t_R U273 ( .A(n218), .Y(n222) );
  HAxp5_ASAP7_6t_R U274 ( .A(n223), .B(n222), .SN(n219) );
  HAxp5_ASAP7_6t_R U275 ( .A(n220), .B(n219), .SN(n283) );
  MAJIxp5_ASAP7_6t_R U276 ( .A(n286), .B(n281), .C(n283), .Y(n251) );
  INVxp5_ASAP7_6t_R U277 ( .A(n220), .Y(n221) );
  MAJIxp5_ASAP7_6t_R U278 ( .A(n223), .B(n222), .C(n221), .Y(n237) );
  INVxp5_ASAP7_6t_R U279 ( .A(n237), .Y(n252) );
  INVxp5_ASAP7_6t_R U280 ( .A(n224), .Y(n226) );
  MAJIxp5_ASAP7_6t_R U281 ( .A(n227), .B(n226), .C(n225), .Y(n242) );
  INVxp5_ASAP7_6t_R U282 ( .A(A[7]), .Y(n265) );
  NOR2xp5_ASAP7_6t_R U283 ( .A(n265), .B(n228), .Y(n240) );
  INVxp5_ASAP7_6t_R U284 ( .A(n240), .Y(n235) );
  XOR2xp5_ASAP7_6t_R U285 ( .A(n246), .B(n245), .Y(n233) );
  INVxp5_ASAP7_6t_R U286 ( .A(n229), .Y(n232) );
  MAJIxp5_ASAP7_6t_R U287 ( .A(n232), .B(n231), .C(n230), .Y(n243) );
  HAxp5_ASAP7_6t_R U288 ( .A(n233), .B(n243), .SN(n234) );
  INVxp5_ASAP7_6t_R U289 ( .A(n234), .Y(n241) );
  HAxp5_ASAP7_6t_R U290 ( .A(n235), .B(n241), .SN(n236) );
  HAxp5_ASAP7_6t_R U291 ( .A(n242), .B(n236), .SN(n250) );
  INVxp5_ASAP7_6t_R U292 ( .A(n250), .Y(n238) );
  MAJIxp5_ASAP7_6t_R U293 ( .A(n242), .B(n241), .C(n240), .Y(n249) );
  INVxp5_ASAP7_6t_R U294 ( .A(n243), .Y(n244) );
  MAJIxp5_ASAP7_6t_R U295 ( .A(n246), .B(n245), .C(n244), .Y(n255) );
  AND2x2_ASAP7_6t_R U296 ( .A(B[7]), .B(A[6]), .Y(n247) );
  A2O1A1Ixp33_ASAP7_6t_R U297 ( .A1(B[6]), .A2(A[7]), .B(n247), .C(n254), .Y(
        n256) );
  HAxp5_ASAP7_6t_R U298 ( .A(n255), .B(n256), .SN(n262) );
  INVxp5_ASAP7_6t_R U299 ( .A(n262), .Y(n248) );
  INVxp5_ASAP7_6t_R U300 ( .A(n249), .Y(n261) );
  MAJIxp5_ASAP7_6t_R U301 ( .A(n252), .B(n251), .C(n250), .Y(n260) );
  INVxp5_ASAP7_6t_R U302 ( .A(n254), .Y(n258) );
  INVxp5_ASAP7_6t_R U303 ( .A(n255), .Y(n257) );
  NOR2xp5_ASAP7_6t_R U304 ( .A(n257), .B(n256), .Y(n259) );
  NOR2xp5_ASAP7_6t_R U305 ( .A(n258), .B(n259), .Y(n266) );
  AOI32xp33_ASAP7_6t_R U306 ( .A1(B[7]), .A2(A[7]), .A3(n266), .B1(n259), .B2(
        n265), .Y(n264) );
  MAJIxp5_ASAP7_6t_R U307 ( .A(n262), .B(n261), .C(n260), .Y(n263) );
  XOR2xp5_ASAP7_6t_R U308 ( .A(n264), .B(n263), .Y(O[14]) );
  OAI22xp5_ASAP7_6t_R U309 ( .A1(n266), .A2(n265), .B1(n264), .B2(n263), .Y(
        O[15]) );
  INVxp5_ASAP7_6t_R U310 ( .A(n272), .Y(n268) );
  OA21x1_ASAP7_6t_R U311 ( .A1(n274), .A2(n273), .B(n272), .Y(O[9]) );
  INVxp5_ASAP7_6t_R U312 ( .A(n275), .Y(n278) );
  INVxp5_ASAP7_6t_R U313 ( .A(n276), .Y(n277) );
  INVxp5_ASAP7_6t_R U314 ( .A(n281), .Y(n284) );
  INVxp5_ASAP7_6t_R U315 ( .A(n283), .Y(n282) );
endmodule

