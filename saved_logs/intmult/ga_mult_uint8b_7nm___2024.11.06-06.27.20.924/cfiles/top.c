#include "approx0.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include "library.h"
#define CHROMOSOME_LENGTH 408
#define MAX_LENGTH 1000
#define size 8
#define outsize 16
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

void mult_uint8b_7nm_top (int *ax_values, int* in_a, int* in_b, int* out) {


	int n9;
	XOR2xp5_ASAP7_6t_R( in_a[7], in_b[0], &n9);
	n9 = assign_value_to_net(ax_values, 8, n9);
	int n191;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[6], &n191);
	n191 = assign_value_to_net(ax_values, 189, n191);
	int n186;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[7], &n186);
	n186 = assign_value_to_net(ax_values, 184, n186);
	int n40;
	NOR2x2R_ASAP7_6t_R( in_a[2], in_a[1], &n40);
	n40 = assign_value_to_net(ax_values, 39, n40);
	int n182;
	XOR2xp5r_ASAP7_6t_R( in_a[2], in_a[3], &n182);
	n182 = assign_value_to_net(ax_values, 180, n182);
	int n54;
	XOR2x2_ASAP7_6t_R( in_a[4], in_a[3], &n54);
	n54 = assign_value_to_net(ax_values, 53, n54);
	int n49;
	XOR2xp5_ASAP7_6t_R( in_a[7], in_b[4], &n49);
	n49 = assign_value_to_net(ax_values, 48, n49);
	int n50;
	XOR2xp5_ASAP7_6t_R( in_a[7], in_b[3], &n50);
	n50 = assign_value_to_net(ax_values, 49, n50);
	int n55;
	XOR2x2_ASAP7_6t_R( in_a[6], in_a[5], &n55);
	n55 = assign_value_to_net(ax_values, 54, n55);
	int n57;
	XOR2x2_ASAP7_6t_R( in_a[2], in_a[1], &n57);
	n57 = assign_value_to_net(ax_values, 56, n57);
	int n122;
	XOR2x2_ASAP7_6t_R( in_a[6], in_a[5], &n122);
	n122 = assign_value_to_net(ax_values, 120, n122);
	int n176;
	XOR2x2_ASAP7_6t_R( in_a[4], in_a[5], &n176);
	n176 = assign_value_to_net(ax_values, 174, n176);
	int n274;
	INVxp5_ASAP7_6t_R( in_b[4], &n274);
	n274 = assign_value_to_net(ax_values, 271, n274);
	int n285;
	INVx1_ASAP7_6t_R( in_a[5], &n285);
	n285 = assign_value_to_net(ax_values, 282, n285);
	int n317;
	INVx3_ASAP7_6t_R( in_a[7], &n317);
	n317 = assign_value_to_net(ax_values, 314, n317);
	int n39;
	INVx2_ASAP7_6t_R( in_a[3], &n39);
	n39 = assign_value_to_net(ax_values, 38, n39);
	int n177;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[4], &n177);
	n177 = assign_value_to_net(ax_values, 175, n177);
	int n184;
	XOR2x2_ASAP7_6t_R( in_a[6], in_a[7], &n184);
	n184 = assign_value_to_net(ax_values, 182, n184);
	int n223;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[1], &n223);
	n223 = assign_value_to_net(ax_values, 221, n223);
	int n38;
	NAND2x1_ASAP7_6t_R( in_a[2], in_a[1], &n38);
	n38 = assign_value_to_net(ax_values, 37, n38);
	int n4;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_a[4], &n4);
	n4 = assign_value_to_net(ax_values, 3, n4);
	int n185;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[5], &n185);
	n185 = assign_value_to_net(ax_values, 183, n185);
	int n193;
	NAND2xp5R_ASAP7_6t_R( in_a[7], in_b[1], &n193);
	n193 = assign_value_to_net(ax_values, 191, n193);
	int n236;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[4], &n236);
	n236 = assign_value_to_net(ax_values, 234, n236);
	int n239;
	XNOR2xp5_ASAP7_6t_R( in_a[3], in_b[2], &n239);
	n239 = assign_value_to_net(ax_values, 236, n239);
	int n246;
	INVxp5_ASAP7_6t_R( in_a[1], &n246);
	n246 = assign_value_to_net(ax_values, 243, n246);
	int n243;
	XNOR2xp5_ASAP7_6t_R( in_a[1], in_b[2], &n243);
	n243 = assign_value_to_net(ax_values, 240, n243);
	AND2x2_ASAP7_6t_R( in_b[0], in_a[0], &out[0]);
	out[0] = assign_value_to_net(ax_values, 392, out[0]);
	int n47;
	XOR2xp5_ASAP7_6t_R( in_a[7], in_b[1], &n47);
	n47 = assign_value_to_net(ax_values, 46, n47);
	int n212;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[6], &n212);
	n212 = assign_value_to_net(ax_values, 210, n212);
	int n181;
	INVx1_ASAP7_6t_R( in_b[2], &n181);
	n181 = assign_value_to_net(ax_values, 179, n181);
	int n220;
	XNOR2xp5_ASAP7_6t_R( in_a[5], in_b[0], &n220);
	n220 = assign_value_to_net(ax_values, 218, n220);
	int n226;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[5], &n226);
	n226 = assign_value_to_net(ax_values, 224, n226);
	int n235;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[3], &n235);
	n235 = assign_value_to_net(ax_values, 233, n235);
	int n245;
	INVx8_ASAP7_6t_R( in_a[0], &n245);
	n245 = assign_value_to_net(ax_values, 242, n245);
	int n192;
	INVx1_ASAP7_6t_R( in_b[3], &n192);
	n192 = assign_value_to_net(ax_values, 190, n192);
	int n293;
	INVx1_ASAP7_6t_R( in_b[6], &n293);
	n293 = assign_value_to_net(ax_values, 290, n293);
	int n284;
	INVx1_ASAP7_6t_R( in_b[5], &n284);
	n284 = assign_value_to_net(ax_values, 281, n284);
	int n14;
	NAND2xp5R_ASAP7_6t_R( in_b[0], in_a[7], &n14);
	n14 = assign_value_to_net(ax_values, 13, n14);
	int n244;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[1], &n244);
	n244 = assign_value_to_net(ax_values, 241, n244);
	int n199;
	XNOR2xp5f_ASAP7_6t_R( in_a[1], in_b[7], &n199);
	n199 = assign_value_to_net(ax_values, 197, n199);
	int n233;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[0], &n233);
	n233 = assign_value_to_net(ax_values, 231, n233);
	int n292;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[7], &n292);
	n292 = assign_value_to_net(ax_values, 289, n292);
	int n273;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[7], &n273);
	n273 = assign_value_to_net(ax_values, 270, n273);
	int n225;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[3], &n225);
	n225 = assign_value_to_net(ax_values, 223, n225);
	int n198;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[5], &n198);
	n198 = assign_value_to_net(ax_values, 196, n198);
	int n224;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[2], &n224);
	n224 = assign_value_to_net(ax_values, 222, n224);
	int n200;
	XNOR2xp5f_ASAP7_6t_R( in_a[5], in_b[3], &n200);
	n200 = assign_value_to_net(ax_values, 198, n200);
	int n275;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[5], &n275);
	n275 = assign_value_to_net(ax_values, 272, n275);
	int n238;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[1], &n238);
	n238 = assign_value_to_net(ax_values, 235, n238);
	int n213;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[4], &n213);
	n213 = assign_value_to_net(ax_values, 211, n213);
	int n48;
	XOR2xp5r_ASAP7_6t_R( in_a[6], in_a[7], &n48);
	n48 = assign_value_to_net(ax_values, 47, n48);
	int n56;
	XOR2xp5r_ASAP7_6t_R( in_a[6], in_a[5], &n56);
	n56 = assign_value_to_net(ax_values, 55, n56);
	int n195;
	XNOR2xp5f_ASAP7_6t_R( in_a[3], in_b[6], &n195);
	n195 = assign_value_to_net(ax_values, 193, n195);
	int n283;
	XNOR2xp5f_ASAP7_6t_R( in_a[7], in_b[6], &n283);
	n283 = assign_value_to_net(ax_values, 280, n283);
	int n318;
	INVx1_ASAP7_6t_R( in_b[7], &n318);
	n318 = assign_value_to_net(ax_values, 315, n318);
	int n124;
	XOR2xp5_ASAP7_6t_R( in_a[7], in_b[2], &n124);
	n124 = assign_value_to_net(ax_values, 122, n124);
	int n120;
	INVx1_ASAP7_6t_R( n191, &n120);
	n120 = assign_value_to_net(ax_values, 118, n120);
	int n43;
	INVx1_ASAP7_6t_R( n186, &n43);
	n43 = assign_value_to_net(ax_values, 42, n43);
	int n36;
	INVx1_ASAP7_6t_R( n40, &n36);
	n36 = assign_value_to_net(ax_values, 35, n36);
	int n252;
	AND2x2_ASAP7_6t_R( in_b[0], n54, &n252);
	n252 = assign_value_to_net(ax_values, 249, n252);
	int n286;
	INVx1_ASAP7_6t_R( n54, &n286);
	n286 = assign_value_to_net(ax_values, 283, n286);
	int n52;
	INVxp5_ASAP7_6t_R( n54, &n52);
	n52 = assign_value_to_net(ax_values, 51, n52);
	int n105;
	INVxp5_ASAP7_6t_R( n49, &n105);
	n105 = assign_value_to_net(ax_values, 103, n105);
	int n104;
	INVxp5_ASAP7_6t_R( n50, &n104);
	n104 = assign_value_to_net(ax_values, 102, n104);
	int n169;
	NAND2xp5_ASAP7_6t_R( in_b[0], n55, &n169);
	n169 = assign_value_to_net(ax_values, 167, n169);
	int n157;
	NAND2xp5_ASAP7_6t_R( n57, in_b[0], &n157);
	n157 = assign_value_to_net(ax_values, 155, n157);
	int n242;
	INVx4_ASAP7_6t_R( n57, &n242);
	n242 = assign_value_to_net(ax_values, 239, n242);
	int n75;
	INVx4_ASAP7_6t_R( n122, &n75);
	n75 = assign_value_to_net(ax_values, 74, n75);
	int n221;
	OR2x2_ASAP7_6t_R( in_b[0], n285, &n221);
	n221 = assign_value_to_net(ax_values, 219, n221);
	int n10;
	NOR2xp5_ASAP7_6t_R( in_b[0], n317, &n10);
	n10 = assign_value_to_net(ax_values, 9, n10);
	int n295;
	NOR2x1_ASAP7_6t_R( n274, n317, &n295);
	n295 = assign_value_to_net(ax_values, 292, n295);
	int n240;
	OR2x2_ASAP7_6t_R( in_b[0], n39, &n240);
	n240 = assign_value_to_net(ax_values, 237, n240);
	int n118;
	INVxp5_ASAP7_6t_R( n177, &n118);
	n118 = assign_value_to_net(ax_values, 116, n118);
	int n174;
	NAND2xp5_ASAP7_6t_R( n50, n184, &n174);
	n174 = assign_value_to_net(ax_values, 172, n174);
	int n80;
	NAND2xp5R_ASAP7_6t_R( n184, in_a[7], &n80);
	n80 = assign_value_to_net(ax_values, 79, n80);
	int n116;
	INVx1_ASAP7_6t_R( n223, &n116);
	n116 = assign_value_to_net(ax_values, 114, n116);
	int n37;
	NAND2xp5R_ASAP7_6t_R( n38, n39, &n37);
	n37 = assign_value_to_net(ax_values, 36, n37);
	int n222;
	NAND2x2_ASAP7_6t_R( n176, n4, &n222);
	n222 = assign_value_to_net(ax_values, 220, n222);
	int n8;
	INVx1_ASAP7_6t_R( n193, &n8);
	n8 = assign_value_to_net(ax_values, 7, n8);
	int n247;
	OR2x2_ASAP7_6t_R( in_b[0], n246, &n247);
	n247 = assign_value_to_net(ax_values, 244, n247);
	int n144;
	NAND2xp5R_ASAP7_6t_R( n47, n184, &n144);
	n144 = assign_value_to_net(ax_values, 142, n144);
	int n103;
	INVxp5_ASAP7_6t_R( n47, &n103);
	n103 = assign_value_to_net(ax_values, 101, n103);
	int n20;
	NOR2x1_ASAP7_6t_R( n317, n181, &n20);
	n20 = assign_value_to_net(ax_values, 19, n20);
	int n234;
	NAND2x2_ASAP7_6t_R( n245, in_a[1], &n234);
	n234 = assign_value_to_net(ax_values, 232, n234);
	int n270;
	NOR2xp5_ASAP7_6t_R( n192, n317, &n270);
	n270 = assign_value_to_net(ax_values, 267, n270);
	int n321;
	NOR2xp5_ASAP7_6t_R( n293, n317, &n321);
	n321 = assign_value_to_net(ax_values, 318, n321);
	int n294;
	NOR2xp5_ASAP7_6t_R( n284, n317, &n294);
	n294 = assign_value_to_net(ax_values, 291, n294);
	int n82;
	INVxp5_ASAP7_6t_R( n225, &n82);
	n82 = assign_value_to_net(ax_values, 81, n82);
	int n173;
	NAND2xp5_ASAP7_6t_R( n49, n48, &n173);
	n173 = assign_value_to_net(ax_values, 171, n173);
	int n79;
	NAND2xp5R_ASAP7_6t_R( n48, n9, &n79);
	n79 = assign_value_to_net(ax_values, 78, n79);
	int n319;
	NOR2xp5_ASAP7_6t_R( n318, n317, &n319);
	n319 = assign_value_to_net(ax_values, 316, n319);
	int n123;
	NAND2xp5R_ASAP7_6t_R( n56, n124, &n123);
	n123 = assign_value_to_net(ax_values, 121, n123);
	int n126;
	NAND2xp5R_ASAP7_6t_R( n124, n184, &n126);
	n126 = assign_value_to_net(ax_values, 124, n126);
	int n119;
	NAND2xp5R_ASAP7_6t_R( n54, n120, &n119);
	n119 = assign_value_to_net(ax_values, 117, n119);
	int n42;
	NAND2xp5_ASAP7_6t_R( n43, n182, &n42);
	n42 = assign_value_to_net(ax_values, 41, n42);
	int n183;
	NAND2xp5R_ASAP7_6t_R( n38, n36, &n183);
	n183 = assign_value_to_net(ax_values, 181, n183);
	int n155;
	INVxp5_ASAP7_6t_R( n157, &n155);
	n155 = assign_value_to_net(ax_values, 153, n155);
	int n81;
	NOR2x1_ASAP7_6t_R( n213, n242, &n81);
	n81 = assign_value_to_net(ax_values, 80, n81);
	int n70;
	HB1x1_ASAP7_6t_R( n242, &n70);
	n70 = assign_value_to_net(ax_values, 69, n70);
	int n138;
	NAND2xp5R_ASAP7_6t_R( n48, n75, &n138);
	n138 = assign_value_to_net(ax_values, 136, n138);
	int n102;
	INVxp5_ASAP7_6t_R( n10, &n102);
	n102 = assign_value_to_net(ax_values, 100, n102);
	int n287;
	INVxp5_ASAP7_6t_R( n295, &n287);
	n287 = assign_value_to_net(ax_values, 284, n287);
	int n117;
	NAND2xp5_ASAP7_6t_R( n118, n54, &n117);
	n117 = assign_value_to_net(ax_values, 115, n117);
	int n189;
	OAI22xp5_ASAP7_6t_R( n174, n56, n75, n105, &n189);
	n189 = assign_value_to_net(ax_values, 187, n189);
	int n115;
	NAND2xp5_ASAP7_6t_R( n116, n54, &n115);
	n115 = assign_value_to_net(ax_values, 113, n115);
	int n232;
	OAI21xp5_ASAP7_6t_R( n40, n39, n37, &n232);
	n232 = assign_value_to_net(ax_values, 230, n232);
	int n229;
	OAI22xp5_ASAP7_6t_R( n285, n222, n52, n221, &n229);
	n229 = assign_value_to_net(ax_values, 227, n229);
	int n145;
	BUFx3_ASAP7_6t_R( n222, &n145);
	n145 = assign_value_to_net(ax_values, 143, n145);
	int n194;
	XOR2xp5r_ASAP7_6t_R( n20, n193, &n194);
	n194 = assign_value_to_net(ax_values, 192, n194);
	int n147;
	NAND2xp5_ASAP7_6t_R( n20, n193, &n147);
	n147 = assign_value_to_net(ax_values, 145, n147);
	int n251;
	OAI22xp5_ASAP7_6t_R( n245, n236, n235, n234, &n251);
	n251 = assign_value_to_net(ax_values, 248, n251);
	int n383;
	OAI22xp5_ASAP7_6t_R( n245, n244, in_b[0], n234, &n383);
	n383 = assign_value_to_net(ax_values, 380, n383);
	int n201;
	OAI22xp5_ASAP7_6t_R( n245, n199, n212, n234, &n201);
	n201 = assign_value_to_net(ax_values, 199, n201);
	int n384;
	NAND2xp5R_ASAP7_6t_R( n234, n247, &n384);
	n384 = assign_value_to_net(ax_values, 381, n384);
	int n230;
	OAI22xp5_ASAP7_6t_R( n245, n226, n236, n234, &n230);
	n230 = assign_value_to_net(ax_values, 228, n230);
	int n241;
	OAI22xp5_ASAP7_6t_R( n245, n235, n243, n234, &n241);
	n241 = assign_value_to_net(ax_values, 238, n241);
	int n214;
	OAI22xp5_ASAP7_6t_R( n212, n245, n234, n226, &n214);
	n214 = assign_value_to_net(ax_values, 212, n214);
	int n196;
	OAI22xp5_ASAP7_6t_R( n245, n246, n199, n234, &n196);
	n196 = assign_value_to_net(ax_values, 194, n196);
	int n248;
	OAI22xp5_ASAP7_6t_R( n245, n243, n244, n234, &n248);
	n248 = assign_value_to_net(ax_values, 245, n248);
	int n272;
	XOR2xp5_ASAP7_6t_R( n270, n8, &n272);
	n272 = assign_value_to_net(ax_values, 269, n272);
	int n28;
	NAND2xp5_ASAP7_6t_R( n270, n8, &n28);
	n28 = assign_value_to_net(ax_values, 27, n28);
	int n314;
	INVx1_ASAP7_6t_R( n321, &n314);
	n314 = assign_value_to_net(ax_values, 311, n314);
	int n297;
	XOR2xp5r_ASAP7_6t_R( n294, n295, &n297);
	n297 = assign_value_to_net(ax_values, 294, n297);
	int n267;
	OAI22xp5_ASAP7_6t_R( n56, n173, n75, n275, &n267);
	n267 = assign_value_to_net(ax_values, 264, n267);
	int n216;
	OAI22xp5_ASAP7_6t_R( n75, n103, n56, n79, &n216);
	n216 = assign_value_to_net(ax_values, 214, n216);
	int n206;
	OAI21xp5b_ASAP7_6t_R( n55, n144, n123, &n206);
	n206 = assign_value_to_net(ax_values, 204, n206);
	int n187;
	OAI22xp5_ASAP7_6t_R( n126, n55, n104, n75, &n187);
	n187 = assign_value_to_net(ax_values, 185, n187);
	int n51;
	OAI22xp5_ASAP7_6t_R( n126, n55, n104, n75, &n51);
	n51 = assign_value_to_net(ax_values, 50, n51);
	int n21;
	OA21x1_ASAP7_6t_R( n185, n222, n119, &n21);
	n21 = assign_value_to_net(ax_values, 20, n21);
	int n45;
	NAND2xp5R_ASAP7_6t_R( n182, n183, &n45);
	n45 = assign_value_to_net(ax_values, 44, n45);
	int n53;
	NAND2xp5R_ASAP7_6t_R( n183, n182, &n53);
	n53 = assign_value_to_net(ax_values, 52, n53);
	int n44;
	INVxp5_ASAP7_6t_R( n183, &n44);
	n44 = assign_value_to_net(ax_values, 43, n44);
	int n74;
	INVx1_ASAP7_6t_R( n81, &n74);
	n74 = assign_value_to_net(ax_values, 73, n74);
	int n313;
	OAI22xp5_ASAP7_6t_R( n317, n75, n138, n292, &n313);
	n313 = assign_value_to_net(ax_values, 310, n313);
	int n15;
	AO21x1_ASAP7_6t_R( n138, n75, n317, &n15);
	n15 = assign_value_to_net(ax_values, 14, n15);
	int n289;
	OAI22xp5_ASAP7_6t_R( n283, n75, n138, n275, &n289);
	n289 = assign_value_to_net(ax_values, 286, n289);
	int n296;
	OAI22xp5_ASAP7_6t_R( n292, n75, n138, n283, &n296);
	n296 = assign_value_to_net(ax_values, 293, n296);
	int n215;
	OAI22xp5_ASAP7_6t_R( n75, n102, n55, n80, &n215);
	n215 = assign_value_to_net(ax_values, 213, n215);
	int n178;
	OAI21xp5b_ASAP7_6t_R( n222, n200, n117, &n178);
	n178 = assign_value_to_net(ax_values, 176, n178);
	int n141;
	INVxp5_ASAP7_6t_R( n189, &n141);
	n141 = assign_value_to_net(ax_values, 139, n141);
	int n228;
	OAI21xp5_ASAP7_6t_R( n222, n220, n115, &n228);
	n228 = assign_value_to_net(ax_values, 226, n228);
	int n76;
	OAI22xp5_ASAP7_6t_R( n232, n239, n242, n225, &n76);
	n76 = assign_value_to_net(ax_values, 75, n76);
	int n129;
	INVx1_ASAP7_6t_R( n232, &n129);
	n129 = assign_value_to_net(ax_values, 127, n129);
	int n210;
	OAI22xp5_ASAP7_6t_R( n145, n224, n286, n200, &n210);
	n210 = assign_value_to_net(ax_values, 208, n210);
	int n231;
	OAI22xp5_ASAP7_6t_R( n286, n224, n145, n223, &n231);
	n231 = assign_value_to_net(ax_values, 229, n231);
	int n271;
	OAI22xp5_ASAP7_6t_R( n286, n273, n145, n191, &n271);
	n271 = assign_value_to_net(ax_values, 268, n271);
	int n168;
	OAI22xp5_ASAP7_6t_R( n145, n273, n286, n285, &n168);
	n168 = assign_value_to_net(ax_values, 166, n168);
	int n180;
	OAI22xp5_ASAP7_6t_R( n286, n185, n145, n177, &n180);
	n180 = assign_value_to_net(ax_values, 178, n180);
	int n299;
	AO21x1_ASAP7_6t_R( n145, n286, n285, &n299);
	n299 = assign_value_to_net(ax_values, 296, n299);
	int n96;
	INVx1_ASAP7_6t_R( n194, &n96);
	n96 = assign_value_to_net(ax_values, 94, n96);
	int n163;
	NAND2xp5R_ASAP7_6t_R( n252, n251, &n163);
	n163 = assign_value_to_net(ax_values, 161, n163);
	int n127;
	INVx1_ASAP7_6t_R( n251, &n127);
	n127 = assign_value_to_net(ax_values, 125, n127);
	int n33;
	INVxp5_ASAP7_6t_R( n201, &n33);
	n33 = assign_value_to_net(ax_values, 32, n33);
	int n386;
	NAND2xp5R_ASAP7_6t_R( n383, n384, &n386);
	n386 = assign_value_to_net(ax_values, 383, n386);
	int n385;
	NOR2xp5_ASAP7_6t_R( n384, n383, &n385);
	n385 = assign_value_to_net(ax_values, 382, n385);
	int n227;
	INVx1_ASAP7_6t_R( n230, &n227);
	n227 = assign_value_to_net(ax_values, 225, n227);
	int n170;
	XNOR2xp5f_ASAP7_6t_R( n169, n214, &n170);
	n170 = assign_value_to_net(ax_values, 168, n170);
	int n128;
	INVxp5_ASAP7_6t_R( n214, &n128);
	n128 = assign_value_to_net(ax_values, 126, n128);
	int n165;
	INVx1_ASAP7_6t_R( n196, &n165);
	n165 = assign_value_to_net(ax_values, 163, n165);
	int n156;
	INVxp5_ASAP7_6t_R( n248, &n156);
	n156 = assign_value_to_net(ax_values, 154, n156);
	int n380;
	NAND2xp5R_ASAP7_6t_R( n155, n248, &n380);
	n380 = assign_value_to_net(ax_values, 377, n380);
	int n27;
	INVx1_ASAP7_6t_R( n28, &n27);
	n27 = assign_value_to_net(ax_values, 26, n27);
	int n167;
	INVx1_ASAP7_6t_R( n297, &n167);
	n167 = assign_value_to_net(ax_values, 165, n167);
	int n205;
	XNOR2xp5_ASAP7_6t_R( n187, n8, &n205);
	n205 = assign_value_to_net(ax_values, 203, n205);
	int n188;
	NAND2xp5R_ASAP7_6t_R( n51, n193, &n188);
	n188 = assign_value_to_net(ax_values, 186, n188);
	int n32;
	XNOR2xp5f_ASAP7_6t_R( n21, n189, &n32);
	n32 = assign_value_to_net(ax_values, 31, n32);
	int n100;
	OAI22xp5_ASAP7_6t_R( n242, n198, n45, n213, &n100);
	n100 = assign_value_to_net(ax_values, 98, n100);
	int n162;
	OAI22xp5_ASAP7_6t_R( n242, n238, n45, n233, &n162);
	n162 = assign_value_to_net(ax_values, 160, n162);
	int n266;
	AO21x1_ASAP7_6t_R( n53, n242, n39, &n266);
	n266 = assign_value_to_net(ax_values, 263, n266);
	int n207;
	OAI22xp5_ASAP7_6t_R( n195, n242, n198, n53, &n207);
	n207 = assign_value_to_net(ax_values, 205, n207);
	int n149;
	OAI22xp5_ASAP7_6t_R( n39, n242, n44, n42, &n149);
	n149 = assign_value_to_net(ax_values, 147, n149);
	int n315;
	XOR2xp5r_ASAP7_6t_R( n313, n314, &n315);
	n315 = assign_value_to_net(ax_values, 312, n315);
	int n320;
	XOR2xp5_ASAP7_6t_R( n15, n319, &n320);
	n320 = assign_value_to_net(ax_values, 317, n320);
	int n86;
	INVx1_ASAP7_6t_R( n289, &n86);
	n86 = assign_value_to_net(ax_values, 84, n86);
	int n316;
	AO22x1_ASAP7_6t_R( n297, n296, n295, n294, &n316);
	n316 = assign_value_to_net(ax_values, 313, n316);
	int n132;
	NAND2xp5_ASAP7_6t_R( n216, n215, &n132);
	n132 = assign_value_to_net(ax_values, 130, n132);
	int n159;
	XNOR2xp5f_ASAP7_6t_R( n215, n216, &n159);
	n159 = assign_value_to_net(ax_values, 157, n159);
	int n179;
	INVxp5_ASAP7_6t_R( n178, &n179);
	n179 = assign_value_to_net(ax_values, 177, n179);
	int n197;
	XNOR2xp5f_ASAP7_6t_R( n178, n14, &n197);
	n197 = assign_value_to_net(ax_values, 195, n197);
	int n140;
	NOR2xp5_ASAP7_6t_R( n21, n141, &n140);
	n140 = assign_value_to_net(ax_values, 138, n140);
	int n68;
	NAND2xp5R_ASAP7_6t_R( n229, n228, &n68);
	n68 = assign_value_to_net(ax_values, 67, n68);
	int n255;
	XOR2x2_ASAP7_6t_R( n229, n228, &n255);
	n255 = assign_value_to_net(ax_values, 252, n255);
	int n154;
	NAND2xp5_ASAP7_6t_R( n230, n76, &n154);
	n154 = assign_value_to_net(ax_values, 152, n154);
	int n73;
	NAND2xp5R_ASAP7_6t_R( n129, n82, &n73);
	n73 = assign_value_to_net(ax_values, 72, n73);
	int n71;
	INVx1_ASAP7_6t_R( n129, &n71);
	n71 = assign_value_to_net(ax_values, 70, n71);
	int n160;
	INVx1_ASAP7_6t_R( n210, &n160);
	n160 = assign_value_to_net(ax_values, 158, n160);
	int n277;
	XOR2xp5_ASAP7_6t_R( n271, n272, &n277);
	n277 = assign_value_to_net(ax_values, 274, n277);
	int n23;
	NAND2xp5_ASAP7_6t_R( n168, n287, &n23);
	n23 = assign_value_to_net(ax_values, 22, n23);
	int n288;
	XNOR2xp5f_ASAP7_6t_R( n168, n295, &n288);
	n288 = assign_value_to_net(ax_values, 285, n288);
	int n16;
	XNOR2xp5f_ASAP7_6t_R( n180, in_a[1], &n16);
	n16 = assign_value_to_net(ax_values, 15, n16);
	int n93;
	NAND2xp5_ASAP7_6t_R( n180, n246, &n93);
	n93 = assign_value_to_net(ax_values, 91, n93);
	int n166;
	INVxp5_ASAP7_6t_R( n299, &n166);
	n166 = assign_value_to_net(ax_values, 164, n166);
	int n113;
	XOR2xp5r_ASAP7_6t_R( n252, n127, &n113);
	n113 = assign_value_to_net(ax_values, 111, n113);
	int n382;
	INVx1_ASAP7_6t_R( n386, &n382);
	n382 = assign_value_to_net(ax_values, 379, n382);
	int n387;
	INVxp5_ASAP7_6t_R( n385, &n387);
	n387 = assign_value_to_net(ax_values, 384, n387);
	int n254;
	XNOR2xp5_ASAP7_6t_R( n76, n227, &n254);
	n254 = assign_value_to_net(ax_values, 251, n254);
	int n171;
	INVxp5_ASAP7_6t_R( n170, &n171);
	n171 = assign_value_to_net(ax_values, 169, n171);
	int n158;
	NOR2xp5_ASAP7_6t_R( n128, n169, &n158);
	n158 = assign_value_to_net(ax_values, 156, n158);
	int n379;
	NAND2xp5R_ASAP7_6t_R( n157, n156, &n379);
	n379 = assign_value_to_net(ax_values, 376, n379);
	int n249;
	INVxp5_ASAP7_6t_R( n380, &n249);
	n249 = assign_value_to_net(ax_values, 246, n249);
	int n26;
	AO21x1_ASAP7_6t_R( n272, n271, n27, &n26);
	n26 = assign_value_to_net(ax_values, 25, n26);
	int n298;
	XNOR2xp5f_ASAP7_6t_R( n296, n167, &n298);
	n298 = assign_value_to_net(ax_values, 295, n298);
	int n95;
	INVx1_ASAP7_6t_R( n188, &n95);
	n95 = assign_value_to_net(ax_values, 93, n95);
	int n211;
	XNOR2xp5f_ASAP7_6t_R( n100, n33, &n211);
	n211 = assign_value_to_net(ax_values, 209, n211);
	int n108;
	NAND2xp5_ASAP7_6t_R( n201, n100, &n108);
	n108 = assign_value_to_net(ax_values, 106, n108);
	int n89;
	XNOR2xp5_ASAP7_6t_R( n162, n241, &n89);
	n89 = assign_value_to_net(ax_values, 87, n89);
	int n161;
	AND2x2_ASAP7_6t_R( n241, n162, &n161);
	n161 = assign_value_to_net(ax_values, 159, n161);
	int n268;
	XOR2x2_ASAP7_6t_R( n266, n267, &n268);
	n268 = assign_value_to_net(ax_values, 265, n268);
	int n30;
	AND2x2_ASAP7_6t_R( n267, n266, &n30);
	n30 = assign_value_to_net(ax_values, 29, n30);
	int n139;
	NAND2xp5_ASAP7_6t_R( n206, n207, &n139);
	n139 = assign_value_to_net(ax_values, 137, n139);
	int n101;
	XNOR2xp5f_ASAP7_6t_R( n207, n206, &n101);
	n101 = assign_value_to_net(ax_values, 99, n101);
	int n148;
	NAND2xp5_ASAP7_6t_R( n194, n149, &n148);
	n148 = assign_value_to_net(ax_values, 146, n148);
	int n190;
	XNOR2xp5f_ASAP7_6t_R( n149, n96, &n190);
	n190 = assign_value_to_net(ax_values, 188, n190);
	int n323;
	XOR2xp5_ASAP7_6t_R( n321, n320, &n323);
	n323 = assign_value_to_net(ax_values, 320, n323);
	int n322;
	AO22x1_ASAP7_6t_R( n316, n315, n314, n313, &n322);
	n322 = assign_value_to_net(ax_values, 319, n322);
	int n306;
	XOR2xp5_ASAP7_6t_R( n316, n315, &n306);
	n306 = assign_value_to_net(ax_values, 303, n306);
	int n208;
	INVxp5_ASAP7_6t_R( n132, &n208);
	n208 = assign_value_to_net(ax_values, 206, n208);
	int n83;
	NOR2xp5_ASAP7_6t_R( n14, n179, &n83);
	n83 = assign_value_to_net(ax_values, 82, n83);
	int n65;
	NAND2xp5R_ASAP7_6t_R( n196, n197, &n65);
	n65 = assign_value_to_net(ax_values, 64, n65);
	int n34;
	XNOR2xp5f_ASAP7_6t_R( n197, n165, &n34);
	n34 = assign_value_to_net(ax_values, 33, n34);
	int n67;
	INVxp5_ASAP7_6t_R( n68, &n67);
	n67 = assign_value_to_net(ax_values, 66, n67);
	int n5;
	INVx1_ASAP7_6t_R( n68, &n5);
	n5 = assign_value_to_net(ax_values, 4, n5);
	int n153;
	INVxp5_ASAP7_6t_R( n154, &n153);
	n153 = assign_value_to_net(ax_values, 151, n153);
	int n72;
	NAND2x1_ASAP7_6t_R( n74, n73, &n72);
	n72 = assign_value_to_net(ax_values, 71, n72);
	int n204;
	OAI22xp5_ASAP7_6t_R( n70, n186, n195, n71, &n204);
	n204 = assign_value_to_net(ax_values, 202, n204);
	int n12;
	OA22x1_ASAP7_6t_R( n70, n240, n39, n71, &n12);
	n12 = assign_value_to_net(ax_values, 11, n12);
	int n253;
	OAI22xp5_ASAP7_6t_R( n242, n239, n238, n71, &n253);
	n253 = assign_value_to_net(ax_values, 250, n253);
	int n22;
	INVx1_ASAP7_6t_R( n23, &n22);
	n22 = assign_value_to_net(ax_values, 21, n22);
	int n291;
	XNOR2xp5f_ASAP7_6t_R( n288, n86, &n291);
	n291 = assign_value_to_net(ax_values, 288, n291);
	int n92;
	INVx1_ASAP7_6t_R( n93, &n92);
	n92 = assign_value_to_net(ax_values, 90, n92);
	int n112;
	INVxp5_ASAP7_6t_R( n113, &n112);
	n112 = assign_value_to_net(ax_values, 110, n112);
	AND2x2_ASAP7_6t_R( n387, n386, &out[1]);
	out[1] = assign_value_to_net(ax_values, 393, out[1]);
	int n257;
	XOR2xp5r_ASAP7_6t_R( n255, n254, &n257);
	n257 = assign_value_to_net(ax_values, 254, n257);
	int n381;
	NAND2xp5R_ASAP7_6t_R( n380, n379, &n381);
	n381 = assign_value_to_net(ax_values, 378, n381);
	int n378;
	AO21x1_ASAP7_6t_R( n379, n382, n249, &n378);
	n378 = assign_value_to_net(ax_values, 375, n378);
	int n25;
	INVxp5_ASAP7_6t_R( n26, &n25);
	n25 = assign_value_to_net(ax_values, 24, n25);
	int n300;
	XNOR2xp5_ASAP7_6t_R( n298, n166, &n300);
	n300 = assign_value_to_net(ax_values, 297, n300);
	int n111;
	XOR2x2_ASAP7_6t_R( n160, n211, &n111);
	n111 = assign_value_to_net(ax_values, 109, n111);
	int n107;
	INVx1_ASAP7_6t_R( n108, &n107);
	n107 = assign_value_to_net(ax_values, 105, n107);
	int n59;
	OAI21xp5_ASAP7_6t_R( n101, n132, n139, &n59);
	n59 = assign_value_to_net(ax_values, 58, n59);
	int n269;
	NAND2xp5_ASAP7_6t_R( n148, n147, &n269);
	n269 = assign_value_to_net(ax_values, 266, n269);
	int n31;
	AOI21xp5_ASAP7_6t_R( n32, n190, n140, &n31);
	n31 = assign_value_to_net(ax_values, 30, n31);
	int n87;
	XNOR2xp5f_ASAP7_6t_R( n32, n190, &n87);
	n87 = assign_value_to_net(ax_values, 85, n87);
	int n326;
	NAND2xp5R_ASAP7_6t_R( n322, n323, &n326);
	n326 = assign_value_to_net(ax_values, 323, n326);
	int n324;
	NOR2xp5_ASAP7_6t_R( n323, n322, &n324);
	n324 = assign_value_to_net(ax_values, 321, n324);
	int n218;
	XNOR2xp5_ASAP7_6t_R( n101, n208, &n218);
	n218 = assign_value_to_net(ax_values, 216, n218);
	int n66;
	INVxp5_ASAP7_6t_R( n83, &n66);
	n66 = assign_value_to_net(ax_values, 65, n66);
	int n133;
	NAND2xp5_ASAP7_6t_R( n67, n231, &n133);
	n133 = assign_value_to_net(ax_values, 131, n133);
	int n114;
	XNOR2xp5f_ASAP7_6t_R( n231, n5, &n114);
	n114 = assign_value_to_net(ax_values, 112, n114);
	int n134;
	AOI21xp5_ASAP7_6t_R( n255, n254, n153, &n134);
	n134 = assign_value_to_net(ax_values, 132, n134);
	int n259;
	XNOR2xp5_ASAP7_6t_R( n72, n171, &n259);
	n259 = assign_value_to_net(ax_values, 256, n259);
	int n217;
	AO21x2_ASAP7_6t_R( n170, n72, n158, &n217);
	n217 = assign_value_to_net(ax_values, 215, n217);
	int n94;
	AOI21xp5_ASAP7_6t_R( n205, n204, n95, &n94);
	n94 = assign_value_to_net(ax_values, 92, n94);
	int n41;
	INVx1_ASAP7_6t_R( n204, &n41);
	n41 = assign_value_to_net(ax_values, 40, n41);
	int n374;
	NOR2xp5_ASAP7_6t_R( n89, n12, &n374);
	n374 = assign_value_to_net(ax_values, 371, n374);
	int n375;
	NAND2xp5R_ASAP7_6t_R( n12, n89, &n375);
	n375 = assign_value_to_net(ax_values, 372, n375);
	int n250;
	XNOR2xp5f_ASAP7_6t_R( n113, n253, &n250);
	n250 = assign_value_to_net(ax_values, 247, n250);
	int n301;
	AO21x1_ASAP7_6t_R( n289, n288, n22, &n301);
	n301 = assign_value_to_net(ax_values, 298, n301);
	int n131;
	INVx1_ASAP7_6t_R( n291, &n131);
	n131 = assign_value_to_net(ax_values, 129, n131);
	int n164;
	NAND2xp5R_ASAP7_6t_R( n112, n253, &n164);
	n164 = assign_value_to_net(ax_values, 162, n164);
	int n143;
	INVx1_ASAP7_6t_R( n257, &n143);
	n143 = assign_value_to_net(ax_values, 141, n143);
	XNOR2xp5_ASAP7_6t_R( n382, n381, &out[2]);
	out[2] = assign_value_to_net(ax_values, 394, out[2]);
	int n202;
	AOI21xp5_ASAP7_6t_R( n210, n211, n107, &n202);
	n202 = assign_value_to_net(ax_values, 200, n202);
	int n278;
	XOR2xp5_ASAP7_6t_R( n269, n268, &n278);
	n278 = assign_value_to_net(ax_values, 275, n278);
	int n29;
	AOI21x1_ASAP7_6t_R( n268, n269, n30, &n29);
	n29 = assign_value_to_net(ax_values, 28, n29);
	int n276;
	INVx1_ASAP7_6t_R( n31, &n276);
	n276 = assign_value_to_net(ax_values, 273, n276);
	int n60;
	INVxp5_ASAP7_6t_R( n87, &n60);
	n60 = assign_value_to_net(ax_values, 59, n60);
	int n325;
	INVx1_ASAP7_6t_R( n324, &n325);
	n325 = assign_value_to_net(ax_values, 322, n325);
	int n106;
	INVx1_ASAP7_6t_R( n218, &n106);
	n106 = assign_value_to_net(ax_values, 104, n106);
	int n17;
	NAND2xp5R_ASAP7_6t_R( n65, n66, &n17);
	n17 = assign_value_to_net(ax_values, 16, n17);
	int n35;
	XOR2x2_ASAP7_6t_R( n134, n114, &n35);
	n35 = assign_value_to_net(ax_values, 34, n35);
	int n98;
	OAI21xp25_ASAP7_6t_R( n114, n134, n133, &n98);
	n98 = assign_value_to_net(ax_values, 96, n98);
	int n7;
	XOR2xp5_ASAP7_6t_R( n217, n159, &n7);
	n7 = assign_value_to_net(ax_values, 6, n7);
	int n110;
	INVxp5_ASAP7_6t_R( n217, &n110);
	n110 = assign_value_to_net(ax_values, 108, n110);
	int n219;
	XNOR2xp5f_ASAP7_6t_R( n217, n159, &n219);
	n219 = assign_value_to_net(ax_values, 217, n219);
	int n172;
	XNOR2xp5f_ASAP7_6t_R( n87, n94, &n172);
	n172 = assign_value_to_net(ax_values, 170, n172);
	int n19;
	XNOR2xp5f_ASAP7_6t_R( n41, n205, &n19);
	n19 = assign_value_to_net(ax_values, 18, n19);
	int n376;
	INVxp5_ASAP7_6t_R( n374, &n376);
	n376 = assign_value_to_net(ax_values, 373, n376);
	int n371;
	AOI21xp5_ASAP7_6t_R( n375, n378, n374, &n371);
	n371 = assign_value_to_net(ax_values, 368, n371);
	int n368;
	NOR2xp5_ASAP7_6t_R( n161, n250, &n368);
	n368 = assign_value_to_net(ax_values, 365, n368);
	int n370;
	NAND2xp5R_ASAP7_6t_R( n250, n161, &n370);
	n370 = assign_value_to_net(ax_values, 367, n370);
	int n307;
	AO22x1_ASAP7_6t_R( n301, n300, n299, n298, &n307);
	n307 = assign_value_to_net(ax_values, 304, n307);
	int n304;
	XOR2x2_ASAP7_6t_R( n301, n300, &n304);
	n304 = assign_value_to_net(ax_values, 301, n304);
	int n258;
	NAND2xp5R_ASAP7_6t_R( n164, n163, &n258);
	n258 = assign_value_to_net(ax_values, 255, n258);
	int n18;
	XNOR2xp5f_ASAP7_6t_R( n34, n202, &n18);
	n18 = assign_value_to_net(ax_values, 17, n18);
	int n203;
	INVxp5_ASAP7_6t_R( n202, &n203);
	n203 = assign_value_to_net(ax_values, 201, n203);
	int n151;
	INVxp5_ASAP7_6t_R( n278, &n151);
	n151 = assign_value_to_net(ax_values, 149, n151);
	int n290;
	XNOR2xp5_ASAP7_6t_R( n29, n26, &n290);
	n290 = assign_value_to_net(ax_values, 287, n290);
	int n152;
	XNOR2xp5f_ASAP7_6t_R( n276, n277, &n152);
	n152 = assign_value_to_net(ax_values, 150, n152);
	int n150;
	NAND2xp5_ASAP7_6t_R( n276, n277, &n150);
	n150 = assign_value_to_net(ax_values, 148, n150);
	int n61;
	INVxp5_ASAP7_6t_R( n60, &n61);
	n61 = assign_value_to_net(ax_values, 60, n61);
	int n327;
	NAND2xp5R_ASAP7_6t_R( n326, n325, &n327);
	n327 = assign_value_to_net(ax_values, 324, n327);
	int n209;
	AO21x1_ASAP7_6t_R( n16, n17, n92, &n209);
	n209 = assign_value_to_net(ax_values, 207, n209);
	int n136;
	XNOR2xp5f_ASAP7_6t_R( n17, n16, &n136);
	n136 = assign_value_to_net(ax_values, 134, n136);
	int n346;
	NOR2x1_ASAP7_6t_R( n259, n35, &n346);
	n346 = assign_value_to_net(ax_values, 343, n346);
	int n121;
	NAND2xp5R_ASAP7_6t_R( n35, n259, &n121);
	n121 = assign_value_to_net(ax_values, 119, n121);
	int n3;
	INVx1_ASAP7_6t_R( n98, &n3);
	n3 = assign_value_to_net(ax_values, 2, n3);
	int n341;
	OAI22xp5_ASAP7_6t_R( n7, n111, n110, n159, &n341);
	n341 = assign_value_to_net(ax_values, 338, n341);
	int n260;
	XNOR2xp5f_ASAP7_6t_R( n219, n111, &n260);
	n260 = assign_value_to_net(ax_values, 257, n260);
	int n137;
	XNOR2xp5f_ASAP7_6t_R( n19, n59, &n137);
	n137 = assign_value_to_net(ax_values, 135, n137);
	int n142;
	NAND2xp5_ASAP7_6t_R( n19, n59, &n142);
	n142 = assign_value_to_net(ax_values, 140, n142);
	int n377;
	NAND2xp5R_ASAP7_6t_R( n376, n375, &n377);
	n377 = assign_value_to_net(ax_values, 374, n377);
	int n372;
	HB1x1_ASAP7_6t_R( n371, &n372);
	n372 = assign_value_to_net(ax_values, 369, n372);
	int n369;
	INVxp5_ASAP7_6t_R( n368, &n369);
	n369 = assign_value_to_net(ax_values, 366, n369);
	int n64;
	OAI21xp25_ASAP7_6t_R( n368, n371, n370, &n64);
	n64 = assign_value_to_net(ax_values, 63, n64);
	int n365;
	OAI21xp5_ASAP7_6t_R( n368, n371, n370, &n365);
	n365 = assign_value_to_net(ax_values, 362, n365);
	int n332;
	OR2x2_ASAP7_6t_R( n307, n306, &n332);
	n332 = assign_value_to_net(ax_values, 329, n332);
	int n333;
	NAND2xp5R_ASAP7_6t_R( n307, n306, &n333);
	n333 = assign_value_to_net(ax_values, 330, n333);
	int n366;
	NAND2xp5R_ASAP7_6t_R( n257, n258, &n366);
	n366 = assign_value_to_net(ax_values, 363, n366);
	int n256;
	INVxp5_ASAP7_6t_R( n258, &n256);
	n256 = assign_value_to_net(ax_values, 253, n256);
	int n340;
	XNOR2xp5_ASAP7_6t_R( n18, n106, &n340);
	n340 = assign_value_to_net(ax_values, 337, n340);
	int n78;
	AOI22xp25_ASAP7_6t_R( n34, n203, n18, n218, &n78);
	n78 = assign_value_to_net(ax_values, 77, n78);
	int n24;
	NAND2xp5R_ASAP7_6t_R( n291, n290, &n24);
	n24 = assign_value_to_net(ax_values, 23, n24);
	int n279;
	XNOR2xp5f_ASAP7_6t_R( n290, n131, &n279);
	n279 = assign_value_to_net(ax_values, 276, n279);
	int n265;
	XNOR2xp5f_ASAP7_6t_R( n152, n278, &n265);
	n265 = assign_value_to_net(ax_values, 262, n265);
	int n280;
	OAI21xp5b_ASAP7_6t_R( n151, n152, n150, &n280);
	n280 = assign_value_to_net(ax_values, 277, n280);
	int n91;
	INVx1_ASAP7_6t_R( n209, &n91);
	n91 = assign_value_to_net(ax_values, 89, n91);
	int n69;
	XNOR2xp5f_ASAP7_6t_R( n172, n209, &n69);
	n69 = assign_value_to_net(ax_values, 68, n69);
	int n347;
	INVxp5_ASAP7_6t_R( n346, &n347);
	n347 = assign_value_to_net(ax_values, 344, n347);
	int n84;
	HB1x1_ASAP7_6t_R( n121, &n84);
	n84 = assign_value_to_net(ax_values, 83, n84);
	int n2;
	INVx1_ASAP7_6t_R( n260, &n2);
	n2 = assign_value_to_net(ax_values, 1, n2);
	int n350;
	NAND2xp5R_ASAP7_6t_R( n260, n98, &n350);
	n350 = assign_value_to_net(ax_values, 347, n350);
	int n125;
	XOR2xp5r_ASAP7_6t_R( n137, n136, &n125);
	n125 = assign_value_to_net(ax_values, 123, n125);
	int n135;
	OAI21xp5_ASAP7_6t_R( n137, n136, n142, &n135);
	n135 = assign_value_to_net(ax_values, 133, n135);
	XNOR2xp5_ASAP7_6t_R( n378, n377, &out[3]);
	out[3] = assign_value_to_net(ax_values, 395, out[3]);
	int n373;
	NAND2xp5R_ASAP7_6t_R( n370, n369, &n373);
	n373 = assign_value_to_net(ax_values, 370, n373);
	int n308;
	INVxp5_ASAP7_6t_R( n333, &n308);
	n308 = assign_value_to_net(ax_values, 305, n308);
	int n13;
	NAND2xp5R_ASAP7_6t_R( n333, n332, &n13);
	n13 = assign_value_to_net(ax_values, 12, n13);
	int n99;
	INVx1_ASAP7_6t_R( n366, &n99);
	n99 = assign_value_to_net(ax_values, 97, n99);
	int n77;
	NAND2xp5R_ASAP7_6t_R( n143, n256, &n77);
	n77 = assign_value_to_net(ax_values, 76, n77);
	int n109;
	NOR2xp5_ASAP7_6t_R( n341, n340, &n109);
	n109 = assign_value_to_net(ax_values, 107, n109);
	int n62;
	INVxp5_ASAP7_6t_R( n340, &n62);
	n62 = assign_value_to_net(ax_values, 61, n62);
	int n343;
	NAND2xp5R_ASAP7_6t_R( n341, n340, &n343);
	n343 = assign_value_to_net(ax_values, 340, n343);
	int n261;
	INVx1_ASAP7_6t_R( n78, &n261);
	n261 = assign_value_to_net(ax_values, 258, n261);
	int n305;
	OAI21xp5_ASAP7_6t_R( n29, n25, n24, &n305);
	n305 = assign_value_to_net(ax_values, 302, n305);
	int n303;
	NOR2x1_ASAP7_6t_R( n280, n279, &n303);
	n303 = assign_value_to_net(ax_values, 300, n303);
	int n302;
	NAND2xp5R_ASAP7_6t_R( n279, n280, &n302);
	n302 = assign_value_to_net(ax_values, 299, n302);
	int n264;
	OAI22xp5_ASAP7_6t_R( n94, n61, n91, n172, &n264);
	n264 = assign_value_to_net(ax_values, 261, n264);
	int n349;
	NAND2xp5R_ASAP7_6t_R( n347, n84, &n349);
	n349 = assign_value_to_net(ax_values, 346, n349);
	int n351;
	NAND2xp5R_ASAP7_6t_R( n3, n2, &n351);
	n351 = assign_value_to_net(ax_values, 348, n351);
	int n97;
	INVx1_ASAP7_6t_R( n350, &n97);
	n97 = assign_value_to_net(ax_values, 95, n97);
	int n90;
	NAND2xp5R_ASAP7_6t_R( n135, n69, &n90);
	n90 = assign_value_to_net(ax_values, 88, n90);
	int n361;
	NOR2x2R_ASAP7_6t_R( n135, n69, &n361);
	n361 = assign_value_to_net(ax_values, 358, n361);
	XOR2xp5_ASAP7_6t_R( n373, n372, &out[4]);
	out[4] = assign_value_to_net(ax_values, 396, out[4]);
	int n46;
	AOI21xp25_ASAP7_6t_R( n77, n365, n99, &n46);
	n46 = assign_value_to_net(ax_values, 45, n46);
	int n367;
	NAND2xp5_ASAP7_6t_R( n77, n366, &n367);
	n367 = assign_value_to_net(ax_values, 364, n367);
	int n348;
	AOI21xp5_ASAP7_6t_R( n77, n365, n99, &n348);
	n348 = assign_value_to_net(ax_values, 345, n348);
	int n63;
	INVxp5_ASAP7_6t_R( n62, &n63);
	n63 = assign_value_to_net(ax_values, 62, n63);
	int n355;
	NOR2xp5_ASAP7_6t_R( n125, n261, &n355);
	n355 = assign_value_to_net(ax_values, 352, n355);
	int n358;
	NAND2xp5_ASAP7_6t_R( n261, n125, &n358);
	n358 = assign_value_to_net(ax_values, 355, n358);
	int n393;
	NAND2xp5R_ASAP7_6t_R( n305, n304, &n393);
	n393 = assign_value_to_net(ax_values, 390, n393);
	int n392;
	OR2x2_ASAP7_6t_R( n304, n305, &n392);
	n392 = assign_value_to_net(ax_values, 389, n392);
	int n281;
	INVxp5_ASAP7_6t_R( n303, &n281);
	n281 = assign_value_to_net(ax_values, 278, n281);
	int n337;
	NAND2x1_ASAP7_6t_R( n265, n264, &n337);
	n337 = assign_value_to_net(ax_values, 334, n337);
	int n335;
	NOR2x2R_ASAP7_6t_R( n264, n265, &n335);
	n335 = assign_value_to_net(ax_values, 332, n335);
	int n352;
	HB1x1_ASAP7_6t_R( n351, &n352);
	n352 = assign_value_to_net(ax_values, 349, n352);
	int n362;
	INVxp5_ASAP7_6t_R( n361, &n362);
	n362 = assign_value_to_net(ax_values, 359, n362);
	int n354;
	OAI21xp25_ASAP7_6t_R( n346, n46, n84, &n354);
	n354 = assign_value_to_net(ax_values, 351, n354);
	XOR2xp5r_ASAP7_6t_R( n349, n46, &out[6]);
	out[6] = assign_value_to_net(ax_values, 398, out[6]);
	XNOR2xp5_ASAP7_6t_R( n64, n367, &out[5]);
	out[5] = assign_value_to_net(ax_values, 397, out[5]);
	int n1;
	OAI21xp5b_ASAP7_6t_R( n348, n346, n121, &n1);
	n1 = assign_value_to_net(ax_values, 0, n1);
	int n342;
	OR2x2_ASAP7_6t_R( n341, n63, &n342);
	n342 = assign_value_to_net(ax_values, 339, n342);
	int n357;
	INVxp5_ASAP7_6t_R( n355, &n357);
	n357 = assign_value_to_net(ax_values, 354, n357);
	int n263;
	NOR2x1_ASAP7_6t_R( n355, n361, &n263);
	n263 = assign_value_to_net(ax_values, 260, n263);
	int n130;
	HB1x1_ASAP7_6t_R( n358, &n130);
	n130 = assign_value_to_net(ax_values, 128, n130);
	int n262;
	OAI21xp5_ASAP7_6t_R( n358, n361, n90, &n262);
	n262 = assign_value_to_net(ax_values, 259, n262);
	int n329;
	INVx1_ASAP7_6t_R( n393, &n329);
	n329 = assign_value_to_net(ax_values, 326, n329);
	int n310;
	AND2x4_ASAP7_6t_R( n392, n332, &n310);
	n310 = assign_value_to_net(ax_values, 307, n310);
	int n11;
	NAND2xp5_ASAP7_6t_R( n393, n392, &n11);
	n11 = assign_value_to_net(ax_values, 10, n11);
	int n175;
	NAND2xp5_ASAP7_6t_R( n302, n281, &n175);
	n175 = assign_value_to_net(ax_values, 173, n175);
	int n146;
	OAI21xp5_ASAP7_6t_R( n303, n337, n302, &n146);
	n146 = assign_value_to_net(ax_values, 144, n146);
	int n6;
	HB1x1_ASAP7_6t_R( n337, &n6);
	n6 = assign_value_to_net(ax_values, 5, n6);
	int n336;
	INVxp5_ASAP7_6t_R( n335, &n336);
	n336 = assign_value_to_net(ax_values, 333, n336);
	int n388;
	NOR2x1_ASAP7_6t_R( n303, n335, &n388);
	n388 = assign_value_to_net(ax_values, 385, n388);
	int n353;
	NAND2xp5_ASAP7_6t_R( n350, n352, &n353);
	n353 = assign_value_to_net(ax_values, 350, n353);
	int n363;
	NAND2xp5_ASAP7_6t_R( n362, n90, &n363);
	n363 = assign_value_to_net(ax_values, 360, n363);
	int n339;
	AOI21xp5_ASAP7_6t_R( n351, n1, n97, &n339);
	n339 = assign_value_to_net(ax_values, 336, n339);
	int n344;
	NAND2xp5_ASAP7_6t_R( n343, n342, &n344);
	n344 = assign_value_to_net(ax_values, 341, n344);
	int n360;
	INVxp5_ASAP7_6t_R( n357, &n360);
	n360 = assign_value_to_net(ax_values, 357, n360);
	int n356;
	NAND2xp5R_ASAP7_6t_R( n130, n357, &n356);
	n356 = assign_value_to_net(ax_values, 353, n356);
	int n309;
	AO21x1_ASAP7_6t_R( n329, n332, n308, &n309);
	n309 = assign_value_to_net(ax_values, 306, n309);
	int n389;
	INVxp5_ASAP7_6t_R( n146, &n389);
	n389 = assign_value_to_net(ax_values, 386, n389);
	int n330;
	AOI21xp5_ASAP7_6t_R( n392, n146, n329, &n330);
	n330 = assign_value_to_net(ax_values, 327, n330);
	int n338;
	NAND2xp5_ASAP7_6t_R( n6, n336, &n338);
	n338 = assign_value_to_net(ax_values, 335, n338);
	int n312;
	NAND2xp5_ASAP7_6t_R( n388, n310, &n312);
	n312 = assign_value_to_net(ax_values, 309, n312);
	int n391;
	INVx1_ASAP7_6t_R( n388, &n391);
	n391 = assign_value_to_net(ax_values, 388, n391);
	int n331;
	NAND2xp5_ASAP7_6t_R( n388, n392, &n331);
	n331 = assign_value_to_net(ax_values, 328, n331);
	XNOR2xp5_ASAP7_6t_R( n354, n353, &out[7]);
	out[7] = assign_value_to_net(ax_values, 399, out[7]);
	int n345;
	HB1x1_ASAP7_6t_R( n339, &n345);
	n345 = assign_value_to_net(ax_values, 342, n345);
	int n88;
	OAI21xp5_ASAP7_6t_R( n109, n339, n343, &n88);
	n88 = assign_value_to_net(ax_values, 86, n88);
	int n311;
	AOI21xp5_ASAP7_6t_R( n310, n146, n309, &n311);
	n311 = assign_value_to_net(ax_values, 308, n311);
	XOR2xp5_ASAP7_6t_R( n345, n344, &out[8]);
	out[8] = assign_value_to_net(ax_values, 400, out[8]);
	int n58;
	AOI21xp25_ASAP7_6t_R( n263, n88, n262, &n58);
	n58 = assign_value_to_net(ax_values, 57, n58);
	int n390;
	AOI21x1_ASAP7_6t_R( n263, n88, n262, &n390);
	n390 = assign_value_to_net(ax_values, 387, n390);
	int n359;
	INVx1_ASAP7_6t_R( n88, &n359);
	n359 = assign_value_to_net(ax_values, 356, n359);
	XOR2xp5_ASAP7_6t_R( n338, n58, &out[11]);
	out[11] = assign_value_to_net(ax_values, 403, out[11]);
	int n334;
	OAI21xp5b_ASAP7_6t_R( n331, n390, n330, &n334);
	n334 = assign_value_to_net(ax_values, 331, n334);
	int n282;
	OAI21xp5b_ASAP7_6t_R( n335, n390, n6, &n282);
	n282 = assign_value_to_net(ax_values, 279, n282);
	int n394;
	OAI21xp5b_ASAP7_6t_R( n391, n390, n389, &n394);
	n394 = assign_value_to_net(ax_values, 391, n394);
	int n328;
	OAI21xp5b_ASAP7_6t_R( n312, n390, n311, &n328);
	n328 = assign_value_to_net(ax_values, 325, n328);
	int n364;
	OAI21xp5_ASAP7_6t_R( n360, n359, n130, &n364);
	n364 = assign_value_to_net(ax_values, 361, n364);
	XOR2xp5_ASAP7_6t_R( n359, n356, &out[9]);
	out[9] = assign_value_to_net(ax_values, 401, out[9]);
	XNOR2xp5f_ASAP7_6t_R( n334, n13, &out[14]);
	out[14] = assign_value_to_net(ax_values, 406, out[14]);
	XNOR2xp5f_ASAP7_6t_R( n282, n175, &out[12]);
	out[12] = assign_value_to_net(ax_values, 404, out[12]);
	XNOR2xp5f_ASAP7_6t_R( n394, n11, &out[13]);
	out[13] = assign_value_to_net(ax_values, 405, out[13]);
	XNOR2xp5f_ASAP7_6t_R( n328, n327, &out[15]);
	out[15] = assign_value_to_net(ax_values, 407, out[15]);
	XNOR2xp5_ASAP7_6t_R( n364, n363, &out[10]);
	out[10] = assign_value_to_net(ax_values, 402, out[10]);


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

