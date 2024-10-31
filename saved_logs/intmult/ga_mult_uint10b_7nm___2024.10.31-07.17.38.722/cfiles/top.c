#include "approx0.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include "library.h"
#define CHROMOSOME_LENGTH 547
#define MAX_LENGTH 1000
#define size 10
#define outsize 20
#define MAX_LINES 100000

#define EXPONENT_BITS 8
#define MANTISSA_BITS 23
#define TOTAL_BITS (1 + EXPONENT_BITS + MANTISSA_BITS)
#define EXPONENT_BIAS ((1 << (EXPONENT_BITS - 1)) - 1)


int assign_value_to_net(int *ax_values, int index, int value){
    if (ax_values[index] == -1) {
        return value;
    }
    else {
        return ax_values[index];
    }
}

void mult_uint10b_7nm_top (int *ax_values, int* in_a, int* in_b, int* out) {


	int n175;
	INVxp5_ASAP7_6t_R( in_b[0], &n175);
	n175 = assign_value_to_net(ax_values, 174, n175);
	int n316;
	INVxp5_ASAP7_6t_R( in_a[1], &n316);
	n316 = assign_value_to_net(ax_values, 315, n316);
	int n287;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[4], &n287);
	n287 = assign_value_to_net(ax_values, 286, n287);
	int n18;
	XOR2xp5_ASAP7_6t_R( in_a[9], in_b[0], &n18);
	n18 = assign_value_to_net(ax_values, 17, n18);
	int n22;
	XOR2xp5_ASAP7_6t_R( in_a[5], in_b[6], &n22);
	n22 = assign_value_to_net(ax_values, 21, n22);
	int n23;
	XOR2xp5_ASAP7_6t_R( in_a[3], in_b[0], &n23);
	n23 = assign_value_to_net(ax_values, 22, n23);
	int n24;
	XOR2xp5_ASAP7_6t_R( in_a[5], in_b[0], &n24);
	n24 = assign_value_to_net(ax_values, 23, n24);
	int n248;
	INVxp5_ASAP7_6t_R( in_a[9], &n248);
	n248 = assign_value_to_net(ax_values, 247, n248);
	int n307;
	INVxp5_ASAP7_6t_R( in_a[5], &n307);
	n307 = assign_value_to_net(ax_values, 306, n307);
	AND2x2_ASAP7_6t_R( in_b[0], in_a[0], &out[0]);
	out[0] = assign_value_to_net(ax_values, 527, out[0]);
	int n34;
	XOR2x2_ASAP7_6t_R( in_a[4], in_a[5], &n34);
	n34 = assign_value_to_net(ax_values, 33, n34);
	int n35;
	XOR2xp5_ASAP7_6t_R( in_a[6], in_a[7], &n35);
	n35 = assign_value_to_net(ax_values, 34, n35);
	int n236;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[8], &n236);
	n236 = assign_value_to_net(ax_values, 235, n236);
	int n38;
	XOR2x2_ASAP7_6t_R( in_a[8], in_a[7], &n38);
	n38 = assign_value_to_net(ax_values, 37, n38);
	int n39;
	XOR2x2_ASAP7_6t_R( in_a[8], in_a[7], &n39);
	n39 = assign_value_to_net(ax_values, 38, n39);
	int n47;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[5], &n47);
	n47 = assign_value_to_net(ax_values, 46, n47);
	int n53;
	XOR2x2_ASAP7_6t_R( in_a[6], in_a[5], &n53);
	n53 = assign_value_to_net(ax_values, 52, n53);
	int n350;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[4], &n350);
	n350 = assign_value_to_net(ax_values, 349, n350);
	int n353;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[6], &n353);
	n353 = assign_value_to_net(ax_values, 352, n353);
	int n332;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[2], &n332);
	n332 = assign_value_to_net(ax_values, 331, n332);
	int n355;
	INVx2_ASAP7_6t_R( in_a[0], &n355);
	n355 = assign_value_to_net(ax_values, 354, n355);
	int n28;
	INVx3_ASAP7_6t_R( in_a[0], &n28);
	n28 = assign_value_to_net(ax_values, 27, n28);
	int n245;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[9], &n245);
	n245 = assign_value_to_net(ax_values, 244, n245);
	int n323;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[2], &n323);
	n323 = assign_value_to_net(ax_values, 322, n323);
	int n1;
	XOR2xp5_ASAP7_6t_R( in_a[3], in_b[7], &n1);
	n1 = assign_value_to_net(ax_values, 0, n1);
	int n3;
	XOR2xp5_ASAP7_6t_R( in_a[5], in_b[3], &n3);
	n3 = assign_value_to_net(ax_values, 2, n3);
	int n158;
	XNOR2xp5f_ASAP7_6t_R( in_a[6], in_a[5], &n158);
	n158 = assign_value_to_net(ax_values, 157, n158);
	int n396;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[6], &n396);
	n396 = assign_value_to_net(ax_values, 395, n396);
	int n275;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[5], &n275);
	n275 = assign_value_to_net(ax_values, 274, n275);
	int n224;
	XOR2x2_ASAP7_6t_R( in_a[4], in_a[3], &n224);
	n224 = assign_value_to_net(ax_values, 223, n224);
	int n264;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[8], &n264);
	n264 = assign_value_to_net(ax_values, 263, n264);
	int n222;
	XOR2xp5r_ASAP7_6t_R( in_a[6], in_a[7], &n222);
	n222 = assign_value_to_net(ax_values, 221, n222);
	int n349;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[2], &n349);
	n349 = assign_value_to_net(ax_values, 348, n349);
	int n274;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[9], &n274);
	n274 = assign_value_to_net(ax_values, 273, n274);
	int n235;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[9], &n235);
	n235 = assign_value_to_net(ax_values, 234, n235);
	int n331;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[1], &n331);
	n331 = assign_value_to_net(ax_values, 330, n331);
	int n329;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[4], &n329);
	n329 = assign_value_to_net(ax_values, 328, n329);
	int n234;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[4], &n234);
	n234 = assign_value_to_net(ax_values, 233, n234);
	int n276;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[7], &n276);
	n276 = assign_value_to_net(ax_values, 275, n276);
	int n318;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[1], &n318);
	n318 = assign_value_to_net(ax_values, 317, n318);
	int n321;
	INVx1_ASAP7_6t_R( in_a[3], &n321);
	n321 = assign_value_to_net(ax_values, 320, n321);
	int n19;
	XNOR2xp5f_ASAP7_6t_R( in_a[8], in_a[7], &n19);
	n19 = assign_value_to_net(ax_values, 18, n19);
	int n310;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[3], &n310);
	n310 = assign_value_to_net(ax_values, 309, n310);
	int n278;
	INVx1_ASAP7_6t_R( in_a[7], &n278);
	n278 = assign_value_to_net(ax_values, 277, n278);
	int n282;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[6], &n282);
	n282 = assign_value_to_net(ax_values, 281, n282);
	int n416;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[9], &n416);
	n416 = assign_value_to_net(ax_values, 415, n416);
	int n286;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[3], &n286);
	n286 = assign_value_to_net(ax_values, 285, n286);
	int n280;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[1], &n280);
	n280 = assign_value_to_net(ax_values, 279, n280);
	int n423;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[8], &n423);
	n423 = assign_value_to_net(ax_values, 422, n423);
	int n395;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[8], &n395);
	n395 = assign_value_to_net(ax_values, 394, n395);
	int n288;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[8], &n288);
	n288 = assign_value_to_net(ax_values, 287, n288);
	int n328;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[3], &n328);
	n328 = assign_value_to_net(ax_values, 327, n328);
	int n437;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[9], &n437);
	n437 = assign_value_to_net(ax_values, 436, n437);
	int n242;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[7], &n242);
	n242 = assign_value_to_net(ax_values, 241, n242);
	int n351;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[5], &n351);
	n351 = assign_value_to_net(ax_values, 350, n351);
	int n309;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[1], &n309);
	n309 = assign_value_to_net(ax_values, 308, n309);
	int n229;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[5], &n229);
	n229 = assign_value_to_net(ax_values, 228, n229);
	int n415;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[7], &n415);
	n415 = assign_value_to_net(ax_values, 414, n415);
	int n241;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[3], &n241);
	n241 = assign_value_to_net(ax_values, 240, n241);
	int n354;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[7], &n354);
	n354 = assign_value_to_net(ax_values, 353, n354);
	int n230;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[2], &n230);
	n230 = assign_value_to_net(ax_values, 229, n230);
	int n263;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[6], &n263);
	n263 = assign_value_to_net(ax_values, 262, n263);
	int n226;
	XOR2x2_ASAP7_6t_R( in_a[2], in_a[1], &n226);
	n226 = assign_value_to_net(ax_values, 225, n226);
	int n285;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[2], &n285);
	n285 = assign_value_to_net(ax_values, 284, n285);
	int n244;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[5], &n244);
	n244 = assign_value_to_net(ax_values, 243, n244);
	int n247;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[1], &n247);
	n247 = assign_value_to_net(ax_values, 246, n247);
	int n262;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[4], &n262);
	n262 = assign_value_to_net(ax_values, 261, n262);
	int n12;
	XOR2x2_ASAP7_6t_R( in_a[2], in_a[3], &n12);
	n12 = assign_value_to_net(ax_values, 11, n12);
	int n228;
	XOR2xp5_ASAP7_6t_R( in_a[2], in_a[3], &n228);
	n228 = assign_value_to_net(ax_values, 227, n228);
	int n13;
	XOR2x2_ASAP7_6t_R( in_a[4], in_a[5], &n13);
	n13 = assign_value_to_net(ax_values, 12, n13);
	int n14;
	XOR2x2_ASAP7_6t_R( in_a[8], in_a[9], &n14);
	n14 = assign_value_to_net(ax_values, 13, n14);
	int n223;
	XOR2xp5_ASAP7_6t_R( in_a[8], in_a[9], &n223);
	n223 = assign_value_to_net(ax_values, 222, n223);
	int n277;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[0], &n277);
	n277 = assign_value_to_net(ax_values, 276, n277);
	int n16;
	XNOR2xp5f_ASAP7_6t_R( in_a[6], in_a[5], &n16);
	n16 = assign_value_to_net(ax_values, 15, n16);
	int n17;
	XNOR2x2_ASAP7_6t_R( in_a[2], in_a[1], &n17);
	n17 = assign_value_to_net(ax_values, 16, n17);
	int n311;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[5], &n311);
	n311 = assign_value_to_net(ax_values, 310, n311);
	int n37;
	XOR2x2_ASAP7_6t_R( in_a[4], in_a[3], &n37);
	n37 = assign_value_to_net(ax_values, 36, n37);
	int n317;
	OR2x2_ASAP7_6t_R( in_b[0], n316, &n317);
	n317 = assign_value_to_net(ax_values, 316, n317);
	int n143;
	INVx1_ASAP7_6t_R( n287, &n143);
	n143 = assign_value_to_net(ax_values, 142, n143);
	int n249;
	OR2x2_ASAP7_6t_R( in_b[0], n248, &n249);
	n249 = assign_value_to_net(ax_values, 248, n249);
	int n308;
	OR2x2_ASAP7_6t_R( in_b[0], n307, &n308);
	n308 = assign_value_to_net(ax_values, 307, n308);
	int n141;
	NAND2xp5_ASAP7_6t_R( n34, in_a[5], &n141);
	n141 = assign_value_to_net(ax_values, 140, n141);
	int n131;
	INVxp5_ASAP7_6t_R( n236, &n131);
	n131 = assign_value_to_net(ax_values, 130, n131);
	int n107;
	INVx3_ASAP7_6t_R( n38, &n107);
	n107 = assign_value_to_net(ax_values, 106, n107);
	int n290;
	AND2x2_ASAP7_6t_R( in_b[0], n39, &n290);
	n290 = assign_value_to_net(ax_values, 289, n290);
	int n281;
	INVx1_ASAP7_6t_R( n53, &n281);
	n281 = assign_value_to_net(ax_values, 280, n281);
	int n305;
	INVx2_ASAP7_6t_R( n53, &n305);
	n305 = assign_value_to_net(ax_values, 304, n305);
	int n129;
	INVx1_ASAP7_6t_R( n350, &n129);
	n129 = assign_value_to_net(ax_values, 128, n129);
	int n130;
	INVxp5_ASAP7_6t_R( n332, &n130);
	n130 = assign_value_to_net(ax_values, 129, n130);
	int n352;
	NAND2x2_ASAP7_6t_R( n28, in_a[1], &n352);
	n352 = assign_value_to_net(ax_values, 351, n352);
	int n15;
	INVx1_ASAP7_6t_R( n1, &n15);
	n15 = assign_value_to_net(ax_values, 14, n15);
	int n10;
	INVx1_ASAP7_6t_R( n3, &n10);
	n10 = assign_value_to_net(ax_values, 9, n10);
	int n58;
	INVx1_ASAP7_6t_R( n224, &n58);
	n58 = assign_value_to_net(ax_values, 57, n58);
	int n327;
	INVx2_ASAP7_6t_R( n224, &n327);
	n327 = assign_value_to_net(ax_values, 326, n327);
	int n136;
	INVxp5_ASAP7_6t_R( n264, &n136);
	n136 = assign_value_to_net(ax_values, 135, n136);
	int n157;
	NAND2x1_ASAP7_6t_R( n158, n222, &n157);
	n157 = assign_value_to_net(ax_values, 156, n157);
	int n220;
	INVxp5_ASAP7_6t_R( n235, &n220);
	n220 = assign_value_to_net(ax_values, 219, n220);
	int n134;
	INVxp5_ASAP7_6t_R( n331, &n134);
	n134 = assign_value_to_net(ax_values, 133, n134);
	int n322;
	OR2x2_ASAP7_6t_R( in_b[0], n321, &n322);
	n322 = assign_value_to_net(ax_values, 321, n322);
	int n9;
	INVxp5_ASAP7_6t_R( n19, &n9);
	n9 = assign_value_to_net(ax_values, 8, n9);
	int n68;
	INVxp5_ASAP7_6t_R( n310, &n68);
	n68 = assign_value_to_net(ax_values, 67, n68);
	int n279;
	OR2x2_ASAP7_6t_R( in_b[0], n278, &n279);
	n279 = assign_value_to_net(ax_values, 278, n279);
	int n101;
	INVxp5_ASAP7_6t_R( n282, &n101);
	n101 = assign_value_to_net(ax_values, 100, n101);
	int n132;
	INVxp5_ASAP7_6t_R( n351, &n132);
	n132 = assign_value_to_net(ax_values, 131, n132);
	int n160;
	INVxp5_ASAP7_6t_R( n241, &n160);
	n160 = assign_value_to_net(ax_values, 159, n160);
	int n165;
	INVxp5_ASAP7_6t_R( n230, &n165);
	n165 = assign_value_to_net(ax_values, 164, n165);
	int n105;
	NAND2xp5_ASAP7_6t_R( n39, n230, &n105);
	n105 = assign_value_to_net(ax_values, 104, n105);
	int n41;
	INVxp5_ASAP7_6t_R( n226, &n41);
	n41 = assign_value_to_net(ax_values, 40, n41);
	int n227;
	INVx2_ASAP7_6t_R( n226, &n227);
	n227 = assign_value_to_net(ax_values, 226, n227);
	int n137;
	INVxp5_ASAP7_6t_R( n244, &n137);
	n137 = assign_value_to_net(ax_values, 136, n137);
	int n162;
	INVxp5_ASAP7_6t_R( n247, &n162);
	n162 = assign_value_to_net(ax_values, 161, n162);
	int n167;
	INVxp5_ASAP7_6t_R( n262, &n167);
	n167 = assign_value_to_net(ax_values, 166, n167);
	int n127;
	NAND2xp5_ASAP7_6t_R( n12, n23, &n127);
	n127 = assign_value_to_net(ax_values, 126, n127);
	int n128;
	NAND2xp5_ASAP7_6t_R( n228, n1, &n128);
	n128 = assign_value_to_net(ax_values, 127, n128);
	int n140;
	NAND2xp5_ASAP7_6t_R( n3, n13, &n140);
	n140 = assign_value_to_net(ax_values, 139, n140);
	int n138;
	NAND2xp5_ASAP7_6t_R( n13, n22, &n138);
	n138 = assign_value_to_net(ax_values, 137, n138);
	int n139;
	NAND2xp5_ASAP7_6t_R( n13, n24, &n139);
	n139 = assign_value_to_net(ax_values, 138, n139);
	int n161;
	NAND2xp5R_ASAP7_6t_R( n223, in_a[9], &n161);
	n161 = assign_value_to_net(ax_values, 160, n161);
	int n163;
	NAND2xp5R_ASAP7_6t_R( n18, n223, &n163);
	n163 = assign_value_to_net(ax_values, 162, n163);
	int n46;
	NAND2xp5R_ASAP7_6t_R( n35, n16, &n46);
	n46 = assign_value_to_net(ax_values, 45, n46);
	int n60;
	BUFx3_ASAP7_6t_R( n17, &n60);
	n60 = assign_value_to_net(ax_values, 59, n60);
	int n6;
	INVx2_ASAP7_6t_R( n17, &n6);
	n6 = assign_value_to_net(ax_values, 5, n6);
	int n94;
	NAND2xp5R_ASAP7_6t_R( n22, n37, &n94);
	n94 = assign_value_to_net(ax_values, 93, n94);
	int n93;
	INVx1_ASAP7_6t_R( n37, &n93);
	n93 = assign_value_to_net(ax_values, 92, n93);
	int n142;
	NAND2xp5_ASAP7_6t_R( n143, n34, &n142);
	n142 = assign_value_to_net(ax_values, 141, n142);
	int n125;
	NAND2xp5_ASAP7_6t_R( n12, n131, &n125);
	n125 = assign_value_to_net(ax_values, 124, n125);
	int n438;
	NAND2xp5R_ASAP7_6t_R( n14, n107, &n438);
	n438 = assign_value_to_net(ax_values, 437, n438);
	int n188;
	INVx1_ASAP7_6t_R( n290, &n188);
	n188 = assign_value_to_net(ax_values, 187, n188);
	int n306;
	INVx2_ASAP7_6t_R( n305, &n306);
	n306 = assign_value_to_net(ax_values, 305, n306);
	int n126;
	NAND2xp5R_ASAP7_6t_R( n12, n129, &n126);
	n126 = assign_value_to_net(ax_values, 125, n126);
	int n123;
	NAND2xp5_ASAP7_6t_R( n12, n130, &n123);
	n123 = assign_value_to_net(ax_values, 122, n123);
	int n320;
	OAI22xp5_ASAP7_6t_R( n355, n323, n318, n352, &n320);
	n320 = assign_value_to_net(ax_values, 319, n320);
	int n360;
	OAI22xp5_ASAP7_6t_R( n355, n354, n353, n352, &n360);
	n360 = assign_value_to_net(ax_values, 359, n360);
	int n345;
	OAI22xp5_ASAP7_6t_R( n355, n353, n311, n352, &n345);
	n345 = assign_value_to_net(ax_values, 344, n345);
	int n246;
	OAI22xp5_ASAP7_6t_R( n355, n245, n288, n352, &n246);
	n246 = assign_value_to_net(ax_values, 245, n246);
	int n523;
	OAI22xp5_ASAP7_6t_R( n355, n318, in_b[0], n352, &n523);
	n523 = assign_value_to_net(ax_values, 522, n523);
	int n326;
	OAI22xp5_ASAP7_6t_R( n355, n328, n323, n352, &n326);
	n326 = assign_value_to_net(ax_values, 325, n326);
	int n524;
	NAND2xp5_ASAP7_6t_R( n352, n317, &n524);
	n524 = assign_value_to_net(ax_values, 523, n524);
	int n362;
	OAI22xp5_ASAP7_6t_R( n355, n288, n354, n352, &n362);
	n362 = assign_value_to_net(ax_values, 361, n362);
	int n335;
	OAI22xp5_ASAP7_6t_R( n355, n329, n328, n352, &n335);
	n335 = assign_value_to_net(ax_values, 334, n335);
	int n25;
	AOI21xp25_ASAP7_6t_R( n355, n352, n245, &n25);
	n25 = assign_value_to_net(ax_values, 24, n25);
	int n312;
	OAI22xp5_ASAP7_6t_R( n355, n47, n329, n352, &n312);
	n312 = assign_value_to_net(ax_values, 311, n312);
	int n100;
	NOR2xp5_ASAP7_6t_R( n15, n17, &n100);
	n100 = assign_value_to_net(ax_values, 99, n100);
	int n79;
	INVx2_ASAP7_6t_R( n58, &n79);
	n79 = assign_value_to_net(ax_values, 78, n79);
	int n78;
	HB1x1_ASAP7_6t_R( n327, &n78);
	n78 = assign_value_to_net(ax_values, 77, n78);
	int n348;
	NAND2xp5R_ASAP7_6t_R( n327, n13, &n348);
	n348 = assign_value_to_net(ax_values, 347, n348);
	int n336;
	NOR2xp5_ASAP7_6t_R( n175, n327, &n336);
	n336 = assign_value_to_net(ax_values, 335, n336);
	int n417;
	BUFx3_ASAP7_6t_R( n157, &n417);
	n417 = assign_value_to_net(ax_values, 416, n417);
	int n179;
	OA22x1_ASAP7_6t_R( n286, n157, n234, n281, &n179);
	n179 = assign_value_to_net(ax_values, 178, n179);
	int n124;
	NAND2xp5R_ASAP7_6t_R( n12, n132, &n124);
	n124 = assign_value_to_net(ax_values, 123, n124);
	int n159;
	NAND2xp5_ASAP7_6t_R( n160, n14, &n159);
	n159 = assign_value_to_net(ax_values, 158, n159);
	int n164;
	NAND2xp5_ASAP7_6t_R( n165, n14, &n164);
	n164 = assign_value_to_net(ax_values, 163, n164);
	int n103;
	INVxp5_ASAP7_6t_R( n105, &n103);
	n103 = assign_value_to_net(ax_values, 102, n103);
	int n5;
	INVx2_ASAP7_6t_R( n227, &n5);
	n5 = assign_value_to_net(ax_values, 4, n5);
	int n184;
	AND2x2_ASAP7_6t_R( n12, n227, &n184);
	n184 = assign_value_to_net(ax_values, 183, n184);
	int n102;
	NAND2xp5R_ASAP7_6t_R( n34, n137, &n102);
	n102 = assign_value_to_net(ax_values, 101, n102);
	int n104;
	AOI21xp5_ASAP7_6t_R( n162, n14, n39, &n104);
	n104 = assign_value_to_net(ax_values, 103, n104);
	int n166;
	NAND2xp5_ASAP7_6t_R( n167, n14, &n166);
	n166 = assign_value_to_net(ax_values, 165, n166);
	int n82;
	OAI22xp5_ASAP7_6t_R( n19, n249, n38, n161, &n82);
	n82 = assign_value_to_net(ax_values, 81, n82);
	int n98;
	OAI22xp5_ASAP7_6t_R( n39, n163, n19, n247, &n98);
	n98 = assign_value_to_net(ax_values, 97, n98);
	int n21;
	OA22x1_ASAP7_6t_R( n277, n46, n305, n280, &n21);
	n21 = assign_value_to_net(ax_values, 20, n21);
	int n271;
	OAI22xp5_ASAP7_6t_R( n276, n305, n263, n46, &n271);
	n271 = assign_value_to_net(ax_values, 270, n271);
	int n283;
	OAI22xp5_ASAP7_6t_R( n285, n305, n280, n46, &n283);
	n283 = assign_value_to_net(ax_values, 282, n283);
	int n133;
	NOR2xp5_ASAP7_6t_R( n332, n60, &n133);
	n133 = assign_value_to_net(ax_values, 132, n133);
	int n67;
	NOR2xp5_ASAP7_6t_R( n350, n60, &n67);
	n67 = assign_value_to_net(ax_values, 66, n67);
	int n325;
	OAI22xp5_ASAP7_6t_R( n17, n331, n6, n127, &n325);
	n325 = assign_value_to_net(ax_values, 324, n325);
	int n135;
	NAND3xp33_ASAP7_6t_R( n93, n34, n136, &n135);
	n135 = assign_value_to_net(ax_values, 134, n135);
	int n289;
	OAI22xp5_ASAP7_6t_R( n93, n287, n37, n140, &n289);
	n289 = assign_value_to_net(ax_values, 288, n289);
	int n88;
	OAI22xp5_ASAP7_6t_R( n275, n438, n396, n107, &n88);
	n88 = assign_value_to_net(ax_values, 87, n88);
	int n419;
	OAI22xp5_ASAP7_6t_R( n415, n107, n396, n438, &n419);
	n419 = assign_value_to_net(ax_values, 418, n419);
	int n439;
	AO21x1_ASAP7_6t_R( n107, n438, n437, &n439);
	n439 = assign_value_to_net(ax_values, 438, n439);
	int n424;
	OAI22xp5_ASAP7_6t_R( n423, n107, n415, n438, &n424);
	n424 = assign_value_to_net(ax_values, 423, n424);
	int n440;
	OAI22xp5_ASAP7_6t_R( n437, n107, n423, n438, &n440);
	n440 = assign_value_to_net(ax_values, 439, n440);
	int n114;
	NAND2xp5R_ASAP7_6t_R( n306, in_b[0], &n114);
	n114 = assign_value_to_net(ax_values, 113, n114);
	int n313;
	OAI22xp5_ASAP7_6t_R( n17, n310, n6, n123, &n313);
	n313 = assign_value_to_net(ax_values, 312, n313);
	int n192;
	INVxp5_ASAP7_6t_R( n360, &n192);
	n192 = assign_value_to_net(ax_values, 191, n192);
	int n144;
	INVx2_ASAP7_6t_R( n345, &n144);
	n144 = assign_value_to_net(ax_values, 143, n144);
	int n172;
	INVxp5_ASAP7_6t_R( n326, &n172);
	n172 = assign_value_to_net(ax_values, 171, n172);
	int n527;
	NAND2xp5R_ASAP7_6t_R( n523, n524, &n527);
	n527 = assign_value_to_net(ax_values, 526, n527);
	int n525;
	NOR2xp5_ASAP7_6t_R( n524, n523, &n525);
	n525 = assign_value_to_net(ax_values, 524, n525);
	int n193;
	INVx1_ASAP7_6t_R( n362, &n193);
	n193 = assign_value_to_net(ax_values, 192, n193);
	int n330;
	INVxp5_ASAP7_6t_R( n335, &n330);
	n330 = assign_value_to_net(ax_values, 329, n330);
	int n110;
	INVxp5_ASAP7_6t_R( n25, &n110);
	n110 = assign_value_to_net(ax_values, 109, n110);
	int n156;
	INVxp5_ASAP7_6t_R( n312, &n156);
	n156 = assign_value_to_net(ax_values, 155, n156);
	int n92;
	OAI22xp5_ASAP7_6t_R( n79, n139, n327, n309, &n92);
	n92 = assign_value_to_net(ax_values, 91, n92);
	int n56;
	OAI22xp5_ASAP7_6t_R( n327, n244, n79, n142, &n56);
	n56 = assign_value_to_net(ax_values, 55, n56);
	int n4;
	OA22x1_ASAP7_6t_R( n327, n308, n79, n141, &n4);
	n4 = assign_value_to_net(ax_values, 3, n4);
	int n57;
	OAI22xp5_ASAP7_6t_R( n327, n242, n79, n138, &n57);
	n57 = assign_value_to_net(ax_values, 56, n57);
	int n261;
	OAI22xp5_ASAP7_6t_R( n78, n264, n348, n242, &n261);
	n261 = assign_value_to_net(ax_values, 260, n261);
	int n342;
	OAI22xp5_ASAP7_6t_R( n78, n349, n348, n309, &n342);
	n342 = assign_value_to_net(ax_values, 341, n342);
	int n391;
	AO21x1_ASAP7_6t_R( n78, n348, n274, &n391);
	n391 = assign_value_to_net(ax_values, 390, n391);
	int n361;
	OAI22xp5_ASAP7_6t_R( n78, n10, n348, n349, &n361);
	n361 = assign_value_to_net(ax_values, 360, n361);
	int n30;
	NAND2xp5_ASAP7_6t_R( n336, n335, &n30);
	n30 = assign_value_to_net(ax_values, 29, n30);
	int n84;
	OA22x1_ASAP7_6t_R( n417, n229, n263, n305, &n84);
	n84 = assign_value_to_net(ax_values, 83, n84);
	int n425;
	OAI22xp5_ASAP7_6t_R( n416, n305, n395, n417, &n425);
	n425 = assign_value_to_net(ax_values, 424, n425);
	int n293;
	OAI22xp5_ASAP7_6t_R( n285, n417, n305, n286, &n293);
	n293 = assign_value_to_net(ax_values, 292, n293);
	int n87;
	OA22x1_ASAP7_6t_R( n234, n417, n229, n305, &n87);
	n87 = assign_value_to_net(ax_values, 86, n87);
	int n394;
	OAI22xp5_ASAP7_6t_R( n395, n305, n276, n417, &n394);
	n394 = assign_value_to_net(ax_values, 393, n394);
	int n89;
	OA22x1_ASAP7_6t_R( n305, n279, n278, n417, &n89);
	n89 = assign_value_to_net(ax_values, 88, n89);
	int n427;
	AO21x1_ASAP7_6t_R( n305, n417, n416, &n427);
	n427 = assign_value_to_net(ax_values, 426, n427);
	int n33;
	OAI22xp5_ASAP7_6t_R( n17, n282, n6, n124, &n33);
	n33 = assign_value_to_net(ax_values, 32, n33);
	int n259;
	OAI22xp5_ASAP7_6t_R( n9, n159, n107, n262, &n259);
	n259 = assign_value_to_net(ax_values, 258, n259);
	int n225;
	OAI22xp5_ASAP7_6t_R( n107, n241, n39, n164, &n225);
	n225 = assign_value_to_net(ax_values, 224, n225);
	int n319;
	AND2x2_ASAP7_6t_R( in_b[0], n5, &n319);
	n319 = assign_value_to_net(ax_values, 318, n319);
	int n26;
	OAI22xp5_ASAP7_6t_R( n17, n351, n5, n126, &n26);
	n26 = assign_value_to_net(ax_values, 25, n26);
	int n2;
	OA22x1_ASAP7_6t_R( n41, n236, n5, n128, &n2);
	n2 = assign_value_to_net(ax_values, 1, n2);
	int n250;
	OAI22xp5_ASAP7_6t_R( n41, n236, n5, n128, &n250);
	n250 = assign_value_to_net(ax_values, 249, n250);
	int n258;
	OAI22xp5_ASAP7_6t_R( n17, n235, n5, n125, &n258);
	n258 = assign_value_to_net(ax_values, 257, n258);
	int n284;
	AO21x1_ASAP7_6t_R( n101, n184, n100, &n284);
	n284 = assign_value_to_net(ax_values, 283, n284);
	int n185;
	INVx1_ASAP7_6t_R( n184, &n185);
	n185 = assign_value_to_net(ax_values, 184, n185);
	int n231;
	OAI21xp5_ASAP7_6t_R( n37, n102, n94, &n231);
	n231 = assign_value_to_net(ax_values, 230, n231);
	int n232;
	NOR2xp5_ASAP7_6t_R( n104, n103, &n232);
	n232 = assign_value_to_net(ax_values, 231, n232);
	int n270;
	OAI22xp5_ASAP7_6t_R( n38, n166, n107, n275, &n270);
	n270 = assign_value_to_net(ax_values, 269, n270);
	int n203;
	XNOR2xp5_ASAP7_6t_R( n98, n82, &n203);
	n203 = assign_value_to_net(ax_values, 202, n203);
	int n81;
	NAND2xp5_ASAP7_6t_R( n82, n98, &n81);
	n81 = assign_value_to_net(ax_values, 80, n81);
	int n32;
	AOI21xp5_ASAP7_6t_R( n134, n184, n133, &n32);
	n32 = assign_value_to_net(ax_values, 31, n32);
	int n347;
	AO21x1_ASAP7_6t_R( n68, n184, n67, &n347);
	n347 = assign_value_to_net(ax_values, 346, n347);
	int n333;
	AND2x2_ASAP7_6t_R( n326, n325, &n333);
	n333 = assign_value_to_net(ax_values, 332, n333);
	int n273;
	OA21x1_ASAP7_6t_R( n274, n327, n135, &n273);
	n273 = assign_value_to_net(ax_values, 272, n273);
	int n363;
	XNOR2xp5f_ASAP7_6t_R( n289, n188, &n363);
	n363 = assign_value_to_net(ax_values, 362, n363);
	int n153;
	NAND2xp5R_ASAP7_6t_R( n289, n290, &n153);
	n153 = assign_value_to_net(ax_values, 152, n153);
	int n480;
	NOR2xp5_ASAP7_6t_R( n440, n439, &n480);
	n480 = assign_value_to_net(ax_values, 479, n480);
	int n430;
	INVx1_ASAP7_6t_R( n440, &n430);
	n430 = assign_value_to_net(ax_values, 429, n430);
	int n478;
	NAND2xp5R_ASAP7_6t_R( n439, n440, &n478);
	n478 = assign_value_to_net(ax_values, 477, n478);
	int n113;
	INVx1_ASAP7_6t_R( n114, &n113);
	n113 = assign_value_to_net(ax_values, 112, n113);
	int n314;
	NAND2xp5_ASAP7_6t_R( n313, n312, &n314);
	n314 = assign_value_to_net(ax_values, 313, n314);
	int n63;
	NOR2xp5_ASAP7_6t_R( in_b[0], n144, &n63);
	n63 = assign_value_to_net(ax_values, 62, n63);
	int n64;
	NAND3xp33_ASAP7_6t_R( n306, n144, in_b[0], &n64);
	n64 = assign_value_to_net(ax_values, 63, n64);
	int n171;
	XNOR2xp5_ASAP7_6t_R( n325, n172, &n171);
	n171 = assign_value_to_net(ax_values, 170, n171);
	int n526;
	INVxp5_ASAP7_6t_R( n525, &n526);
	n526 = assign_value_to_net(ax_values, 525, n526);
	int n337;
	XNOR2xp5_ASAP7_6t_R( n336, n330, &n337);
	n337 = assign_value_to_net(ax_values, 336, n337);
	int n155;
	XNOR2xp5_ASAP7_6t_R( n313, n156, &n155);
	n155 = assign_value_to_net(ax_values, 154, n155);
	int n91;
	INVxp5_ASAP7_6t_R( n92, &n91);
	n91 = assign_value_to_net(ax_values, 90, n91);
	int n27;
	XNOR2xp5f_ASAP7_6t_R( n246, n56, &n27);
	n27 = assign_value_to_net(ax_values, 26, n27);
	int n201;
	NAND2xp5_ASAP7_6t_R( n246, n56, &n201);
	n201 = assign_value_to_net(ax_values, 200, n201);
	int n338;
	XNOR2xp5_ASAP7_6t_R( n4, n92, &n338);
	n338 = assign_value_to_net(ax_values, 337, n338);
	int n218;
	INVx1_ASAP7_6t_R( n261, &n218);
	n218 = assign_value_to_net(ax_values, 217, n218);
	int n90;
	INVx1_ASAP7_6t_R( n342, &n90);
	n90 = assign_value_to_net(ax_values, 89, n90);
	int n116;
	INVxp5_ASAP7_6t_R( n391, &n116);
	n116 = assign_value_to_net(ax_values, 115, n116);
	int n83;
	INVxp5_ASAP7_6t_R( n84, &n83);
	n83 = assign_value_to_net(ax_values, 82, n83);
	int n418;
	INVx1_ASAP7_6t_R( n425, &n418);
	n418 = assign_value_to_net(ax_values, 417, n418);
	int n426;
	XOR2xp5_ASAP7_6t_R( n424, n425, &n426);
	n426 = assign_value_to_net(ax_values, 425, n426);
	int n208;
	INVxp5_ASAP7_6t_R( n394, &n208);
	n208 = assign_value_to_net(ax_values, 207, n208);
	int n65;
	XNOR2xp5f_ASAP7_6t_R( n89, n21, &n65);
	n65 = assign_value_to_net(ax_values, 64, n65);
	int n75;
	NOR2x1_ASAP7_6t_R( n89, n21, &n75);
	n75 = assign_value_to_net(ax_values, 74, n75);
	int n213;
	NOR2xp5_ASAP7_6t_R( n283, n33, &n213);
	n213 = assign_value_to_net(ax_values, 212, n213);
	int n189;
	XNOR2xp5_ASAP7_6t_R( n33, n283, &n189);
	n189 = assign_value_to_net(ax_values, 188, n189);
	int n214;
	NAND2xp5_ASAP7_6t_R( n283, n33, &n214);
	n214 = assign_value_to_net(ax_values, 213, n214);
	int n97;
	XNOR2xp5f_ASAP7_6t_R( n225, n57, &n97);
	n97 = assign_value_to_net(ax_values, 96, n97);
	int n221;
	NAND2xp5_ASAP7_6t_R( n225, n57, &n221);
	n221 = assign_value_to_net(ax_values, 220, n221);
	int n519;
	NOR2xp5_ASAP7_6t_R( n319, n320, &n519);
	n519 = assign_value_to_net(ax_values, 518, n519);
	int n521;
	NAND2xp5R_ASAP7_6t_R( n320, n319, &n521);
	n521 = assign_value_to_net(ax_values, 520, n521);
	int n173;
	XNOR2xp5_ASAP7_6t_R( n26, n192, &n173);
	n173 = assign_value_to_net(ax_values, 172, n173);
	int n191;
	NAND2xp5R_ASAP7_6t_R( n360, n26, &n191);
	n191 = assign_value_to_net(ax_values, 190, n191);
	int n237;
	NAND2xp5R_ASAP7_6t_R( n2, n179, &n237);
	n237 = assign_value_to_net(ax_values, 236, n237);
	int n178;
	XNOR2xp5f_ASAP7_6t_R( n250, n179, &n178);
	n178 = assign_value_to_net(ax_values, 177, n178);
	int n238;
	INVx1_ASAP7_6t_R( n258, &n238);
	n238 = assign_value_to_net(ax_values, 237, n238);
	int n260;
	XOR2xp5r_ASAP7_6t_R( n258, n259, &n260);
	n260 = assign_value_to_net(ax_values, 259, n260);
	int n99;
	INVx1_ASAP7_6t_R( n284, &n99);
	n99 = assign_value_to_net(ax_values, 98, n99);
	int n219;
	NAND2xp5R_ASAP7_6t_R( n60, n185, &n219);
	n219 = assign_value_to_net(ax_values, 218, n219);
	int n324;
	OAI22xp5_ASAP7_6t_R( n60, n322, n321, n185, &n324);
	n324 = assign_value_to_net(ax_values, 323, n324);
	int n297;
	XNOR2xp5_ASAP7_6t_R( n232, n231, &n297);
	n297 = assign_value_to_net(ax_values, 296, n297);
	int n233;
	NAND2xp5_ASAP7_6t_R( n232, n231, &n233);
	n233 = assign_value_to_net(ax_values, 232, n233);
	int n272;
	XOR2x2_ASAP7_6t_R( n270, n271, &n272);
	n272 = assign_value_to_net(ax_values, 271, n272);
	int n295;
	XNOR2xp5f_ASAP7_6t_R( n203, n293, &n295);
	n295 = assign_value_to_net(ax_values, 294, n295);
	int n202;
	INVxp5_ASAP7_6t_R( n203, &n202);
	n202 = assign_value_to_net(ax_values, 201, n202);
	int n59;
	INVx1_ASAP7_6t_R( n81, &n59);
	n59 = assign_value_to_net(ax_values, 58, n59);
	int n71;
	INVx1_ASAP7_6t_R( n273, &n71);
	n71 = assign_value_to_net(ax_values, 70, n71);
	int n152;
	NAND2xp5R_ASAP7_6t_R( n362, n363, &n152);
	n152 = assign_value_to_net(ax_values, 151, n152);
	int n364;
	XNOR2xp5f_ASAP7_6t_R( n363, n193, &n364);
	n364 = assign_value_to_net(ax_values, 363, n364);
	int n441;
	INVxp5_ASAP7_6t_R( n480, &n441);
	n441 = assign_value_to_net(ax_values, 440, n441);
	int n66;
	NAND2xp5_ASAP7_6t_R( n345, n113, &n66);
	n66 = assign_value_to_net(ax_values, 65, n66);
	int n315;
	INVxp5_ASAP7_6t_R( n314, &n315);
	n315 = assign_value_to_net(ax_values, 314, n315);
	int n62;
	INVx1_ASAP7_6t_R( n63, &n62);
	n62 = assign_value_to_net(ax_values, 61, n62);
	AND2x2_ASAP7_6t_R( n527, n526, &out[1]);
	out[1] = assign_value_to_net(ax_values, 528, out[1]);
	int n334;
	XNOR2xp5_ASAP7_6t_R( n32, n337, &n334);
	n334 = assign_value_to_net(ax_values, 333, n334);
	int n31;
	INVxp5_ASAP7_6t_R( n337, &n31);
	n31 = assign_value_to_net(ax_values, 30, n31);
	int n341;
	NOR2xp5_ASAP7_6t_R( n4, n91, &n341);
	n341 = assign_value_to_net(ax_values, 340, n341);
	int n198;
	XNOR2xp5_ASAP7_6t_R( n338, n155, &n198);
	n198 = assign_value_to_net(ax_values, 197, n198);
	int n421;
	XOR2xp5r_ASAP7_6t_R( n418, n419, &n421);
	n421 = assign_value_to_net(ax_values, 420, n421);
	int n428;
	XOR2xp5_ASAP7_6t_R( n426, n427, &n428);
	n428 = assign_value_to_net(ax_values, 427, n428);
	int n431;
	AO22x1_ASAP7_6t_R( n427, n426, n425, n424, &n431);
	n431 = assign_value_to_net(ax_values, 430, n431);
	int n368;
	INVxp5_ASAP7_6t_R( n65, &n368);
	n368 = assign_value_to_net(ax_values, 367, n368);
	int n182;
	INVx1_ASAP7_6t_R( n213, &n182);
	n182 = assign_value_to_net(ax_values, 181, n182);
	int n371;
	XNOR2xp5_ASAP7_6t_R( n75, n189, &n371);
	n371 = assign_value_to_net(ax_values, 370, n371);
	int n183;
	INVxp5_ASAP7_6t_R( n214, &n183);
	n183 = assign_value_to_net(ax_values, 182, n183);
	int n254;
	XOR2xp5r_ASAP7_6t_R( n97, n87, &n254);
	n254 = assign_value_to_net(ax_values, 253, n254);
	int n45;
	OAI21xp25_ASAP7_6t_R( n97, n87, n221, &n45);
	n45 = assign_value_to_net(ax_values, 44, n45);
	int n20;
	OA21x1_ASAP7_6t_R( n97, n87, n221, &n20);
	n20 = assign_value_to_net(ax_values, 19, n20);
	int n520;
	INVxp5_ASAP7_6t_R( n519, &n520);
	n520 = assign_value_to_net(ax_values, 519, n520);
	int n517;
	OA21x1_ASAP7_6t_R( n527, n519, n521, &n517);
	n517 = assign_value_to_net(ax_values, 516, n517);
	int n174;
	INVx1_ASAP7_6t_R( n173, &n174);
	n174 = assign_value_to_net(ax_values, 173, n174);
	int n190;
	INVxp5_ASAP7_6t_R( n191, &n190);
	n190 = assign_value_to_net(ax_values, 189, n190);
	int n177;
	INVx1_ASAP7_6t_R( n178, &n177);
	n177 = assign_value_to_net(ax_values, 176, n177);
	int n239;
	NAND2xp5R_ASAP7_6t_R( n238, n237, &n239);
	n239 = assign_value_to_net(ax_values, 238, n239);
	int n243;
	XOR2x2_ASAP7_6t_R( n237, n238, &n243);
	n243 = assign_value_to_net(ax_values, 242, n243);
	int n217;
	XNOR2xp5f_ASAP7_6t_R( n260, n218, &n217);
	n217 = assign_value_to_net(ax_values, 216, n217);
	int n265;
	AOI22xp5_ASAP7_6t_R( n259, n258, n261, n260, &n265);
	n265 = assign_value_to_net(ax_values, 264, n265);
	int n112;
	XNOR2xp5f_ASAP7_6t_R( n27, n99, &n112);
	n112 = assign_value_to_net(ax_values, 111, n112);
	int n299;
	OAI21xp5_ASAP7_6t_R( n99, n27, n201, &n299);
	n299 = assign_value_to_net(ax_values, 298, n299);
	int n266;
	NAND2xp5R_ASAP7_6t_R( n220, n219, &n266);
	n266 = assign_value_to_net(ax_values, 265, n266);
	int n516;
	NAND2xp5R_ASAP7_6t_R( n324, n171, &n516);
	n516 = assign_value_to_net(ax_values, 515, n516);
	int n514;
	NOR2xp5_ASAP7_6t_R( n171, n324, &n514);
	n514 = assign_value_to_net(ax_values, 513, n514);
	int n195;
	XNOR2xp5_ASAP7_6t_R( n297, n110, &n195);
	n195 = assign_value_to_net(ax_values, 194, n195);
	int n86;
	OAI21xp5_ASAP7_6t_R( n297, n25, n233, &n86);
	n86 = assign_value_to_net(ax_values, 85, n86);
	int n117;
	AOI22xp5_ASAP7_6t_R( n270, n271, n273, n272, &n117);
	n117 = assign_value_to_net(ax_values, 116, n117);
	int n294;
	NAND2xp5R_ASAP7_6t_R( n202, n293, &n294);
	n294 = assign_value_to_net(ax_values, 293, n294);
	int n298;
	XNOR2xp5f_ASAP7_6t_R( n178, n59, &n298);
	n298 = assign_value_to_net(ax_values, 297, n298);
	int n209;
	XNOR2xp5f_ASAP7_6t_R( n88, n71, &n209);
	n209 = assign_value_to_net(ax_values, 208, n209);
	int n207;
	NAND2xp5_ASAP7_6t_R( n71, n88, &n207);
	n207 = assign_value_to_net(ax_values, 206, n207);
	int n77;
	XNOR2xp5f_ASAP7_6t_R( n272, n71, &n77);
	n77 = assign_value_to_net(ax_values, 76, n77);
	int n296;
	NAND2xp5R_ASAP7_6t_R( n152, n153, &n296);
	n296 = assign_value_to_net(ax_values, 295, n296);
	int n42;
	INVxp5_ASAP7_6t_R( n364, &n42);
	n42 = assign_value_to_net(ax_values, 41, n42);
	int n442;
	NAND2xp5R_ASAP7_6t_R( n478, n441, &n442);
	n442 = assign_value_to_net(ax_values, 441, n442);
	int n29;
	INVxp5_ASAP7_6t_R( n66, &n29);
	n29 = assign_value_to_net(ax_values, 28, n29);
	int n343;
	AO21x1_ASAP7_6t_R( n338, n155, n315, &n343);
	n343 = assign_value_to_net(ax_values, 342, n343);
	int n48;
	OAI211xp33_ASAP7_6t_R( n306, n144, n62, n64, &n48);
	n48 = assign_value_to_net(ax_values, 47, n48);
	int n346;
	OAI211xp67b_ASAP7_6t_R( n306, n144, n62, n64, &n346);
	n346 = assign_value_to_net(ax_values, 345, n346);
	int n509;
	NOR2xp5_ASAP7_6t_R( n333, n334, &n509);
	n509 = assign_value_to_net(ax_values, 508, n509);
	int n511;
	NAND2xp5R_ASAP7_6t_R( n334, n333, &n511);
	n511 = assign_value_to_net(ax_values, 510, n511);
	int n339;
	OAI21xp5_ASAP7_6t_R( n32, n31, n30, &n339);
	n339 = assign_value_to_net(ax_values, 338, n339);
	int n344;
	XNOR2xp5f_ASAP7_6t_R( n90, n341, &n344);
	n344 = assign_value_to_net(ax_values, 343, n344);
	int n197;
	INVxp5_ASAP7_6t_R( n198, &n197);
	n197 = assign_value_to_net(ax_values, 196, n197);
	int n447;
	OR2x2_ASAP7_6t_R( n430, n431, &n447);
	n447 = assign_value_to_net(ax_values, 446, n447);
	int n448;
	NAND2xp5R_ASAP7_6t_R( n431, n430, &n448);
	n448 = assign_value_to_net(ax_values, 447, n448);
	int n85;
	INVx1_ASAP7_6t_R( n371, &n85);
	n85 = assign_value_to_net(ax_values, 84, n85);
	int n292;
	OA21x1_ASAP7_6t_R( n183, n75, n182, &n292);
	n292 = assign_value_to_net(ax_values, 291, n292);
	int n119;
	INVx2_ASAP7_6t_R( n254, &n119);
	n119 = assign_value_to_net(ax_values, 118, n119);
	int n522;
	NAND2xp5R_ASAP7_6t_R( n521, n520, &n522);
	n522 = assign_value_to_net(ax_values, 521, n522);
	int n370;
	XNOR2xp5_ASAP7_6t_R( n174, n361, &n370);
	n370 = assign_value_to_net(ax_values, 369, n370);
	int n187;
	AOI21xp5_ASAP7_6t_R( n173, n361, n190, &n187);
	n187 = assign_value_to_net(ax_values, 186, n187);
	int n251;
	NAND2xp5R_ASAP7_6t_R( n177, n59, &n251);
	n251 = assign_value_to_net(ax_values, 250, n251);
	int n240;
	INVx1_ASAP7_6t_R( n239, &n240);
	n240 = assign_value_to_net(ax_values, 239, n240);
	int n146;
	INVx1_ASAP7_6t_R( n243, &n146);
	n146 = assign_value_to_net(ax_values, 145, n146);
	int n216;
	INVxp5_ASAP7_6t_R( n217, &n216);
	n216 = assign_value_to_net(ax_values, 215, n216);
	int n168;
	INVxp5_ASAP7_6t_R( n265, &n168);
	n168 = assign_value_to_net(ax_values, 167, n168);
	int n291;
	INVxp5_ASAP7_6t_R( n112, &n291);
	n291 = assign_value_to_net(ax_values, 290, n291);
	int n300;
	INVx1_ASAP7_6t_R( n299, &n300);
	n300 = assign_value_to_net(ax_values, 299, n300);
	int n74;
	XNOR2xp5f_ASAP7_6t_R( n266, n84, &n74);
	n74 = assign_value_to_net(ax_values, 73, n74);
	int n170;
	NAND2xp5R_ASAP7_6t_R( n83, n266, &n170);
	n170 = assign_value_to_net(ax_values, 169, n170);
	int n512;
	OA21x1_ASAP7_6t_R( n514, n517, n516, &n512);
	n512 = assign_value_to_net(ax_values, 511, n512);
	int n515;
	INVxp5_ASAP7_6t_R( n514, &n515);
	n515 = assign_value_to_net(ax_values, 514, n515);
	int n194;
	INVxp5_ASAP7_6t_R( n195, &n194);
	n194 = assign_value_to_net(ax_values, 193, n194);
	int n118;
	INVx1_ASAP7_6t_R( n86, &n118);
	n118 = assign_value_to_net(ax_values, 117, n118);
	int n392;
	XNOR2xp5f_ASAP7_6t_R( n117, n391, &n392);
	n392 = assign_value_to_net(ax_values, 391, n392);
	int n108;
	INVx1_ASAP7_6t_R( n294, &n108);
	n108 = assign_value_to_net(ax_values, 107, n108);
	int n145;
	INVx1_ASAP7_6t_R( n298, &n145);
	n145 = assign_value_to_net(ax_values, 144, n145);
	int n393;
	XNOR2xp5f_ASAP7_6t_R( n209, n394, &n393);
	n393 = assign_value_to_net(ax_values, 392, n393);
	int n420;
	OAI21xp5_ASAP7_6t_R( n208, n209, n207, &n420);
	n420 = assign_value_to_net(ax_values, 419, n420);
	int n206;
	XNOR2xp5f_ASAP7_6t_R( n77, n265, &n206);
	n206 = assign_value_to_net(ax_values, 205, n206);
	int n366;
	XOR2x2_ASAP7_6t_R( n296, n295, &n366);
	n366 = assign_value_to_net(ax_values, 365, n366);
	int n43;
	INVxp5_ASAP7_6t_R( n42, &n43);
	n43 = assign_value_to_net(ax_values, 42, n43);
	int n340;
	XOR2xp5r_ASAP7_6t_R( n347, n48, &n340);
	n340 = assign_value_to_net(ax_values, 339, n340);
	int n367;
	AO21x1_ASAP7_6t_R( n347, n346, n29, &n367);
	n367 = assign_value_to_net(ax_values, 366, n367);
	int n510;
	INVxp5_ASAP7_6t_R( n509, &n510);
	n510 = assign_value_to_net(ax_values, 509, n510);
	int n199;
	INVxp5_ASAP7_6t_R( n339, &n199);
	n199 = assign_value_to_net(ax_values, 198, n199);
	int n200;
	XOR2xp5r_ASAP7_6t_R( n344, n343, &n200);
	n200 = assign_value_to_net(ax_values, 199, n200);
	int n357;
	AO22x1_ASAP7_6t_R( n344, n343, n342, n341, &n357);
	n357 = assign_value_to_net(ax_values, 356, n357);
	int n499;
	NAND2xp5R_ASAP7_6t_R( n197, n339, &n499);
	n499 = assign_value_to_net(ax_values, 498, n499);
	int n449;
	NAND2xp5R_ASAP7_6t_R( n448, n447, &n449);
	n449 = assign_value_to_net(ax_values, 448, n449);
	int n432;
	INVxp5_ASAP7_6t_R( n448, &n432);
	n432 = assign_value_to_net(ax_values, 431, n432);
	int n111;
	XNOR2xp5f_ASAP7_6t_R( n292, n112, &n111);
	n111 = assign_value_to_net(ax_values, 110, n111);
	XOR2xp5_ASAP7_6t_R( n522, n527, &out[2]);
	out[2] = assign_value_to_net(ax_values, 529, out[2]);
	int n356;
	INVx1_ASAP7_6t_R( n370, &n356);
	n356 = assign_value_to_net(ax_values, 355, n356);
	int n372;
	XNOR2xp5f_ASAP7_6t_R( n364, n187, &n372);
	n372 = assign_value_to_net(ax_values, 371, n372);
	int n365;
	INVxp5_ASAP7_6t_R( n187, &n365);
	n365 = assign_value_to_net(ax_values, 364, n365);
	int n180;
	INVx1_ASAP7_6t_R( n251, &n180);
	n180 = assign_value_to_net(ax_values, 179, n180);
	int n154;
	AOI21x1_ASAP7_6t_R( n243, n86, n240, &n154);
	n154 = assign_value_to_net(ax_values, 153, n154);
	int n204;
	NAND2xp5_ASAP7_6t_R( n168, n77, &n204);
	n204 = assign_value_to_net(ax_values, 203, n204);
	int n121;
	NAND2xp5_ASAP7_6t_R( n291, n292, &n121);
	n121 = assign_value_to_net(ax_values, 120, n121);
	int n72;
	NAND2xp5R_ASAP7_6t_R( n45, n74, &n72);
	n72 = assign_value_to_net(ax_values, 71, n72);
	int n257;
	XNOR2xp5_ASAP7_6t_R( n74, n20, &n257);
	n257 = assign_value_to_net(ax_values, 256, n257);
	int n501;
	OAI21xp5b_ASAP7_6t_R( n512, n509, n511, &n501);
	n501 = assign_value_to_net(ax_values, 500, n501);
	int n518;
	NAND2xp5R_ASAP7_6t_R( n516, n515, &n518);
	n518 = assign_value_to_net(ax_values, 517, n518);
	int n303;
	XNOR2x2_ASAP7_6t_R( n146, n118, &n303);
	n303 = assign_value_to_net(ax_values, 302, n303);
	int n181;
	AOI21xp5_ASAP7_6t_R( n296, n295, n108, &n181);
	n181 = assign_value_to_net(ax_values, 180, n181);
	int n109;
	XNOR2xp5_ASAP7_6t_R( n145, n300, &n109);
	n109 = assign_value_to_net(ax_values, 108, n109);
	int n115;
	NAND2xp5R_ASAP7_6t_R( n392, n393, &n115);
	n115 = assign_value_to_net(ax_values, 114, n115);
	int n385;
	XOR2x2_ASAP7_6t_R( n392, n393, &n385);
	n385 = assign_value_to_net(ax_values, 384, n385);
	int n429;
	AO22x1_ASAP7_6t_R( n421, n420, n419, n418, &n429);
	n429 = assign_value_to_net(ax_values, 428, n429);
	int n398;
	XOR2xp5_ASAP7_6t_R( n420, n421, &n398);
	n398 = assign_value_to_net(ax_values, 397, n398);
	int n212;
	NAND2xp5_ASAP7_6t_R( n367, n368, &n212);
	n212 = assign_value_to_net(ax_values, 211, n212);
	int n369;
	XNOR2xp5f_ASAP7_6t_R( n367, n65, &n369);
	n369 = assign_value_to_net(ax_values, 368, n369);
	int n513;
	NAND2xp5R_ASAP7_6t_R( n511, n510, &n513);
	n513 = assign_value_to_net(ax_values, 512, n513);
	int n498;
	NAND2xp5_ASAP7_6t_R( n199, n198, &n498);
	n498 = assign_value_to_net(ax_values, 497, n498);
	int n493;
	NAND2xp5R_ASAP7_6t_R( n200, n340, &n493);
	n493 = assign_value_to_net(ax_values, 492, n493);
	int n491;
	NOR2xp5_ASAP7_6t_R( n340, n200, &n491);
	n491 = assign_value_to_net(ax_values, 490, n491);
	int n196;
	INVx1_ASAP7_6t_R( n499, &n196);
	n196 = assign_value_to_net(ax_values, 195, n196);
	int n73;
	XNOR2xp5_ASAP7_6t_R( n111, n366, &n73);
	n73 = assign_value_to_net(ax_values, 72, n73);
	int n122;
	NAND2xp5_ASAP7_6t_R( n366, n111, &n122);
	n122 = assign_value_to_net(ax_values, 121, n122);
	int n376;
	XNOR2xp5f_ASAP7_6t_R( n372, n85, &n376);
	n376 = assign_value_to_net(ax_values, 375, n376);
	int n211;
	AOI22xp25_ASAP7_6t_R( n43, n365, n371, n372, &n211);
	n211 = assign_value_to_net(ax_values, 210, n211);
	int n252;
	AO21x2_ASAP7_6t_R( n299, n298, n180, &n252);
	n252 = assign_value_to_net(ax_values, 251, n252);
	int n256;
	XNOR2xp5_ASAP7_6t_R( n154, n217, &n256);
	n256 = assign_value_to_net(ax_values, 255, n256);
	int n215;
	NOR2xp5_ASAP7_6t_R( n154, n216, &n215);
	n215 = assign_value_to_net(ax_values, 214, n215);
	int n55;
	XNOR2xp5f_ASAP7_6t_R( n154, n217, &n55);
	n55 = assign_value_to_net(ax_values, 54, n55);
	int n269;
	NAND2xp5R_ASAP7_6t_R( n72, n170, &n269);
	n269 = assign_value_to_net(ax_values, 268, n269);
	XOR2xp5_ASAP7_6t_R( n518, n517, &out[3]);
	out[3] = assign_value_to_net(ax_values, 530, out[3]);
	int n255;
	INVxp5_ASAP7_6t_R( n303, &n255);
	n255 = assign_value_to_net(ax_values, 254, n255);
	int n301;
	XNOR2xp5f_ASAP7_6t_R( n181, n195, &n301);
	n301 = assign_value_to_net(ax_values, 300, n301);
	int n120;
	NOR2xp5_ASAP7_6t_R( n194, n181, &n120);
	n120 = assign_value_to_net(ax_values, 119, n120);
	int n302;
	INVx1_ASAP7_6t_R( n109, &n302);
	n302 = assign_value_to_net(ax_values, 301, n302);
	int n397;
	OAI21xp5b_ASAP7_6t_R( n117, n116, n115, &n397);
	n397 = assign_value_to_net(ax_values, 396, n397);
	int n70;
	INVx1_ASAP7_6t_R( n385, &n70);
	n70 = assign_value_to_net(ax_values, 69, n70);
	int n457;
	NAND2xp5_ASAP7_6t_R( n429, n428, &n457);
	n457 = assign_value_to_net(ax_values, 456, n457);
	int n455;
	NOR2xp5_ASAP7_6t_R( n428, n429, &n455);
	n455 = assign_value_to_net(ax_values, 454, n455);
	int n147;
	INVx1_ASAP7_6t_R( n212, &n147);
	n147 = assign_value_to_net(ax_values, 146, n147);
	int n358;
	XNOR2xp5f_ASAP7_6t_R( n369, n356, &n358);
	n358 = assign_value_to_net(ax_values, 357, n358);
	XOR2xp5_ASAP7_6t_R( n513, n512, &out[4]);
	out[4] = assign_value_to_net(ax_values, 531, out[4]);
	int n500;
	NAND2xp5_ASAP7_6t_R( n499, n498, &n500);
	n500 = assign_value_to_net(ax_values, 499, n500);
	int n492;
	INVxp5_ASAP7_6t_R( n491, &n492);
	n492 = assign_value_to_net(ax_values, 491, n492);
	int n494;
	AOI21xp5_ASAP7_6t_R( n498, n501, n196, &n494);
	n494 = assign_value_to_net(ax_values, 493, n494);
	int n378;
	NAND2xp5R_ASAP7_6t_R( n122, n121, &n378);
	n378 = assign_value_to_net(ax_values, 377, n378);
	int n373;
	INVx1_ASAP7_6t_R( n376, &n373);
	n373 = assign_value_to_net(ax_values, 372, n373);
	int n210;
	NOR2xp5_ASAP7_6t_R( n211, n73, &n210);
	n210 = assign_value_to_net(ax_values, 209, n210);
	int n469;
	NAND2xp5R_ASAP7_6t_R( n73, n211, &n469);
	n469 = assign_value_to_net(ax_values, 468, n469);
	int n304;
	XNOR2xp5f_ASAP7_6t_R( n252, n119, &n304);
	n304 = assign_value_to_net(ax_values, 303, n304);
	int n253;
	HB1x1_ASAP7_6t_R( n252, &n253);
	n253 = assign_value_to_net(ax_values, 252, n253);
	int n52;
	XNOR2xp5_ASAP7_6t_R( n252, n119, &n52);
	n52 = assign_value_to_net(ax_values, 51, n52);
	int n384;
	XOR2x2_ASAP7_6t_R( n256, n257, &n384);
	n384 = assign_value_to_net(ax_values, 383, n384);
	int n106;
	AO21x1_ASAP7_6t_R( n55, n257, n215, &n106);
	n106 = assign_value_to_net(ax_values, 105, n106);
	int n169;
	INVx1_ASAP7_6t_R( n269, &n169);
	n169 = assign_value_to_net(ax_values, 168, n169);
	int n205;
	NAND2xp5R_ASAP7_6t_R( n206, n269, &n205);
	n205 = assign_value_to_net(ax_values, 204, n205);
	int n176;
	XNOR2xp5f_ASAP7_6t_R( n301, n109, &n176);
	n176 = assign_value_to_net(ax_values, 175, n176);
	int n379;
	AO21x1_ASAP7_6t_R( n302, n301, n120, &n379);
	n379 = assign_value_to_net(ax_values, 378, n379);
	int n422;
	NOR2xp5_ASAP7_6t_R( n398, n397, &n422);
	n422 = assign_value_to_net(ax_values, 421, n422);
	int n450;
	NAND2xp5_ASAP7_6t_R( n397, n398, &n450);
	n450 = assign_value_to_net(ax_values, 449, n450);
	int n456;
	INVxp5_ASAP7_6t_R( n455, &n456);
	n456 = assign_value_to_net(ax_values, 455, n456);
	int n375;
	AO21x1_ASAP7_6t_R( n370, n369, n147, &n375);
	n375 = assign_value_to_net(ax_values, 374, n375);
	int n487;
	OR2x2_ASAP7_6t_R( n357, n358, &n487);
	n487 = assign_value_to_net(ax_values, 486, n487);
	int n488;
	NAND2xp5R_ASAP7_6t_R( n358, n357, &n488);
	n488 = assign_value_to_net(ax_values, 487, n488);
	XNOR2xp5_ASAP7_6t_R( n501, n500, &out[5]);
	out[5] = assign_value_to_net(ax_values, 532, out[5]);
	int n497;
	NAND2xp5R_ASAP7_6t_R( n493, n492, &n497);
	n497 = assign_value_to_net(ax_values, 496, n497);
	int n51;
	OAI21xp25_ASAP7_6t_R( n491, n494, n493, &n51);
	n51 = assign_value_to_net(ax_values, 50, n51);
	int n495;
	INVxp5_ASAP7_6t_R( n494, &n495);
	n495 = assign_value_to_net(ax_values, 494, n495);
	int n490;
	OAI21xp5_ASAP7_6t_R( n491, n494, n493, &n490);
	n490 = assign_value_to_net(ax_values, 489, n490);
	int n470;
	INVxp5_ASAP7_6t_R( n210, &n470);
	n470 = assign_value_to_net(ax_values, 469, n470);
	int n49;
	INVxp5_ASAP7_6t_R( n469, &n49);
	n49 = assign_value_to_net(ax_values, 48, n49);
	int n380;
	XNOR2xp5f_ASAP7_6t_R( n304, n303, &n380);
	n380 = assign_value_to_net(ax_values, 379, n380);
	int n383;
	AO22x2_ASAP7_6t_R( n255, n52, n254, n253, &n383);
	n383 = assign_value_to_net(ax_values, 382, n383);
	int n268;
	INVx1_ASAP7_6t_R( n106, &n268);
	n268 = assign_value_to_net(ax_values, 267, n268);
	int n76;
	XNOR2xp5_ASAP7_6t_R( n206, n169, &n76);
	n76 = assign_value_to_net(ax_values, 75, n76);
	int n61;
	NAND2xp5R_ASAP7_6t_R( n205, n204, &n61);
	n61 = assign_value_to_net(ax_values, 60, n61);
	int n463;
	NAND2xp5R_ASAP7_6t_R( n176, n378, &n463);
	n463 = assign_value_to_net(ax_values, 462, n463);
	int n464;
	NOR2x1_ASAP7_6t_R( n378, n176, &n464);
	n464 = assign_value_to_net(ax_values, 463, n464);
	int n444;
	NOR2xp5_ASAP7_6t_R( n455, n422, &n444);
	n444 = assign_value_to_net(ax_values, 443, n444);
	int n452;
	INVxp5_ASAP7_6t_R( n422, &n452);
	n452 = assign_value_to_net(ax_values, 451, n452);
	int n443;
	OAI21xp5_ASAP7_6t_R( n455, n450, n457, &n443);
	n443 = assign_value_to_net(ax_values, 442, n443);
	int n451;
	INVxp5_ASAP7_6t_R( n450, &n451);
	n451 = assign_value_to_net(ax_values, 450, n451);
	int n458;
	NAND2xp5R_ASAP7_6t_R( n457, n456, &n458);
	n458 = assign_value_to_net(ax_values, 457, n458);
	int n374;
	INVxp5_ASAP7_6t_R( n375, &n374);
	n374 = assign_value_to_net(ax_values, 373, n374);
	int n468;
	AND2x4_ASAP7_6t_R( n375, n376, &n468);
	n468 = assign_value_to_net(ax_values, 467, n468);
	int n489;
	NAND2xp5_ASAP7_6t_R( n488, n487, &n489);
	n489 = assign_value_to_net(ax_values, 488, n489);
	int n359;
	INVx1_ASAP7_6t_R( n488, &n359);
	n359 = assign_value_to_net(ax_values, 358, n359);
	int n496;
	INVx1_ASAP7_6t_R( n495, &n496);
	n496 = assign_value_to_net(ax_values, 495, n496);
	int n50;
	INVxp5_ASAP7_6t_R( n49, &n50);
	n50 = assign_value_to_net(ax_values, 49, n50);
	int n11;
	NOR2xp5_ASAP7_6t_R( n379, n380, &n11);
	n11 = assign_value_to_net(ax_values, 10, n11);
	int n506;
	NAND2xp5R_ASAP7_6t_R( n379, n380, &n506);
	n506 = assign_value_to_net(ax_values, 505, n506);
	int n505;
	NOR2xp5_ASAP7_6t_R( n379, n380, &n505);
	n505 = assign_value_to_net(ax_values, 504, n505);
	int n410;
	NOR2x2R_ASAP7_6t_R( n384, n383, &n410);
	n410 = assign_value_to_net(ax_values, 409, n410);
	int n460;
	NAND2x2_ASAP7_6t_R( n384, n383, &n460);
	n460 = assign_value_to_net(ax_values, 459, n460);
	int n412;
	NAND2xp5R_ASAP7_6t_R( n76, n106, &n412);
	n412 = assign_value_to_net(ax_values, 411, n412);
	int n267;
	INVx1_ASAP7_6t_R( n76, &n267);
	n267 = assign_value_to_net(ax_values, 266, n267);
	int n69;
	INVx1_ASAP7_6t_R( n61, &n69);
	n69 = assign_value_to_net(ax_values, 68, n69);
	int n407;
	NAND2xp5R_ASAP7_6t_R( n385, n61, &n407);
	n407 = assign_value_to_net(ax_values, 406, n407);
	int n502;
	HB1x1_ASAP7_6t_R( n463, &n502);
	n502 = assign_value_to_net(ax_values, 501, n502);
	int n504;
	HB1x1_ASAP7_6t_R( n464, &n504);
	n504 = assign_value_to_net(ax_values, 503, n504);
	int n476;
	NAND2xp5_ASAP7_6t_R( n444, n447, &n476);
	n476 = assign_value_to_net(ax_values, 475, n476);
	int n399;
	NAND2xp5_ASAP7_6t_R( n450, n452, &n399);
	n399 = assign_value_to_net(ax_values, 398, n399);
	int n479;
	AOI21xp5_ASAP7_6t_R( n443, n447, n432, &n479);
	n479 = assign_value_to_net(ax_values, 478, n479);
	int n186;
	NAND2xp5R_ASAP7_6t_R( n373, n374, &n186);
	n186 = assign_value_to_net(ax_values, 185, n186);
	int n473;
	INVxp5_ASAP7_6t_R( n468, &n473);
	n473 = assign_value_to_net(ax_values, 472, n473);
	int n377;
	AOI21xp5_ASAP7_6t_R( n469, n468, n210, &n377);
	n377 = assign_value_to_net(ax_values, 376, n377);
	XNOR2xp5_ASAP7_6t_R( n51, n489, &out[7]);
	out[7] = assign_value_to_net(ax_values, 534, out[7]);
	int n8;
	AOI21xp5_ASAP7_6t_R( n487, n490, n359, &n8);
	n8 = assign_value_to_net(ax_values, 7, n8);
	int n467;
	AOI21xp5_ASAP7_6t_R( n487, n490, n359, &n467);
	n467 = assign_value_to_net(ax_values, 466, n467);
	XOR2xp5_ASAP7_6t_R( n497, n496, &out[6]);
	out[6] = assign_value_to_net(ax_values, 533, out[6]);
	int n471;
	NAND2xp5R_ASAP7_6t_R( n470, n50, &n471);
	n471 = assign_value_to_net(ax_values, 470, n471);
	int n80;
	INVxp5_ASAP7_6t_R( n11, &n80);
	n80 = assign_value_to_net(ax_values, 79, n80);
	int n381;
	OAI21xp5_ASAP7_6t_R( n463, n11, n506, &n381);
	n381 = assign_value_to_net(ax_values, 380, n381);
	int n382;
	NOR2xp5_ASAP7_6t_R( n505, n464, &n382);
	n382 = assign_value_to_net(ax_values, 381, n382);
	int n459;
	INVxp5_ASAP7_6t_R( n410, &n459);
	n459 = assign_value_to_net(ax_values, 458, n459);
	int n403;
	INVxp5_ASAP7_6t_R( n460, &n403);
	n403 = assign_value_to_net(ax_values, 402, n403);
	int n402;
	INVx1_ASAP7_6t_R( n412, &n402);
	n402 = assign_value_to_net(ax_values, 401, n402);
	int n401;
	NAND2x1_ASAP7_6t_R( n268, n267, &n401);
	n401 = assign_value_to_net(ax_values, 400, n401);
	int n406;
	NAND2x2_ASAP7_6t_R( n70, n69, &n406);
	n406 = assign_value_to_net(ax_values, 405, n406);
	int n386;
	INVx1_ASAP7_6t_R( n407, &n386);
	n386 = assign_value_to_net(ax_values, 385, n386);
	int n465;
	INVxp5_ASAP7_6t_R( n504, &n465);
	n465 = assign_value_to_net(ax_values, 464, n465);
	int n482;
	NOR2xp5_ASAP7_6t_R( n480, n476, &n482);
	n482 = assign_value_to_net(ax_values, 481, n482);
	int n434;
	INVx1_ASAP7_6t_R( n476, &n434);
	n434 = assign_value_to_net(ax_values, 433, n434);
	int n481;
	OAI21xp5_ASAP7_6t_R( n480, n479, n478, &n481);
	n481 = assign_value_to_net(ax_values, 480, n481);
	int n433;
	INVxp5_ASAP7_6t_R( n479, &n433);
	n433 = assign_value_to_net(ax_values, 432, n433);
	int n7;
	HB1x1_ASAP7_6t_R( n186, &n7);
	n7 = assign_value_to_net(ax_values, 6, n7);
	int n151;
	NAND2xp5R_ASAP7_6t_R( n469, n186, &n151);
	n151 = assign_value_to_net(ax_values, 150, n151);
	int n474;
	INVx1_ASAP7_6t_R( n8, &n474);
	n474 = assign_value_to_net(ax_values, 473, n474);
	int n507;
	NAND2xp5_ASAP7_6t_R( n80, n506, &n507);
	n507 = assign_value_to_net(ax_values, 506, n507);
	int n461;
	NAND2xp5R_ASAP7_6t_R( n460, n459, &n461);
	n461 = assign_value_to_net(ax_values, 460, n461);
	int n54;
	INVxp5_ASAP7_6t_R( n402, &n54);
	n54 = assign_value_to_net(ax_values, 53, n54);
	int n411;
	HB1x1_ASAP7_6t_R( n401, &n411);
	n411 = assign_value_to_net(ax_values, 410, n411);
	int n408;
	NAND2xp5_ASAP7_6t_R( n407, n406, &n408);
	n408 = assign_value_to_net(ax_values, 407, n408);
	int n40;
	NAND2xp5R_ASAP7_6t_R( n401, n406, &n40);
	n40 = assign_value_to_net(ax_values, 39, n40);
	int n388;
	NAND2xp5R_ASAP7_6t_R( n401, n406, &n388);
	n388 = assign_value_to_net(ax_values, 387, n388);
	int n387;
	AOI21x1_ASAP7_6t_R( n402, n406, n386, &n387);
	n387 = assign_value_to_net(ax_values, 386, n387);
	int n466;
	NAND2xp5_ASAP7_6t_R( n502, n465, &n466);
	n466 = assign_value_to_net(ax_values, 465, n466);
	int n475;
	NAND2xp5R_ASAP7_6t_R( n473, n7, &n475);
	n475 = assign_value_to_net(ax_values, 474, n475);
	int n44;
	OAI21xp25_ASAP7_6t_R( n151, n8, n377, &n44);
	n44 = assign_value_to_net(ax_values, 43, n44);
	int n462;
	OAI21xp5b_ASAP7_6t_R( n151, n467, n377, &n462);
	n462 = assign_value_to_net(ax_values, 461, n462);
	int n472;
	AOI21xp5_ASAP7_6t_R( n474, n7, n468, &n472);
	n472 = assign_value_to_net(ax_values, 471, n472);
	int n413;
	NAND2xp5_ASAP7_6t_R( n54, n411, &n413);
	n413 = assign_value_to_net(ax_values, 412, n413);
	int n404;
	AOI21xp25_ASAP7_6t_R( n403, n411, n402, &n404);
	n404 = assign_value_to_net(ax_values, 403, n404);
	int n405;
	NAND2xp5_ASAP7_6t_R( n459, n411, &n405);
	n405 = assign_value_to_net(ax_values, 404, n405);
	int n477;
	NOR2x1_ASAP7_6t_R( n410, n40, &n477);
	n477 = assign_value_to_net(ax_values, 476, n477);
	int n483;
	OAI21xp5b_ASAP7_6t_R( n460, n388, n387, &n483);
	n483 = assign_value_to_net(ax_values, 482, n483);
	int n36;
	OAI21xp5_ASAP7_6t_R( n460, n388, n387, &n36);
	n36 = assign_value_to_net(ax_values, 35, n36);
	XNOR2xp5_ASAP7_6t_R( n475, n474, &out[8]);
	out[8] = assign_value_to_net(ax_values, 535, out[8]);
	int n503;
	INVx1_ASAP7_6t_R( n44, &n503);
	n503 = assign_value_to_net(ax_values, 502, n503);
	int n96;
	AOI21x1_ASAP7_6t_R( n382, n462, n381, &n96);
	n96 = assign_value_to_net(ax_values, 95, n96);
	XOR2xp5r_ASAP7_6t_R( n472, n471, &out[9]);
	out[9] = assign_value_to_net(ax_values, 536, out[9]);
	int n454;
	NAND2xp5_ASAP7_6t_R( n477, n452, &n454);
	n454 = assign_value_to_net(ax_values, 453, n454);
	int n485;
	NAND2xp5_ASAP7_6t_R( n477, n482, &n485);
	n485 = assign_value_to_net(ax_values, 484, n485);
	int n446;
	NAND2xp5_ASAP7_6t_R( n477, n444, &n446);
	n446 = assign_value_to_net(ax_values, 445, n446);
	int n436;
	NAND2xp5_ASAP7_6t_R( n477, n434, &n436);
	n436 = assign_value_to_net(ax_values, 435, n436);
	int n390;
	INVxp5_ASAP7_6t_R( n477, &n390);
	n390 = assign_value_to_net(ax_values, 389, n390);
	int n389;
	INVxp5_ASAP7_6t_R( n483, &n389);
	n389 = assign_value_to_net(ax_values, 388, n389);
	int n435;
	AOI21xp5_ASAP7_6t_R( n483, n434, n433, &n435);
	n435 = assign_value_to_net(ax_values, 434, n435);
	int n484;
	AOI21xp25_ASAP7_6t_R( n483, n482, n481, &n484);
	n484 = assign_value_to_net(ax_values, 483, n484);
	int n453;
	AOI21xp5_ASAP7_6t_R( n36, n452, n451, &n453);
	n453 = assign_value_to_net(ax_values, 452, n453);
	int n445;
	AOI21xp5_ASAP7_6t_R( n36, n444, n443, &n445);
	n445 = assign_value_to_net(ax_values, 444, n445);
	int n508;
	OAI21xp5_ASAP7_6t_R( n504, n503, n502, &n508);
	n508 = assign_value_to_net(ax_values, 507, n508);
	XOR2xp5_ASAP7_6t_R( n503, n466, &out[10]);
	out[10] = assign_value_to_net(ax_values, 537, out[10]);
	int n414;
	OAI21xp5b_ASAP7_6t_R( n410, n96, n460, &n414);
	n414 = assign_value_to_net(ax_values, 413, n414);
	int n95;
	INVxp5_ASAP7_6t_R( n96, &n95);
	n95 = assign_value_to_net(ax_values, 94, n95);
	int n409;
	OAI21xp5b_ASAP7_6t_R( n405, n96, n404, &n409);
	n409 = assign_value_to_net(ax_values, 408, n409);
	int n400;
	OAI21xp5b_ASAP7_6t_R( n390, n96, n389, &n400);
	n400 = assign_value_to_net(ax_values, 399, n400);
	int n148;
	OAI21xp5_ASAP7_6t_R( n96, n436, n435, &n148);
	n148 = assign_value_to_net(ax_values, 147, n148);
	int n486;
	OAI21xp25_ASAP7_6t_R( n96, n485, n484, &n486);
	n486 = assign_value_to_net(ax_values, 485, n486);
	int n150;
	OAI21xp5_ASAP7_6t_R( n96, n454, n453, &n150);
	n150 = assign_value_to_net(ax_values, 149, n150);
	int n149;
	OAI21xp5_ASAP7_6t_R( n96, n446, n445, &n149);
	n149 = assign_value_to_net(ax_values, 148, n149);
	XNOR2xp5_ASAP7_6t_R( n508, n507, &out[11]);
	out[11] = assign_value_to_net(ax_values, 538, out[11]);
	XNOR2xp5f_ASAP7_6t_R( n414, n413, &out[13]);
	out[13] = assign_value_to_net(ax_values, 540, out[13]);
	XNOR2xp5f_ASAP7_6t_R( n95, n461, &out[12]);
	out[12] = assign_value_to_net(ax_values, 539, out[12]);
	XNOR2xp5f_ASAP7_6t_R( n409, n408, &out[14]);
	out[14] = assign_value_to_net(ax_values, 541, out[14]);
	XNOR2xp5f_ASAP7_6t_R( n400, n399, &out[15]);
	out[15] = assign_value_to_net(ax_values, 542, out[15]);
	XNOR2xp5f_ASAP7_6t_R( n148, n442, &out[18]);
	out[18] = assign_value_to_net(ax_values, 545, out[18]);
	INVxp5_ASAP7_6t_R( n486, &out[19]);
	out[19] = assign_value_to_net(ax_values, 546, out[19]);
	XNOR2xp5f_ASAP7_6t_R( n150, n458, &out[16]);
	out[16] = assign_value_to_net(ax_values, 543, out[16]);
	XNOR2xp5f_ASAP7_6t_R( n149, n449, &out[17]);
	out[17] = assign_value_to_net(ax_values, 544, out[17]);

}

