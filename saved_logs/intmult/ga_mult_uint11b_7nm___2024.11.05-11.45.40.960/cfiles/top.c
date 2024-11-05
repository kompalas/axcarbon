#include "approx0.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include "library.h"
#define CHROMOSOME_LENGTH 624
#define MAX_LENGTH 1000
#define size 11
#define outsize 22
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

void mult_uint11b_7nm_top (int *ax_values, int* in_a, int* in_b, int* out) {


	int n33;
	XOR2xp5r_ASAP7_6t_R( in_a[6], in_a[5], &n33);
	n33 = assign_value_to_net(ax_values, 32, n33);
	int n31;
	XOR2xp5r_ASAP7_6t_R( in_a[6], in_a[7], &n31);
	n31 = assign_value_to_net(ax_values, 30, n31);
	int n322;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[6], &n322);
	n322 = assign_value_to_net(ax_values, 321, n322);
	int n384;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[4], &n384);
	n384 = assign_value_to_net(ax_values, 383, n384);
	int n359;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[2], &n359);
	n359 = assign_value_to_net(ax_values, 358, n359);
	int n432;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[8], &n432);
	n432 = assign_value_to_net(ax_values, 431, n432);
	int n373;
	INVxp5_ASAP7_6t_R( in_a[1], &n373);
	n373 = assign_value_to_net(ax_values, 372, n373);
	int n375;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[1], &n375);
	n375 = assign_value_to_net(ax_values, 374, n375);
	int n10;
	INVx4_ASAP7_6t_R( in_a[10], &n10);
	n10 = assign_value_to_net(ax_values, 9, n10);
	int n1;
	XOR2x2_ASAP7_6t_R( in_a[8], in_a[7], &n1);
	n1 = assign_value_to_net(ax_values, 0, n1);
	int n204;
	XOR2xp5r_ASAP7_6t_R( in_a[8], in_a[9], &n204);
	n204 = assign_value_to_net(ax_values, 203, n204);
	int n427;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[10], &n427);
	n427 = assign_value_to_net(ax_values, 426, n427);
	int n424;
	INVx1_ASAP7_6t_R( in_b[7], &n424);
	n424 = assign_value_to_net(ax_values, 423, n424);
	int n217;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[2], &n217);
	n217 = assign_value_to_net(ax_values, 216, n217);
	int n423;
	INVx1_ASAP7_6t_R( in_b[6], &n423);
	n423 = assign_value_to_net(ax_values, 422, n423);
	int n357;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[1], &n357);
	n357 = assign_value_to_net(ax_values, 356, n357);
	int n434;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[10], &n434);
	n434 = assign_value_to_net(ax_values, 433, n434);
	int n433;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[9], &n433);
	n433 = assign_value_to_net(ax_values, 432, n433);
	int n291;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[1], &n291);
	n291 = assign_value_to_net(ax_values, 290, n291);
	int n360;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[3], &n360);
	n360 = assign_value_to_net(ax_values, 359, n360);
	int n482;
	INVx1_ASAP7_6t_R( in_b[10], &n482);
	n482 = assign_value_to_net(ax_values, 481, n482);
	int n383;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[3], &n383);
	n383 = assign_value_to_net(ax_values, 382, n383);
	int n459;
	INVx1_ASAP7_6t_R( in_b[9], &n459);
	n459 = assign_value_to_net(ax_values, 458, n459);
	int n372;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[2], &n372);
	n372 = assign_value_to_net(ax_values, 371, n372);
	int n265;
	XNOR2xp5f_ASAP7_6t_R( in_a[9], in_b[7], &n265);
	n265 = assign_value_to_net(ax_values, 264, n265);
	int n224;
	INVx1_ASAP7_6t_R( in_b[1], &n224);
	n224 = assign_value_to_net(ax_values, 223, n224);
	int n389;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[1], &n389);
	n389 = assign_value_to_net(ax_values, 388, n389);
	int n267;
	INVx1_ASAP7_6t_R( in_b[4], &n267);
	n267 = assign_value_to_net(ax_values, 266, n267);
	int n30;
	XOR2xp5_ASAP7_6t_R( in_a[10], in_a[9], &n30);
	n30 = assign_value_to_net(ax_values, 29, n30);
	int n268;
	INVx1_ASAP7_6t_R( in_b[5], &n268);
	n268 = assign_value_to_net(ax_values, 267, n268);
	int n437;
	INVx1_ASAP7_6t_R( in_a[7], &n437);
	n437 = assign_value_to_net(ax_values, 436, n437);
	int n368;
	INVx1_ASAP7_6t_R( in_a[3], &n368);
	n368 = assign_value_to_net(ax_values, 367, n368);
	int n208;
	XNOR2xp5f_ASAP7_6t_R( in_a[2], in_a[1], &n208);
	n208 = assign_value_to_net(ax_values, 207, n208);
	int n460;
	INVx1_ASAP7_6t_R( in_a[9], &n460);
	n460 = assign_value_to_net(ax_values, 459, n460);
	int n426;
	INVx1_ASAP7_6t_R( in_b[8], &n426);
	n426 = assign_value_to_net(ax_values, 425, n426);
	int n355;
	INVx1_ASAP7_6t_R( in_a[5], &n355);
	n355 = assign_value_to_net(ax_values, 354, n355);
	int n205;
	XOR2xp5r_ASAP7_6t_R( in_a[4], in_a[5], &n205);
	n205 = assign_value_to_net(ax_values, 204, n205);
	int n6;
	XOR2x2_ASAP7_6t_R( in_a[2], in_a[1], &n6);
	n6 = assign_value_to_net(ax_values, 5, n6);
	int n385;
	INVx3_ASAP7_6t_R( in_a[0], &n385);
	n385 = assign_value_to_net(ax_values, 384, n385);
	int n253;
	INVxp5_ASAP7_6t_R( in_b[3], &n253);
	n253 = assign_value_to_net(ax_values, 252, n253);
	int n211;
	INVxp5_ASAP7_6t_R( in_b[0], &n211);
	n211 = assign_value_to_net(ax_values, 210, n211);
	int n301;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[4], &n301);
	n301 = assign_value_to_net(ax_values, 300, n301);
	int n233;
	INVxp5_ASAP7_6t_R( in_b[2], &n233);
	n233 = assign_value_to_net(ax_values, 232, n233);
	int n16;
	XOR2xp5_ASAP7_6t_R( in_a[9], in_b[0], &n16);
	n16 = assign_value_to_net(ax_values, 15, n16);
	AND2x2_ASAP7_6t_R( in_b[0], in_a[0], &out[0]);
	out[0] = assign_value_to_net(ax_values, 602, out[0]);
	int n32;
	XNOR2xp5_ASAP7_6t_R( in_a[6], in_a[5], &n32);
	n32 = assign_value_to_net(ax_values, 31, n32);
	int n232;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[4], &n232);
	n232 = assign_value_to_net(ax_values, 231, n232);
	int n209;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[3], &n209);
	n209 = assign_value_to_net(ax_values, 208, n209);
	int n229;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[8], &n229);
	n229 = assign_value_to_net(ax_values, 228, n229);
	int n386;
	XOR2x2_ASAP7_6t_R( in_a[4], in_a[3], &n386);
	n386 = assign_value_to_net(ax_values, 385, n386);
	int n206;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[7], &n206);
	n206 = assign_value_to_net(ax_values, 205, n206);
	int n212;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[5], &n212);
	n212 = assign_value_to_net(ax_values, 211, n212);
	int n234;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[6], &n234);
	n234 = assign_value_to_net(ax_values, 233, n234);
	int n215;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[6], &n215);
	n215 = assign_value_to_net(ax_values, 214, n215);
	int n223;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[9], &n223);
	n223 = assign_value_to_net(ax_values, 222, n223);
	int n216;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[8], &n216);
	n216 = assign_value_to_net(ax_values, 215, n216);
	int n207;
	XOR2x2_ASAP7_6t_R( in_a[2], in_a[3], &n207);
	n207 = assign_value_to_net(ax_values, 206, n207);
	int n218;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[10], &n218);
	n218 = assign_value_to_net(ax_values, 217, n218);
	int n219;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[4], &n219);
	n219 = assign_value_to_net(ax_values, 218, n219);
	int n300;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[5], &n300);
	n300 = assign_value_to_net(ax_values, 299, n300);
	int n299;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[7], &n299);
	n299 = assign_value_to_net(ax_values, 298, n299);
	int n303;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[9], &n303);
	n303 = assign_value_to_net(ax_values, 302, n303);
	int n292;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[3], &n292);
	n292 = assign_value_to_net(ax_values, 291, n292);
	int n230;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[10], &n230);
	n230 = assign_value_to_net(ax_values, 229, n230);
	int n252;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[9], &n252);
	n252 = assign_value_to_net(ax_values, 251, n252);
	int n250;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[5], &n250);
	n250 = assign_value_to_net(ax_values, 249, n250);
	int n251;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[7], &n251);
	n251 = assign_value_to_net(ax_values, 250, n251);
	int n264;
	XNOR2xp5_ASAP7_6t_R( in_a[9], in_b[6], &n264);
	n264 = assign_value_to_net(ax_values, 263, n264);
	int n262;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[8], &n262);
	n262 = assign_value_to_net(ax_values, 261, n262);
	int n263;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[10], &n263);
	n263 = assign_value_to_net(ax_values, 262, n263);
	int n269;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[9], &n269);
	n269 = assign_value_to_net(ax_values, 268, n269);
	int n302;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[8], &n302);
	n302 = assign_value_to_net(ax_values, 301, n302);
	int n333;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[7], &n333);
	n333 = assign_value_to_net(ax_values, 332, n333);
	int n331;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[3], &n331);
	n331 = assign_value_to_net(ax_values, 330, n331);
	int n321;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[2], &n321);
	n321 = assign_value_to_net(ax_values, 320, n321);
	int n320;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[1], &n320);
	n320 = assign_value_to_net(ax_values, 319, n320);
	int n317;
	XNOR2xp5_ASAP7_6t_R( in_a[7], in_b[0], &n317);
	n317 = assign_value_to_net(ax_values, 316, n317);
	int n332;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[5], &n332);
	n332 = assign_value_to_net(ax_values, 331, n332);
	int n342;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[4], &n342);
	n342 = assign_value_to_net(ax_values, 341, n342);
	int n343;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[6], &n343);
	n343 = assign_value_to_net(ax_values, 342, n343);
	int n361;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[5], &n361);
	n361 = assign_value_to_net(ax_values, 360, n361);
	int n353;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[0], &n353);
	n353 = assign_value_to_net(ax_values, 352, n353);
	int n391;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[2], &n391);
	n391 = assign_value_to_net(ax_values, 390, n391);
	int n371;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[0], &n371);
	n371 = assign_value_to_net(ax_values, 370, n371);
	int n439;
	INVx2_ASAP7_6t_R( n33, &n439);
	n439 = assign_value_to_net(ax_values, 438, n439);
	int n345;
	AND2x2_ASAP7_6t_R( in_b[0], n33, &n345);
	n345 = assign_value_to_net(ax_values, 344, n345);
	int n203;
	INVxp5_ASAP7_6t_R( n322, &n203);
	n203 = assign_value_to_net(ax_values, 202, n203);
	int n374;
	OR2x2_ASAP7_6t_R( in_b[0], n373, &n374);
	n374 = assign_value_to_net(ax_values, 373, n374);
	int n220;
	XNOR2xp5f_ASAP7_6t_R( n10, in_a[9], &n220);
	n220 = assign_value_to_net(ax_values, 219, n220);
	int n13;
	INVx1_ASAP7_6t_R( n1, &n13);
	n13 = assign_value_to_net(ax_values, 12, n13);
	int n14;
	INVx2_ASAP7_6t_R( n1, &n14);
	n14 = assign_value_to_net(ax_values, 13, n14);
	int n162;
	NAND2xp5_ASAP7_6t_R( n204, in_a[9], &n162);
	n162 = assign_value_to_net(ax_values, 161, n162);
	int n158;
	INVxp5_ASAP7_6t_R( n360, &n158);
	n158 = assign_value_to_net(ax_values, 157, n158);
	int n152;
	INVxp5_ASAP7_6t_R( n389, &n152);
	n152 = assign_value_to_net(ax_values, 151, n152);
	int n222;
	AND2x2_ASAP7_6t_R( in_b[0], n30, &n222);
	n222 = assign_value_to_net(ax_values, 221, n222);
	int n182;
	NAND2xp5R_ASAP7_6t_R( in_b[2], n30, &n182);
	n182 = assign_value_to_net(ax_values, 181, n182);
	int n318;
	OR2x2_ASAP7_6t_R( in_b[0], n437, &n318);
	n318 = assign_value_to_net(ax_values, 317, n318);
	int n369;
	OR2x2_ASAP7_6t_R( in_b[0], n368, &n369);
	n369 = assign_value_to_net(ax_values, 368, n369);
	int n290;
	OR2x2_ASAP7_6t_R( in_b[0], n460, &n290);
	n290 = assign_value_to_net(ax_values, 289, n290);
	int n356;
	OR2x2_ASAP7_6t_R( in_b[0], n355, &n356);
	n356 = assign_value_to_net(ax_values, 355, n356);
	int n376;
	AND2x2_ASAP7_6t_R( in_b[0], n6, &n376);
	n376 = assign_value_to_net(ax_values, 375, n376);
	int n201;
	NAND2xp5R_ASAP7_6t_R( in_a[3], n6, &n201);
	n201 = assign_value_to_net(ax_values, 200, n201);
	int n390;
	INVx1_ASAP7_6t_R( n6, &n390);
	n390 = assign_value_to_net(ax_values, 389, n390);
	int n382;
	NAND2x2_ASAP7_6t_R( n385, in_a[1], &n382);
	n382 = assign_value_to_net(ax_values, 381, n382);
	int n161;
	NAND2xp5_ASAP7_6t_R( n16, n204, &n161);
	n161 = assign_value_to_net(ax_values, 160, n161);
	int n319;
	NAND2x2_ASAP7_6t_R( n31, n32, &n319);
	n319 = assign_value_to_net(ax_values, 318, n319);
	int n387;
	HB1x1_ASAP7_6t_R( n386, &n387);
	n387 = assign_value_to_net(ax_values, 386, n387);
	int n358;
	INVx1_ASAP7_6t_R( n386, &n358);
	n358 = assign_value_to_net(ax_values, 357, n358);
	int n113;
	INVx3_ASAP7_6t_R( n386, &n113);
	n113 = assign_value_to_net(ax_values, 112, n113);
	int n160;
	INVxp5_ASAP7_6t_R( n223, &n160);
	n160 = assign_value_to_net(ax_values, 159, n160);
	int n156;
	INVxp5_ASAP7_6t_R( n216, &n156);
	n156 = assign_value_to_net(ax_values, 155, n156);
	int n370;
	NAND2x2_ASAP7_6t_R( n208, n207, &n370);
	n370 = assign_value_to_net(ax_values, 369, n370);
	int n200;
	INVxp5_ASAP7_6t_R( n230, &n200);
	n200 = assign_value_to_net(ax_values, 199, n200);
	int n154;
	INVxp5_ASAP7_6t_R( n332, &n154);
	n154 = assign_value_to_net(ax_values, 153, n154);
	int n202;
	NAND2xp5_ASAP7_6t_R( n203, n6, &n202);
	n202 = assign_value_to_net(ax_values, 201, n202);
	int n183;
	INVx1_ASAP7_6t_R( n220, &n183);
	n183 = assign_value_to_net(ax_values, 182, n183);
	int n266;
	OR2x2_ASAP7_6t_R( n10, n220, &n266);
	n266 = assign_value_to_net(ax_values, 265, n266);
	int n431;
	NAND2x2_ASAP7_6t_R( n13, n204, &n431);
	n431 = assign_value_to_net(ax_values, 430, n431);
	int n2;
	INVx2_ASAP7_6t_R( n14, &n2);
	n2 = assign_value_to_net(ax_values, 1, n2);
	int n157;
	NAND2xp5_ASAP7_6t_R( n158, n6, &n157);
	n157 = assign_value_to_net(ax_values, 156, n157);
	int n151;
	NAND2xp5R_ASAP7_6t_R( n6, n152, &n151);
	n151 = assign_value_to_net(ax_values, 150, n151);
	int n221;
	INVxp5_ASAP7_6t_R( n222, &n221);
	n221 = assign_value_to_net(ax_values, 220, n221);
	int n336;
	OAI22xp5_ASAP7_6t_R( n385, n302, n333, n382, &n336);
	n336 = assign_value_to_net(ax_values, 335, n336);
	int n393;
	OAI22xp5_ASAP7_6t_R( n385, n384, n383, n382, &n393);
	n393 = assign_value_to_net(ax_values, 392, n393);
	int n599;
	NAND2xp5_ASAP7_6t_R( n382, n374, &n599);
	n599 = assign_value_to_net(ax_values, 598, n599);
	int n364;
	OAI22xp5_ASAP7_6t_R( n385, n361, n384, n382, &n364);
	n364 = assign_value_to_net(ax_values, 363, n364);
	int n377;
	OAI22xp5_ASAP7_6t_R( n385, n372, n375, n382, &n377);
	n377 = assign_value_to_net(ax_values, 376, n377);
	int n598;
	OAI22xp5_ASAP7_6t_R( n385, n375, in_b[0], n382, &n598);
	n598 = assign_value_to_net(ax_values, 597, n598);
	int n214;
	OAI22xp5_ASAP7_6t_R( n385, n373, n218, n382, &n214);
	n214 = assign_value_to_net(ax_values, 213, n214);
	int n305;
	OAI22xp5_ASAP7_6t_R( n385, n303, n302, n382, &n305);
	n305 = assign_value_to_net(ax_values, 304, n305);
	int n381;
	OAI22xp5_ASAP7_6t_R( n385, n383, n372, n382, &n381);
	n381 = assign_value_to_net(ax_values, 380, n381);
	int n344;
	OAI22xp5_ASAP7_6t_R( n385, n343, n361, n382, &n344);
	n344 = assign_value_to_net(ax_values, 343, n344);
	int n298;
	OAI22xp5_ASAP7_6t_R( n385, n218, n303, n382, &n298);
	n298 = assign_value_to_net(ax_values, 297, n298);
	int n335;
	OAI22xp5_ASAP7_6t_R( n385, n333, n343, n382, &n335);
	n335 = assign_value_to_net(ax_values, 334, n335);
	int n438;
	BUFx3_ASAP7_6t_R( n319, &n438);
	n438 = assign_value_to_net(ax_values, 437, n438);
	int n123;
	OA22x1_ASAP7_6t_R( n319, n219, n439, n212, &n123);
	n123 = assign_value_to_net(ax_values, 122, n123);
	int n347;
	OAI22xp5_ASAP7_6t_R( n319, n437, n439, n318, &n347);
	n347 = assign_value_to_net(ax_values, 346, n347);
	int n260;
	OAI22xp5_ASAP7_6t_R( n251, n439, n234, n319, &n260);
	n260 = assign_value_to_net(ax_values, 259, n260);
	int n346;
	OAI22xp5_ASAP7_6t_R( n319, n317, n439, n320, &n346);
	n346 = assign_value_to_net(ax_values, 345, n346);
	int n323;
	OAI22xp5_ASAP7_6t_R( n321, n439, n320, n319, &n323);
	n323 = assign_value_to_net(ax_values, 322, n323);
	int n54;
	OAI22xp5_ASAP7_6t_R( n319, n292, n219, n439, &n54);
	n54 = assign_value_to_net(ax_values, 53, n54);
	int n237;
	OAI22xp5_ASAP7_6t_R( n319, n212, n439, n234, &n237);
	n237 = assign_value_to_net(ax_values, 236, n237);
	int n388;
	NAND2xp5R_ASAP7_6t_R( in_b[0], n387, &n388);
	n388 = assign_value_to_net(ax_values, 387, n388);
	int n27;
	INVxp5_ASAP7_6t_R( n387, &n27);
	n27 = assign_value_to_net(ax_values, 26, n27);
	int n354;
	NAND2x2_ASAP7_6t_R( n205, n113, &n354);
	n354 = assign_value_to_net(ax_values, 353, n354);
	int n69;
	BUFx3_ASAP7_6t_R( n113, &n69);
	n69 = assign_value_to_net(ax_values, 68, n69);
	int n68;
	HB1x1_ASAP7_6t_R( n113, &n68);
	n68 = assign_value_to_net(ax_values, 67, n68);
	int n159;
	NAND2xp5_ASAP7_6t_R( n160, n6, &n159);
	n159 = assign_value_to_net(ax_values, 158, n159);
	int n155;
	NAND2xp5R_ASAP7_6t_R( n156, n6, &n155);
	n155 = assign_value_to_net(ax_values, 154, n155);
	int n352;
	OAI22xp5_ASAP7_6t_R( n342, n390, n370, n360, &n352);
	n352 = assign_value_to_net(ax_values, 351, n352);
	int n379;
	OAI22xp5_ASAP7_6t_R( n369, n390, n370, n368, &n379);
	n379 = assign_value_to_net(ax_values, 378, n379);
	int n316;
	OAI22xp5_ASAP7_6t_R( n299, n390, n322, n370, &n316);
	n316 = assign_value_to_net(ax_values, 315, n316);
	int n35;
	OA22x1_ASAP7_6t_R( n389, n370, n390, n391, &n35);
	n35 = assign_value_to_net(ax_values, 34, n35);
	int n255;
	OAI21xp5_ASAP7_6t_R( n370, n230, n201, &n255);
	n255 = assign_value_to_net(ax_values, 254, n255);
	int n273;
	AO21x1_ASAP7_6t_R( n390, n370, n368, &n273);
	n273 = assign_value_to_net(ax_values, 272, n273);
	int n199;
	NAND2xp5_ASAP7_6t_R( n200, n6, &n199);
	n199 = assign_value_to_net(ax_values, 198, n199);
	int n153;
	NAND2xp5_ASAP7_6t_R( n154, n6, &n153);
	n153 = assign_value_to_net(ax_values, 152, n153);
	int n139;
	OA21x1_ASAP7_6t_R( n370, n332, n202, &n139);
	n139 = assign_value_to_net(ax_values, 138, n139);
	int n444;
	OAI22xp5_ASAP7_6t_R( n183, n423, n266, n268, &n444);
	n444 = assign_value_to_net(ax_values, 443, n444);
	int n122;
	OAI22xp5_ASAP7_6t_R( n183, n224, n266, n211, &n122);
	n122 = assign_value_to_net(ax_values, 121, n122);
	int n275;
	OAI22xp5_ASAP7_6t_R( n267, n183, n266, n253, &n275);
	n275 = assign_value_to_net(ax_values, 274, n275);
	int n175;
	OAI22xp5_ASAP7_6t_R( n253, n183, n266, n233, &n175);
	n175 = assign_value_to_net(ax_values, 174, n175);
	int n445;
	OAI22xp5_ASAP7_6t_R( n183, n268, n266, n267, &n445);
	n445 = assign_value_to_net(ax_values, 444, n445);
	int n92;
	HB1x1_ASAP7_6t_R( n266, &n92);
	n92 = assign_value_to_net(ax_values, 91, n92);
	int n257;
	OA21x2_ASAP7_6t_R( n224, n266, n182, &n257);
	n257 = assign_value_to_net(ax_values, 256, n257);
	int n270;
	OAI22xp5_ASAP7_6t_R( n264, n14, n250, n431, &n270);
	n270 = assign_value_to_net(ax_values, 269, n270);
	int n240;
	OAI22xp5_ASAP7_6t_R( n232, n14, n431, n209, &n240);
	n240 = assign_value_to_net(ax_values, 239, n240);
	int n461;
	HB1x1_ASAP7_6t_R( n431, &n461);
	n461 = assign_value_to_net(ax_values, 460, n461);
	int n258;
	OAI22xp5_ASAP7_6t_R( n250, n14, n431, n232, &n258);
	n258 = assign_value_to_net(ax_values, 257, n258);
	int n296;
	OAI22xp5_ASAP7_6t_R( n217, n14, n431, n291, &n296);
	n296 = assign_value_to_net(ax_values, 295, n296);
	int n435;
	OAI22xp5_ASAP7_6t_R( n433, n14, n432, n431, &n435);
	n435 = assign_value_to_net(ax_values, 434, n435);
	int n111;
	OAI22xp5_ASAP7_6t_R( n265, n14, n264, n431, &n111);
	n111 = assign_value_to_net(ax_values, 110, n111);
	int n62;
	OAI22xp5_ASAP7_6t_R( n14, n290, n2, n162, &n62);
	n62 = assign_value_to_net(ax_values, 61, n62);
	int n306;
	OAI22xp5_ASAP7_6t_R( n14, n291, n2, n161, &n306);
	n306 = assign_value_to_net(ax_values, 305, n306);
	int n133;
	NAND2xp5R_ASAP7_6t_R( n2, in_b[0], &n133);
	n133 = assign_value_to_net(ax_values, 132, n133);
	int n365;
	OAI21xp5_ASAP7_6t_R( n370, n391, n157, &n365);
	n365 = assign_value_to_net(ax_values, 364, n365);
	int n380;
	OAI21xp5_ASAP7_6t_R( n370, n371, n151, &n380);
	n380 = assign_value_to_net(ax_values, 379, n380);
	int n106;
	INVxp5_ASAP7_6t_R( n336, &n106);
	n106 = assign_value_to_net(ax_values, 105, n106);
	int n39;
	INVx1_ASAP7_6t_R( n393, &n39);
	n39 = assign_value_to_net(ax_values, 38, n39);
	int n595;
	NAND2xp5R_ASAP7_6t_R( n377, n376, &n595);
	n595 = assign_value_to_net(ax_values, 594, n595);
	int n594;
	OR2x2_ASAP7_6t_R( n376, n377, &n594);
	n594 = assign_value_to_net(ax_values, 593, n594);
	int n600;
	NOR2xp5_ASAP7_6t_R( n599, n598, &n600);
	n600 = assign_value_to_net(ax_values, 599, n600);
	int n597;
	AND2x2_ASAP7_6t_R( n599, n598, &n597);
	n597 = assign_value_to_net(ax_values, 596, n597);
	int n304;
	INVx1_ASAP7_6t_R( n305, &n304);
	n304 = assign_value_to_net(ax_values, 303, n304);
	int n135;
	INVxp5_ASAP7_6t_R( n381, &n135);
	n135 = assign_value_to_net(ax_values, 134, n135);
	int n351;
	XOR2xp5_ASAP7_6t_R( n345, n344, &n351);
	n351 = assign_value_to_net(ax_values, 350, n351);
	int n178;
	NAND2xp5R_ASAP7_6t_R( n344, n345, &n178);
	n178 = assign_value_to_net(ax_values, 177, n178);
	int n447;
	OAI22xp5_ASAP7_6t_R( n434, n439, n269, n438, &n447);
	n447 = assign_value_to_net(ax_values, 446, n447);
	int n294;
	OAI22xp5_ASAP7_6t_R( n292, n439, n321, n438, &n294);
	n294 = assign_value_to_net(ax_values, 293, n294);
	int n441;
	AO21x1_ASAP7_6t_R( n439, n438, n437, &n441);
	n441 = assign_value_to_net(ax_values, 440, n441);
	int n436;
	OAI22xp5_ASAP7_6t_R( n437, n439, n434, n438, &n436);
	n436 = assign_value_to_net(ax_values, 435, n436);
	int n271;
	OAI22xp5_ASAP7_6t_R( n262, n439, n251, n438, &n271);
	n271 = assign_value_to_net(ax_values, 270, n271);
	int n282;
	OAI22xp5_ASAP7_6t_R( n269, n439, n262, n438, &n282);
	n282 = assign_value_to_net(ax_values, 281, n282);
	int n348;
	XOR2xp5_ASAP7_6t_R( n347, n346, &n348);
	n348 = assign_value_to_net(ax_values, 347, n348);
	int n329;
	AND2x2_ASAP7_6t_R( n346, n347, &n329);
	n329 = assign_value_to_net(ax_values, 328, n329);
	int n297;
	XNOR2xp5_ASAP7_6t_R( n54, n221, &n297);
	n297 = assign_value_to_net(ax_values, 296, n297);
	int n53;
	NAND2xp5_ASAP7_6t_R( n222, n54, &n53);
	n53 = assign_value_to_net(ax_values, 52, n53);
	int n394;
	INVx1_ASAP7_6t_R( n388, &n394);
	n394 = assign_value_to_net(ax_values, 393, n394);
	int n254;
	OAI22xp5_ASAP7_6t_R( n252, n358, n229, n354, &n254);
	n254 = assign_value_to_net(ax_values, 253, n254);
	int n57;
	OA22x1_ASAP7_6t_R( n300, n354, n215, n358, &n57);
	n57 = assign_value_to_net(ax_values, 56, n57);
	int n362;
	OAI22xp5_ASAP7_6t_R( n353, n354, n357, n358, &n362);
	n362 = assign_value_to_net(ax_values, 361, n362);
	int n238;
	OAI22xp5_ASAP7_6t_R( n229, n358, n354, n206, &n238);
	n238 = assign_value_to_net(ax_values, 237, n238);
	int n108;
	BUFx3_ASAP7_6t_R( n354, &n108);
	n108 = assign_value_to_net(ax_values, 107, n108);
	int n289;
	OAI22xp5_ASAP7_6t_R( n301, n358, n354, n331, &n289);
	n289 = assign_value_to_net(ax_values, 288, n289);
	int n363;
	OAI22xp5_ASAP7_6t_R( n354, n355, n356, n69, &n363);
	n363 = assign_value_to_net(ax_values, 362, n363);
	int n84;
	OAI22xp5_ASAP7_6t_R( n354, n301, n69, n300, &n84);
	n84 = assign_value_to_net(ax_values, 83, n84);
	int n47;
	OAI22xp5_ASAP7_6t_R( n354, n215, n68, n206, &n47);
	n47 = assign_value_to_net(ax_values, 46, n47);
	int n210;
	OAI21xp5_ASAP7_6t_R( n370, n216, n159, &n210);
	n210 = assign_value_to_net(ax_values, 209, n210);
	int n55;
	OAI21xp5_ASAP7_6t_R( n370, n299, n155, &n55);
	n55 = assign_value_to_net(ax_values, 54, n55);
	int n116;
	INVxp5_ASAP7_6t_R( n316, &n116);
	n116 = assign_value_to_net(ax_values, 115, n116);
	int n235;
	OAI21xp5_ASAP7_6t_R( n370, n223, n199, &n235);
	n235 = assign_value_to_net(ax_values, 234, n235);
	int n334;
	OAI21xp5_ASAP7_6t_R( n370, n342, n153, &n334);
	n334 = assign_value_to_net(ax_values, 333, n334);
	int n330;
	XNOR2xp5_ASAP7_6t_R( n323, n139, &n330);
	n330 = assign_value_to_net(ax_values, 329, n330);
	int n138;
	INVxp5_ASAP7_6t_R( n139, &n138);
	n138 = assign_value_to_net(ax_values, 137, n138);
	int n121;
	INVxp5_ASAP7_6t_R( n122, &n121);
	n121 = assign_value_to_net(ax_values, 120, n121);
	int n213;
	XNOR2xp5f_ASAP7_6t_R( n123, n122, &n213);
	n213 = assign_value_to_net(ax_values, 212, n213);
	int n191;
	NAND2xp5_ASAP7_6t_R( n175, n260, &n191);
	n191 = assign_value_to_net(ax_values, 190, n191);
	int n259;
	XOR2x2_ASAP7_6t_R( n260, n175, &n259);
	n259 = assign_value_to_net(ax_values, 258, n259);
	int n73;
	INVxp5_ASAP7_6t_R( n445, &n73);
	n73 = assign_value_to_net(ax_values, 72, n73);
	int n446;
	XOR2xp5_ASAP7_6t_R( n444, n445, &n446);
	n446 = assign_value_to_net(ax_values, 445, n446);
	int n430;
	OAI22xp5_ASAP7_6t_R( n183, n424, n92, n423, &n430);
	n430 = assign_value_to_net(ax_values, 429, n430);
	int n483;
	OR2x2_ASAP7_6t_R( n482, n92, &n483);
	n483 = assign_value_to_net(ax_values, 482, n483);
	int n478;
	OAI22xp5_ASAP7_6t_R( n183, n482, n92, n459, &n478);
	n478 = assign_value_to_net(ax_values, 477, n478);
	int n479;
	OAI22xp5_ASAP7_6t_R( n183, n459, n92, n426, &n479);
	n479 = assign_value_to_net(ax_values, 478, n479);
	int n425;
	OAI22xp5_ASAP7_6t_R( n183, n426, n92, n424, &n425);
	n425 = assign_value_to_net(ax_values, 424, n425);
	int n276;
	XNOR2xp5f_ASAP7_6t_R( n257, n275, &n276);
	n276 = assign_value_to_net(ax_values, 275, n276);
	int n274;
	INVxp5_ASAP7_6t_R( n257, &n274);
	n274 = assign_value_to_net(ax_values, 273, n274);
	int n463;
	OAI22xp5_ASAP7_6t_R( n460, n14, n427, n461, &n463);
	n463 = assign_value_to_net(ax_values, 462, n463);
	int n449;
	OAI22xp5_ASAP7_6t_R( n432, n14, n265, n461, &n449);
	n449 = assign_value_to_net(ax_values, 448, n449);
	int n428;
	OAI22xp5_ASAP7_6t_R( n427, n14, n433, n461, &n428);
	n428 = assign_value_to_net(ax_values, 427, n428);
	int n310;
	OAI22xp5_ASAP7_6t_R( n209, n14, n217, n461, &n310);
	n310 = assign_value_to_net(ax_values, 309, n310);
	int n481;
	AO21x1_ASAP7_6t_R( n14, n461, n460, &n481);
	n481 = assign_value_to_net(ax_values, 480, n481);
	int n124;
	INVxp5_ASAP7_6t_R( n258, &n124);
	n124 = assign_value_to_net(ax_values, 123, n124);
	int n45;
	INVxp5_ASAP7_6t_R( n296, &n45);
	n45 = assign_value_to_net(ax_values, 44, n45);
	int n110;
	INVxp5_ASAP7_6t_R( n111, &n110);
	n110 = assign_value_to_net(ax_values, 109, n110);
	int n61;
	NAND2xp5_ASAP7_6t_R( n306, n62, &n61);
	n61 = assign_value_to_net(ax_values, 60, n61);
	int n293;
	XOR2xp5_ASAP7_6t_R( n62, n306, &n293);
	n293 = assign_value_to_net(ax_values, 292, n293);
	int n132;
	INVxp5_ASAP7_6t_R( n133, &n132);
	n132 = assign_value_to_net(ax_values, 131, n132);
	int n396;
	XOR2xp5_ASAP7_6t_R( n365, n364, &n396);
	n396 = assign_value_to_net(ax_values, 395, n396);
	int n366;
	NAND2xp5_ASAP7_6t_R( n365, n364, &n366);
	n366 = assign_value_to_net(ax_values, 365, n366);
	int n392;
	AND2x2_ASAP7_6t_R( n381, n380, &n392);
	n392 = assign_value_to_net(ax_values, 391, n392);
	int n378;
	INVxp5_ASAP7_6t_R( n595, &n378);
	n378 = assign_value_to_net(ax_values, 377, n378);
	int n596;
	NAND2xp5R_ASAP7_6t_R( n595, n594, &n596);
	n596 = assign_value_to_net(ax_values, 595, n596);
	int n601;
	INVxp5_ASAP7_6t_R( n600, &n601);
	n601 = assign_value_to_net(ax_values, 600, n601);
	int n602;
	INVxp5_ASAP7_6t_R( n597, &n602);
	n602 = assign_value_to_net(ax_values, 601, n602);
	int n134;
	XNOR2xp5_ASAP7_6t_R( n380, n135, &n134);
	n134 = assign_value_to_net(ax_values, 133, n134);
	int n398;
	XOR2xp5_ASAP7_6t_R( n352, n351, &n398);
	n398 = assign_value_to_net(ax_values, 397, n398);
	int n177;
	INVxp5_ASAP7_6t_R( n178, &n177);
	n177 = assign_value_to_net(ax_values, 176, n177);
	int n3;
	INVx1_ASAP7_6t_R( n441, &n3);
	n3 = assign_value_to_net(ax_values, 2, n3);
	int n443;
	XOR2xp5_ASAP7_6t_R( n435, n436, &n443);
	n443 = assign_value_to_net(ax_values, 442, n443);
	int n272;
	XOR2xp5r_ASAP7_6t_R( n271, n270, &n272);
	n272 = assign_value_to_net(ax_values, 271, n272);
	int n80;
	INVxp5_ASAP7_6t_R( n282, &n80);
	n80 = assign_value_to_net(ax_values, 79, n80);
	int n180;
	INVxp5_ASAP7_6t_R( n348, &n180);
	n180 = assign_value_to_net(ax_values, 179, n180);
	int n118;
	INVxp5_ASAP7_6t_R( n329, &n118);
	n118 = assign_value_to_net(ax_values, 117, n118);
	int n114;
	XNOR2xp5_ASAP7_6t_R( n297, n298, &n114);
	n114 = assign_value_to_net(ax_values, 113, n114);
	int n52;
	INVxp5_ASAP7_6t_R( n53, &n52);
	n52 = assign_value_to_net(ax_values, 51, n52);
	int n395;
	XNOR2xp5f_ASAP7_6t_R( n394, n39, &n395);
	n395 = assign_value_to_net(ax_values, 394, n395);
	int n49;
	NAND2xp5_ASAP7_6t_R( n393, n394, &n49);
	n49 = assign_value_to_net(ax_values, 48, n49);
	int n256;
	XOR2x2_ASAP7_6t_R( n254, n255, &n256);
	n256 = assign_value_to_net(ax_values, 255, n256);
	int n189;
	NAND2xp5R_ASAP7_6t_R( n254, n255, &n189);
	n189 = assign_value_to_net(ax_values, 188, n189);
	int n56;
	INVxp5_ASAP7_6t_R( n57, &n56);
	n56 = assign_value_to_net(ax_values, 55, n56);
	int n239;
	NAND2xp5_ASAP7_6t_R( n237, n238, &n239);
	n239 = assign_value_to_net(ax_values, 238, n239);
	int n241;
	XOR2xp5r_ASAP7_6t_R( n238, n237, &n241);
	n241 = assign_value_to_net(ax_values, 240, n241);
	int n277;
	OAI22xp5_ASAP7_6t_R( n263, n69, n108, n252, &n277);
	n277 = assign_value_to_net(ax_values, 276, n277);
	int n127;
	OA22x1_ASAP7_6t_R( n108, n359, n27, n331, &n127);
	n127 = assign_value_to_net(ax_values, 126, n127);
	int n399;
	OAI22xp5_ASAP7_6t_R( n359, n358, n357, n108, &n399);
	n399 = assign_value_to_net(ax_values, 398, n399);
	int n448;
	AO21x1_ASAP7_6t_R( n108, n358, n355, &n448);
	n448 = assign_value_to_net(ax_values, 447, n448);
	int n29;
	OA22x1_ASAP7_6t_R( n263, n108, n27, n355, &n29);
	n29 = assign_value_to_net(ax_values, 28, n29);
	int n7;
	OAI22xp5_ASAP7_6t_R( n263, n108, n27, n355, &n7);
	n7 = assign_value_to_net(ax_values, 6, n7);
	int n107;
	XNOR2xp5f_ASAP7_6t_R( n289, n133, &n107);
	n107 = assign_value_to_net(ax_values, 106, n107);
	int n85;
	AND2x2_ASAP7_6t_R( n362, n363, &n85);
	n85 = assign_value_to_net(ax_values, 84, n85);
	int n397;
	XOR2xp5r_ASAP7_6t_R( n363, n362, &n397);
	n397 = assign_value_to_net(ax_values, 396, n397);
	int n315;
	XNOR2xp5f_ASAP7_6t_R( n84, n304, &n315);
	n315 = assign_value_to_net(ax_values, 314, n315);
	int n148;
	NAND2xp5_ASAP7_6t_R( n305, n84, &n148);
	n148 = assign_value_to_net(ax_values, 147, n148);
	int n197;
	NAND2xp5_ASAP7_6t_R( n47, n210, &n197);
	n197 = assign_value_to_net(ax_values, 196, n197);
	int n309;
	XOR2xp5r_ASAP7_6t_R( n47, n210, &n309);
	n309 = assign_value_to_net(ax_values, 308, n309);
	int n295;
	XNOR2xp5f_ASAP7_6t_R( n55, n57, &n295);
	n295 = assign_value_to_net(ax_values, 294, n295);
	int n193;
	NAND2xp5_ASAP7_6t_R( n235, n373, &n193);
	n193 = assign_value_to_net(ax_values, 192, n193);
	int n236;
	XNOR2xp5_ASAP7_6t_R( n235, in_a[1], &n236);
	n236 = assign_value_to_net(ax_values, 235, n236);
	int n126;
	NAND2xp5_ASAP7_6t_R( n335, n334, &n126);
	n126 = assign_value_to_net(ax_values, 125, n126);
	int n128;
	XNOR2xp5_ASAP7_6t_R( n334, n335, &n128);
	n128 = assign_value_to_net(ax_values, 127, n128);
	int n119;
	INVxp5_ASAP7_6t_R( n330, &n119);
	n119 = assign_value_to_net(ax_values, 118, n119);
	int n349;
	XOR2xp5r_ASAP7_6t_R( n330, n329, &n349);
	n349 = assign_value_to_net(ax_values, 348, n349);
	int n140;
	NAND2xp5_ASAP7_6t_R( n138, n323, &n140);
	n140 = assign_value_to_net(ax_values, 139, n140);
	int n120;
	NOR2xp5_ASAP7_6t_R( n123, n121, &n120);
	n120 = assign_value_to_net(ax_values, 119, n120);
	int n112;
	XNOR2xp5f_ASAP7_6t_R( n213, n214, &n112);
	n112 = assign_value_to_net(ax_values, 111, n112);
	int n190;
	INVxp5_ASAP7_6t_R( n191, &n190);
	n190 = assign_value_to_net(ax_values, 189, n190);
	int n454;
	AO22x1_ASAP7_6t_R( n447, n446, n445, n444, &n454);
	n454 = assign_value_to_net(ax_values, 453, n454);
	int n141;
	XNOR2xp5_ASAP7_6t_R( n446, n447, &n141);
	n141 = assign_value_to_net(ax_values, 140, n141);
	int n442;
	INVx1_ASAP7_6t_R( n430, &n442);
	n442 = assign_value_to_net(ax_values, 441, n442);
	int n462;
	INVx1_ASAP7_6t_R( n479, &n462);
	n462 = assign_value_to_net(ax_values, 461, n462);
	int n480;
	XOR2xp5_ASAP7_6t_R( n478, n479, &n480);
	n480 = assign_value_to_net(ax_values, 479, n480);
	int n429;
	XOR2xp5_ASAP7_6t_R( n425, n430, &n429);
	n429 = assign_value_to_net(ax_values, 428, n429);
	int n115;
	INVxp5_ASAP7_6t_R( n310, &n115);
	n115 = assign_value_to_net(ax_values, 114, n115);
	int n249;
	XNOR2xp5f_ASAP7_6t_R( n124, n259, &n249);
	n249 = assign_value_to_net(ax_values, 248, n249);
	int n308;
	INVxp5_ASAP7_6t_R( n61, &n308);
	n308 = assign_value_to_net(ax_values, 307, n308);
	int n163;
	NAND2xp5_ASAP7_6t_R( n293, n294, &n163);
	n163 = assign_value_to_net(ax_values, 162, n163);
	int n164;
	XNOR2xp5_ASAP7_6t_R( n293, n294, &n164);
	n164 = assign_value_to_net(ax_values, 163, n164);
	int n117;
	NAND2xp5R_ASAP7_6t_R( n289, n132, &n117);
	n117 = assign_value_to_net(ax_values, 116, n117);
	int n367;
	INVxp5_ASAP7_6t_R( n366, &n367);
	n367 = assign_value_to_net(ax_values, 366, n367);
	int n591;
	AOI21xp5_ASAP7_6t_R( n594, n597, n378, &n591);
	n591 = assign_value_to_net(ax_values, 590, n591);
	XNOR2xp5_ASAP7_6t_R( n596, n597, &out[2]);
	out[2] = assign_value_to_net(ax_values, 604, out[2]);
	AND2x2_ASAP7_6t_R( n602, n601, &out[1]);
	out[1] = assign_value_to_net(ax_values, 603, out[1]);
	int n589;
	NOR2xp5_ASAP7_6t_R( n379, n134, &n589);
	n589 = assign_value_to_net(ax_values, 588, n589);
	int n38;
	NAND2xp5R_ASAP7_6t_R( n134, n379, &n38);
	n38 = assign_value_to_net(ax_values, 37, n38);
	int n181;
	AOI21xp5_ASAP7_6t_R( n352, n351, n177, &n181);
	n181 = assign_value_to_net(ax_values, 180, n181);
	int n284;
	XOR2xp5r_ASAP7_6t_R( n272, n273, &n284);
	n284 = assign_value_to_net(ax_values, 283, n284);
	int n279;
	AO22x1_ASAP7_6t_R( n273, n272, n271, n270, &n279);
	n279 = assign_value_to_net(ax_values, 278, n279);
	int n59;
	INVx1_ASAP7_6t_R( n114, &n59);
	n59 = assign_value_to_net(ax_values, 58, n59);
	int n174;
	AOI21xp5_ASAP7_6t_R( n297, n298, n52, &n174);
	n174 = assign_value_to_net(ax_values, 173, n174);
	int n130;
	XNOR2xp5_ASAP7_6t_R( n35, n395, &n130);
	n130 = assign_value_to_net(ax_values, 129, n130);
	int n50;
	INVxp5_ASAP7_6t_R( n395, &n50);
	n50 = assign_value_to_net(ax_values, 49, n50);
	int n244;
	XOR2xp5_ASAP7_6t_R( n256, n257, &n244);
	n244 = assign_value_to_net(ax_values, 243, n244);
	int n188;
	INVx1_ASAP7_6t_R( n189, &n188);
	n188 = assign_value_to_net(ax_values, 187, n188);
	int n125;
	INVx1_ASAP7_6t_R( n239, &n125);
	n125 = assign_value_to_net(ax_values, 124, n125);
	int n194;
	XNOR2xp5f_ASAP7_6t_R( n241, n240, &n194);
	n194 = assign_value_to_net(ax_values, 193, n194);
	int n187;
	INVx1_ASAP7_6t_R( n277, &n187);
	n187 = assign_value_to_net(ax_values, 186, n187);
	int n74;
	AOI22xp5_ASAP7_6t_R( n274, n275, n277, n276, &n74);
	n74 = assign_value_to_net(ax_values, 73, n74);
	int n450;
	XOR2xp5r_ASAP7_6t_R( n449, n448, &n450);
	n450 = assign_value_to_net(ax_values, 449, n450);
	int n171;
	NAND2xp5_ASAP7_6t_R( n449, n448, &n171);
	n171 = assign_value_to_net(ax_values, 170, n171);
	int n109;
	NOR2xp5_ASAP7_6t_R( n29, n110, &n109);
	n109 = assign_value_to_net(ax_values, 108, n109);
	int n86;
	XOR2xp5r_ASAP7_6t_R( n7, n111, &n86);
	n86 = assign_value_to_net(ax_values, 85, n86);
	int n338;
	XNOR2xp5f_ASAP7_6t_R( n107, n106, &n338);
	n338 = assign_value_to_net(ax_values, 337, n338);
	int n21;
	NAND2xp5R_ASAP7_6t_R( n107, n336, &n21);
	n21 = assign_value_to_net(ax_values, 20, n21);
	int n48;
	XNOR2xp5f_ASAP7_6t_R( n85, n399, &n48);
	n48 = assign_value_to_net(ax_values, 47, n48);
	int n136;
	NAND2xp5_ASAP7_6t_R( n399, n85, &n136);
	n136 = assign_value_to_net(ax_values, 135, n136);
	int n36;
	XNOR2xp5_ASAP7_6t_R( n397, n396, &n36);
	n36 = assign_value_to_net(ax_values, 35, n36);
	int n325;
	XNOR2xp5_ASAP7_6t_R( n315, n116, &n325);
	n325 = assign_value_to_net(ax_values, 324, n325);
	int n63;
	INVxp5_ASAP7_6t_R( n148, &n63);
	n63 = assign_value_to_net(ax_values, 62, n63);
	int n196;
	INVxp5_ASAP7_6t_R( n197, &n196);
	n196 = assign_value_to_net(ax_values, 195, n196);
	int n28;
	AOI22xp5_ASAP7_6t_R( n56, n55, n295, n296, &n28);
	n28 = assign_value_to_net(ax_values, 27, n28);
	int n307;
	XNOR2xp5_ASAP7_6t_R( n295, n45, &n307);
	n307 = assign_value_to_net(ax_values, 306, n307);
	int n173;
	AOI22xp5_ASAP7_6t_R( n56, n55, n295, n296, &n173);
	n173 = assign_value_to_net(ax_values, 172, n173);
	int n192;
	INVxp5_ASAP7_6t_R( n193, &n192);
	n192 = assign_value_to_net(ax_values, 191, n192);
	int n227;
	XOR2xp5_ASAP7_6t_R( n236, n257, &n227);
	n227 = assign_value_to_net(ax_values, 226, n227);
	int n51;
	XNOR2xp5_ASAP7_6t_R( n128, n127, &n51);
	n51 = assign_value_to_net(ax_values, 50, n51);
	int n339;
	OAI21xp5_ASAP7_6t_R( n128, n127, n126, &n339);
	n339 = assign_value_to_net(ax_values, 338, n339);
	int n350;
	INVx1_ASAP7_6t_R( n349, &n350);
	n350 = assign_value_to_net(ax_values, 349, n350);
	int n326;
	OAI21xp5_ASAP7_6t_R( n119, n118, n140, &n326);
	n326 = assign_value_to_net(ax_values, 325, n326);
	int n198;
	AOI21xp5_ASAP7_6t_R( n214, n213, n120, &n198);
	n198 = assign_value_to_net(ax_values, 197, n198);
	int n185;
	AOI21x1_ASAP7_6t_R( n258, n259, n190, &n185);
	n185 = assign_value_to_net(ax_values, 184, n185);
	int n89;
	INVxp5_ASAP7_6t_R( n141, &n89);
	n89 = assign_value_to_net(ax_values, 88, n89);
	int n453;
	XOR2xp5r_ASAP7_6t_R( n443, n442, &n453);
	n453 = assign_value_to_net(ax_values, 452, n453);
	int n440;
	AO22x1_ASAP7_6t_R( n442, n443, n436, n435, &n440);
	n440 = assign_value_to_net(ax_values, 439, n440);
	int n465;
	XOR2xp5r_ASAP7_6t_R( n462, n463, &n465);
	n465 = assign_value_to_net(ax_values, 464, n465);
	int n473;
	XOR2xp5r_ASAP7_6t_R( n480, n481, &n473);
	n473 = assign_value_to_net(ax_values, 472, n473);
	int n484;
	AO22x1_ASAP7_6t_R( n481, n480, n479, n478, &n484);
	n484 = assign_value_to_net(ax_values, 483, n484);
	int n457;
	XOR2xp5_ASAP7_6t_R( n429, n428, &n457);
	n457 = assign_value_to_net(ax_values, 456, n457);
	int n464;
	AO22x1_ASAP7_6t_R( n428, n429, n430, n425, &n464);
	n464 = assign_value_to_net(ax_values, 463, n464);
	int n312;
	XNOR2xp5_ASAP7_6t_R( n309, n115, &n312);
	n312 = assign_value_to_net(ax_values, 311, n312);
	int n102;
	INVx1_ASAP7_6t_R( n249, &n102);
	n102 = assign_value_to_net(ax_values, 101, n102);
	int n400;
	AO21x1_ASAP7_6t_R( n396, n397, n367, &n400);
	n400 = assign_value_to_net(ax_values, 399, n400);
	int n592;
	INVx1_ASAP7_6t_R( n591, &n592);
	n592 = assign_value_to_net(ax_values, 591, n592);
	int n590;
	INVxp5_ASAP7_6t_R( n589, &n590);
	n590 = assign_value_to_net(ax_values, 589, n590);
	int n587;
	OA21x1_ASAP7_6t_R( n589, n591, n38, &n587);
	n587 = assign_value_to_net(ax_values, 586, n587);
	int n402;
	XNOR2xp5f_ASAP7_6t_R( n181, n348, &n402);
	n402 = assign_value_to_net(ax_values, 401, n402);
	int n101;
	INVx1_ASAP7_6t_R( n284, &n101);
	n101 = assign_value_to_net(ax_values, 100, n101);
	int n91;
	INVxp5_ASAP7_6t_R( n279, &n91);
	n91 = assign_value_to_net(ax_values, 90, n91);
	int n584;
	NOR2xp5_ASAP7_6t_R( n392, n130, &n584);
	n584 = assign_value_to_net(ax_values, 583, n584);
	int n586;
	NAND2xp5_ASAP7_6t_R( n392, n130, &n586);
	n586 = assign_value_to_net(ax_values, 585, n586);
	int n15;
	OA21x1_ASAP7_6t_R( n35, n50, n49, &n15);
	n15 = assign_value_to_net(ax_values, 14, n15);
	int n231;
	INVx1_ASAP7_6t_R( n244, &n231);
	n231 = assign_value_to_net(ax_values, 230, n231);
	int n166;
	AOI21x1_ASAP7_6t_R( n257, n256, n188, &n166);
	n166 = assign_value_to_net(ax_values, 165, n166);
	int n23;
	AOI21xp5_ASAP7_6t_R( n241, n240, n125, &n23);
	n23 = assign_value_to_net(ax_values, 22, n23);
	int n26;
	AO21x1_ASAP7_6t_R( n240, n241, n125, &n26);
	n26 = assign_value_to_net(ax_values, 25, n26);
	int n228;
	INVx1_ASAP7_6t_R( n194, &n228);
	n228 = assign_value_to_net(ax_values, 227, n228);
	int n280;
	XNOR2xp5f_ASAP7_6t_R( n276, n187, &n280);
	n280 = assign_value_to_net(ax_values, 279, n280);
	int n278;
	XNOR2xp5_ASAP7_6t_R( n74, n73, &n278);
	n278 = assign_value_to_net(ax_values, 277, n278);
	int n72;
	NOR2xp5_ASAP7_6t_R( n445, n74, &n72);
	n72 = assign_value_to_net(ax_values, 71, n72);
	int n87;
	INVxp5_ASAP7_6t_R( n86, &n87);
	n87 = assign_value_to_net(ax_values, 86, n87);
	int n172;
	AOI21xp5_ASAP7_6t_R( n86, n282, n109, &n172);
	n172 = assign_value_to_net(ax_values, 171, n172);
	int n324;
	NAND2xp5R_ASAP7_6t_R( n21, n117, &n324);
	n324 = assign_value_to_net(ax_values, 323, n324);
	int n149;
	AOI21x1_ASAP7_6t_R( n316, n315, n63, &n149);
	n149 = assign_value_to_net(ax_values, 148, n149);
	int n195;
	AOI21xp5_ASAP7_6t_R( n309, n310, n196, &n195);
	n195 = assign_value_to_net(ax_values, 194, n195);
	int n226;
	MAJIxp5_ASAP7_6t_R( n112, n28, n174, &n226);
	n226 = assign_value_to_net(ax_values, 225, n226);
	int n60;
	INVxp5_ASAP7_6t_R( n307, &n60);
	n60 = assign_value_to_net(ax_values, 59, n60);
	int n66;
	XNOR2xp5_ASAP7_6t_R( n173, n174, &n66);
	n66 = assign_value_to_net(ax_values, 65, n66);
	int n103;
	AOI21xp5_ASAP7_6t_R( n257, n236, n192, &n103);
	n103 = assign_value_to_net(ax_values, 102, n103);
	int n225;
	INVxp5_ASAP7_6t_R( n227, &n225);
	n225 = assign_value_to_net(ax_values, 224, n225);
	int n401;
	INVxp5_ASAP7_6t_R( n51, &n401);
	n401 = assign_value_to_net(ax_values, 400, n401);
	int n337;
	INVx1_ASAP7_6t_R( n339, &n337);
	n337 = assign_value_to_net(ax_values, 336, n337);
	int n81;
	NAND2xp5_ASAP7_6t_R( n325, n326, &n81);
	n81 = assign_value_to_net(ax_values, 80, n81);
	int n83;
	XNOR2xp5f_ASAP7_6t_R( n325, n326, &n83);
	n83 = assign_value_to_net(ax_values, 82, n83);
	int n184;
	INVx1_ASAP7_6t_R( n185, &n184);
	n184 = assign_value_to_net(ax_values, 183, n184);
	int n455;
	XOR2x2_ASAP7_6t_R( n453, n454, &n455);
	n455 = assign_value_to_net(ax_values, 454, n455);
	int n458;
	XNOR2xp5_ASAP7_6t_R( n440, n3, &n458);
	n458 = assign_value_to_net(ax_values, 457, n458);
	int n486;
	NAND2xp5_ASAP7_6t_R( n484, n483, &n486);
	n486 = assign_value_to_net(ax_values, 485, n486);
	int n485;
	OR2x2_ASAP7_6t_R( n483, n484, &n485);
	n485 = assign_value_to_net(ax_values, 484, n485);
	int n474;
	AO22x1_ASAP7_6t_R( n465, n464, n463, n462, &n474);
	n474 = assign_value_to_net(ax_values, 473, n474);
	int n471;
	XOR2xp5_ASAP7_6t_R( n464, n465, &n471);
	n471 = assign_value_to_net(ax_values, 470, n471);
	int n137;
	INVxp5_ASAP7_6t_R( n400, &n137);
	n137 = assign_value_to_net(ax_values, 136, n137);
	int n37;
	XNOR2xp5f_ASAP7_6t_R( n48, n400, &n37);
	n37 = assign_value_to_net(ax_values, 36, n37);
	int n593;
	NAND2xp5R_ASAP7_6t_R( n590, n38, &n593);
	n593 = assign_value_to_net(ax_values, 592, n593);
	int n404;
	XNOR2xp5_ASAP7_6t_R( n402, n51, &n404);
	n404 = assign_value_to_net(ax_values, 403, n404);
	int n585;
	INVxp5_ASAP7_6t_R( n584, &n585);
	n585 = assign_value_to_net(ax_values, 584, n585);
	int n576;
	OAI21xp5b_ASAP7_6t_R( n587, n584, n586, &n576);
	n576 = assign_value_to_net(ax_values, 575, n576);
	int n129;
	NOR2xp5_ASAP7_6t_R( n36, n15, &n129);
	n129 = assign_value_to_net(ax_values, 128, n129);
	int n574;
	NAND2xp5_ASAP7_6t_R( n36, n15, &n574);
	n574 = assign_value_to_net(ax_values, 573, n574);
	int n167;
	XNOR2xp5f_ASAP7_6t_R( n166, n185, &n167);
	n167 = assign_value_to_net(ax_values, 166, n167);
	int n143;
	INVx1_ASAP7_6t_R( n228, &n143);
	n143 = assign_value_to_net(ax_values, 142, n143);
	int n78;
	INVx1_ASAP7_6t_R( n280, &n78);
	n78 = assign_value_to_net(ax_values, 77, n78);
	int n186;
	INVxp5_ASAP7_6t_R( n280, &n186);
	n186 = assign_value_to_net(ax_values, 185, n186);
	int n287;
	XNOR2xp5f_ASAP7_6t_R( n278, n91, &n287);
	n287 = assign_value_to_net(ax_values, 286, n287);
	int n452;
	AO21x1_ASAP7_6t_R( n278, n279, n72, &n452);
	n452 = assign_value_to_net(ax_values, 451, n452);
	int n79;
	XNOR2xp5_ASAP7_6t_R( n87, n80, &n79);
	n79 = assign_value_to_net(ax_values, 78, n79);
	int n170;
	INVxp5_ASAP7_6t_R( n172, &n170);
	n170 = assign_value_to_net(ax_values, 169, n170);
	int n65;
	XNOR2xp5f_ASAP7_6t_R( n172, n450, &n65);
	n65 = assign_value_to_net(ax_values, 64, n65);
	int n340;
	XNOR2xp5f_ASAP7_6t_R( n164, n324, &n340);
	n340 = assign_value_to_net(ax_values, 339, n340);
	int n20;
	INVxp5_ASAP7_6t_R( n324, &n20);
	n20 = assign_value_to_net(ax_values, 19, n20);
	int n150;
	XNOR2xp5f_ASAP7_6t_R( n149, n61, &n150);
	n150 = assign_value_to_net(ax_values, 149, n150);
	int n147;
	INVxp5_ASAP7_6t_R( n149, &n147);
	n147 = assign_value_to_net(ax_values, 146, n147);
	int n41;
	XOR2xp5r_ASAP7_6t_R( n198, n195, &n41);
	n41 = assign_value_to_net(ax_values, 40, n41);
	int n243;
	MAJIxp5_ASAP7_6t_R( n194, n198, n195, &n243);
	n243 = assign_value_to_net(ax_values, 242, n243);
	int n311;
	XNOR2xp5_ASAP7_6t_R( n66, n112, &n311);
	n311 = assign_value_to_net(ax_values, 310, n311);
	int n97;
	NAND2xp5R_ASAP7_6t_R( n103, n23, &n97);
	n97 = assign_value_to_net(ax_values, 96, n97);
	int n100;
	INVx1_ASAP7_6t_R( n103, &n100);
	n100 = assign_value_to_net(ax_values, 99, n100);
	int n314;
	XNOR2xp5f_ASAP7_6t_R( n226, n225, &n314);
	n314 = assign_value_to_net(ax_values, 313, n314);
	int n179;
	NAND2xp5_ASAP7_6t_R( n402, n401, &n179);
	n179 = assign_value_to_net(ax_values, 178, n179);
	int n46;
	XNOR2xp5f_ASAP7_6t_R( n338, n337, &n46);
	n46 = assign_value_to_net(ax_values, 45, n46);
	int n165;
	INVxp5_ASAP7_6t_R( n184, &n165);
	n165 = assign_value_to_net(ax_values, 164, n165);
	int n469;
	XOR2xp5_ASAP7_6t_R( n458, n457, &n469);
	n469 = assign_value_to_net(ax_values, 468, n469);
	int n472;
	AO22x1_ASAP7_6t_R( n457, n458, n441, n440, &n472);
	n472 = assign_value_to_net(ax_values, 471, n472);
	int n487;
	AND2x2_ASAP7_6t_R( n486, n485, &n487);
	n487 = assign_value_to_net(ax_values, 486, n487);
	int n491;
	OR2x2_ASAP7_6t_R( n473, n474, &n491);
	n491 = assign_value_to_net(ax_values, 490, n491);
	int n492;
	NAND2xp5R_ASAP7_6t_R( n474, n473, &n492);
	n492 = assign_value_to_net(ax_values, 491, n492);
	int n403;
	OAI21xp5_ASAP7_6t_R( n48, n137, n136, &n403);
	n403 = assign_value_to_net(ax_values, 402, n403);
	int n67;
	NAND2xp5R_ASAP7_6t_R( n37, n398, &n67);
	n67 = assign_value_to_net(ax_values, 66, n67);
	int n556;
	NOR2x1_ASAP7_6t_R( n398, n37, &n556);
	n556 = assign_value_to_net(ax_values, 555, n556);
	XNOR2xp5_ASAP7_6t_R( n593, n592, &out[3]);
	out[3] = assign_value_to_net(ax_values, 605, out[3]);
	int n42;
	INVx1_ASAP7_6t_R( n404, &n42);
	n42 = assign_value_to_net(ax_values, 41, n42);
	int n588;
	NAND2xp5_ASAP7_6t_R( n586, n585, &n588);
	n588 = assign_value_to_net(ax_values, 587, n588);
	int n71;
	INVxp5_ASAP7_6t_R( n129, &n71);
	n71 = assign_value_to_net(ax_values, 70, n71);
	int n558;
	AOI21xp5_ASAP7_6t_R( n576, n574, n129, &n558);
	n558 = assign_value_to_net(ax_values, 557, n558);
	int n281;
	INVx1_ASAP7_6t_R( n167, &n281);
	n281 = assign_value_to_net(ax_values, 280, n281);
	int n169;
	NAND2xp5_ASAP7_6t_R( n170, n450, &n169);
	n169 = assign_value_to_net(ax_values, 168, n169);
	int n451;
	XNOR2xp5_ASAP7_6t_R( n65, n141, &n451);
	n451 = assign_value_to_net(ax_values, 450, n451);
	int n88;
	NAND2xp5_ASAP7_6t_R( n89, n65, &n88);
	n88 = assign_value_to_net(ax_values, 87, n88);
	int n82;
	INVxp5_ASAP7_6t_R( n340, &n82);
	n82 = assign_value_to_net(ax_values, 81, n82);
	int n407;
	XNOR2xp5f_ASAP7_6t_R( n83, n340, &n407);
	n407 = assign_value_to_net(ax_values, 406, n407);
	int n131;
	OAI21xp5_ASAP7_6t_R( n20, n164, n163, &n131);
	n131 = assign_value_to_net(ax_values, 130, n131);
	int n327;
	XNOR2xp5_ASAP7_6t_R( n150, n59, &n327);
	n327 = assign_value_to_net(ax_values, 326, n327);
	int n176;
	NAND2xp5_ASAP7_6t_R( n308, n147, &n176);
	n176 = assign_value_to_net(ax_values, 175, n176);
	int n313;
	XNOR2xp5f_ASAP7_6t_R( n143, n41, &n313);
	n313 = assign_value_to_net(ax_values, 312, n313);
	int n246;
	XNOR2xp5f_ASAP7_6t_R( n243, n231, &n246);
	n246 = assign_value_to_net(ax_values, 245, n246);
	int n11;
	INVxp5_ASAP7_6t_R( n243, &n11);
	n11 = assign_value_to_net(ax_values, 10, n11);
	int n98;
	INVxp5_ASAP7_6t_R( n97, &n98);
	n98 = assign_value_to_net(ax_values, 97, n98);
	int n99;
	NAND2xp5R_ASAP7_6t_R( n26, n100, &n99);
	n99 = assign_value_to_net(ax_values, 98, n99);
	int n406;
	OAI21xp25_ASAP7_6t_R( n181, n180, n179, &n406);
	n406 = assign_value_to_net(ax_values, 405, n406);
	int n93;
	AOI22xp25_ASAP7_6t_R( n338, n339, n349, n46, &n93);
	n93 = assign_value_to_net(ax_values, 92, n93);
	int n105;
	XNOR2xp5f_ASAP7_6t_R( n46, n350, &n105);
	n105 = assign_value_to_net(ax_values, 104, n105);
	int n77;
	OAI22xp5_ASAP7_6t_R( n165, n166, n78, n167, &n77);
	n77 = assign_value_to_net(ax_values, 76, n77);
	int n501;
	NAND2xp5R_ASAP7_6t_R( n472, n471, &n501);
	n501 = assign_value_to_net(ax_values, 500, n501);
	int n499;
	NOR2xp5_ASAP7_6t_R( n471, n472, &n499);
	n499 = assign_value_to_net(ax_values, 498, n499);
	int n475;
	INVxp5_ASAP7_6t_R( n492, &n475);
	n475 = assign_value_to_net(ax_values, 474, n475);
	int n493;
	AND2x2_ASAP7_6t_R( n492, n491, &n493);
	n493 = assign_value_to_net(ax_values, 492, n493);
	int n43;
	INVx1_ASAP7_6t_R( n403, &n43);
	n43 = assign_value_to_net(ax_values, 42, n43);
	int n554;
	NAND2xp5R_ASAP7_6t_R( n404, n403, &n554);
	n554 = assign_value_to_net(ax_values, 553, n554);
	int n557;
	INVxp5_ASAP7_6t_R( n556, &n557);
	n557 = assign_value_to_net(ax_values, 556, n557);
	XOR2xp5_ASAP7_6t_R( n588, n587, &out[4]);
	out[4] = assign_value_to_net(ax_values, 606, out[4]);
	int n575;
	NAND2xp5_ASAP7_6t_R( n574, n71, &n575);
	n575 = assign_value_to_net(ax_values, 574, n575);
	int n559;
	INVxp5_ASAP7_6t_R( n558, &n559);
	n559 = assign_value_to_net(ax_values, 558, n559);
	int n552;
	OAI21xp5_ASAP7_6t_R( n556, n558, n67, &n552);
	n552 = assign_value_to_net(ax_values, 551, n552);
	int n286;
	XNOR2xp5_ASAP7_6t_R( n281, n186, &n286);
	n286 = assign_value_to_net(ax_values, 285, n286);
	int n456;
	NAND2xp5_ASAP7_6t_R( n171, n169, &n456);
	n456 = assign_value_to_net(ax_values, 455, n456);
	int n420;
	XOR2x2_ASAP7_6t_R( n451, n452, &n420);
	n420 = assign_value_to_net(ax_values, 419, n420);
	int n90;
	NAND2xp5R_ASAP7_6t_R( n452, n451, &n90);
	n90 = assign_value_to_net(ax_values, 89, n90);
	int n410;
	OAI21xp5_ASAP7_6t_R( n83, n82, n81, &n410);
	n410 = assign_value_to_net(ax_values, 409, n410);
	int n341;
	INVx1_ASAP7_6t_R( n407, &n341);
	n341 = assign_value_to_net(ax_values, 340, n341);
	int n328;
	XNOR2xp5f_ASAP7_6t_R( n131, n60, &n328);
	n328 = assign_value_to_net(ax_values, 327, n328);
	int n58;
	INVxp5_ASAP7_6t_R( n327, &n58);
	n58 = assign_value_to_net(ax_values, 57, n58);
	int n19;
	OAI21xp5_ASAP7_6t_R( n114, n150, n176, &n19);
	n19 = assign_value_to_net(ax_values, 18, n19);
	int n415;
	AO22x1_ASAP7_6t_R( n313, n314, n227, n226, &n415);
	n415 = assign_value_to_net(ax_values, 414, n415);
	int n142;
	XOR2xp5r_ASAP7_6t_R( n314, n313, &n142);
	n142 = assign_value_to_net(ax_values, 141, n142);
	int n12;
	INVxp5_ASAP7_6t_R( n11, &n12);
	n12 = assign_value_to_net(ax_values, 11, n12);
	int n44;
	NAND2xp5R_ASAP7_6t_R( n97, n99, &n44);
	n44 = assign_value_to_net(ax_values, 43, n44);
	int n283;
	AOI21xp5_ASAP7_6t_R( n102, n99, n98, &n283);
	n283 = assign_value_to_net(ax_values, 282, n283);
	int n408;
	INVxp5_ASAP7_6t_R( n93, &n408);
	n408 = assign_value_to_net(ax_values, 407, n408);
	int n579;
	NAND2xp5R_ASAP7_6t_R( n105, n406, &n579);
	n579 = assign_value_to_net(ax_values, 578, n579);
	int n577;
	NOR2x1_ASAP7_6t_R( n406, n105, &n577);
	n577 = assign_value_to_net(ax_values, 576, n577);
	int n76;
	INVxp5_ASAP7_6t_R( n77, &n76);
	n76 = assign_value_to_net(ax_values, 75, n76);
	int n288;
	XNOR2xp5f_ASAP7_6t_R( n77, n79, &n288);
	n288 = assign_value_to_net(ax_values, 287, n288);
	int n500;
	INVx1_ASAP7_6t_R( n499, &n500);
	n500 = assign_value_to_net(ax_values, 499, n500);
	int n553;
	NAND2xp5R_ASAP7_6t_R( n43, n42, &n553);
	n553 = assign_value_to_net(ax_values, 552, n553);
	int n405;
	INVx1_ASAP7_6t_R( n554, &n405);
	n405 = assign_value_to_net(ax_values, 404, n405);
	int n561;
	NAND2xp5_ASAP7_6t_R( n557, n67, &n561);
	n561 = assign_value_to_net(ax_values, 560, n561);
	XNOR2xp5_ASAP7_6t_R( n576, n575, &out[5]);
	out[5] = assign_value_to_net(ax_values, 607, out[5]);
	int n560;
	INVx1_ASAP7_6t_R( n559, &n560);
	n560 = assign_value_to_net(ax_values, 559, n560);
	int n8;
	INVxp5_ASAP7_6t_R( n552, &n8);
	n8 = assign_value_to_net(ax_values, 7, n8);
	int n261;
	INVx1_ASAP7_6t_R( n286, &n261);
	n261 = assign_value_to_net(ax_values, 260, n261);
	int n468;
	AO22x1_ASAP7_6t_R( n456, n455, n454, n453, &n468);
	n468 = assign_value_to_net(ax_values, 467, n468);
	int n466;
	XOR2xp5_ASAP7_6t_R( n455, n456, &n466);
	n466 = assign_value_to_net(ax_values, 465, n466);
	int n467;
	NAND2xp5_ASAP7_6t_R( n90, n88, &n467);
	n467 = assign_value_to_net(ax_values, 466, n467);
	int n570;
	NAND2xp5R_ASAP7_6t_R( n93, n341, &n570);
	n570 = assign_value_to_net(ax_values, 569, n570);
	int n411;
	AO22x1_ASAP7_6t_R( n307, n131, n327, n328, &n411);
	n411 = assign_value_to_net(ax_values, 410, n411);
	int n22;
	XNOR2xp5f_ASAP7_6t_R( n328, n58, &n22);
	n22 = assign_value_to_net(ax_values, 21, n22);
	int n146;
	XNOR2xp5f_ASAP7_6t_R( n19, n312, &n146);
	n146 = assign_value_to_net(ax_values, 145, n146);
	int n4;
	INVxp5_ASAP7_6t_R( n19, &n4);
	n4 = assign_value_to_net(ax_values, 3, n4);
	int n248;
	NAND2xp5R_ASAP7_6t_R( n12, n244, &n248);
	n248 = assign_value_to_net(ax_values, 247, n248);
	int n245;
	XNOR2xp5f_ASAP7_6t_R( n44, n249, &n245);
	n245 = assign_value_to_net(ax_values, 244, n245);
	int n285;
	XNOR2xp5f_ASAP7_6t_R( n283, n101, &n285);
	n285 = assign_value_to_net(ax_values, 284, n285);
	int n571;
	NAND2xp5_ASAP7_6t_R( n408, n407, &n571);
	n571 = assign_value_to_net(ax_values, 570, n571);
	int n578;
	INVxp5_ASAP7_6t_R( n577, &n578);
	n578 = assign_value_to_net(ax_values, 577, n578);
	int n75;
	NOR2xp5_ASAP7_6t_R( n79, n76, &n75);
	n75 = assign_value_to_net(ax_values, 74, n75);
	int n419;
	XOR2x2_ASAP7_6t_R( n288, n287, &n419);
	n419 = assign_value_to_net(ax_values, 418, n419);
	int n502;
	AND2x2_ASAP7_6t_R( n501, n500, &n502);
	n502 = assign_value_to_net(ax_values, 501, n502);
	int n25;
	NAND2xp5_ASAP7_6t_R( n500, n491, &n25);
	n25 = assign_value_to_net(ax_values, 24, n25);
	int n555;
	NAND2xp5_ASAP7_6t_R( n554, n553, &n555);
	n555 = assign_value_to_net(ax_values, 554, n555);
	int n580;
	AOI21xp5_ASAP7_6t_R( n553, n552, n405, &n580);
	n580 = assign_value_to_net(ax_values, 579, n580);
	XOR2xp5_ASAP7_6t_R( n561, n560, &out[6]);
	out[6] = assign_value_to_net(ax_values, 608, out[6]);
	int n9;
	INVxp5_ASAP7_6t_R( n8, &n9);
	n9 = assign_value_to_net(ax_values, 8, n9);
	int n505;
	NAND2xp5R_ASAP7_6t_R( n469, n468, &n505);
	n505 = assign_value_to_net(ax_values, 504, n505);
	int n504;
	OR2x2_ASAP7_6t_R( n468, n469, &n504);
	n504 = assign_value_to_net(ax_values, 503, n504);
	int n550;
	NAND2xp5R_ASAP7_6t_R( n467, n466, &n550);
	n550 = assign_value_to_net(ax_values, 549, n550);
	int n549;
	OR2x2_ASAP7_6t_R( n466, n467, &n549);
	n549 = assign_value_to_net(ax_values, 548, n549);
	int n564;
	NAND2xp5R_ASAP7_6t_R( n22, n410, &n564);
	n564 = assign_value_to_net(ax_values, 563, n564);
	int n562;
	NOR2xp5_ASAP7_6t_R( n410, n22, &n562);
	n562 = assign_value_to_net(ax_values, 561, n562);
	int n412;
	XOR2xp5r_ASAP7_6t_R( n146, n311, &n412);
	n412 = assign_value_to_net(ax_values, 411, n412);
	int n5;
	INVxp5_ASAP7_6t_R( n4, &n5);
	n5 = assign_value_to_net(ax_values, 4, n5);
	int n247;
	NAND2xp5R_ASAP7_6t_R( n246, n245, &n247);
	n247 = assign_value_to_net(ax_values, 246, n247);
	int n242;
	INVx1_ASAP7_6t_R( n245, &n242);
	n242 = assign_value_to_net(ax_values, 241, n242);
	int n418;
	AO22x1_ASAP7_6t_R( n285, n286, n284, n283, &n418);
	n418 = assign_value_to_net(ax_values, 417, n418);
	int n416;
	XNOR2xp5f_ASAP7_6t_R( n285, n261, &n416);
	n416 = assign_value_to_net(ax_values, 415, n416);
	int n572;
	NAND2xp5_ASAP7_6t_R( n571, n570, &n572);
	n572 = assign_value_to_net(ax_values, 571, n572);
	int n409;
	INVx1_ASAP7_6t_R( n571, &n409);
	n409 = assign_value_to_net(ax_values, 408, n409);
	int n583;
	NAND2xp5_ASAP7_6t_R( n579, n578, &n583);
	n583 = assign_value_to_net(ax_values, 582, n583);
	int n421;
	AO21x1_ASAP7_6t_R( n287, n288, n75, &n421);
	n421 = assign_value_to_net(ax_values, 420, n421);
	int n581;
	INVxp5_ASAP7_6t_R( n580, &n581);
	n581 = assign_value_to_net(ax_values, 580, n581);
	int n569;
	OAI21xp5_ASAP7_6t_R( n577, n580, n579, &n569);
	n569 = assign_value_to_net(ax_values, 568, n569);
	XNOR2xp5_ASAP7_6t_R( n9, n555, &out[7]);
	out[7] = assign_value_to_net(ax_values, 609, out[7]);
	int n470;
	INVx1_ASAP7_6t_R( n505, &n470);
	n470 = assign_value_to_net(ax_values, 469, n470);
	int n506;
	AND2x2_ASAP7_6t_R( n505, n504, &n506);
	n506 = assign_value_to_net(ax_values, 505, n506);
	int n503;
	INVx1_ASAP7_6t_R( n550, &n503);
	n503 = assign_value_to_net(ax_values, 502, n503);
	int n495;
	NAND2xp5R_ASAP7_6t_R( n549, n504, &n495);
	n495 = assign_value_to_net(ax_values, 494, n495);
	int n563;
	INVxp5_ASAP7_6t_R( n562, &n563);
	n563 = assign_value_to_net(ax_values, 562, n563);
	int n538;
	NOR2x1_ASAP7_6t_R( n411, n412, &n538);
	n538 = assign_value_to_net(ax_values, 537, n538);
	int n539;
	NAND2xp5R_ASAP7_6t_R( n412, n411, &n539);
	n539 = assign_value_to_net(ax_values, 538, n539);
	int n145;
	NAND2xp5_ASAP7_6t_R( n312, n5, &n145);
	n145 = assign_value_to_net(ax_values, 144, n145);
	int n417;
	NAND2x1_ASAP7_6t_R( n248, n247, &n417);
	n417 = assign_value_to_net(ax_values, 416, n417);
	int n414;
	XNOR2xp5f_ASAP7_6t_R( n246, n242, &n414);
	n414 = assign_value_to_net(ax_values, 413, n414);
	int n507;
	NOR2x2R_ASAP7_6t_R( n418, n419, &n507);
	n507 = assign_value_to_net(ax_values, 506, n507);
	int n512;
	NAND2xp5R_ASAP7_6t_R( n419, n418, &n512);
	n512 = assign_value_to_net(ax_values, 511, n512);
	int n518;
	NAND2xp5R_ASAP7_6t_R( n421, n420, &n518);
	n518 = assign_value_to_net(ax_values, 517, n518);
	int n516;
	NOR2x2R_ASAP7_6t_R( n420, n421, &n516);
	n516 = assign_value_to_net(ax_values, 515, n516);
	int n582;
	INVx1_ASAP7_6t_R( n581, &n582);
	n582 = assign_value_to_net(ax_values, 581, n582);
	int n565;
	AOI21x1_ASAP7_6t_R( n570, n569, n409, &n565);
	n565 = assign_value_to_net(ax_values, 564, n565);
	int n573;
	HB1x1_ASAP7_6t_R( n569, &n573);
	n573 = assign_value_to_net(ax_values, 572, n573);
	int n496;
	AOI21x1_ASAP7_6t_R( n503, n504, n470, &n496);
	n496 = assign_value_to_net(ax_values, 495, n496);
	int n24;
	INVxp5_ASAP7_6t_R( n503, &n24);
	n24 = assign_value_to_net(ax_values, 23, n24);
	int n490;
	NOR2xp5_ASAP7_6t_R( n499, n495, &n490);
	n490 = assign_value_to_net(ax_values, 489, n490);
	int n498;
	INVxp5_ASAP7_6t_R( n495, &n498);
	n498 = assign_value_to_net(ax_values, 497, n498);
	int n477;
	NOR2xp5_ASAP7_6t_R( n25, n495, &n477);
	n477 = assign_value_to_net(ax_values, 476, n477);
	int n568;
	NAND2xp5_ASAP7_6t_R( n564, n563, &n568);
	n568 = assign_value_to_net(ax_values, 567, n568);
	int n544;
	HB1x1_ASAP7_6t_R( n538, &n544);
	n544 = assign_value_to_net(ax_values, 543, n544);
	int n546;
	HB1x1_ASAP7_6t_R( n539, &n546);
	n546 = assign_value_to_net(ax_values, 545, n546);
	int n144;
	OAI21xp5_ASAP7_6t_R( n146, n311, n145, &n144);
	n144 = assign_value_to_net(ax_values, 143, n144);
	int n532;
	NAND2xp5R_ASAP7_6t_R( n417, n416, &n532);
	n532 = assign_value_to_net(ax_values, 531, n532);
	int n530;
	NOR2x2R_ASAP7_6t_R( n417, n416, &n530);
	n530 = assign_value_to_net(ax_values, 529, n530);
	int n527;
	NOR2xp5_ASAP7_6t_R( n415, n414, &n527);
	n527 = assign_value_to_net(ax_values, 526, n527);
	int n528;
	NAND2xp5R_ASAP7_6t_R( n415, n414, &n528);
	n528 = assign_value_to_net(ax_values, 527, n528);
	int n522;
	HB1x1_ASAP7_6t_R( n507, &n522);
	n522 = assign_value_to_net(ax_values, 521, n522);
	int n524;
	HB1x1_ASAP7_6t_R( n512, &n524);
	n524 = assign_value_to_net(ax_values, 523, n524);
	int n422;
	OAI21xp5_ASAP7_6t_R( n516, n512, n518, &n422);
	n422 = assign_value_to_net(ax_values, 421, n422);
	int n64;
	NOR2x1_ASAP7_6t_R( n507, n516, &n64);
	n64 = assign_value_to_net(ax_values, 63, n64);
	int n517;
	INVxp5_ASAP7_6t_R( n516, &n517);
	n517 = assign_value_to_net(ax_values, 516, n517);
	XOR2xp5_ASAP7_6t_R( n583, n582, &out[8]);
	out[8] = assign_value_to_net(ax_values, 610, out[8]);
	int n566;
	INVxp5_ASAP7_6t_R( n565, &n566);
	n566 = assign_value_to_net(ax_values, 565, n566);
	int n70;
	OAI21xp5_ASAP7_6t_R( n562, n565, n564, &n70);
	n70 = assign_value_to_net(ax_values, 69, n70);
	XNOR2xp5_ASAP7_6t_R( n573, n572, &out[9]);
	out[9] = assign_value_to_net(ax_values, 611, out[9]);
	int n497;
	INVxp5_ASAP7_6t_R( n496, &n497);
	n497 = assign_value_to_net(ax_values, 496, n497);
	int n489;
	OAI21xp5_ASAP7_6t_R( n499, n496, n501, &n489);
	n489 = assign_value_to_net(ax_values, 488, n489);
	int n551;
	NAND2xp5R_ASAP7_6t_R( n24, n549, &n551);
	n551 = assign_value_to_net(ax_values, 550, n551);
	int n545;
	INVxp5_ASAP7_6t_R( n544, &n545);
	n545 = assign_value_to_net(ax_values, 544, n545);
	int n168;
	NAND2xp5R_ASAP7_6t_R( n142, n144, &n168);
	n168 = assign_value_to_net(ax_values, 167, n168);
	int n540;
	NOR2x1_ASAP7_6t_R( n144, n142, &n540);
	n540 = assign_value_to_net(ax_values, 539, n540);
	int n531;
	INVxp5_ASAP7_6t_R( n530, &n531);
	n531 = assign_value_to_net(ax_values, 530, n531);
	int n535;
	INVxp5_ASAP7_6t_R( n527, &n535);
	n535 = assign_value_to_net(ax_values, 534, n535);
	int n508;
	NOR2x1_ASAP7_6t_R( n527, n530, &n508);
	n508 = assign_value_to_net(ax_values, 507, n508);
	int n529;
	INVxp5_ASAP7_6t_R( n528, &n529);
	n529 = assign_value_to_net(ax_values, 528, n529);
	int n511;
	OAI21xp5_ASAP7_6t_R( n530, n528, n532, &n511);
	n511 = assign_value_to_net(ax_values, 510, n511);
	int n523;
	INVxp5_ASAP7_6t_R( n522, &n523);
	n523 = assign_value_to_net(ax_values, 522, n523);
	int n519;
	NAND2xp5_ASAP7_6t_R( n518, n517, &n519);
	n519 = assign_value_to_net(ax_values, 518, n519);
	int n567;
	INVx1_ASAP7_6t_R( n566, &n567);
	n567 = assign_value_to_net(ax_values, 566, n567);
	int n547;
	INVxp5_ASAP7_6t_R( n70, &n547);
	n547 = assign_value_to_net(ax_values, 546, n547);
	int n476;
	AO21x1_ASAP7_6t_R( n489, n491, n475, &n476);
	n476 = assign_value_to_net(ax_values, 475, n476);
	int n548;
	NAND2xp5R_ASAP7_6t_R( n546, n545, &n548);
	n548 = assign_value_to_net(ax_values, 547, n548);
	int n40;
	OAI21xp5_ASAP7_6t_R( n540, n539, n168, &n40);
	n40 = assign_value_to_net(ax_values, 39, n40);
	int n413;
	NOR2xp5_ASAP7_6t_R( n538, n540, &n413);
	n413 = assign_value_to_net(ax_values, 412, n413);
	int n541;
	INVxp5_ASAP7_6t_R( n540, &n541);
	n541 = assign_value_to_net(ax_values, 540, n541);
	int n533;
	NAND2xp5_ASAP7_6t_R( n532, n531, &n533);
	n533 = assign_value_to_net(ax_values, 532, n533);
	int n536;
	NAND2xp5_ASAP7_6t_R( n528, n535, &n536);
	n536 = assign_value_to_net(ax_values, 535, n536);
	int n96;
	NAND2xp5R_ASAP7_6t_R( n64, n508, &n96);
	n96 = assign_value_to_net(ax_values, 95, n96);
	int n509;
	INVxp5_ASAP7_6t_R( n508, &n509);
	n509 = assign_value_to_net(ax_values, 508, n509);
	int n521;
	BUFx3_ASAP7_6t_R( n511, &n521);
	n521 = assign_value_to_net(ax_values, 520, n521);
	int n95;
	AOI21xp5_ASAP7_6t_R( n64, n511, n422, &n95);
	n95 = assign_value_to_net(ax_values, 94, n95);
	int n525;
	NAND2xp5R_ASAP7_6t_R( n524, n523, &n525);
	n525 = assign_value_to_net(ax_values, 524, n525);
	int n17;
	INVx1_ASAP7_6t_R( n519, &n17);
	n17 = assign_value_to_net(ax_values, 16, n17);
	XOR2xp5r_ASAP7_6t_R( n568, n567, &out[10]);
	out[10] = assign_value_to_net(ax_values, 612, out[10]);
	int n543;
	OAI21xp5_ASAP7_6t_R( n544, n547, n546, &n543);
	n543 = assign_value_to_net(ax_values, 542, n543);
	XOR2xp5_ASAP7_6t_R( n548, n547, &out[11]);
	out[11] = assign_value_to_net(ax_values, 613, out[11]);
	int n510;
	AOI21x1_ASAP7_6t_R( n413, n70, n40, &n510);
	n510 = assign_value_to_net(ax_values, 509, n510);
	int n542;
	NAND2xp5_ASAP7_6t_R( n541, n168, &n542);
	n542 = assign_value_to_net(ax_values, 541, n542);
	int n515;
	NOR2xp5_ASAP7_6t_R( n522, n509, &n515);
	n515 = assign_value_to_net(ax_values, 514, n515);
	int n513;
	INVx1_ASAP7_6t_R( n521, &n513);
	n513 = assign_value_to_net(ax_values, 512, n513);
	int n18;
	OAI21xp5b_ASAP7_6t_R( n510, n96, n95, &n18);
	n18 = assign_value_to_net(ax_values, 17, n18);
	int n537;
	INVx1_ASAP7_6t_R( n510, &n537);
	n537 = assign_value_to_net(ax_values, 536, n537);
	int n34;
	OAI21xp5b_ASAP7_6t_R( n510, n96, n95, &n34);
	n34 = assign_value_to_net(ax_values, 33, n34);
	XNOR2xp5_ASAP7_6t_R( n543, n542, &out[12]);
	out[12] = assign_value_to_net(ax_values, 614, out[12]);
	int n514;
	OAI21xp5_ASAP7_6t_R( n522, n513, n524, &n514);
	n514 = assign_value_to_net(ax_values, 513, n514);
	int n104;
	AOI21xp5_ASAP7_6t_R( n549, n18, n503, &n104);
	n104 = assign_value_to_net(ax_values, 103, n104);
	int n94;
	AOI21xp5_ASAP7_6t_R( n498, n18, n497, &n94);
	n94 = assign_value_to_net(ax_values, 93, n94);
	int n488;
	AOI21xp5_ASAP7_6t_R( n477, n18, n476, &n488);
	n488 = assign_value_to_net(ax_values, 487, n488);
	int n526;
	AOI21xp5_ASAP7_6t_R( n537, n508, n521, &n526);
	n526 = assign_value_to_net(ax_values, 525, n526);
	XNOR2xp5_ASAP7_6t_R( n537, n536, &out[13]);
	out[13] = assign_value_to_net(ax_values, 615, out[13]);
	int n534;
	AOI21xp5_ASAP7_6t_R( n537, n535, n529, &n534);
	n534 = assign_value_to_net(ax_values, 533, n534);
	XNOR2xp5_ASAP7_6t_R( n34, n551, &out[17]);
	out[17] = assign_value_to_net(ax_values, 619, out[17]);
	int n494;
	AOI21xp5_ASAP7_6t_R( n490, n34, n489, &n494);
	n494 = assign_value_to_net(ax_values, 493, n494);
	int n520;
	AOI21xp5_ASAP7_6t_R( n515, n537, n514, &n520);
	n520 = assign_value_to_net(ax_values, 519, n520);
	XNOR2xp5f_ASAP7_6t_R( n104, n506, &out[18]);
	out[18] = assign_value_to_net(ax_values, 620, out[18]);
	XNOR2xp5f_ASAP7_6t_R( n94, n502, &out[19]);
	out[19] = assign_value_to_net(ax_values, 621, out[19]);
	XNOR2xp5f_ASAP7_6t_R( n488, n487, &out[21]);
	out[21] = assign_value_to_net(ax_values, 623, out[21]);
	XOR2xp5_ASAP7_6t_R( n526, n525, &out[15]);
	out[15] = assign_value_to_net(ax_values, 617, out[15]);
	XOR2xp5_ASAP7_6t_R( n534, n533, &out[14]);
	out[14] = assign_value_to_net(ax_values, 616, out[14]);
	XNOR2xp5f_ASAP7_6t_R( n494, n493, &out[20]);
	out[20] = assign_value_to_net(ax_values, 622, out[20]);
	XNOR2xp5f_ASAP7_6t_R( n520, n17, &out[16]);
	out[16] = assign_value_to_net(ax_values, 618, out[16]);


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