unsigned int top_mult_uint8b_7nm(int *ax_values, unsigned int in_a, unsigned int in_b, int signed_inputs, int signed_outputs){
    //FILE *fb2d = fopen("/home/balaskas/axcarbon/circuits/mult_uint8b_7nm/b2d.txt", "a");
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

    mult_uint8b_7nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
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
    unsigned int min_error=pow(2, 14), max_error=0;
    unsigned int nabs;
    unsigned int i=0;

    double med=0;
    double mre=0;
    double dev=0, squared_sum=0;     // To accumulate squared differences for variance calculation

    double med_max=0;
    med_max = pow(2, 16) - 1;

    int signed_inputs=0;
    int signed_outputs=0;

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint8b_7nm/inputs_decimal.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);

    //FILE *fax = fopen("/home/balaskas/axcarbon/circuits/mult_uint8b_7nm/ax_values.txt", "w");
    //if (fax == NULL)
    //    exit(1);
    //int j;
    //for (j=0; j<CHROMOSOME_LENGTH; j++) fprintf(fax, "%d %d\n", j, ax_values[j]);
    //fclose(fax);
    
    //FILE *fo = fopen("/home/balaskas/axcarbon/circuits/mult_uint8b_7nm/outputs.txt", "w");
    //if (fo == NULL)
    //    exit(1);

    while(fscanf(f, "%u_%u_%u", &in_a, &in_b, &y_true) == 3) {
        i++;
        
        res = top_mult_uint8b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
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

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint8b_7nm/inputs.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);
	// char fileo[] = "/home/balaskas/axcarbon/circuits/mult_uint8b_7nm/outputs.txt";
    // FILE *fo = fopen(fileo, "w");
    // if (fo == NULL)
    //    exit(1);

    // Arrays to store binary numbers.
    int in_a_bin[8], in_b_bin[8], out_bin[outsize];
    int y_true_bin[outsize];
	// Length of each binary array.
    int len1=8, len2=8, len0=outsize;

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
            mult_uint8b_7nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
        
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
    res = top_mult_uint8b_7nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
    return res;
}