void decimaltobinary(int n, int* binary, int signed_inputs){
    int d;
    int c;

    int temp;
    if (n > 0) {temp = n;} else {temp = -n;}

    for (c = 0 ; c < size ; c++){
        d = temp >> c;
        if (d & 1){
            binary[c] = 1;
        }
        else {
            binary[c] = 0;
        }
    }

    if (n < 0) {
        binary[size-1] = 1;
        int first_one = 0;
        for (c = 0; c < size-1; c++) {

            if ((binary[c] == 1) && (first_one == 0)) {
                first_one = 1;
                continue;
            }
            if (first_one == 1) {
                binary[c] = 1 - binary[c];
            }
        }
    }
}

void floattobinary(float num, int *binary, int signed_inputs) {
    // Convert the float to its bit representation
    union {
        float input;
        unsigned int bits;
    } data;
    data.input = num;
    unsigned int value = data.bits;

    // Verify the original conversion to FP32
	// for (int c = 31; c >= 0; c--) printf("%d", (data.bits >> c) & 1);
	// printf("\n");

    // Convert bits to binary array
    for (int c = 0; c < TOTAL_BITS; c++) {
        binary[c] = (value >> c) & 1;
    }
}

int binarytodecimal(int binary[], int signed_outputs){
    int d;
    int result = 0; 
    int one = 1;
    int sign = 1;
    int c; 
    int temp[outsize];
    for (c = 0; c < outsize; c++) temp[c] = binary[c];
    
    if ((signed_outputs == 1) && (binary[outsize - 1] == 1)) {
        sign = -1;
        temp[outsize - 1] = 0;
        int first_one = 0;
        for (c = 0; c < outsize-1; c++) {
            if ((binary[c] == 1) && (first_one == 0)) {
                first_one = 1;
                continue;
            }
            if (first_one == 1) {
                temp[c] = 1 - binary[c];
            }
        }
    }
    
    for (c = 0 ; c < outsize ; c++){
       d = one << c; 
       result = result + d*temp[c]; 
    }
    return sign * result;
}