unsigned int top_mult_uint11b_7nm(int *ax_values, unsigned int in_a, unsigned int in_b, int signed_inputs, int signed_outputs){
    //FILE *fb2d = fopen("/home/balaskas/axcarbon/circuits/mult_uint11b_7nm/b2d.txt", "a");
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

    mult_uint11b_7nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
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
    unsigned int min_error=pow(2, 20), max_error=0;
    unsigned int nabs;
    unsigned int i=0;

    double med=0;
    double mre=0;
    double dev=0, squared_sum=0;     // To accumulate squared differences for variance calculation

    double med_max=0;
    med_max = pow(2, 22) - 1;

    int signed_inputs=0;
    int signed_outputs=0;

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint11b_7nm/inputs_decimal.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);

    //FILE *fax = fopen("/home/balaskas/axcarbon/circuits/mult_uint11b_7nm/ax_values.txt", "w");
    //if (fax == NULL)
    //    exit(1);
    //int j;
    //for (j=0; j<CHROMOSOME_LENGTH; j++) fprintf(fax, "%d %d\n", j, ax_values[j]);
    //fclose(fax);
    
    //FILE *fo = fopen("/home/balaskas/axcarbon/circuits/mult_uint11b_7nm/outputs.txt", "w");
    //if (fo == NULL)
    //    exit(1);

    while(fscanf(f, "%u_%u_%u", &in_a, &in_b, &y_true) == 3) {
        i++;
        
        res = top_mult_uint11b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
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

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint11b_7nm/inputs.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);
	// char fileo[] = "/home/balaskas/axcarbon/circuits/mult_uint11b_7nm/outputs.txt";
    // FILE *fo = fopen(fileo, "w");
    // if (fo == NULL)
    //    exit(1);

    // Arrays to store binary numbers.
    int in_a_bin[11], in_b_bin[11], out_bin[outsize];
    int y_true_bin[outsize];
	// Length of each binary array.
    int len1=11, len2=11, len0=outsize;

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
            mult_uint11b_7nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
        
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
    res = top_mult_uint11b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
    return res;
}
