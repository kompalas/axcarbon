#include "approx0.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include "library.h"
#define CHROMOSOME_LENGTH 622
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


	int n9;
	XNOR2xp5f_ASAP7_6t_R( in_a[8], in_a[7], &n9);
	n9 = assign_value_to_net(ax_values, 8, n9);
	int n249;
	INVx4_ASAP7_6t_R( in_a[6], &n249);
	n249 = assign_value_to_net(ax_values, 248, n249);
	int n438;
	INVx11_ASAP7_6t_R( in_a[0], &n438);
	n438 = assign_value_to_net(ax_values, 437, n438);
	int n273;
	INVx1_ASAP7_6t_R( in_b[1], &n273);
	n273 = assign_value_to_net(ax_values, 272, n273);
	int n126;
	INVx4_ASAP7_6t_R( in_a[9], &n126);
	n126 = assign_value_to_net(ax_values, 125, n126);
	int n387;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[6], &n387);
	n387 = assign_value_to_net(ax_values, 386, n387);
	int n243;
	NOR2x2R_ASAP7_6t_R( in_a[3], in_a[4], &n243);
	n243 = assign_value_to_net(ax_values, 242, n243);
	int n386;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[2], &n386);
	n386 = assign_value_to_net(ax_values, 385, n386);
	int n287;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[7], &n287);
	n287 = assign_value_to_net(ax_values, 286, n287);
	int n323;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[7], &n323);
	n323 = assign_value_to_net(ax_values, 322, n323);
	int n439;
	INVxp5_ASAP7_6t_R( in_a[1], &n439);
	n439 = assign_value_to_net(ax_values, 438, n439);
	int n415;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[2], &n415);
	n415 = assign_value_to_net(ax_values, 414, n415);
	int n281;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[2], &n281);
	n281 = assign_value_to_net(ax_values, 280, n281);
	int n372;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[3], &n372);
	n372 = assign_value_to_net(ax_values, 371, n372);
	int n473;
	INVx1_ASAP7_6t_R( in_a[7], &n473);
	n473 = assign_value_to_net(ax_values, 472, n473);
	int n248;
	INVx4_ASAP7_6t_R( in_a[5], &n248);
	n248 = assign_value_to_net(ax_values, 247, n248);
	int n280;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[8], &n280);
	n280 = assign_value_to_net(ax_values, 279, n280);
	int n360;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[1], &n360);
	n360 = assign_value_to_net(ax_values, 359, n360);
	int n426;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[4], &n426);
	n426 = assign_value_to_net(ax_values, 425, n426);
	int n282;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[4], &n282);
	n282 = assign_value_to_net(ax_values, 281, n282);
	int n393;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[7], &n393);
	n393 = assign_value_to_net(ax_values, 392, n393);
	int n414;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[1], &n414);
	n414 = assign_value_to_net(ax_values, 413, n414);
	int n344;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[9], &n344);
	n344 = assign_value_to_net(ax_values, 343, n344);
	int n417;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[5], &n417);
	n417 = assign_value_to_net(ax_values, 416, n417);
	int n279;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[6], &n279);
	n279 = assign_value_to_net(ax_values, 278, n279);
	int n471;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[8], &n471);
	n471 = assign_value_to_net(ax_values, 470, n471);
	int n395;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[6], &n395);
	n395 = assign_value_to_net(ax_values, 394, n395);
	int n289;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[5], &n289);
	n289 = assign_value_to_net(ax_values, 288, n289);
	int n432;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[1], &n432);
	n432 = assign_value_to_net(ax_values, 431, n432);
	int n385;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[1], &n385);
	n385 = assign_value_to_net(ax_values, 384, n385);
	int n22;
	XOR2xp5r_ASAP7_6t_R( in_a[2], in_a[1], &n22);
	n22 = assign_value_to_net(ax_values, 21, n22);
	int n324;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[8], &n324);
	n324 = assign_value_to_net(ax_values, 323, n324);
	int n431;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[3], &n431);
	n431 = assign_value_to_net(ax_values, 430, n431);
	int n326;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[6], &n326);
	n326 = assign_value_to_net(ax_values, 325, n326);
	int n300;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[6], &n300);
	n300 = assign_value_to_net(ax_values, 299, n300);
	int n436;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[2], &n436);
	n436 = assign_value_to_net(ax_values, 435, n436);
	int n437;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[1], &n437);
	n437 = assign_value_to_net(ax_values, 436, n437);
	int n3;
	NAND2xp5R_ASAP7_6t_R( in_a[4], in_a[3], &n3);
	n3 = assign_value_to_net(ax_values, 2, n3);
	int n294;
	INVxp5_ASAP7_6t_R( in_b[3], &n294);
	n294 = assign_value_to_net(ax_values, 293, n294);
	int n369;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[4], &n369);
	n369 = assign_value_to_net(ax_values, 368, n369);
	int n487;
	INVxp5_ASAP7_6t_R( in_b[8], &n487);
	n487 = assign_value_to_net(ax_values, 486, n487);
	int n275;
	INVxp5_ASAP7_6t_R( in_b[2], &n275);
	n275 = assign_value_to_net(ax_values, 274, n275);
	int n411;
	INVx3_ASAP7_6t_R( in_a[5], &n411);
	n411 = assign_value_to_net(ax_values, 410, n411);
	int n325;
	INVxp5_ASAP7_6t_R( in_b[5], &n325);
	n325 = assign_value_to_net(ax_values, 324, n325);
	int n322;
	INVxp5_ASAP7_6t_R( in_b[4], &n322);
	n322 = assign_value_to_net(ax_values, 321, n322);
	int n345;
	INVxp5_ASAP7_6t_R( in_b[6], &n345);
	n345 = assign_value_to_net(ax_values, 344, n345);
	int n508;
	INVxp5_ASAP7_6t_R( in_b[9], &n508);
	n508 = assign_value_to_net(ax_values, 507, n508);
	int n8;
	XNOR2x2_ASAP7_6t_R( in_a[8], in_a[7], &n8);
	n8 = assign_value_to_net(ax_values, 7, n8);
	int n12;
	XOR2xp5_ASAP7_6t_R( in_a[3], in_b[5], &n12);
	n12 = assign_value_to_net(ax_values, 11, n12);
	int n13;
	XOR2xp5_ASAP7_6t_R( in_a[3], in_b[4], &n13);
	n13 = assign_value_to_net(ax_values, 12, n13);
	int n14;
	XOR2xp5_ASAP7_6t_R( in_a[3], in_b[2], &n14);
	n14 = assign_value_to_net(ax_values, 13, n14);
	int n16;
	XOR2xp5_ASAP7_6t_R( in_a[3], in_b[0], &n16);
	n16 = assign_value_to_net(ax_values, 15, n16);
	int n434;
	INVxp5_ASAP7_6t_R( in_a[3], &n434);
	n434 = assign_value_to_net(ax_values, 433, n434);
	int n28;
	XOR2xp5_ASAP7_6t_R( in_a[8], in_a[7], &n28);
	n28 = assign_value_to_net(ax_values, 27, n28);
	AND2x2_ASAP7_6t_R( in_b[0], in_a[0], &out[0]);
	out[0] = assign_value_to_net(ax_values, 602, out[0]);
	int n60;
	NAND2x2_ASAP7_6t_R( in_a[4], in_a[3], &n60);
	n60 = assign_value_to_net(ax_values, 59, n60);
	int n185;
	XNOR2xp5f_ASAP7_6t_R( in_a[2], in_a[3], &n185);
	n185 = assign_value_to_net(ax_values, 184, n185);
	int n198;
	XOR2x2_ASAP7_6t_R( in_a[2], in_a[1], &n198);
	n198 = assign_value_to_net(ax_values, 197, n198);
	int n356;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[9], &n356);
	n356 = assign_value_to_net(ax_values, 355, n356);
	int n255;
	INVx2_ASAP7_6t_R( in_a[5], &n255);
	n255 = assign_value_to_net(ax_values, 254, n255);
	int n244;
	XOR2x2_ASAP7_6t_R( in_a[9], in_a[8], &n244);
	n244 = assign_value_to_net(ax_values, 243, n244);
	int n135;
	XOR2xp5_ASAP7_6t_R( in_a[9], in_b[0], &n135);
	n135 = assign_value_to_net(ax_values, 134, n135);
	int n396;
	XOR2x2_ASAP7_6t_R( in_a[6], in_a[5], &n396);
	n396 = assign_value_to_net(ax_values, 395, n396);
	int n276;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[9], &n276);
	n276 = assign_value_to_net(ax_values, 275, n276);
	int n288;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[3], &n288);
	n288 = assign_value_to_net(ax_values, 287, n288);
	int n355;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[5], &n355);
	n355 = assign_value_to_net(ax_values, 354, n355);
	int n358;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[7], &n358);
	n358 = assign_value_to_net(ax_values, 357, n358);
	int n284;
	AND2x2_ASAP7_6t_R( in_b[0], in_a[9], &n284);
	n284 = assign_value_to_net(ax_values, 283, n284);
	int n293;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[8], &n293);
	n293 = assign_value_to_net(ax_values, 292, n293);
	int n301;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[4], &n301);
	n301 = assign_value_to_net(ax_values, 300, n301);
	int n321;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[9], &n321);
	n321 = assign_value_to_net(ax_values, 320, n321);
	int n316;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[5], &n316);
	n316 = assign_value_to_net(ax_values, 315, n316);
	int n346;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[7], &n346);
	n346 = assign_value_to_net(ax_values, 345, n346);
	int n368;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[8], &n368);
	n368 = assign_value_to_net(ax_values, 367, n368);
	int n394;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[3], &n394);
	n394 = assign_value_to_net(ax_values, 393, n394);
	int n383;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[0], &n383);
	n383 = assign_value_to_net(ax_values, 382, n383);
	int n416;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[3], &n416);
	n416 = assign_value_to_net(ax_values, 415, n416);
	int n410;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[0], &n410);
	n410 = assign_value_to_net(ax_values, 409, n410);
	int n486;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[9], &n486);
	n486 = assign_value_to_net(ax_values, 485, n486);
	int n472;
	INVxp5_ASAP7_6t_R( in_b[7], &n472);
	n472 = assign_value_to_net(ax_values, 471, n472);
	int n159;
	INVxp5_ASAP7_6t_R( n9, &n159);
	n159 = assign_value_to_net(ax_values, 158, n159);
	int n162;
	INVx1_ASAP7_6t_R( n9, &n162);
	n162 = assign_value_to_net(ax_values, 161, n162);
	int n430;
	NAND2x2_ASAP7_6t_R( n438, in_a[1], &n430);
	n430 = assign_value_to_net(ax_values, 429, n430);
	int n361;
	OR2x2_ASAP7_6t_R( in_b[0], n126, &n361);
	n361 = assign_value_to_net(ax_values, 360, n361);
	int n311;
	NOR2x1_ASAP7_6t_R( n273, n126, &n311);
	n311 = assign_value_to_net(ax_values, 310, n311);
	int n206;
	INVxp5_ASAP7_6t_R( n387, &n206);
	n206 = assign_value_to_net(ax_values, 205, n206);
	int n440;
	OR2x2_ASAP7_6t_R( in_b[0], n439, &n440);
	n440 = assign_value_to_net(ax_values, 439, n440);
	int n165;
	INVxp5_ASAP7_6t_R( n281, &n165);
	n165 = assign_value_to_net(ax_values, 164, n165);
	int n384;
	OR2x2_ASAP7_6t_R( in_b[0], n473, &n384);
	n384 = assign_value_to_net(ax_values, 383, n384);
	int n250;
	NAND3xp33R_ASAP7_6t_R( n249, n248, in_a[7], &n250);
	n250 = assign_value_to_net(ax_values, 249, n250);
	int n208;
	INVxp5_ASAP7_6t_R( n280, &n208);
	n208 = assign_value_to_net(ax_values, 207, n208);
	int n169;
	INVxp5_ASAP7_6t_R( n360, &n169);
	n169 = assign_value_to_net(ax_values, 168, n169);
	int n173;
	INVxp5_ASAP7_6t_R( n471, &n173);
	n173 = assign_value_to_net(ax_values, 172, n173);
	int n194;
	INVxp5_ASAP7_6t_R( n432, &n194);
	n194 = assign_value_to_net(ax_values, 193, n194);
	int n441;
	AND2x2_ASAP7_6t_R( in_b[0], n22, &n441);
	n441 = assign_value_to_net(ax_values, 440, n441);
	int n171;
	INVxp5_ASAP7_6t_R( n326, &n171);
	n171 = assign_value_to_net(ax_values, 170, n171);
	int n128;
	INVx1_ASAP7_6t_R( n3, &n128);
	n128 = assign_value_to_net(ax_values, 127, n128);
	int n312;
	NOR2xp5_ASAP7_6t_R( n294, n126, &n312);
	n312 = assign_value_to_net(ax_values, 311, n312);
	int n120;
	INVxp5_ASAP7_6t_R( n369, &n120);
	n120 = assign_value_to_net(ax_values, 119, n120);
	int n512;
	NOR2xp5_ASAP7_6t_R( n487, n126, &n512);
	n512 = assign_value_to_net(ax_values, 511, n512);
	int n296;
	NOR2xp5_ASAP7_6t_R( n275, n126, &n296);
	n296 = assign_value_to_net(ax_values, 295, n296);
	int n413;
	OR2x2_ASAP7_6t_R( in_b[0], n411, &n413);
	n413 = assign_value_to_net(ax_values, 412, n413);
	int n341;
	NOR2xp5_ASAP7_6t_R( n325, n126, &n341);
	n341 = assign_value_to_net(ax_values, 340, n341);
	int n342;
	NOR2xp5_ASAP7_6t_R( n322, n126, &n342);
	n342 = assign_value_to_net(ax_values, 341, n342);
	int n489;
	NOR2xp5_ASAP7_6t_R( n345, n126, &n489);
	n489 = assign_value_to_net(ax_values, 488, n489);
	int n509;
	NOR2xp5_ASAP7_6t_R( n508, n126, &n509);
	n509 = assign_value_to_net(ax_values, 508, n509);
	int n127;
	HB1x1_ASAP7_6t_R( n8, &n127);
	n127 = assign_value_to_net(ax_values, 126, n127);
	int n168;
	NOR2xp5_ASAP7_6t_R( n281, n8, &n168);
	n168 = assign_value_to_net(ax_values, 167, n168);
	int n187;
	NAND2xp5_ASAP7_6t_R( n13, n22, &n187);
	n187 = assign_value_to_net(ax_values, 186, n187);
	int n17;
	NOR2xp5_ASAP7_6t_R( in_b[0], n434, &n17);
	n17 = assign_value_to_net(ax_values, 16, n17);
	int n370;
	AND2x2_ASAP7_6t_R( in_b[0], n28, &n370);
	n370 = assign_value_to_net(ax_values, 369, n370);
	int n242;
	NAND2xp5R_ASAP7_6t_R( n60, n411, &n242);
	n242 = assign_value_to_net(ax_values, 241, n242);
	int n272;
	INVx1_ASAP7_6t_R( n185, &n272);
	n272 = assign_value_to_net(ax_values, 271, n272);
	int n260;
	NOR2x2R_ASAP7_6t_R( n185, n198, &n260);
	n260 = assign_value_to_net(ax_values, 259, n260);
	int n218;
	INVx1_ASAP7_6t_R( n198, &n218);
	n218 = assign_value_to_net(ax_values, 217, n218);
	int n184;
	NAND2xp5_ASAP7_6t_R( n12, n198, &n184);
	n184 = assign_value_to_net(ax_values, 183, n184);
	int n186;
	NAND2xp5_ASAP7_6t_R( n14, n198, &n186);
	n186 = assign_value_to_net(ax_values, 185, n186);
	int n157;
	AND2x4_ASAP7_6t_R( n244, n9, &n157);
	n157 = assign_value_to_net(ax_values, 156, n157);
	int n160;
	NAND2xp5_ASAP7_6t_R( n244, in_a[9], &n160);
	n160 = assign_value_to_net(ax_values, 159, n160);
	int n161;
	NAND2xp5_ASAP7_6t_R( n135, n244, &n161);
	n161 = assign_value_to_net(ax_values, 160, n161);
	int n475;
	INVx3_ASAP7_6t_R( n396, &n475);
	n475 = assign_value_to_net(ax_values, 474, n475);
	int n398;
	AND2x2_ASAP7_6t_R( in_b[0], n396, &n398);
	n398 = assign_value_to_net(ax_values, 397, n398);
	int n200;
	INVxp5_ASAP7_6t_R( n276, &n200);
	n200 = assign_value_to_net(ax_values, 199, n200);
	int n163;
	INVxp5_ASAP7_6t_R( n288, &n163);
	n163 = assign_value_to_net(ax_values, 162, n163);
	int n164;
	NOR2xp5_ASAP7_6t_R( n288, n8, &n164);
	n164 = assign_value_to_net(ax_values, 163, n164);
	int n121;
	INVxp5_ASAP7_6t_R( n355, &n121);
	n121 = assign_value_to_net(ax_values, 120, n121);
	int n204;
	INVxp5_ASAP7_6t_R( n358, &n204);
	n204 = assign_value_to_net(ax_values, 203, n204);
	int n268;
	INVx1_ASAP7_6t_R( n284, &n268);
	n268 = assign_value_to_net(ax_values, 267, n268);
	int n167;
	INVxp5_ASAP7_6t_R( n301, &n167);
	n167 = assign_value_to_net(ax_values, 166, n167);
	int n166;
	NOR2xp5_ASAP7_6t_R( n316, n8, &n166);
	n166 = assign_value_to_net(ax_values, 165, n166);
	int n175;
	INVxp5_ASAP7_6t_R( n316, &n175);
	n175 = assign_value_to_net(ax_values, 174, n175);
	int n177;
	INVxp5_ASAP7_6t_R( n346, &n177);
	n177 = assign_value_to_net(ax_values, 176, n177);
	int n170;
	NOR2xp5_ASAP7_6t_R( n346, n8, &n170);
	n170 = assign_value_to_net(ax_values, 169, n170);
	int n196;
	INVxp5_ASAP7_6t_R( n416, &n196);
	n196 = assign_value_to_net(ax_values, 195, n196);
	int n179;
	INVxp5_ASAP7_6t_R( n486, &n179);
	n179 = assign_value_to_net(ax_values, 178, n179);
	int n488;
	NOR2xp5_ASAP7_6t_R( n472, n126, &n488);
	n488 = assign_value_to_net(ax_values, 487, n488);
	int n354;
	OAI22xp5_ASAP7_6t_R( n438, n439, n356, n430, &n354);
	n354 = assign_value_to_net(ax_values, 353, n354);
	int n4;
	INVx2_ASAP7_6t_R( n430, &n4);
	n4 = assign_value_to_net(ax_values, 3, n4);
	int n295;
	INVx1_ASAP7_6t_R( n311, &n295);
	n295 = assign_value_to_net(ax_values, 294, n295);
	int n474;
	OA31x2_ASAP7_6t_R( n255, n249, in_a[7], n250, &n474);
	n474 = assign_value_to_net(ax_values, 473, n474);
	int n427;
	NOR2x2R_ASAP7_6t_R( n128, n243, &n427);
	n427 = assign_value_to_net(ax_values, 426, n427);
	int n313;
	NAND2xp5_ASAP7_6t_R( n312, n311, &n313);
	n313 = assign_value_to_net(ax_values, 312, n313);
	int n315;
	XOR2xp5r_ASAP7_6t_R( n312, n311, &n315);
	n315 = assign_value_to_net(ax_values, 314, n315);
	int n505;
	INVx1_ASAP7_6t_R( n512, &n505);
	n505 = assign_value_to_net(ax_values, 504, n505);
	int n221;
	INVx1_ASAP7_6t_R( n296, &n221);
	n221 = assign_value_to_net(ax_values, 220, n221);
	int n257;
	NAND2xp5_ASAP7_6t_R( n341, n342, &n257);
	n257 = assign_value_to_net(ax_values, 256, n257);
	int n343;
	XOR2xp5_ASAP7_6t_R( n341, n342, &n343);
	n343 = assign_value_to_net(ax_values, 342, n343);
	int n328;
	INVxp5_ASAP7_6t_R( n342, &n328);
	n328 = assign_value_to_net(ax_values, 327, n328);
	int n477;
	INVx1_ASAP7_6t_R( n489, &n477);
	n477 = assign_value_to_net(ax_values, 476, n477);
	int n176;
	NOR2xp5_ASAP7_6t_R( n471, n127, &n176);
	n176 = assign_value_to_net(ax_values, 175, n176);
	int n174;
	NOR2xp5_ASAP7_6t_R( n326, n127, &n174);
	n174 = assign_value_to_net(ax_values, 173, n174);
	int n137;
	NAND3xp33_ASAP7_6t_R( n127, n244, n165, &n137);
	n137 = assign_value_to_net(ax_values, 136, n137);
	int n172;
	NOR2xp5_ASAP7_6t_R( n486, n127, &n172);
	n172 = assign_value_to_net(ax_values, 171, n172);
	int n178;
	NOR2xp5_ASAP7_6t_R( n126, n127, &n178);
	n178 = assign_value_to_net(ax_values, 177, n178);
	int n195;
	INVxp5_ASAP7_6t_R( n187, &n195);
	n195 = assign_value_to_net(ax_values, 194, n195);
	int n188;
	NAND2xp5_ASAP7_6t_R( n17, n22, &n188);
	n188 = assign_value_to_net(ax_values, 187, n188);
	int n134;
	INVxp5_ASAP7_6t_R( n370, &n134);
	n134 = assign_value_to_net(ax_values, 133, n134);
	int n271;
	OA21x2_ASAP7_6t_R( n243, n411, n242, &n271);
	n271 = assign_value_to_net(ax_values, 270, n271);
	int n261;
	NAND2xp5_ASAP7_6t_R( n13, n272, &n261);
	n261 = assign_value_to_net(ax_values, 260, n261);
	int n201;
	NAND2xp5_ASAP7_6t_R( n260, n12, &n201);
	n201 = assign_value_to_net(ax_values, 200, n201);
	int n183;
	BUFx3_ASAP7_6t_R( n260, &n183);
	n183 = assign_value_to_net(ax_values, 182, n183);
	int n203;
	NAND2xp5R_ASAP7_6t_R( n14, n260, &n203);
	n203 = assign_value_to_net(ax_values, 202, n203);
	int n205;
	NAND2xp5_ASAP7_6t_R( n206, n260, &n205);
	n205 = assign_value_to_net(ax_values, 204, n205);
	int n202;
	NAND2xp5R_ASAP7_6t_R( n16, n260, &n202);
	n202 = assign_value_to_net(ax_values, 201, n202);
	int n193;
	INVxp5_ASAP7_6t_R( n186, &n193);
	n193 = assign_value_to_net(ax_values, 192, n193);
	int n139;
	NAND2xp5R_ASAP7_6t_R( n171, n157, &n139);
	n139 = assign_value_to_net(ax_values, 138, n139);
	int n510;
	OAI21xp5b_ASAP7_6t_R( n157, n28, in_a[9], &n510);
	n510 = assign_value_to_net(ax_values, 509, n510);
	int n375;
	AO21x1_ASAP7_6t_R( n157, n169, n168, &n375);
	n375 = assign_value_to_net(ax_values, 374, n375);
	int n45;
	OAI22xp5_ASAP7_6t_R( n8, n361, n162, n160, &n45);
	n45 = assign_value_to_net(ax_values, 44, n45);
	int n371;
	OAI22xp5_ASAP7_6t_R( n8, n360, n162, n161, &n371);
	n371 = assign_value_to_net(ax_values, 370, n371);
	int n199;
	NAND2xp5R_ASAP7_6t_R( n260, n200, &n199);
	n199 = assign_value_to_net(ax_values, 198, n199);
	int n158;
	NAND2xp5_ASAP7_6t_R( n244, n163, &n158);
	n158 = assign_value_to_net(ax_values, 157, n158);
	int n138;
	INVxp5_ASAP7_6t_R( n164, &n138);
	n138 = assign_value_to_net(ax_values, 137, n138);
	int n115;
	NAND2xp5R_ASAP7_6t_R( n260, n204, &n115);
	n115 = assign_value_to_net(ax_values, 114, n115);
	int n136;
	AO21x1_ASAP7_6t_R( n157, n167, n166, &n136);
	n136 = assign_value_to_net(ax_values, 135, n136);
	int n140;
	INVxp5_ASAP7_6t_R( n170, &n140);
	n140 = assign_value_to_net(ax_values, 139, n140);
	int n491;
	XOR2xp5_ASAP7_6t_R( n488, n489, &n491);
	n491 = assign_value_to_net(ax_values, 490, n491);
	int n266;
	INVx1_ASAP7_6t_R( n354, &n266);
	n266 = assign_value_to_net(ax_values, 265, n266);
	int n131;
	INVxp5_ASAP7_6t_R( n354, &n131);
	n131 = assign_value_to_net(ax_values, 130, n131);
	int n10;
	AO21x1_ASAP7_6t_R( n354, n268, n284, &n10);
	n10 = assign_value_to_net(ax_values, 9, n10);
	int n5;
	INVx2_ASAP7_6t_R( n4, &n5);
	n5 = assign_value_to_net(ax_values, 4, n5);
	int n6;
	INVx1_ASAP7_6t_R( n4, &n6);
	n6 = assign_value_to_net(ax_values, 5, n6);
	int n72;
	NAND2xp5_ASAP7_6t_R( n295, n296, &n72);
	n72 = assign_value_to_net(ax_values, 71, n72);
	int n388;
	OAI22xp5_ASAP7_6t_R( n385, n474, n475, n386, &n388);
	n388 = assign_value_to_net(ax_values, 387, n388);
	int n399;
	OAI22xp5_ASAP7_6t_R( n385, n475, n383, n474, &n399);
	n399 = assign_value_to_net(ax_values, 398, n399);
	int n274;
	OAI22xp5_ASAP7_6t_R( n474, n282, n475, n289, &n274);
	n274 = assign_value_to_net(ax_values, 273, n274);
	int n119;
	BUFx6q_ASAP7_6t_R( n474, &n119);
	n119 = assign_value_to_net(ax_values, 118, n119);
	int n400;
	OAI22xp5_ASAP7_6t_R( n475, n384, n473, n474, &n400);
	n400 = assign_value_to_net(ax_values, 399, n400);
	int n259;
	OAI22xp5_ASAP7_6t_R( n344, n475, n474, n324, &n259);
	n259 = assign_value_to_net(ax_values, 258, n259);
	int n283;
	OAI22xp5_ASAP7_6t_R( n474, n372, n282, n475, &n283);
	n283 = assign_value_to_net(ax_values, 282, n283);
	int n269;
	INVx3_ASAP7_6t_R( n427, &n269);
	n269 = assign_value_to_net(ax_values, 268, n269);
	int n429;
	AND2x2_ASAP7_6t_R( in_b[0], n427, &n429);
	n429 = assign_value_to_net(ax_values, 428, n429);
	int n314;
	INVxp5_ASAP7_6t_R( n313, &n314);
	n314 = assign_value_to_net(ax_values, 313, n314);
	int n240;
	INVx1_ASAP7_6t_R( n315, &n240);
	n240 = assign_value_to_net(ax_values, 239, n240);
	int n297;
	XNOR2xp5f_ASAP7_6t_R( n221, n295, &n297);
	n297 = assign_value_to_net(ax_values, 296, n297);
	int n258;
	INVx1_ASAP7_6t_R( n343, &n258);
	n258 = assign_value_to_net(ax_values, 257, n258);
	int n479;
	AO21x1_ASAP7_6t_R( n177, n157, n176, &n479);
	n479 = assign_value_to_net(ax_values, 478, n479);
	int n332;
	AO21x1_ASAP7_6t_R( n175, n157, n174, &n332);
	n332 = assign_value_to_net(ax_values, 331, n332);
	int n490;
	AO21x1_ASAP7_6t_R( n173, n157, n172, &n490);
	n490 = assign_value_to_net(ax_values, 489, n490);
	int n504;
	AO21x1_ASAP7_6t_R( n179, n157, n178, &n504);
	n504 = assign_value_to_net(ax_values, 503, n504);
	int n197;
	INVxp5_ASAP7_6t_R( n188, &n197);
	n197 = assign_value_to_net(ax_values, 196, n197);
	int n412;
	INVx4_ASAP7_6t_R( n271, &n412);
	n412 = assign_value_to_net(ax_values, 411, n412);
	int n110;
	AOI22xp5_ASAP7_6t_R( n120, n271, n427, n121, &n110);
	n110 = assign_value_to_net(ax_values, 109, n110);
	int n262;
	OAI21xp5_ASAP7_6t_R( n261, n22, n184, &n262);
	n262 = assign_value_to_net(ax_values, 261, n262);
	int n57;
	OAI21xp5_ASAP7_6t_R( n387, n218, n201, &n57);
	n57 = assign_value_to_net(ax_values, 56, n57);
	int n207;
	NAND2xp5R_ASAP7_6t_R( n208, n183, &n207);
	n207 = assign_value_to_net(ax_values, 206, n207);
	int n310;
	OAI21xp5b_ASAP7_6t_R( n183, n22, in_a[3], &n310);
	n310 = assign_value_to_net(ax_values, 309, n310);
	int n447;
	AO21x1_ASAP7_6t_R( n196, n183, n195, &n447);
	n447 = assign_value_to_net(ax_values, 446, n447);
	int n420;
	OAI21xp5b_ASAP7_6t_R( n218, n416, n203, &n420);
	n420 = assign_value_to_net(ax_values, 419, n420);
	int n382;
	OAI21xp5_ASAP7_6t_R( n218, n358, n205, &n382);
	n382 = assign_value_to_net(ax_values, 381, n382);
	int n93;
	OAI21xp5_ASAP7_6t_R( n432, n218, n202, &n93);
	n93 = assign_value_to_net(ax_values, 92, n93);
	int n254;
	AO21x1_ASAP7_6t_R( n183, n194, n193, &n254);
	n254 = assign_value_to_net(ax_values, 253, n254);
	int n511;
	XOR2xp5r_ASAP7_6t_R( n510, n509, &n511);
	n511 = assign_value_to_net(ax_values, 510, n511);
	int n230;
	INVxp5_ASAP7_6t_R( n375, &n230);
	n230 = assign_value_to_net(ax_values, 229, n230);
	int n44;
	NAND2xp5_ASAP7_6t_R( n371, n45, &n44);
	n44 = assign_value_to_net(ax_values, 43, n44);
	int n75;
	XNOR2xp5f_ASAP7_6t_R( n371, n45, &n75);
	n75 = assign_value_to_net(ax_values, 74, n75);
	int n50;
	OAI21xp5_ASAP7_6t_R( n218, n434, n199, &n50);
	n50 = assign_value_to_net(ax_values, 49, n50);
	int n42;
	OAI22xp5_ASAP7_6t_R( n8, n301, n159, n158, &n42);
	n42 = assign_value_to_net(ax_values, 41, n42);
	int n277;
	NAND2xp5R_ASAP7_6t_R( n137, n138, &n277);
	n277 = assign_value_to_net(ax_values, 276, n277);
	int n38;
	OAI21xp5_ASAP7_6t_R( n280, n218, n115, &n38);
	n38 = assign_value_to_net(ax_values, 37, n38);
	int n154;
	INVx1_ASAP7_6t_R( n136, &n154);
	n154 = assign_value_to_net(ax_values, 153, n154);
	int n338;
	NAND2xp5R_ASAP7_6t_R( n140, n139, &n338);
	n338 = assign_value_to_net(ax_values, 337, n338);
	int n190;
	NOR2xp5_ASAP7_6t_R( n268, n266, &n190);
	n190 = assign_value_to_net(ax_values, 189, n190);
	int n435;
	OAI22xp5_ASAP7_6t_R( n438, n431, n436, n5, &n435);
	n435 = assign_value_to_net(ax_values, 434, n435);
	int n359;
	OAI22xp5_ASAP7_6t_R( n438, n356, n368, n5, &n359);
	n359 = assign_value_to_net(ax_values, 358, n359);
	int n397;
	OAI22xp5_ASAP7_6t_R( n438, n395, n417, n5, &n397);
	n397 = assign_value_to_net(ax_values, 396, n397);
	int n403;
	OAI22xp5_ASAP7_6t_R( n438, n368, n393, n5, &n403);
	n403 = assign_value_to_net(ax_values, 402, n403);
	int n404;
	OAI22xp5_ASAP7_6t_R( n438, n393, n395, n5, &n404);
	n404 = assign_value_to_net(ax_values, 403, n404);
	int n599;
	NAND2xp5_ASAP7_6t_R( n6, n440, &n599);
	n599 = assign_value_to_net(ax_values, 598, n599);
	int n598;
	OAI22xp5_ASAP7_6t_R( n438, n437, in_b[0], n6, &n598);
	n598 = assign_value_to_net(ax_values, 597, n598);
	int n442;
	OAI22xp5_ASAP7_6t_R( n438, n436, n437, n6, &n442);
	n442 = assign_value_to_net(ax_values, 441, n442);
	int n428;
	OAI22xp5_ASAP7_6t_R( n438, n426, n431, n6, &n428);
	n428 = assign_value_to_net(ax_values, 427, n428);
	int n421;
	OAI22xp5_ASAP7_6t_R( n438, n417, n426, n6, &n421);
	n421 = assign_value_to_net(ax_values, 420, n421);
	int n71;
	INVxp5_ASAP7_6t_R( n72, &n71);
	n71 = assign_value_to_net(ax_values, 70, n71);
	int n286;
	XNOR2xp5_ASAP7_6t_R( n274, n311, &n286);
	n286 = assign_value_to_net(ax_values, 285, n286);
	int n222;
	NAND2xp5R_ASAP7_6t_R( n295, n274, &n222);
	n222 = assign_value_to_net(ax_values, 221, n222);
	int n492;
	AO21x1_ASAP7_6t_R( n475, n119, n473, &n492);
	n492 = assign_value_to_net(ax_values, 491, n492);
	int n330;
	OAI22xp5_ASAP7_6t_R( n324, n475, n323, n119, &n330);
	n330 = assign_value_to_net(ax_values, 329, n330);
	int n476;
	OAI22xp5_ASAP7_6t_R( n473, n475, n344, n119, &n476);
	n476 = assign_value_to_net(ax_values, 475, n476);
	int n373;
	OAI22xp5_ASAP7_6t_R( n372, n475, n386, n119, &n373);
	n373 = assign_value_to_net(ax_values, 372, n373);
	int n308;
	OAI22xp5_ASAP7_6t_R( n323, n475, n300, n119, &n308);
	n308 = assign_value_to_net(ax_values, 307, n308);
	int n299;
	OAI22xp5_ASAP7_6t_R( n300, n475, n289, n119, &n299);
	n299 = assign_value_to_net(ax_values, 298, n299);
	int n402;
	XOR2xp5_ASAP7_6t_R( n400, n399, &n402);
	n402 = assign_value_to_net(ax_values, 401, n402);
	int n406;
	AND2x2_ASAP7_6t_R( n400, n399, &n406);
	n406 = assign_value_to_net(ax_values, 405, n406);
	int n256;
	NAND2xp5_ASAP7_6t_R( n343, n259, &n256);
	n256 = assign_value_to_net(ax_values, 255, n256);
	int n353;
	XNOR2xp5_ASAP7_6t_R( n283, n268, &n353);
	n353 = assign_value_to_net(ax_values, 352, n353);
	int n192;
	NAND2xp5R_ASAP7_6t_R( n283, n10, &n192);
	n192 = assign_value_to_net(ax_values, 191, n192);
	int n49;
	INVx1_ASAP7_6t_R( n297, &n49);
	n49 = assign_value_to_net(ax_values, 48, n49);
	int n339;
	XNOR2xp5f_ASAP7_6t_R( n259, n258, &n339);
	n339 = assign_value_to_net(ax_values, 338, n339);
	int n142;
	XNOR2xp5_ASAP7_6t_R( n490, n491, &n142);
	n142 = assign_value_to_net(ax_values, 141, n142);
	int n507;
	AO22x1_ASAP7_6t_R( n491, n490, n489, n488, &n507);
	n507 = assign_value_to_net(ax_values, 506, n507);
	int n506;
	XOR2xp5r_ASAP7_6t_R( n504, n505, &n506);
	n506 = assign_value_to_net(ax_values, 505, n506);
	int n7;
	AOI21xp25_ASAP7_6t_R( in_a[3], n183, n197, &n7);
	n7 = assign_value_to_net(ax_values, 6, n7);
	int n418;
	OAI22xp5_ASAP7_6t_R( n410, n412, n269, n414, &n418);
	n418 = assign_value_to_net(ax_values, 417, n418);
	int n241;
	OAI22xp5_ASAP7_6t_R( n269, n321, n293, n412, &n241);
	n241 = assign_value_to_net(ax_values, 240, n241);
	int n270;
	BUFx3_ASAP7_6t_R( n412, &n270);
	n270 = assign_value_to_net(ax_values, 269, n270);
	int n327;
	OAI22xp5_ASAP7_6t_R( n411, n269, n321, n412, &n327);
	n327 = assign_value_to_net(ax_values, 326, n327);
	int n419;
	OAI22xp5_ASAP7_6t_R( n269, n413, n412, n411, &n419);
	n419 = assign_value_to_net(ax_values, 418, n419);
	int n298;
	OAI22xp5_ASAP7_6t_R( n293, n269, n287, n412, &n298);
	n298 = assign_value_to_net(ax_values, 297, n298);
	int n267;
	OAI22xp5_ASAP7_6t_R( n279, n269, n412, n355, &n267);
	n267 = assign_value_to_net(ax_values, 266, n267);
	int n39;
	OAI22xp5_ASAP7_6t_R( n269, n369, n412, n394, &n39);
	n39 = assign_value_to_net(ax_values, 38, n39);
	int n337;
	AO21x1_ASAP7_6t_R( n412, n269, n411, &n337);
	n337 = assign_value_to_net(ax_values, 336, n337);
	int n108;
	INVxp5_ASAP7_6t_R( n110, &n108);
	n108 = assign_value_to_net(ax_values, 107, n108);
	int n65;
	NAND2xp5R_ASAP7_6t_R( n57, n388, &n65);
	n65 = assign_value_to_net(ax_values, 64, n65);
	int n64;
	NOR2xp5_ASAP7_6t_R( n388, n57, &n64);
	n64 = assign_value_to_net(ax_values, 63, n64);
	int n285;
	OAI21xp5_ASAP7_6t_R( n276, n218, n207, &n285);
	n285 = assign_value_to_net(ax_values, 284, n285);
	int n40;
	INVx1_ASAP7_6t_R( n382, &n40);
	n40 = assign_value_to_net(ax_values, 39, n40);
	int n109;
	INVxp5_ASAP7_6t_R( n382, &n109);
	n109 = assign_value_to_net(ax_values, 108, n109);
	int n514;
	XOR2xp5_ASAP7_6t_R( n512, n511, &n514);
	n514 = assign_value_to_net(ax_values, 513, n514);
	int n362;
	INVx1_ASAP7_6t_R( n44, &n362);
	n362 = assign_value_to_net(ax_values, 361, n362);
	int n18;
	INVxp5_ASAP7_6t_R( n75, &n18);
	n18 = assign_value_to_net(ax_values, 17, n18);
	int n189;
	INVxp5_ASAP7_6t_R( n190, &n189);
	n189 = assign_value_to_net(ax_values, 188, n189);
	int n251;
	NAND2xp5_ASAP7_6t_R( n93, n435, &n251);
	n251 = assign_value_to_net(ax_values, 250, n251);
	int n219;
	XNOR2xp5_ASAP7_6t_R( n93, n435, &n219);
	n219 = assign_value_to_net(ax_values, 218, n219);
	int n357;
	INVx1_ASAP7_6t_R( n359, &n357);
	n357 = assign_value_to_net(ax_values, 356, n357);
	int n446;
	XOR2xp5_ASAP7_6t_R( n397, n398, &n446);
	n446 = assign_value_to_net(ax_values, 445, n446);
	int n246;
	NAND2xp5_ASAP7_6t_R( n398, n397, &n246);
	n246 = assign_value_to_net(ax_values, 245, n246);
	int n236;
	INVx1_ASAP7_6t_R( n403, &n236);
	n236 = assign_value_to_net(ax_values, 235, n236);
	int n33;
	NAND2xp5_ASAP7_6t_R( n262, n404, &n33);
	n33 = assign_value_to_net(ax_values, 32, n33);
	int n35;
	XNOR2xp5f_ASAP7_6t_R( n262, n404, &n35);
	n35 = assign_value_to_net(ax_values, 34, n35);
	int n600;
	NOR2xp5_ASAP7_6t_R( n599, n598, &n600);
	n600 = assign_value_to_net(ax_values, 599, n600);
	int n602;
	NAND2xp5_ASAP7_6t_R( n598, n599, &n602);
	n602 = assign_value_to_net(ax_values, 601, n602);
	int n11;
	OR2x2_ASAP7_6t_R( n442, n441, &n11);
	n11 = assign_value_to_net(ax_values, 10, n11);
	int n595;
	NAND2xp5R_ASAP7_6t_R( n442, n441, &n595);
	n595 = assign_value_to_net(ax_values, 594, n595);
	int n433;
	XOR2xp5r_ASAP7_6t_R( n428, n429, &n433);
	n433 = assign_value_to_net(ax_values, 432, n433);
	int n252;
	NAND2xp5_ASAP7_6t_R( n429, n428, &n252);
	n252 = assign_value_to_net(ax_values, 251, n252);
	int n231;
	NAND2xp5_ASAP7_6t_R( n421, n420, &n231);
	n231 = assign_value_to_net(ax_values, 230, n231);
	int n233;
	XNOR2xp5f_ASAP7_6t_R( n420, n421, &n233);
	n233 = assign_value_to_net(ax_values, 232, n233);
	int n225;
	AOI21xp5_ASAP7_6t_R( n297, n50, n71, &n225);
	n225 = assign_value_to_net(ax_values, 224, n225);
	int n143;
	INVxp5_ASAP7_6t_R( n492, &n143);
	n143 = assign_value_to_net(ax_values, 142, n143);
	int n478;
	XOR2xp5_ASAP7_6t_R( n476, n477, &n478);
	n478 = assign_value_to_net(ax_values, 477, n478);
	int n74;
	INVxp5_ASAP7_6t_R( n373, &n74);
	n74 = assign_value_to_net(ax_values, 73, n74);
	int n37;
	XNOR2xp5f_ASAP7_6t_R( n75, n373, &n37);
	n37 = assign_value_to_net(ax_values, 36, n37);
	int n153;
	INVxp5_ASAP7_6t_R( n308, &n153);
	n153 = assign_value_to_net(ax_values, 152, n153);
	int n309;
	XNOR2xp5f_ASAP7_6t_R( n154, n308, &n309);
	n309 = assign_value_to_net(ax_values, 308, n309);
	int n46;
	INVxp5_ASAP7_6t_R( n299, &n46);
	n46 = assign_value_to_net(ax_values, 45, n46);
	int n468;
	NAND2xp5R_ASAP7_6t_R( n257, n256, &n468);
	n468 = assign_value_to_net(ax_values, 467, n468);
	int n1;
	XOR2xp5_ASAP7_6t_R( n353, n131, &n1);
	n1 = assign_value_to_net(ax_values, 0, n1);
	int n303;
	XNOR2xp5_ASAP7_6t_R( n50, n49, &n303);
	n303 = assign_value_to_net(ax_values, 302, n303);
	int n211;
	INVx1_ASAP7_6t_R( n339, &n211);
	n211 = assign_value_to_net(ax_values, 210, n211);
	int n493;
	XNOR2xp5_ASAP7_6t_R( n142, n492, &n493);
	n493 = assign_value_to_net(ax_values, 492, n493);
	int n513;
	AO22x1_ASAP7_6t_R( n507, n506, n505, n504, &n513);
	n513 = assign_value_to_net(ax_values, 512, n513);
	int n497;
	XOR2xp5r_ASAP7_6t_R( n506, n507, &n497);
	n497 = assign_value_to_net(ax_values, 496, n497);
	int n317;
	XNOR2xp5f_ASAP7_6t_R( n241, n240, &n317);
	n317 = assign_value_to_net(ax_values, 316, n317);
	int n331;
	AO21x1_ASAP7_6t_R( n241, n315, n314, &n331);
	n331 = assign_value_to_net(ax_values, 330, n331);
	int n278;
	OAI22xp5_ASAP7_6t_R( n287, n269, n279, n270, &n278);
	n278 = assign_value_to_net(ax_values, 277, n278);
	int n405;
	OAI22xp5_ASAP7_6t_R( n394, n269, n270, n415, &n405);
	n405 = assign_value_to_net(ax_values, 404, n405);
	int n423;
	OAI22xp5_ASAP7_6t_R( n415, n269, n414, n270, &n423);
	n423 = assign_value_to_net(ax_values, 422, n423);
	int n329;
	XOR2xp5r_ASAP7_6t_R( n327, n328, &n329);
	n329 = assign_value_to_net(ax_values, 328, n329);
	int n232;
	XNOR2xp5_ASAP7_6t_R( n419, n418, &n232);
	n232 = assign_value_to_net(ax_values, 231, n232);
	int n422;
	AND2x2_ASAP7_6t_R( n418, n419, &n422);
	n422 = assign_value_to_net(ax_values, 421, n422);
	int n47;
	XNOR2xp5f_ASAP7_6t_R( n298, n42, &n47);
	n47 = assign_value_to_net(ax_values, 46, n47);
	int n91;
	NAND2xp5_ASAP7_6t_R( n298, n42, &n91);
	n91 = assign_value_to_net(ax_values, 90, n91);
	int n106;
	OAI21xp5b_ASAP7_6t_R( n267, n375, n38, &n106);
	n106 = assign_value_to_net(ax_values, 105, n106);
	int n191;
	NAND2xp5_ASAP7_6t_R( n375, n267, &n191);
	n191 = assign_value_to_net(ax_values, 190, n191);
	int n97;
	INVx1_ASAP7_6t_R( n267, &n97);
	n97 = assign_value_to_net(ax_values, 96, n97);
	int n213;
	NAND2xp5_ASAP7_6t_R( n370, n39, &n213);
	n213 = assign_value_to_net(ax_values, 212, n213);
	int n133;
	XNOR2xp5f_ASAP7_6t_R( n39, n134, &n133);
	n133 = assign_value_to_net(ax_values, 132, n133);
	int n124;
	INVx1_ASAP7_6t_R( n337, &n124);
	n124 = assign_value_to_net(ax_values, 123, n124);
	int n125;
	NAND2xp5_ASAP7_6t_R( n337, n338, &n125);
	n125 = assign_value_to_net(ax_values, 124, n125);
	int n107;
	NAND2xp5_ASAP7_6t_R( n359, n108, &n107);
	n107 = assign_value_to_net(ax_values, 106, n107);
	int n41;
	INVx1_ASAP7_6t_R( n65, &n41);
	n41 = assign_value_to_net(ax_values, 40, n41);
	int n63;
	INVxp5_ASAP7_6t_R( n64, &n63);
	n63 = assign_value_to_net(ax_values, 62, n63);
	int n223;
	NAND2xp5R_ASAP7_6t_R( n286, n285, &n223);
	n223 = assign_value_to_net(ax_values, 222, n223);
	int n352;
	XOR2xp5r_ASAP7_6t_R( n286, n285, &n352);
	n352 = assign_value_to_net(ax_values, 351, n352);
	int n19;
	INVxp5_ASAP7_6t_R( n18, &n19);
	n19 = assign_value_to_net(ax_values, 18, n19);
	int n104;
	OA21x2_ASAP7_6t_R( n189, n283, n192, &n104);
	n104 = assign_value_to_net(ax_values, 103, n104);
	int n444;
	INVxp5_ASAP7_6t_R( n251, &n444);
	n444 = assign_value_to_net(ax_values, 443, n444);
	int n62;
	OR2x2_ASAP7_6t_R( n7, n219, &n62);
	n62 = assign_value_to_net(ax_values, 61, n62);
	int n87;
	NAND2xp5_ASAP7_6t_R( n219, n7, &n87);
	n87 = assign_value_to_net(ax_values, 86, n87);
	int n149;
	XNOR2xp5f_ASAP7_6t_R( n110, n357, &n149);
	n149 = assign_value_to_net(ax_values, 148, n149);
	int n15;
	XNOR2xp5_ASAP7_6t_R( n447, n446, &n15);
	n15 = assign_value_to_net(ax_values, 14, n15);
	int n245;
	INVxp5_ASAP7_6t_R( n246, &n245);
	n245 = assign_value_to_net(ax_values, 244, n245);
	int n601;
	INVxp5_ASAP7_6t_R( n600, &n601);
	n601 = assign_value_to_net(ax_values, 600, n601);
	int n596;
	INVxp5_ASAP7_6t_R( n602, &n596);
	n596 = assign_value_to_net(ax_values, 595, n596);
	int n597;
	NAND2xp5R_ASAP7_6t_R( n595, n11, &n597);
	n597 = assign_value_to_net(ax_values, 596, n597);
	int n443;
	INVxp5_ASAP7_6t_R( n595, &n443);
	n443 = assign_value_to_net(ax_values, 442, n443);
	int n116;
	INVx1_ASAP7_6t_R( n433, &n116);
	n116 = assign_value_to_net(ax_values, 115, n116);
	int n253;
	NAND2xp5_ASAP7_6t_R( n254, n433, &n253);
	n253 = assign_value_to_net(ax_values, 252, n253);
	int n224;
	INVx1_ASAP7_6t_R( n225, &n224);
	n224 = assign_value_to_net(ax_values, 223, n224);
	int n494;
	AO22x1_ASAP7_6t_R( n479, n478, n477, n476, &n494);
	n494 = assign_value_to_net(ax_values, 493, n494);
	int n470;
	XOR2xp5_ASAP7_6t_R( n478, n479, &n470);
	n470 = assign_value_to_net(ax_values, 469, n470);
	int n76;
	NOR2xp5_ASAP7_6t_R( n154, n153, &n76);
	n76 = assign_value_to_net(ax_values, 75, n76);
	int n306;
	XOR2xp5_ASAP7_6t_R( n309, n310, &n306);
	n306 = assign_value_to_net(ax_values, 305, n306);
	int n265;
	INVxp5_ASAP7_6t_R( n1, &n265);
	n265 = assign_value_to_net(ax_values, 264, n265);
	int n220;
	INVx1_ASAP7_6t_R( n303, &n220);
	n220 = assign_value_to_net(ax_values, 219, n220);
	int n516;
	NAND2xp5_ASAP7_6t_R( n513, n514, &n516);
	n516 = assign_value_to_net(ax_values, 515, n516);
	int n515;
	OR2x2_ASAP7_6t_R( n514, n513, &n515);
	n515 = assign_value_to_net(ax_values, 514, n515);
	int n320;
	XNOR2xp5f_ASAP7_6t_R( n317, n225, &n320);
	n320 = assign_value_to_net(ax_values, 319, n320);
	int n334;
	XOR2xp5r_ASAP7_6t_R( n332, n331, &n334);
	n334 = assign_value_to_net(ax_values, 333, n334);
	int n85;
	NAND2xp5_ASAP7_6t_R( n332, n331, &n85);
	n85 = assign_value_to_net(ax_values, 84, n85);
	int n363;
	XOR2xp5r_ASAP7_6t_R( n277, n278, &n363);
	n363 = assign_value_to_net(ax_values, 362, n363);
	int n34;
	INVx1_ASAP7_6t_R( n405, &n34);
	n34 = assign_value_to_net(ax_values, 33, n34);
	int n424;
	XNOR2xp5_ASAP7_6t_R( n35, n405, &n424);
	n424 = assign_value_to_net(ax_values, 423, n424);
	int n335;
	XOR2xp5_ASAP7_6t_R( n329, n330, &n335);
	n335 = assign_value_to_net(ax_values, 334, n335);
	int n348;
	AO22x1_ASAP7_6t_R( n330, n329, n328, n327, &n348);
	n348 = assign_value_to_net(ax_values, 347, n348);
	int n150;
	INVx1_ASAP7_6t_R( n232, &n150);
	n150 = assign_value_to_net(ax_values, 149, n150);
	int n448;
	OAI21xp5_ASAP7_6t_R( n233, n232, n231, &n448);
	n448 = assign_value_to_net(ax_values, 447, n448);
	int n449;
	XOR2xp5_ASAP7_6t_R( n422, n423, &n449);
	n449 = assign_value_to_net(ax_values, 448, n449);
	int n292;
	XNOR2xp5_ASAP7_6t_R( n47, n299, &n292);
	n292 = assign_value_to_net(ax_values, 291, n292);
	int n319;
	OAI21xp5_ASAP7_6t_R( n46, n47, n91, &n319);
	n319 = assign_value_to_net(ax_values, 318, n319);
	int n105;
	INVxp5_ASAP7_6t_R( n106, &n105);
	n105 = assign_value_to_net(ax_values, 104, n105);
	int n103;
	INVxp5_ASAP7_6t_R( n191, &n103);
	n103 = assign_value_to_net(ax_values, 102, n103);
	int n102;
	NAND2xp5R_ASAP7_6t_R( n191, n106, &n102);
	n102 = assign_value_to_net(ax_values, 101, n102);
	int n374;
	XNOR2xp5_ASAP7_6t_R( n97, n38, &n374);
	n374 = assign_value_to_net(ax_values, 373, n374);
	int n212;
	INVxp5_ASAP7_6t_R( n213, &n212);
	n212 = assign_value_to_net(ax_values, 211, n212);
	int n67;
	NAND2xp5R_ASAP7_6t_R( n133, n403, &n67);
	n67 = assign_value_to_net(ax_values, 66, n67);
	int n113;
	XNOR2xp5f_ASAP7_6t_R( n133, n236, &n113);
	n113 = assign_value_to_net(ax_values, 112, n113);
	int n340;
	XNOR2xp5f_ASAP7_6t_R( n338, n124, &n340);
	n340 = assign_value_to_net(ax_values, 339, n340);
	int n92;
	NAND2xp5_ASAP7_6t_R( n65, n63, &n92);
	n92 = assign_value_to_net(ax_values, 91, n92);
	int n390;
	OA21x1_ASAP7_6t_R( n41, n406, n63, &n390);
	n390 = assign_value_to_net(ax_values, 389, n390);
	int n302;
	NAND2xp5R_ASAP7_6t_R( n223, n222, &n302);
	n302 = assign_value_to_net(ax_values, 301, n302);
	int n73;
	NOR2xp5_ASAP7_6t_R( n74, n19, &n73);
	n73 = assign_value_to_net(ax_values, 72, n73);
	int n594;
	NAND2xp5_ASAP7_6t_R( n62, n87, &n594);
	n594 = assign_value_to_net(ax_values, 593, n594);
	int n114;
	XNOR2xp5_ASAP7_6t_R( n40, n149, &n114);
	n114 = assign_value_to_net(ax_values, 113, n114);
	int n132;
	OAI21xp5_ASAP7_6t_R( n149, n109, n107, &n132);
	n132 = assign_value_to_net(ax_values, 131, n132);
	int n401;
	AO21x1_ASAP7_6t_R( n446, n447, n245, &n401);
	n401 = assign_value_to_net(ax_values, 400, n401);
	AND2x2_ASAP7_6t_R( n602, n601, &out[1]);
	out[1] = assign_value_to_net(ax_values, 603, out[1]);
	XNOR2xp5_ASAP7_6t_R( n597, n596, &out[2]);
	out[2] = assign_value_to_net(ax_values, 604, out[2]);
	int n593;
	AO21x1_ASAP7_6t_R( n11, n596, n443, &n593);
	n593 = assign_value_to_net(ax_values, 592, n593);
	int n88;
	XNOR2xp5_ASAP7_6t_R( n254, n116, &n88);
	n88 = assign_value_to_net(ax_values, 87, n88);
	int n445;
	NAND2xp5R_ASAP7_6t_R( n253, n252, &n445);
	n445 = assign_value_to_net(ax_values, 444, n445);
	int n318;
	NAND2xp5R_ASAP7_6t_R( n317, n224, &n318);
	n318 = assign_value_to_net(ax_values, 317, n318);
	int n141;
	NAND2xp5R_ASAP7_6t_R( n493, n494, &n141);
	n141 = assign_value_to_net(ax_values, 140, n141);
	int n481;
	XOR2xp5_ASAP7_6t_R( n493, n494, &n481);
	n481 = assign_value_to_net(ax_values, 480, n481);
	int n122;
	INVx1_ASAP7_6t_R( n470, &n122);
	n122 = assign_value_to_net(ax_values, 121, n122);
	int n333;
	AO21x1_ASAP7_6t_R( n309, n310, n76, &n333);
	n333 = assign_value_to_net(ax_values, 332, n333);
	int n145;
	INVxp5_ASAP7_6t_R( n306, &n145);
	n145 = assign_value_to_net(ax_values, 144, n145);
	int n517;
	NAND2xp5R_ASAP7_6t_R( n516, n515, &n517);
	n517 = assign_value_to_net(ax_values, 516, n517);
	int n79;
	INVx1_ASAP7_6t_R( n334, &n79);
	n79 = assign_value_to_net(ax_values, 78, n79);
	int n83;
	INVxp5_ASAP7_6t_R( n85, &n83);
	n83 = assign_value_to_net(ax_values, 82, n83);
	int n305;
	AO22x1_ASAP7_6t_R( n439, n363, n278, n277, &n305);
	n305 = assign_value_to_net(ax_values, 304, n305);
	int n365;
	XNOR2xp5f_ASAP7_6t_R( n363, in_a[1], &n365);
	n365 = assign_value_to_net(ax_values, 364, n365);
	int n235;
	OA21x1_ASAP7_6t_R( n35, n34, n33, &n235);
	n235 = assign_value_to_net(ax_values, 234, n235);
	int n70;
	INVx1_ASAP7_6t_R( n424, &n70);
	n70 = assign_value_to_net(ax_values, 69, n70);
	int n210;
	INVxp5_ASAP7_6t_R( n335, &n210);
	n210 = assign_value_to_net(ax_values, 209, n210);
	int n227;
	INVx2_ASAP7_6t_R( n348, &n227);
	n227 = assign_value_to_net(ax_values, 226, n227);
	int n96;
	XNOR2xp5_ASAP7_6t_R( n150, n233, &n96);
	n96 = assign_value_to_net(ax_values, 95, n96);
	int n450;
	AO22x1_ASAP7_6t_R( n449, n448, n423, n422, &n450);
	n450 = assign_value_to_net(ax_values, 449, n450);
	int n68;
	XNOR2xp5_ASAP7_6t_R( n448, n449, &n68);
	n68 = assign_value_to_net(ax_values, 67, n68);
	int n290;
	INVx1_ASAP7_6t_R( n292, &n290);
	n290 = assign_value_to_net(ax_values, 289, n290);
	int n148;
	XNOR2xp5f_ASAP7_6t_R( n320, n319, &n148);
	n148 = assign_value_to_net(ax_values, 147, n148);
	int n100;
	INVxp5_ASAP7_6t_R( n102, &n100);
	n100 = assign_value_to_net(ax_values, 99, n100);
	int n101;
	NAND2xp5R_ASAP7_6t_R( n102, n104, &n101);
	n101 = assign_value_to_net(ax_values, 100, n101);
	int n378;
	XNOR2xp5f_ASAP7_6t_R( n374, n230, &n378);
	n378 = assign_value_to_net(ax_values, 377, n378);
	int n66;
	INVx1_ASAP7_6t_R( n67, &n66);
	n66 = assign_value_to_net(ax_values, 65, n66);
	int n389;
	NAND2xp5R_ASAP7_6t_R( n67, n213, &n389);
	n389 = assign_value_to_net(ax_values, 388, n389);
	int n31;
	INVxp5_ASAP7_6t_R( n113, &n31);
	n31 = assign_value_to_net(ax_values, 30, n31);
	int n347;
	XNOR2x2_ASAP7_6t_R( n340, n211, &n347);
	n347 = assign_value_to_net(ax_values, 346, n347);
	int n123;
	NAND2xp5_ASAP7_6t_R( n340, n339, &n123);
	n123 = assign_value_to_net(ax_values, 122, n123);
	int n408;
	XNOR2xp5_ASAP7_6t_R( n92, n406, &n408);
	n408 = assign_value_to_net(ax_values, 407, n408);
	int n304;
	XNOR2xp5f_ASAP7_6t_R( n302, n220, &n304);
	n304 = assign_value_to_net(ax_values, 303, n304);
	int n147;
	NAND2xp5_ASAP7_6t_R( n303, n302, &n147);
	n147 = assign_value_to_net(ax_values, 146, n147);
	int n112;
	INVxp5_ASAP7_6t_R( n114, &n112);
	n112 = assign_value_to_net(ax_values, 111, n112);
	int n239;
	XNOR2xp5f_ASAP7_6t_R( n390, n114, &n239);
	n239 = assign_value_to_net(ax_values, 238, n239);
	int n228;
	XNOR2xp5f_ASAP7_6t_R( n132, n362, &n228);
	n228 = assign_value_to_net(ax_values, 227, n228);
	int n130;
	NAND2xp5_ASAP7_6t_R( n362, n132, &n130);
	n130 = assign_value_to_net(ax_values, 129, n130);
	int n425;
	XOR2xp5r_ASAP7_6t_R( n402, n401, &n425);
	n425 = assign_value_to_net(ax_values, 424, n425);
	int n117;
	NAND2xp5_ASAP7_6t_R( n87, n593, &n117);
	n117 = assign_value_to_net(ax_values, 116, n117);
	XNOR2xp5_ASAP7_6t_R( n593, n594, &out[3]);
	out[3] = assign_value_to_net(ax_values, 605, out[3]);
	int n95;
	INVx1_ASAP7_6t_R( n88, &n95);
	n95 = assign_value_to_net(ax_values, 94, n95);
	int n591;
	NAND2xp5R_ASAP7_6t_R( n444, n88, &n591);
	n591 = assign_value_to_net(ax_values, 590, n591);
	int n90;
	INVx1_ASAP7_6t_R( n318, &n90);
	n90 = assign_value_to_net(ax_values, 89, n90);
	int n498;
	OAI21xp5b_ASAP7_6t_R( n143, n142, n141, &n498);
	n498 = assign_value_to_net(ax_values, 497, n498);
	int n84;
	NAND2xp5_ASAP7_6t_R( n333, n334, &n84);
	n84 = assign_value_to_net(ax_values, 83, n84);
	int n336;
	XNOR2xp5f_ASAP7_6t_R( n333, n79, &n336);
	n336 = assign_value_to_net(ax_values, 335, n336);
	int n78;
	AO21x1_ASAP7_6t_R( n333, n334, n83, &n78);
	n78 = assign_value_to_net(ax_values, 77, n78);
	int n217;
	XNOR2xp5f_ASAP7_6t_R( n113, n235, &n217);
	n217 = assign_value_to_net(ax_values, 216, n217);
	int n234;
	INVxp5_ASAP7_6t_R( n235, &n234);
	n234 = assign_value_to_net(ax_values, 233, n234);
	int n588;
	NAND2xp5R_ASAP7_6t_R( n96, n445, &n588);
	n588 = assign_value_to_net(ax_values, 587, n588);
	int n586;
	NOR2x1_ASAP7_6t_R( n445, n96, &n586);
	n586 = assign_value_to_net(ax_values, 585, n586);
	int n582;
	NAND2xp5R_ASAP7_6t_R( n68, n15, &n582);
	n582 = assign_value_to_net(ax_values, 581, n582);
	int n151;
	NOR2xp5_ASAP7_6t_R( n15, n68, &n151);
	n151 = assign_value_to_net(ax_values, 150, n151);
	int n56;
	XNOR2xp5f_ASAP7_6t_R( n148, n306, &n56);
	n56 = assign_value_to_net(ax_values, 55, n56);
	int n144;
	NOR2xp5_ASAP7_6t_R( n145, n148, &n144);
	n144 = assign_value_to_net(ax_values, 143, n144);
	int n99;
	NOR2xp5_ASAP7_6t_R( n104, n100, &n99);
	n99 = assign_value_to_net(ax_values, 98, n99);
	int n351;
	OAI31x1f_ASAP7_6t_R( n105, n103, n104, n101, &n351);
	n351 = assign_value_to_net(ax_values, 350, n351);
	int n229;
	INVxp5_ASAP7_6t_R( n378, &n229);
	n229 = assign_value_to_net(ax_values, 228, n229);
	int n36;
	OAI21xp5_ASAP7_6t_R( n212, n66, n37, &n36);
	n36 = assign_value_to_net(ax_values, 35, n36);
	int n377;
	AO21x1_ASAP7_6t_R( n389, n37, n73, &n377);
	n377 = assign_value_to_net(ax_values, 376, n377);
	int n32;
	INVxp5_ASAP7_6t_R( n31, &n32);
	n32 = assign_value_to_net(ax_values, 31, n32);
	int n30;
	XNOR2xp5_ASAP7_6t_R( n347, n227, &n30);
	n30 = assign_value_to_net(ax_values, 29, n30);
	int n349;
	XNOR2xp5_ASAP7_6t_R( n347, n227, &n349);
	n349 = assign_value_to_net(ax_values, 348, n349);
	int n29;
	XNOR2xp5_ASAP7_6t_R( n347, n227, &n29);
	n29 = assign_value_to_net(ax_values, 28, n29);
	int n467;
	NAND2xp5R_ASAP7_6t_R( n125, n123, &n467);
	n467 = assign_value_to_net(ax_values, 466, n467);
	int n407;
	INVx1_ASAP7_6t_R( n408, &n407);
	n407 = assign_value_to_net(ax_values, 406, n407);
	int n366;
	XNOR2xp5f_ASAP7_6t_R( n305, n304, &n366);
	n366 = assign_value_to_net(ax_values, 365, n366);
	int n146;
	NAND2xp5_ASAP7_6t_R( n305, n304, &n146);
	n146 = assign_value_to_net(ax_values, 145, n146);
	int n237;
	NAND2xp5_ASAP7_6t_R( n112, n390, &n237);
	n237 = assign_value_to_net(ax_values, 236, n237);
	int n376;
	INVxp5_ASAP7_6t_R( n228, &n376);
	n376 = assign_value_to_net(ax_values, 375, n376);
	int n364;
	OAI21xp5_ASAP7_6t_R( n228, n1, n130, &n364);
	n364 = assign_value_to_net(ax_values, 363, n364);
	int n69;
	XNOR2xp5_ASAP7_6t_R( n425, n70, &n69);
	n69 = assign_value_to_net(ax_values, 68, n69);
	int n451;
	AO22x1_ASAP7_6t_R( n424, n425, n402, n401, &n451);
	n451 = assign_value_to_net(ax_values, 450, n451);
	int n214;
	NAND2xp5R_ASAP7_6t_R( n117, n62, &n214);
	n214 = assign_value_to_net(ax_values, 213, n214);
	int n27;
	NAND2xp5_ASAP7_6t_R( n117, n62, &n27);
	n27 = assign_value_to_net(ax_values, 26, n27);
	int n590;
	NAND2x1_ASAP7_6t_R( n95, n251, &n590);
	n590 = assign_value_to_net(ax_values, 589, n590);
	int n94;
	INVx1_ASAP7_6t_R( n591, &n94);
	n94 = assign_value_to_net(ax_values, 93, n94);
	int n59;
	AOI21x1_ASAP7_6t_R( n319, n320, n90, &n59);
	n59 = assign_value_to_net(ax_values, 58, n59);
	int n523;
	OR2x2_ASAP7_6t_R( n497, n498, &n523);
	n523 = assign_value_to_net(ax_values, 522, n523);
	int n524;
	NAND2xp5R_ASAP7_6t_R( n498, n497, &n524);
	n524 = assign_value_to_net(ax_values, 523, n524);
	int n350;
	NAND2xp5R_ASAP7_6t_R( n84, n85, &n350);
	n350 = assign_value_to_net(ax_values, 349, n350);
	int n86;
	NAND2xp5R_ASAP7_6t_R( n408, n217, &n86);
	n86 = assign_value_to_net(ax_values, 85, n86);
	int n587;
	INVxp5_ASAP7_6t_R( n586, &n587);
	n587 = assign_value_to_net(ax_values, 586, n587);
	int n583;
	INVxp5_ASAP7_6t_R( n151, &n583);
	n583 = assign_value_to_net(ax_values, 582, n583);
	int n291;
	AO21x1_ASAP7_6t_R( n351, n352, n99, &n291);
	n291 = assign_value_to_net(ax_values, 290, n291);
	int n379;
	XOR2xp5_ASAP7_6t_R( n352, n351, &n379);
	n379 = assign_value_to_net(ax_values, 378, n379);
	int n409;
	OAI21xp5b_ASAP7_6t_R( n389, n37, n36, &n409);
	n409 = assign_value_to_net(ax_values, 408, n409);
	int n263;
	NAND2xp5_ASAP7_6t_R( n377, n378, &n263);
	n263 = assign_value_to_net(ax_values, 262, n263);
	int n392;
	XNOR2xp5f_ASAP7_6t_R( n377, n229, &n392);
	n392 = assign_value_to_net(ax_values, 391, n392);
	int n216;
	NAND2xp5_ASAP7_6t_R( n234, n32, &n216);
	n216 = assign_value_to_net(ax_values, 215, n216);
	int n82;
	NAND2xp5R_ASAP7_6t_R( n349, n78, &n82);
	n82 = assign_value_to_net(ax_values, 81, n82);
	int n469;
	XOR2xp5_ASAP7_6t_R( n467, n468, &n469);
	n469 = assign_value_to_net(ax_values, 468, n469);
	int n452;
	XNOR2xp5f_ASAP7_6t_R( n217, n407, &n452);
	n452 = assign_value_to_net(ax_values, 451, n452);
	int n52;
	INVx1_ASAP7_6t_R( n366, &n52);
	n52 = assign_value_to_net(ax_values, 51, n52);
	int n307;
	NAND2xp5_ASAP7_6t_R( n147, n146, &n307);
	n307 = assign_value_to_net(ax_values, 306, n307);
	int n180;
	XNOR2xp5_ASAP7_6t_R( n376, n265, &n180);
	n180 = assign_value_to_net(ax_values, 179, n180);
	int n381;
	XOR2x2_ASAP7_6t_R( n365, n364, &n381);
	n381 = assign_value_to_net(ax_values, 380, n381);
	int n575;
	NAND2xp5R_ASAP7_6t_R( n69, n450, &n575);
	n575 = assign_value_to_net(ax_values, 574, n575);
	int n573;
	NOR2xp5_ASAP7_6t_R( n450, n69, &n573);
	n573 = assign_value_to_net(ax_values, 572, n573);
	int n20;
	INVxp5_ASAP7_6t_R( n590, &n20);
	n20 = assign_value_to_net(ax_values, 19, n20);
	int n181;
	AOI21xp5_ASAP7_6t_R( n214, n590, n94, &n181);
	n181 = assign_value_to_net(ax_values, 180, n181);
	int n43;
	XNOR2xp5f_ASAP7_6t_R( n59, n335, &n43);
	n43 = assign_value_to_net(ax_values, 42, n43);
	int n209;
	NOR2xp5_ASAP7_6t_R( n210, n59, &n209);
	n209 = assign_value_to_net(ax_values, 208, n209);
	int n525;
	NAND2xp5R_ASAP7_6t_R( n524, n523, &n525);
	n525 = assign_value_to_net(ax_values, 524, n525);
	int n499;
	INVxp5_ASAP7_6t_R( n524, &n499);
	n499 = assign_value_to_net(ax_values, 498, n499);
	int n463;
	AO22x1_ASAP7_6t_R( n350, n30, n348, n347, &n463);
	n463 = assign_value_to_net(ax_values, 462, n463);
	int n80;
	OR2x2_ASAP7_6t_R( n350, n29, &n80);
	n80 = assign_value_to_net(ax_values, 79, n80);
	int n589;
	NAND2xp5_ASAP7_6t_R( n588, n587, &n589);
	n589 = assign_value_to_net(ax_values, 588, n589);
	int n585;
	NAND2xp5R_ASAP7_6t_R( n583, n582, &n585);
	n585 = assign_value_to_net(ax_values, 584, n585);
	int n367;
	XNOR2xp5f_ASAP7_6t_R( n291, n290, &n367);
	n367 = assign_value_to_net(ax_values, 366, n367);
	int n380;
	INVx1_ASAP7_6t_R( n379, &n380);
	n380 = assign_value_to_net(ax_values, 379, n380);
	int n391;
	INVxp5_ASAP7_6t_R( n409, &n391);
	n391 = assign_value_to_net(ax_values, 390, n391);
	int n156;
	XNOR2xp5f_ASAP7_6t_R( n409, n239, &n156);
	n156 = assign_value_to_net(ax_values, 155, n156);
	int n264;
	INVx1_ASAP7_6t_R( n392, &n264);
	n264 = assign_value_to_net(ax_values, 263, n264);
	int n215;
	NAND2xp5R_ASAP7_6t_R( n86, n216, &n215);
	n215 = assign_value_to_net(ax_values, 214, n215);
	int n55;
	INVxp5_ASAP7_6t_R( n82, &n55);
	n55 = assign_value_to_net(ax_values, 54, n55);
	int n480;
	AO22x1_ASAP7_6t_R( n470, n469, n468, n467, &n480);
	n480 = assign_value_to_net(ax_values, 479, n480);
	int n462;
	XNOR2xp5f_ASAP7_6t_R( n469, n122, &n462);
	n462 = assign_value_to_net(ax_values, 461, n462);
	int n570;
	NAND2xp5R_ASAP7_6t_R( n452, n451, &n570);
	n570 = assign_value_to_net(ax_values, 569, n570);
	int n568;
	NOR2xp5_ASAP7_6t_R( n451, n452, &n568);
	n568 = assign_value_to_net(ax_values, 567, n568);
	int n48;
	AOI21xp5_ASAP7_6t_R( n307, n56, n144, &n48);
	n48 = assign_value_to_net(ax_values, 47, n48);
	int n51;
	INVx1_ASAP7_6t_R( n307, &n51);
	n51 = assign_value_to_net(ax_values, 50, n51);
	int n455;
	XNOR2xp5f_ASAP7_6t_R( n392, n180, &n455);
	n455 = assign_value_to_net(ax_values, 454, n455);
	int n98;
	AO22x1_ASAP7_6t_R( n365, n364, n379, n381, &n98);
	n98 = assign_value_to_net(ax_values, 97, n98);
	int n574;
	INVxp5_ASAP7_6t_R( n573, &n574);
	n574 = assign_value_to_net(ax_values, 573, n574);
	int n21;
	INVxp5_ASAP7_6t_R( n20, &n21);
	n21 = assign_value_to_net(ax_values, 20, n21);
	int n584;
	OAI21xp5_ASAP7_6t_R( n586, n181, n588, &n584);
	n584 = assign_value_to_net(ax_values, 583, n584);
	int n182;
	INVxp5_ASAP7_6t_R( n181, &n182);
	n182 = assign_value_to_net(ax_values, 181, n182);
	int n77;
	XNOR2xp5f_ASAP7_6t_R( n43, n336, &n77);
	n77 = assign_value_to_net(ax_values, 76, n77);
	int n53;
	AOI21xp25_ASAP7_6t_R( n43, n336, n209, &n53);
	n53 = assign_value_to_net(ax_values, 52, n53);
	int n81;
	OA21x1_ASAP7_6t_R( n336, n209, n82, &n81);
	n81 = assign_value_to_net(ax_values, 80, n81);
	int n54;
	INVx1_ASAP7_6t_R( n80, &n54);
	n54 = assign_value_to_net(ax_values, 53, n54);
	int n460;
	AO22x1_ASAP7_6t_R( n367, n52, n292, n291, &n460);
	n460 = assign_value_to_net(ax_values, 459, n460);
	int n457;
	XNOR2xp5f_ASAP7_6t_R( n367, n366, &n457);
	n457 = assign_value_to_net(ax_values, 456, n457);
	int n152;
	XNOR2xp5f_ASAP7_6t_R( n381, n380, &n152);
	n152 = assign_value_to_net(ax_values, 151, n152);
	int n238;
	NAND2xp5_ASAP7_6t_R( n239, n391, &n238);
	n238 = assign_value_to_net(ax_values, 237, n238);
	int n456;
	OAI21xp5_ASAP7_6t_R( n180, n264, n263, &n456);
	n456 = assign_value_to_net(ax_values, 455, n456);
	int n247;
	NAND2xp5R_ASAP7_6t_R( n215, n156, &n247);
	n247 = assign_value_to_net(ax_values, 246, n247);
	int n564;
	NOR2x1_ASAP7_6t_R( n215, n156, &n564);
	n564 = assign_value_to_net(ax_values, 563, n564);
	int n496;
	NOR2x1_ASAP7_6t_R( n481, n480, &n496);
	n496 = assign_value_to_net(ax_values, 495, n496);
	int n495;
	NAND2xp5_ASAP7_6t_R( n480, n481, &n495);
	n495 = assign_value_to_net(ax_values, 494, n495);
	int n532;
	NAND2xp5_ASAP7_6t_R( n463, n462, &n532);
	n532 = assign_value_to_net(ax_values, 531, n532);
	int n485;
	NOR2xp5_ASAP7_6t_R( n462, n463, &n485);
	n485 = assign_value_to_net(ax_values, 484, n485);
	int n569;
	INVxp5_ASAP7_6t_R( n568, &n569);
	n569 = assign_value_to_net(ax_values, 568, n569);
	int n89;
	XNOR2xp5f_ASAP7_6t_R( n56, n51, &n89);
	n89 = assign_value_to_net(ax_values, 88, n89);
	int n576;
	NAND2xp5_ASAP7_6t_R( n575, n574, &n576);
	n576 = assign_value_to_net(ax_values, 575, n576);
	int n592;
	NAND2xp5_ASAP7_6t_R( n591, n21, &n592);
	n592 = assign_value_to_net(ax_values, 591, n592);
	int n572;
	AOI21x1_ASAP7_6t_R( n584, n582, n151, &n572);
	n572 = assign_value_to_net(ax_values, 571, n572);
	int n61;
	HB1x1_ASAP7_6t_R( n584, &n61);
	n61 = assign_value_to_net(ax_values, 60, n61);
	XNOR2xp5_ASAP7_6t_R( n589, n182, &out[5]);
	out[5] = assign_value_to_net(ax_values, 607, out[5]);
	int n535;
	NAND2xp5R_ASAP7_6t_R( n77, n48, &n535);
	n535 = assign_value_to_net(ax_values, 534, n535);
	int n536;
	NOR2xp5_ASAP7_6t_R( n48, n77, &n536);
	n536 = assign_value_to_net(ax_values, 535, n536);
	int n541;
	OAI211xp67b_ASAP7_6t_R( n209, n43, n80, n81, &n541);
	n541 = assign_value_to_net(ax_values, 540, n541);
	int n540;
	OAI21xp5b_ASAP7_6t_R( n55, n54, n53, &n540);
	n540 = assign_value_to_net(ax_values, 539, n540);
	int n553;
	NOR2x1_ASAP7_6t_R( n98, n457, &n553);
	n553 = assign_value_to_net(ax_values, 552, n553);
	int n555;
	NAND2xp5R_ASAP7_6t_R( n457, n98, &n555);
	n555 = assign_value_to_net(ax_values, 554, n555);
	int n454;
	NAND2xp5R_ASAP7_6t_R( n238, n237, &n454);
	n454 = assign_value_to_net(ax_values, 453, n454);
	int n558;
	NOR2x1_ASAP7_6t_R( n456, n152, &n558);
	n558 = assign_value_to_net(ax_values, 557, n558);
	int n552;
	NAND2xp5R_ASAP7_6t_R( n456, n152, &n552);
	n552 = assign_value_to_net(ax_values, 551, n552);
	int n453;
	OAI21xp5b_ASAP7_6t_R( n570, n564, n247, &n453);
	n453 = assign_value_to_net(ax_values, 452, n453);
	int n118;
	NOR2xp5_ASAP7_6t_R( n564, n568, &n118);
	n118 = assign_value_to_net(ax_values, 117, n118);
	int n565;
	INVxp5_ASAP7_6t_R( n564, &n565);
	n565 = assign_value_to_net(ax_values, 564, n565);
	int n482;
	INVxp5_ASAP7_6t_R( n496, &n482);
	n482 = assign_value_to_net(ax_values, 481, n482);
	int n464;
	INVxp5_ASAP7_6t_R( n532, &n464);
	n464 = assign_value_to_net(ax_values, 463, n464);
	int n519;
	OAI21xp5_ASAP7_6t_R( n496, n532, n495, &n519);
	n519 = assign_value_to_net(ax_values, 518, n519);
	int n520;
	NOR2xp5_ASAP7_6t_R( n496, n485, &n520);
	n520 = assign_value_to_net(ax_values, 519, n520);
	int n531;
	INVxp5_ASAP7_6t_R( n485, &n531);
	n531 = assign_value_to_net(ax_values, 530, n531);
	int n571;
	NAND2xp5_ASAP7_6t_R( n570, n569, &n571);
	n571 = assign_value_to_net(ax_values, 570, n571);
	int n549;
	NAND2xp5_ASAP7_6t_R( n460, n89, &n549);
	n549 = assign_value_to_net(ax_values, 548, n549);
	int n544;
	NOR2x1_ASAP7_6t_R( n460, n89, &n544);
	n544 = assign_value_to_net(ax_values, 543, n544);
	XNOR2xp5_ASAP7_6t_R( n27, n592, &out[4]);
	out[4] = assign_value_to_net(ax_values, 606, out[4]);
	int n2;
	OA21x1_ASAP7_6t_R( n573, n572, n575, &n2);
	n2 = assign_value_to_net(ax_values, 1, n2);
	int n577;
	HB1x1_ASAP7_6t_R( n572, &n577);
	n577 = assign_value_to_net(ax_values, 576, n577);
	int n563;
	OAI21xp5_ASAP7_6t_R( n573, n572, n575, &n563);
	n563 = assign_value_to_net(ax_values, 562, n563);
	XNOR2xp5_ASAP7_6t_R( n61, n585, &out[6]);
	out[6] = assign_value_to_net(ax_values, 608, out[6]);
	int n129;
	HB1x1_ASAP7_6t_R( n535, &n129);
	n129 = assign_value_to_net(ax_values, 128, n129);
	int n545;
	INVxp5_ASAP7_6t_R( n536, &n545);
	n545 = assign_value_to_net(ax_values, 544, n545);
	int n226;
	INVx1_ASAP7_6t_R( n541, &n226);
	n226 = assign_value_to_net(ax_values, 225, n226);
	int n542;
	NAND2xp5_ASAP7_6t_R( n541, n540, &n542);
	n542 = assign_value_to_net(ax_values, 541, n542);
	int n58;
	NAND2xp5R_ASAP7_6t_R( n540, n535, &n58);
	n58 = assign_value_to_net(ax_values, 57, n58);
	int n554;
	INVxp5_ASAP7_6t_R( n553, &n554);
	n554 = assign_value_to_net(ax_values, 553, n554);
	int n155;
	NAND2xp5R_ASAP7_6t_R( n455, n454, &n155);
	n155 = assign_value_to_net(ax_values, 154, n155);
	int n578;
	NOR2xp5_ASAP7_6t_R( n454, n455, &n578);
	n578 = assign_value_to_net(ax_values, 577, n578);
	int n459;
	NOR2xp5_ASAP7_6t_R( n558, n553, &n459);
	n459 = assign_value_to_net(ax_values, 458, n459);
	int n559;
	INVxp5_ASAP7_6t_R( n558, &n559);
	n559 = assign_value_to_net(ax_values, 558, n559);
	int n458;
	OAI21xp5_ASAP7_6t_R( n553, n552, n555, &n458);
	n458 = assign_value_to_net(ax_values, 457, n458);
	int n560;
	HB1x1_ASAP7_6t_R( n552, &n560);
	n560 = assign_value_to_net(ax_values, 559, n560);
	int n566;
	NAND2xp5_ASAP7_6t_R( n565, n247, &n566);
	n566 = assign_value_to_net(ax_values, 565, n566);
	int n483;
	NAND2xp5R_ASAP7_6t_R( n495, n482, &n483);
	n483 = assign_value_to_net(ax_values, 482, n483);
	int n500;
	AO21x1_ASAP7_6t_R( n519, n523, n499, &n500);
	n500 = assign_value_to_net(ax_values, 499, n500);
	int n501;
	AND2x2_ASAP7_6t_R( n520, n523, &n501);
	n501 = assign_value_to_net(ax_values, 500, n501);
	int n533;
	NAND2xp5_ASAP7_6t_R( n532, n531, &n533);
	n533 = assign_value_to_net(ax_values, 532, n533);
	int n537;
	INVxp5_ASAP7_6t_R( n549, &n537);
	n537 = assign_value_to_net(ax_values, 536, n537);
	int n548;
	INVxp5_ASAP7_6t_R( n544, &n548);
	n548 = assign_value_to_net(ax_values, 547, n548);
	int n567;
	OAI21xp25_ASAP7_6t_R( n568, n2, n570, &n567);
	n567 = assign_value_to_net(ax_values, 566, n567);
	XOR2xp5_ASAP7_6t_R( n571, n2, &out[8]);
	out[8] = assign_value_to_net(ax_values, 610, out[8]);
	XOR2xp5_ASAP7_6t_R( n577, n576, &out[7]);
	out[7] = assign_value_to_net(ax_values, 609, out[7]);
	int n580;
	AOI21xp5_ASAP7_6t_R( n118, n563, n453, &n580);
	n580 = assign_value_to_net(ax_values, 579, n580);
	int n24;
	INVxp5_ASAP7_6t_R( n545, &n24);
	n24 = assign_value_to_net(ax_values, 23, n24);
	int n546;
	NAND2xp5_ASAP7_6t_R( n545, n129, &n546);
	n546 = assign_value_to_net(ax_values, 545, n546);
	int n461;
	AOI21xp5_ASAP7_6t_R( n536, n540, n226, &n461);
	n461 = assign_value_to_net(ax_values, 460, n461);
	int n527;
	NOR2xp5_ASAP7_6t_R( n544, n58, &n527);
	n527 = assign_value_to_net(ax_values, 526, n527);
	int n556;
	NAND2xp5_ASAP7_6t_R( n555, n554, &n556);
	n556 = assign_value_to_net(ax_values, 555, n556);
	int n579;
	INVxp5_ASAP7_6t_R( n578, &n579);
	n579 = assign_value_to_net(ax_values, 578, n579);
	int n562;
	NAND2xp5R_ASAP7_6t_R( n560, n559, &n562);
	n562 = assign_value_to_net(ax_values, 561, n562);
	int n23;
	INVxp5_ASAP7_6t_R( n537, &n23);
	n23 = assign_value_to_net(ax_values, 22, n23);
	int n539;
	NAND2xp5_ASAP7_6t_R( n548, n129, &n539);
	n539 = assign_value_to_net(ax_values, 538, n539);
	XNOR2xp5_ASAP7_6t_R( n567, n566, &out[9]);
	out[9] = assign_value_to_net(ax_values, 611, out[9]);
	int n25;
	INVxp5_ASAP7_6t_R( n580, &n25);
	n25 = assign_value_to_net(ax_values, 24, n25);
	int n111;
	OAI21xp5_ASAP7_6t_R( n578, n580, n155, &n111);
	n111 = assign_value_to_net(ax_values, 110, n111);
	int n538;
	AOI21xp25_ASAP7_6t_R( n537, n129, n24, &n538);
	n538 = assign_value_to_net(ax_values, 537, n538);
	int n528;
	OAI21xp5b_ASAP7_6t_R( n549, n58, n461, &n528);
	n528 = assign_value_to_net(ax_values, 527, n528);
	int n466;
	NAND2xp5_ASAP7_6t_R( n527, n531, &n466);
	n466 = assign_value_to_net(ax_values, 465, n466);
	int n522;
	NAND2xp5_ASAP7_6t_R( n527, n520, &n522);
	n522 = assign_value_to_net(ax_values, 521, n522);
	int n530;
	INVxp5_ASAP7_6t_R( n527, &n530);
	n530 = assign_value_to_net(ax_values, 529, n530);
	int n503;
	NAND2xp5_ASAP7_6t_R( n527, n501, &n503);
	n503 = assign_value_to_net(ax_values, 502, n503);
	int n581;
	NAND2xp5_ASAP7_6t_R( n155, n579, &n581);
	n581 = assign_value_to_net(ax_values, 580, n581);
	int n551;
	NAND2xp5_ASAP7_6t_R( n23, n548, &n551);
	n551 = assign_value_to_net(ax_values, 550, n551);
	int n26;
	INVx1_ASAP7_6t_R( n25, &n26);
	n26 = assign_value_to_net(ax_values, 25, n26);
	int n550;
	AOI21x1_ASAP7_6t_R( n459, n111, n458, &n550);
	n550 = assign_value_to_net(ax_values, 549, n550);
	int n561;
	INVxp5_ASAP7_6t_R( n111, &n561);
	n561 = assign_value_to_net(ax_values, 560, n561);
	int n465;
	AOI21xp5_ASAP7_6t_R( n528, n531, n464, &n465);
	n465 = assign_value_to_net(ax_values, 464, n465);
	int n529;
	INVxp5_ASAP7_6t_R( n528, &n529);
	n529 = assign_value_to_net(ax_values, 528, n529);
	int n521;
	AOI21xp5_ASAP7_6t_R( n528, n520, n519, &n521);
	n521 = assign_value_to_net(ax_values, 520, n521);
	int n502;
	AOI21xp5_ASAP7_6t_R( n528, n501, n500, &n502);
	n502 = assign_value_to_net(ax_values, 501, n502);
	XOR2xp5r_ASAP7_6t_R( n581, n26, &out[10]);
	out[10] = assign_value_to_net(ax_values, 612, out[10]);
	XOR2xp5_ASAP7_6t_R( n551, n550, &out[13]);
	out[13] = assign_value_to_net(ax_values, 615, out[13]);
	int n543;
	OAI21xp5_ASAP7_6t_R( n539, n550, n538, &n543);
	n543 = assign_value_to_net(ax_values, 542, n543);
	int n547;
	OAI21xp5_ASAP7_6t_R( n544, n550, n23, &n547);
	n547 = assign_value_to_net(ax_values, 546, n547);
	int n557;
	OAI21xp5_ASAP7_6t_R( n558, n561, n560, &n557);
	n557 = assign_value_to_net(ax_values, 556, n557);
	XOR2xp5_ASAP7_6t_R( n562, n561, &out[11]);
	out[11] = assign_value_to_net(ax_values, 613, out[11]);
	int n484;
	OAI21xp5_ASAP7_6t_R( n466, n550, n465, &n484);
	n484 = assign_value_to_net(ax_values, 483, n484);
	int n534;
	OAI21xp5_ASAP7_6t_R( n530, n550, n529, &n534);
	n534 = assign_value_to_net(ax_values, 533, n534);
	int n526;
	OAI21xp5_ASAP7_6t_R( n522, n550, n521, &n526);
	n526 = assign_value_to_net(ax_values, 525, n526);
	int n518;
	OAI21xp5_ASAP7_6t_R( n503, n550, n502, &n518);
	n518 = assign_value_to_net(ax_values, 517, n518);
	XNOR2xp5f_ASAP7_6t_R( n543, n542, &out[15]);
	out[15] = assign_value_to_net(ax_values, 617, out[15]);
	XNOR2xp5f_ASAP7_6t_R( n547, n546, &out[14]);
	out[14] = assign_value_to_net(ax_values, 616, out[14]);
	XNOR2xp5_ASAP7_6t_R( n557, n556, &out[12]);
	out[12] = assign_value_to_net(ax_values, 614, out[12]);
	XNOR2xp5f_ASAP7_6t_R( n484, n483, &out[17]);
	out[17] = assign_value_to_net(ax_values, 619, out[17]);
	XNOR2xp5f_ASAP7_6t_R( n534, n533, &out[16]);
	out[16] = assign_value_to_net(ax_values, 618, out[16]);
	XNOR2xp5f_ASAP7_6t_R( n526, n525, &out[18]);
	out[18] = assign_value_to_net(ax_values, 620, out[18]);
	XNOR2xp5f_ASAP7_6t_R( n518, n517, &out[19]);
	out[19] = assign_value_to_net(ax_values, 621, out[19]);

}