double binarytofloat(int *binary, int signed_outputs) {
	double result = 0.0;

    // Example: result = -32768000.0
	// mantissa = 1 + 0.953125 | exponent = 151 - 127 = 24 | sign = 1
	// 0  1  0  1  1  1  1 | 1  1  1  0  1  0  0  1 | 1
	// 0  1  2  3  4  5  6 | 7  8  9  10 11 12 13 14| 15

	int sign = binary[TOTAL_BITS - 1];
	int exponent = 0;
	for (int i = 0; i < EXPONENT_BITS; i++) {
		exponent |= binary[MANTISSA_BITS + i] << i;
	}
	exponent -= EXPONENT_BIAS;
	// Calculate the mantissa as a fractional value
	double mantissa = 0.0;
	for (int i = 0; i < MANTISSA_BITS; i++) {
		mantissa += binary[MANTISSA_BITS - 1 - i] * (1.0 / (1 << (i + 1)));
	}
	mantissa = 1.0 + mantissa;
	// printf("mantissa = %lf | exponent = %d | sign = %d\n", mantissa, exponent, sign);

	if (exponent == (1 << EXPONENT_BITS) - 1) {
		result = 0.0;
	}
	else if (exponent == 0) {
		if (mantissa == 0.0) {
			result = 0.0;
		} else {
			result = mantissa;
        }
	} 
    else {
        if (exponent > 0) {
			result = mantissa * (1 << exponent);
		} else {
			result = mantissa / (1 << -exponent);
		}
	}
    if (sign) {
        result = -result;
    }
	return result;
}

void printbinary(int mysize, int binary[]){
    int c; 
    for ( c = mysize-1 ; c >=0 ; c--){
       printf("%d",binary[c]);
    }
    printf("\n"); 
}

int top_mult_uint10b_7nm(int *ax_values, int in_a, int in_b, int signed_inputs, int signed_outputs){
    //FILE *fb2d = fopen("/home/balaskas/axcarbon/circuits/mult_uint10b_7nm/b2d.txt", "a");
    //if (fb2d == NULL)
    //   exit(1);
    //int c;

	int in_a_bin[size];
	decimaltobinary(in_a, in_a_bin, signed_inputs);
	int in_b_bin[size];
	decimaltobinary(in_b, in_b_bin, signed_inputs);
	int out_bin[outsize];

	//fprintf(fb2d, " %d ", in_a);
	//for (c=0; c<size; c++) fprintf(fb2d, "%d", in_a_bin[size-1-c]);
	//fprintf(fb2d, " %d ", in_b);
	//for (c=0; c<size; c++) fprintf(fb2d, "%d", in_b_bin[size-1-c]);

    mult_uint10b_7nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
    int r = binarytodecimal(out_bin, signed_outputs);

    //fprintf(fb2d, " %d ", r);
    //for (c=0; c<outsize; c++) fprintf(fb2d, "%d", out_bin[outsize-1-c]);
    //fprintf(fb2d, "\n");
    //fclose(fb2d);

    return r;
}