void decimaltobinary(unsigned int n, int* binary, int signed_inputs){
    int d;
    int c;

    unsigned int temp;
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

unsigned int binarytodecimal(int binary[], int signed_outputs){
    unsigned int d;
    unsigned int result = 0; 
    unsigned int one = 1;
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

unsigned int top_mult_uint10b_7nm(int *ax_values, unsigned int in_a, unsigned int in_b, int signed_inputs, int signed_outputs){
    //FILE *fb2d = fopen("/home/balaskas/axcarbon/circuits/mult_uint10b_7nm/b2d.txt", "a");
    //if (fb2d == NULL)
    //   exit(1);
    //int c;

	int in_a_bin[size];
	decimaltobinary(in_a, in_a_bin, signed_inputs);
	int in_b_bin[size];
	decimaltobinary(in_b, in_b_bin, signed_inputs);
	int out_bin[outsize];

	//fprintf(fb2d, " %u ", in_a);
	//for (c=0; c<size; c++) fprintf(fb2d, "%d", in_a_bin[size-1-c]);
	//fprintf(fb2d, " %u ", in_b);
	//for (c=0; c<size; c++) fprintf(fb2d, "%d", in_b_bin[size-1-c]);

    mult_uint10b_7nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
    unsigned int r = binarytodecimal(out_bin, signed_outputs);

    //fprintf(fb2d, " %u ", r);
    //for (c=0; c<outsize; c++) fprintf(fb2d, "%d", out_bin[outsize-1-c]);
    //fprintf(fb2d, "\n");
    //fclose(fb2d);

    return r;
}

void filetest(int ax_values[], double *error) {

    char line[MAX_LENGTH];
    unsigned int in_a, in_b;
    unsigned int y_true, res;
    unsigned int err=0;
    unsigned int min_error=pow(2, 18), max_error=0;
    unsigned int nabs;
    unsigned int i=0;

    double med=0;
    double mre=0;
    double dev=0, squared_sum=0;     // To accumulate squared differences for variance calculation

    double med_max=0;
    med_max = pow(2, 20) - 1;

    int signed_inputs=0;
    int signed_outputs=0;

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

    while(fscanf(f, "%u_%u_%u", &in_a, &in_b, &y_true) == 3) {
        i++;
        
        res = top_mult_uint10b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
        //fprintf(fo, "%u_%u_%u_%u\n", in_a, in_b, y_true, res);
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
				// printf("%d_%u_%u_%u_%u\n", i, in_a, in_b, y_true, res);
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

unsigned int MULTIPLY(unsigned int in_a, unsigned int in_b) {
    unsigned int res;
    int signed_inputs=0;
    int signed_outputs=0;
    int ax_values[CHROMOSOME_LENGTH]; for(int i=0; i<CHROMOSOME_LENGTH; i++) ax_values[i] = -1;
    res = top_mult_uint10b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
    return res;
}