void filetest(int ax_values[], double *error) {

    char line[MAX_LENGTH];
    int in_a, in_b;
    int y_true, res;
    int err=0;
    int min_error=pow(2, 18), max_error=0;
    int nabs;
    unsigned int i=0;

    double med=0;
    double mre=0;
    double dev=0, squared_sum=0;     // To accumulate squared differences for variance calculation

    double med_max=0;
    med_max = pow(2, 20) - 1;

    int signed_inputs=1;
    int signed_outputs=1;

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint10b_7nm/inputs_decimal.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);

    //FILE *fax = fopen("/home/balaskas/axcarbon/circuits/mult_uint10b_7nm/ax_values.txt", "w");
    //if (fax == NULL)
    //    exit(1);
    //int j;
    //for (j=0; j<CHROMOSOME_LENGTH; j++) fprintf(fax, "%d %d\n", j, ax_values[j]);
    //fclose(fax);
    
    //FILE *fo = fopen("/home/balaskas/axcarbon/circuits/mult_uint10b_7nm/outputs.txt", "w");
    //if (fo == NULL)
    //    exit(1);

    while(fscanf(f, "%d_%d_%d", &in_a, &in_b, &y_true) == 3) {
        i++;
        
        res = top_mult_uint10b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
        //fprintf(fo, "%d_%d_%d_%d\n", in_a, in_b, y_true, res);
        if(res != y_true) {
            if (res>y_true) {
                nabs = res-y_true;
            } 
            else {
                nabs = y_true-res;
            }
            if (nabs < min_error) {
                min_error = nabs;
            }
            if (nabs > max_error) {
                max_error = nabs;
                // For debugging the maximum produced error
				// printf("%d_%d_%d_%d_%d\n", i, in_a, in_b, y_true, res);
            }

            err++;
            if(y_true != 0) {
                if (y_true > 0) {
                    mre += (float)nabs/(float)y_true;
                } else {
                    mre += (float)nabs/(float)(-y_true);
                }
            }
            med += nabs;
            dev = nabs - (med / i);
            squared_sum += dev * dev; // Sum up the squared deviations for variance
        }
        else {
			min_error=0;
		}
    }

    // total inputs
    error[0] = (double) i;
    // error rate
    error[1] = (double)err/(double)i;
    // mean relative error
    error[2] = mre/(double)i;
    // mean error distance
    error[3] = med/(double)i;
    // normalized mean error distance
    if(med_max!=0)
        error[4] = med/(double)i/(double)med_max;
    else
        error[4] = 0.0;
    // minimum error
    error[5] = min_error;
    // maximum error
    error[6] = max_error;
    // error range
    error[7] = max_error - min_error;
    // error variance
    error[8] = squared_sum/(double)i;

    fclose(f);
    //fclose(fo);
}


// Helper function to convert a binary string into an array of integers (0 or 1).
void binary_string_to_array(char *bin_str, int bin_array[], int *len) {
    *len = strlen(bin_str);
    for (int i = 0; i < *len; i++) {
        bin_array[i] = bin_str[*len - 1 - i] - '0'; // Convert '0' or '1' char to integer 0 or 1.
    }
}

void binary_filetest(int ax_values[], int (*out_storage)[outsize], int (*y_true_storage)[outsize]) {
	// Storage for all result arrays from multiple iterations
	// int out_storage[MAX_LINES][outsize];
	// int y_true_storage[MAX_LINES][outsize];

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint10b_7nm/inputs.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);
	// char fileo[] = "/home/balaskas/axcarbon/circuits/mult_uint10b_7nm/outputs.txt";
    // FILE *fo = fopen(fileo, "w");
    // if (fo == NULL)
    //    exit(1);

    // Arrays to store binary numbers.
    int in_a_bin[10], in_b_bin[10], out_bin[outsize];
    int y_true_bin[outsize];
	// Length of each binary array.
    int len1=10, len2=10, len0=outsize;

    // Read each line from the file.
    char line[MAX_LENGTH];
	int line_count = 0;
    while (fgets(line, sizeof(line), f)  && line_count < MAX_LINES) {

        // Remove newline character from the line, if any.
        line[strcspn(line, "\n")] = '\0';

		// Split the line
        char *in_a_str = strtok(line, "_");
		char *in_b_str = strtok(NULL, "_");
		char *y_true_str = strtok(NULL, "_");

		// Convert each binary string to an array of integers.
        if (in_a_str != NULL && in_b_str != NULL && y_true_str != NULL) {
            binary_string_to_array(in_a_str, in_a_bin, &len1);
			binary_string_to_array(in_b_str, in_b_bin, &len2);
			binary_string_to_array(y_true_str, y_true_bin, &len0);

			
			// for (int c=0; c<len1; c++)
			//     fprintf(fo, "%d", in_a_bin[len1-c-1]);
			// fprintf(fo, "_");
			// for (int c=0; c<len2; c++)
			//     fprintf(fo, "%d", in_b_bin[len2-c-1]);
			// fprintf(fo, "_");
            mult_uint10b_7nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
        
			// Store the result_array in the larger storage array.
            for (int i = 0; i < outsize; i++) {
                out_storage[line_count][i] = out_bin[outsize - i - 1];
			    y_true_storage[line_count][i] = y_true_bin[outsize - i - 1];
            }

			// for(int c=0; c<outsize; c++)
			//	fprintf(fo, "%d", y_true_bin[outsize-c-1]);
			// fprintf(fo, "_");
			// for (int c=0; c<outsize; c++)
			//  fprintf(fo, "%d", out_bin[outsize-c-1]);
			// fprintf(fo, "\n");

			line_count++;
		}
	}

    fclose(f);
    // fclose(fo);
}

// void main(int argc, char *argv[]) {
//     int binary[32] = {0,0,0,0,1,0,1,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1};
//     int signed_outputs = 0;
//     double res = binarytofloat(binary, signed_outputs);
//     printf("Result: %lf\n", res);
// }

void main(int argc, char *argv[]) {
    printf("Arguments %d\n", argc);

    int pruned_num = argc - 1;
    int ax_values[pruned_num];
    double error[9];
    int i;
    for (i=0; i<9; i++) error[i]=0.0;

    for (i=1; i<argc; i++) {
        ax_values[i-1] = atoi(argv[i]);
    }
    filetest(ax_values, error);
    //for (i=0; i<8; i++) printf("%f\n", error[i]);

    printf("Total Inputs: %.3e\n", error[0]);
    printf("Error Rate: %.3e\n", error[1]);
    printf("MRE: %.3e\n", error[2]);
    printf("MED: %.3e\n", error[3]);
    printf("NMED: %.3e\n", error[4]);
    printf("Min Error: %.3e\n", error[5]);
    printf("Max Error: %.3e\n", error[6]);
    printf("Error Range: %.3e\n", error[7]);
    printf("Variance: %.3e\n", error[8]);

}

int MULTIPLY(int in_a, int in_b) {
    int res;
    int signed_inputs=1;
    int signed_outputs=1;
    int ax_values[CHROMOSOME_LENGTH]; for(int i=0; i<CHROMOSOME_LENGTH; i++) ax_values[i] = -1;
    res = top_mult_uint10b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
    return res;
}
