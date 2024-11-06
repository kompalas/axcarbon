#include "approx0.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include "library.h"
#define CHROMOSOME_LENGTH 283
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

void mult_uint8b_45nm_top (int *ax_values, int* in_a, int* in_b, int* out) {


	int n152;
	INV_X2( in_b[7], &n152);
	n152 = assign_value_to_net(ax_values, 151, n152);
	int n87;
	AND2_X1( in_b[6], in_a[1], &n87);
	n87 = assign_value_to_net(ax_values, 86, n87);
	int n93;
	AND2_X1( in_a[6], in_b[1], &n93);
	n93 = assign_value_to_net(ax_values, 92, n93);
	int n94;
	AND2_X1( in_b[0], in_a[7], &n94);
	n94 = assign_value_to_net(ax_values, 93, n94);
	int n69;
	AND2_X1( in_b[2], in_a[4], &n69);
	n69 = assign_value_to_net(ax_values, 68, n69);
	int n71;
	AND2_X1( in_a[1], in_b[5], &n71);
	n71 = assign_value_to_net(ax_values, 70, n71);
	int n70;
	AND2_X1( in_a[0], in_b[6], &n70);
	n70 = assign_value_to_net(ax_values, 69, n70);
	int n68;
	AND2_X1( in_b[0], in_a[6], &n68);
	n68 = assign_value_to_net(ax_values, 67, n68);
	int n67;
	AND2_X1( in_b[1], in_a[5], &n67);
	n67 = assign_value_to_net(ax_values, 66, n67);
	int n91;
	AND2_X1( in_a[3], in_b[4], &n91);
	n91 = assign_value_to_net(ax_values, 90, n91);
	int n90;
	AND2_X1( in_b[5], in_a[2], &n90);
	n90 = assign_value_to_net(ax_values, 89, n90);
	int n11;
	AND2_X1( in_a[0], in_b[7], &n11);
	n11 = assign_value_to_net(ax_values, 10, n11);
	int n13;
	AND2_X1( in_b[3], in_a[4], &n13);
	n13 = assign_value_to_net(ax_values, 12, n13);
	int n18;
	AND2_X1( in_a[3], in_b[5], &n18);
	n18 = assign_value_to_net(ax_values, 17, n18);
	int n19;
	AND2_X1( in_b[6], in_a[2], &n19);
	n19 = assign_value_to_net(ax_values, 18, n19);
	int n115;
	INV_X1( in_a[4], &n115);
	n115 = assign_value_to_net(ax_values, 114, n115);
	int n143;
	AND2_X1( in_b[2], in_a[7], &n143);
	n143 = assign_value_to_net(ax_values, 142, n143);
	int n185;
	INV_X1( in_b[5], &n185);
	n185 = assign_value_to_net(ax_values, 184, n185);
	int n151;
	INV_X1( in_a[3], &n151);
	n151 = assign_value_to_net(ax_values, 150, n151);
	int n29;
	AND2_X1( in_b[1], in_a[4], &n29);
	n29 = assign_value_to_net(ax_values, 28, n29);
	int n28;
	AND2_X1( in_b[0], in_a[5], &n28);
	n28 = assign_value_to_net(ax_values, 27, n28);
	int n10;
	NAND4_X1( in_b[5], in_b[4], in_a[2], in_a[3], &n10);
	n10 = assign_value_to_net(ax_values, 9, n10);
	int n111;
	AND2_X1( in_b[1], in_a[7], &n111);
	n111 = assign_value_to_net(ax_values, 110, n111);
	int n110;
	AND2_X1( in_a[6], in_b[2], &n110);
	n110 = assign_value_to_net(ax_values, 109, n110);
	int n46;
	AND2_X1( in_b[1], in_a[1], &n46);
	n46 = assign_value_to_net(ax_values, 45, n46);
	int n47;
	AND2_X1( in_b[2], in_a[0], &n47);
	n47 = assign_value_to_net(ax_values, 46, n47);
	int n112;
	INV_X1( in_b[2], &n112);
	n112 = assign_value_to_net(ax_values, 111, n112);
	int n95;
	INV_X1( in_b[4], &n95);
	n95 = assign_value_to_net(ax_values, 94, n95);
	int n40;
	AND2_X1( in_a[4], in_b[0], &n40);
	n40 = assign_value_to_net(ax_values, 39, n40);
	int n39;
	AND2_X1( in_a[3], in_b[1], &n39);
	n39 = assign_value_to_net(ax_values, 38, n39);
	int n30;
	AND2_X1( in_b[3], in_a[2], &n30);
	n30 = assign_value_to_net(ax_values, 29, n30);
	int n31;
	AND2_X1( in_b[5], in_a[0], &n31);
	n31 = assign_value_to_net(ax_values, 30, n31);
	int n167;
	AND2_X1( in_b[4], in_a[6], &n167);
	n167 = assign_value_to_net(ax_values, 166, n167);
	int n148;
	AND2_X1( in_a[3], in_b[6], &n148);
	n148 = assign_value_to_net(ax_values, 147, n148);
	int n149;
	AND2_X1( in_b[4], in_a[5], &n149);
	n149 = assign_value_to_net(ax_values, 148, n149);
	int n92;
	INV_X1( in_b[6], &n92);
	n92 = assign_value_to_net(ax_values, 91, n92);
	int n153;
	INV_X1( in_a[6], &n153);
	n153 = assign_value_to_net(ax_values, 152, n153);
	int n170;
	INV_X1( in_a[7], &n170);
	n170 = assign_value_to_net(ax_values, 169, n170);
	int n89;
	INV_X1( in_b[1], &n89);
	n89 = assign_value_to_net(ax_values, 88, n89);
	int n214;
	INV_X1( in_b[0], &n214);
	n214 = assign_value_to_net(ax_values, 213, n214);
	int n114;
	INV_X1( in_a[5], &n114);
	n114 = assign_value_to_net(ax_values, 113, n114);
	int n113;
	INV_X1( in_a[2], &n113);
	n113 = assign_value_to_net(ax_values, 112, n113);
	int n4;
	AND2_X1( in_b[4], in_a[7], &n4);
	n4 = assign_value_to_net(ax_values, 3, n4);
	int n213;
	INV_X1( in_a[0], &n213);
	n213 = assign_value_to_net(ax_values, 212, n213);
	int n150;
	INV_X2( in_b[3], &n150);
	n150 = assign_value_to_net(ax_values, 149, n150);
	int n88;
	AND2_X1( in_b[2], in_a[5], &n88);
	n88 = assign_value_to_net(ax_values, 87, n88);
	int n78;
	INV_X1( in_a[1], &n78);
	n78 = assign_value_to_net(ax_values, 77, n78);
	int n32;
	AND2_X1( in_b[2], in_a[3], &n32);
	n32 = assign_value_to_net(ax_values, 31, n32);
	int n17;
	AND2_X1( n93, n94, &n17);
	n17 = assign_value_to_net(ax_values, 16, n17);
	int n98;
	XOR2_X1( n94, n93, &n98);
	n98 = assign_value_to_net(ax_values, 97, n98);
	int n96;
	int n72;
	FA_X1( n71, n70, n69, &n96, &n72);
	n96 = assign_value_to_net(ax_values, 95, n96);
	n72 = assign_value_to_net(ax_values, 71, n72);
	int n97;
	int n73;
	HA_X1( n68, n67, &n97, &n73);
	n97 = assign_value_to_net(ax_values, 96, n97);
	n73 = assign_value_to_net(ax_values, 72, n73);
	int n26;
	XNOR2_X1( n91, n90, &n26);
	n26 = assign_value_to_net(ax_values, 25, n26);
	int n9;
	NAND2_X1( n13, n90, &n9);
	n9 = assign_value_to_net(ax_values, 8, n9);
	int n27;
	NAND2_X1( n13, n91, &n27);
	n27 = assign_value_to_net(ax_values, 26, n27);
	int n15;
	NAND2_X1( n19, n18, &n15);
	n15 = assign_value_to_net(ax_values, 14, n15);
	int n14;
	XNOR2_X1( n19, n18, &n14);
	n14 = assign_value_to_net(ax_values, 13, n14);
	int n187;
	NOR2_X1( n152, n115, &n187);
	n187 = assign_value_to_net(ax_values, 186, n187);
	int n147;
	NOR2_X1( n185, n115, &n147);
	n147 = assign_value_to_net(ax_values, 146, n147);
	int n168;
	NOR2_X1( n152, n151, &n168);
	n168 = assign_value_to_net(ax_values, 167, n168);
	int n33;
	XOR2_X1( n28, n29, &n33);
	n33 = assign_value_to_net(ax_values, 32, n33);
	int n75;
	AND2_X1( n29, n28, &n75);
	n75 = assign_value_to_net(ax_values, 74, n75);
	int n146;
	AND2_X1( n110, n111, &n146);
	n146 = assign_value_to_net(ax_values, 145, n146);
	int n117;
	XOR2_X1( n110, n111, &n117);
	n117 = assign_value_to_net(ax_values, 116, n117);
	int n49;
	XOR2_X1( n47, n46, &n49);
	n49 = assign_value_to_net(ax_values, 48, n49);
	int n41;
	AND2_X1( n47, n46, &n41);
	n41 = assign_value_to_net(ax_values, 40, n41);
	int n108;
	NOR2_X1( n95, n115, &n108);
	n108 = assign_value_to_net(ax_values, 107, n108);
	int n35;
	int n55;
	HA_X1( n40, n39, &n35, &n55);
	n35 = assign_value_to_net(ax_values, 34, n35);
	n55 = assign_value_to_net(ax_values, 54, n55);
	int n172;
	NOR2_X1( n92, n115, &n172);
	n172 = assign_value_to_net(ax_values, 171, n172);
	int n5;
	NOR2_X1( n92, n153, &n5);
	n5 = assign_value_to_net(ax_values, 4, n5);
	int n186;
	NOR2_X1( n185, n153, &n186);
	n186 = assign_value_to_net(ax_values, 185, n186);
	int n2;
	NOR2_X1( n153, n152, &n2);
	n2 = assign_value_to_net(ax_values, 1, n2);
	int n7;
	NOR2_X1( n170, n152, &n7);
	n7 = assign_value_to_net(ax_values, 6, n7);
	int n1;
	NOR2_X1( n185, n170, &n1);
	n1 = assign_value_to_net(ax_values, 0, n1);
	int n6;
	NOR2_X1( n92, n170, &n6);
	n6 = assign_value_to_net(ax_values, 5, n6);
	int n45;
	NOR2_X1( n214, n151, &n45);
	n45 = assign_value_to_net(ax_values, 44, n45);
	int n173;
	NOR2_X1( n185, n114, &n173);
	n173 = assign_value_to_net(ax_values, 172, n173);
	int n189;
	NOR2_X1( n92, n114, &n189);
	n189 = assign_value_to_net(ax_values, 188, n189);
	int n194;
	NOR2_X1( n152, n114, &n194);
	n194 = assign_value_to_net(ax_values, 193, n194);
	int n76;
	NOR2_X1( n95, n113, &n76);
	n76 = assign_value_to_net(ax_values, 75, n76);
	int n142;
	NOR2_X1( n152, n113, &n142);
	n142 = assign_value_to_net(ax_values, 141, n142);
	int n48;
	NOR2_X1( n214, n113, &n48);
	n48 = assign_value_to_net(ax_values, 47, n48);
	int n44;
	NOR2_X1( n89, n113, &n44);
	n44 = assign_value_to_net(ax_values, 43, n44);
	int n58;
	NOR2_X1( n112, n113, &n58);
	n58 = assign_value_to_net(ax_values, 57, n58);
	NOR2_X1( n214, n213, &out[0]);
	out[0] = assign_value_to_net(ax_values, 267, out[0]);
	int n57;
	NOR2_X1( n95, n213, &n57);
	n57 = assign_value_to_net(ax_values, 56, n57);
	int n265;
	NOR2_X1( n89, n213, &n265);
	n265 = assign_value_to_net(ax_values, 264, n265);
	int n77;
	NOR2_X1( n150, n151, &n77);
	n77 = assign_value_to_net(ax_values, 76, n77);
	int n169;
	NOR2_X1( n150, n170, &n169);
	n169 = assign_value_to_net(ax_values, 168, n169);
	int n109;
	NOR2_X1( n150, n114, &n109);
	n109 = assign_value_to_net(ax_values, 108, n109);
	int n42;
	NOR2_X1( n150, n213, &n42);
	n42 = assign_value_to_net(ax_values, 41, n42);
	int n141;
	NOR2_X1( n150, n153, &n141);
	n141 = assign_value_to_net(ax_values, 140, n141);
	int n25;
	OAI21_X1( n88, n11, n87, &n25);
	n25 = assign_value_to_net(ax_values, 24, n25);
	int n23;
	XNOR2_X1( n87, n88, &n23);
	n23 = assign_value_to_net(ax_values, 22, n23);
	int n24;
	NAND2_X1( n11, n88, &n24);
	n24 = assign_value_to_net(ax_values, 23, n24);
	int n56;
	NOR2_X1( n150, n78, &n56);
	n56 = assign_value_to_net(ax_values, 55, n56);
	int n34;
	NOR2_X1( n95, n78, &n34);
	n34 = assign_value_to_net(ax_values, 33, n34);
	int n264;
	NOR2_X1( n214, n78, &n264);
	n264 = assign_value_to_net(ax_values, 263, n264);
	int n107;
	NOR2_X1( n78, n152, &n107);
	n107 = assign_value_to_net(ax_values, 106, n107);
	int n43;
	NOR2_X1( n112, n78, &n43);
	n43 = assign_value_to_net(ax_values, 42, n43);
	int n74;
	int n38;
	FA_X1( n32, n31, n30, &n74, &n38);
	n74 = assign_value_to_net(ax_values, 73, n74);
	n38 = assign_value_to_net(ax_values, 37, n38);
	int n16;
	OAI21_X1( n19, n18, n17, &n16);
	n16 = assign_value_to_net(ax_values, 15, n16);
	int n104;
	int n101;
	FA_X1( n98, n97, n96, &n104, &n101);
	n104 = assign_value_to_net(ax_values, 103, n104);
	n101 = assign_value_to_net(ax_values, 100, n101);
	int n86;
	XNOR2_X1( n13, n26, &n86);
	n86 = assign_value_to_net(ax_values, 85, n86);
	int n116;
	NAND3_X1( n9, n10, n27, &n116);
	n116 = assign_value_to_net(ax_values, 115, n116);
	int n106;
	XNOR2_X1( n14, n17, &n106);
	n106 = assign_value_to_net(ax_values, 105, n106);
	int n176;
	int n139;
	FA_X1( n149, n148, n147, &n176, &n139);
	n176 = assign_value_to_net(ax_values, 175, n176);
	n139 = assign_value_to_net(ax_values, 138, n139);
	int n192;
	int n188;
	FA_X1( n186, n187, n4, &n192, &n188);
	n192 = assign_value_to_net(ax_values, 191, n192);
	n188 = assign_value_to_net(ax_values, 187, n188);
	int n193;
	int n195;
	FA_X1( n1, n194, n5, &n195, &n193);
	n195 = assign_value_to_net(ax_values, 194, n195);
	n193 = assign_value_to_net(ax_values, 192, n193);
	int n260;
	NOR2_X1( n49, n48, &n260);
	n260 = assign_value_to_net(ax_values, 259, n260);
	int n261;
	NAND2_X1( n49, n48, &n261);
	n261 = assign_value_to_net(ax_values, 260, n261);
	int n51;
	int n54;
	HA_X1( n45, n44, &n54, &n51);
	n54 = assign_value_to_net(ax_values, 53, n54);
	n51 = assign_value_to_net(ax_values, 50, n51);
	int n85;
	int n81;
	FA_X1( n77, n76, n75, &n85, &n81);
	n85 = assign_value_to_net(ax_values, 84, n85);
	n81 = assign_value_to_net(ax_values, 80, n81);
	int n190;
	int n177;
	FA_X1( n169, n168, n167, &n190, &n177);
	n190 = assign_value_to_net(ax_values, 189, n190);
	n177 = assign_value_to_net(ax_values, 176, n177);
	int n171;
	int n140;
	FA_X1( n142, n143, n141, &n171, &n140);
	n171 = assign_value_to_net(ax_values, 170, n171);
	n140 = assign_value_to_net(ax_values, 139, n140);
	int n84;
	XNOR2_X1( n11, n23, &n84);
	n84 = assign_value_to_net(ax_values, 83, n84);
	int n118;
	NAND2_X1( n25, n24, &n118);
	n118 = assign_value_to_net(ax_values, 117, n118);
	int n59;
	int n37;
	FA_X1( n58, n57, n56, &n37, &n59);
	n37 = assign_value_to_net(ax_values, 36, n37);
	n59 = assign_value_to_net(ax_values, 58, n59);
	int n36;
	int n80;
	FA_X1( n35, n34, n33, &n80, &n36);
	n80 = assign_value_to_net(ax_values, 79, n80);
	n36 = assign_value_to_net(ax_values, 35, n36);
	int n267;
	OR2_X1( n265, n264, &n267);
	n267 = assign_value_to_net(ax_values, 266, n267);
	int n266;
	NAND2_X1( n265, n264, &n266);
	n266 = assign_value_to_net(ax_values, 265, n266);
	int n145;
	int n105;
	FA_X1( n109, n108, n107, &n145, &n105);
	n145 = assign_value_to_net(ax_values, 144, n145);
	n105 = assign_value_to_net(ax_values, 104, n105);
	int n53;
	int n52;
	FA_X1( n43, n42, n41, &n53, &n52);
	n53 = assign_value_to_net(ax_values, 52, n53);
	n52 = assign_value_to_net(ax_values, 51, n52);
	int n100;
	int n79;
	FA_X1( n74, n73, n72, &n100, &n79);
	n100 = assign_value_to_net(ax_values, 99, n100);
	n79 = assign_value_to_net(ax_values, 78, n79);
	int n144;
	NAND2_X1( n16, n15, &n144);
	n144 = assign_value_to_net(ax_values, 143, n144);
	int n203;
	int n200;
	FA_X1( n6, n2, n195, &n203, &n200);
	n203 = assign_value_to_net(ax_values, 202, n203);
	n200 = assign_value_to_net(ax_values, 199, n200);
	int n262;
	INV_X1( n260, &n262);
	n262 = assign_value_to_net(ax_values, 261, n262);
	int n174;
	OR2_X1( n176, n177, &n174);
	n174 = assign_value_to_net(ax_values, 173, n174);
	int n154;
	XOR2_X1( n177, n176, &n154);
	n154 = assign_value_to_net(ax_values, 153, n154);
	int n178;
	NAND2_X1( n177, n176, &n178);
	n178 = assign_value_to_net(ax_values, 177, n178);
	int n191;
	int n184;
	FA_X1( n190, n189, n188, &n191, &n184);
	n191 = assign_value_to_net(ax_values, 190, n191);
	n184 = assign_value_to_net(ax_values, 183, n184);
	int n180;
	int n183;
	FA_X1( n173, n172, n171, &n183, &n180);
	n183 = assign_value_to_net(ax_values, 182, n183);
	n180 = assign_value_to_net(ax_values, 179, n180);
	int n99;
	int n121;
	FA_X1( n86, n85, n84, &n121, &n99);
	n121 = assign_value_to_net(ax_values, 120, n121);
	n99 = assign_value_to_net(ax_values, 98, n99);
	int n138;
	int n120;
	FA_X1( n117, n116, n118, &n138, &n120);
	n138 = assign_value_to_net(ax_values, 137, n138);
	n120 = assign_value_to_net(ax_values, 119, n120);
	int n64;
	int n63;
	FA_X1( n38, n37, n36, &n64, &n63);
	n64 = assign_value_to_net(ax_values, 63, n64);
	n63 = assign_value_to_net(ax_values, 62, n63);
	AND2_X1( n267, n266, &out[1]);
	out[1] = assign_value_to_net(ax_values, 268, out[1]);
	int n50;
	OAI21_X1( n260, n266, n261, &n50);
	n50 = assign_value_to_net(ax_values, 49, n50);
	int n119;
	int n157;
	FA_X1( n106, n105, n104, &n157, &n119);
	n157 = assign_value_to_net(ax_values, 156, n157);
	n119 = assign_value_to_net(ax_values, 118, n119);
	int n60;
	int n62;
	FA_X1( n55, n54, n53, &n62, &n60);
	n62 = assign_value_to_net(ax_values, 61, n62);
	n60 = assign_value_to_net(ax_values, 59, n60);
	int n255;
	NOR2_X1( n52, n51, &n255);
	n255 = assign_value_to_net(ax_values, 254, n255);
	int n256;
	NAND2_X1( n52, n51, &n256);
	n256 = assign_value_to_net(ax_values, 255, n256);
	int n65;
	int n82;
	FA_X1( n81, n80, n79, &n82, &n65);
	n82 = assign_value_to_net(ax_values, 81, n82);
	n65 = assign_value_to_net(ax_values, 64, n65);
	int n156;
	int null0;
	FA_X1( n145, n146, n144, &null0, &n156);
	n156 = assign_value_to_net(ax_values, 155, n156);
	int n175;
	int null1;
	FA_X1( n146, n144, n145, &n175, &null1);
	n175 = assign_value_to_net(ax_values, 174, n175);
	int n229;
	NAND2_X1( n203, n7, &n229);
	n229 = assign_value_to_net(ax_values, 228, n229);
	int n228;
	NOR2_X1( n203, n7, &n228);
	n228 = assign_value_to_net(ax_values, 227, n228);
	int n263;
	NAND2_X1( n262, n261, &n263);
	n263 = assign_value_to_net(ax_values, 262, n263);
	int n198;
	int n201;
	FA_X1( n193, n192, n191, &n201, &n198);
	n201 = assign_value_to_net(ax_values, 200, n201);
	n198 = assign_value_to_net(ax_values, 197, n198);
	int n102;
	int n83;
	FA_X1( n101, n100, n99, &n102, &n83);
	n102 = assign_value_to_net(ax_values, 101, n102);
	n83 = assign_value_to_net(ax_values, 82, n83);
	int n155;
	int n181;
	FA_X1( n140, n139, n138, &n181, &n155);
	n181 = assign_value_to_net(ax_values, 180, n181);
	n155 = assign_value_to_net(ax_values, 154, n155);
	int n258;
	INV_X1( n50, &n258);
	n258 = assign_value_to_net(ax_values, 257, n258);
	int n123;
	int n103;
	FA_X1( n121, n120, n119, &n123, &n103);
	n123 = assign_value_to_net(ax_values, 122, n123);
	n103 = assign_value_to_net(ax_values, 102, n103);
	int n241;
	OR2_X1( n60, n59, &n241);
	n241 = assign_value_to_net(ax_values, 240, n241);
	int n163;
	NAND2_X1( n63, n62, &n163);
	n163 = assign_value_to_net(ax_values, 162, n163);
	int n162;
	NOR2_X1( n63, n62, &n162);
	n162 = assign_value_to_net(ax_values, 161, n162);
	int n61;
	AND2_X1( n60, n59, &n61);
	n61 = assign_value_to_net(ax_values, 60, n61);
	int n257;
	INV_X1( n255, &n257);
	n257 = assign_value_to_net(ax_values, 256, n257);
	int n244;
	OR2_X1( n65, n64, &n244);
	n244 = assign_value_to_net(ax_values, 243, n244);
	int n66;
	AND2_X1( n65, n64, &n66);
	n66 = assign_value_to_net(ax_values, 65, n66);
	int n179;
	NAND2_X1( n175, n174, &n179);
	n179 = assign_value_to_net(ax_values, 178, n179);
	int n22;
	XNOR2_X1( n175, n154, &n22);
	n22 = assign_value_to_net(ax_values, 21, n22);
	int n230;
	INV_X1( n228, &n230);
	n230 = assign_value_to_net(ax_values, 229, n230);
	XOR2_X1( n263, n266, &out[2]);
	out[2] = assign_value_to_net(ax_values, 269, out[2]);
	int n219;
	OR2_X1( n201, n200, &n219);
	n219 = assign_value_to_net(ax_values, 218, n219);
	int n218;
	NAND2_X1( n201, n200, &n218);
	n218 = assign_value_to_net(ax_values, 217, n218);
	int n210;
	NAND2_X1( n83, n82, &n210);
	n210 = assign_value_to_net(ax_values, 209, n210);
	int n209;
	NOR2_X1( n83, n82, &n209);
	n209 = assign_value_to_net(ax_values, 208, n209);
	int n21;
	NAND2_X1( n180, n181, &n21);
	n21 = assign_value_to_net(ax_values, 20, n21);
	int n3;
	NOR2_X1( n180, n181, &n3);
	n3 = assign_value_to_net(ax_values, 2, n3);
	int n124;
	int n158;
	FA_X1( n157, n156, n155, &n158, &n124);
	n158 = assign_value_to_net(ax_values, 157, n158);
	n124 = assign_value_to_net(ax_values, 123, n124);
	int n20;
	XOR2_X1( n180, n181, &n20);
	n20 = assign_value_to_net(ax_values, 19, n20);
	int n242;
	OAI21_X1( n255, n258, n256, &n242);
	n242 = assign_value_to_net(ax_values, 241, n242);
	int n133;
	NAND2_X1( n103, n102, &n133);
	n133 = assign_value_to_net(ax_values, 132, n133);
	int n131;
	NOR2_X1( n103, n102, &n131);
	n131 = assign_value_to_net(ax_values, 130, n131);
	int n164;
	INV_X1( n162, &n164);
	n164 = assign_value_to_net(ax_values, 163, n164);
	int n12;
	INV_X1( n61, &n12);
	n12 = assign_value_to_net(ax_values, 11, n12);
	int n259;
	NAND2_X1( n257, n256, &n259);
	n259 = assign_value_to_net(ax_values, 258, n259);
	int n8;
	INV_X1( n66, &n8);
	n8 = assign_value_to_net(ax_values, 7, n8);
	int n182;
	NAND2_X1( n179, n178, &n182);
	n182 = assign_value_to_net(ax_values, 181, n182);
	int n231;
	NAND2_X1( n230, n229, &n231);
	n231 = assign_value_to_net(ax_values, 230, n231);
	int n220;
	NAND2_X1( n219, n218, &n220);
	n220 = assign_value_to_net(ax_values, 219, n220);
	int n202;
	INV_X1( n218, &n202);
	n202 = assign_value_to_net(ax_values, 201, n202);
	int n211;
	INV_X1( n209, &n211);
	n211 = assign_value_to_net(ax_values, 210, n211);
	int n197;
	OAI21_X1( n3, n22, n21, &n197);
	n197 = assign_value_to_net(ax_values, 196, n197);
	int n132;
	NAND2_X1( n124, n123, &n132);
	n132 = assign_value_to_net(ax_values, 131, n132);
	int n134;
	NOR2_X2( n124, n123, &n134);
	n134 = assign_value_to_net(ax_values, 133, n134);
	int n159;
	XNOR2_X1( n22, n20, &n159);
	n159 = assign_value_to_net(ax_values, 158, n159);
	int n165;
	AOI21_X1( n242, n241, n61, &n165);
	n165 = assign_value_to_net(ax_values, 164, n165);
	int n128;
	INV_X1( n131, &n128);
	n128 = assign_value_to_net(ax_values, 127, n128);
	int n166;
	NAND2_X1( n164, n163, &n166);
	n166 = assign_value_to_net(ax_values, 165, n166);
	int n243;
	NAND2_X1( n12, n241, &n243);
	n243 = assign_value_to_net(ax_values, 242, n243);
	XOR2_X1( n259, n258, &out[3]);
	out[3] = assign_value_to_net(ax_values, 270, out[3]);
	int n246;
	NAND2_X1( n8, n244, &n246);
	n246 = assign_value_to_net(ax_values, 245, n246);
	int n196;
	int n199;
	FA_X1( n184, n183, n182, &n199, &n196);
	n199 = assign_value_to_net(ax_values, 198, n199);
	n196 = assign_value_to_net(ax_values, 195, n196);
	int n212;
	NAND2_X1( n211, n210, &n212);
	n212 = assign_value_to_net(ax_values, 211, n212);
	int n135;
	OAI21_X1( n134, n133, n132, &n135);
	n135 = assign_value_to_net(ax_values, 134, n135);
	int n137;
	NOR2_X1( n134, n131, &n137);
	n137 = assign_value_to_net(ax_values, 136, n137);
	int n122;
	CLKBUF_X1( n134, &n122);
	n122 = assign_value_to_net(ax_values, 121, n122);
	int n247;
	NOR2_X1( n159, n158, &n247);
	n247 = assign_value_to_net(ax_values, 246, n247);
	int n248;
	NAND2_X1( n159, n158, &n248);
	n248 = assign_value_to_net(ax_values, 247, n248);
	int n245;
	OAI21_X1( n162, n165, n163, &n245);
	n245 = assign_value_to_net(ax_values, 244, n245);
	int n129;
	NAND2_X1( n128, n133, &n129);
	n129 = assign_value_to_net(ax_values, 128, n129);
	XOR2_X1( n165, n166, &out[5]);
	out[5] = assign_value_to_net(ax_values, 272, out[5]);
	XNOR2_X1( n243, n242, &out[4]);
	out[4] = assign_value_to_net(ax_values, 271, out[4]);
	int n237;
	NAND2_X1( n199, n198, &n237);
	n237 = assign_value_to_net(ax_values, 236, n237);
	int n250;
	NOR2_X1( n196, n197, &n250);
	n250 = assign_value_to_net(ax_values, 249, n250);
	int n238;
	OR2_X1( n199, n198, &n238);
	n238 = assign_value_to_net(ax_values, 237, n238);
	int n251;
	NAND2_X1( n196, n197, &n251);
	n251 = assign_value_to_net(ax_values, 250, n251);
	int n125;
	INV_X1( n122, &n125);
	n125 = assign_value_to_net(ax_values, 124, n125);
	int n160;
	INV_X1( n247, &n160);
	n160 = assign_value_to_net(ax_values, 159, n160);
	XNOR2_X1( n246, n245, &out[6]);
	out[6] = assign_value_to_net(ax_values, 273, out[6]);
	int n208;
	AOI21_X1( n244, n245, n66, &n208);
	n208 = assign_value_to_net(ax_values, 207, n208);
	int n215;
	INV_X1( n237, &n215);
	n215 = assign_value_to_net(ax_values, 214, n215);
	int n233;
	NOR2_X1( n247, n250, &n233);
	n233 = assign_value_to_net(ax_values, 232, n233);
	int n252;
	INV_X1( n250, &n252);
	n252 = assign_value_to_net(ax_values, 251, n252);
	int n239;
	NAND2_X1( n238, n237, &n239);
	n239 = assign_value_to_net(ax_values, 238, n239);
	int n222;
	NAND2_X1( n238, n219, &n222);
	n222 = assign_value_to_net(ax_values, 221, n222);
	int n234;
	OAI21_X1( n248, n250, n251, &n234);
	n234 = assign_value_to_net(ax_values, 233, n234);
	int n126;
	NAND2_X1( n125, n132, &n126);
	n126 = assign_value_to_net(ax_values, 125, n126);
	int n161;
	NAND2_X1( n160, n248, &n161);
	n161 = assign_value_to_net(ax_values, 160, n161);
	int n136;
	OAI21_X1( n208, n209, n210, &n136);
	n136 = assign_value_to_net(ax_values, 135, n136);
	XOR2_X1( n208, n212, &out[7]);
	out[7] = assign_value_to_net(ax_values, 274, out[7]);
	int n223;
	AOI21_X1( n215, n219, n202, &n223);
	n223 = assign_value_to_net(ax_values, 222, n223);
	int n217;
	NAND2_X1( n233, n238, &n217);
	n217 = assign_value_to_net(ax_values, 216, n217);
	int n236;
	INV_X1( n233, &n236);
	n236 = assign_value_to_net(ax_values, 235, n236);
	int n253;
	NAND2_X1( n252, n251, &n253);
	n253 = assign_value_to_net(ax_values, 252, n253);
	int n225;
	INV_X1( n222, &n225);
	n225 = assign_value_to_net(ax_values, 224, n225);
	int n205;
	NOR2_X1( n222, n228, &n205);
	n205 = assign_value_to_net(ax_values, 204, n205);
	int n235;
	INV_X1( n234, &n235);
	n235 = assign_value_to_net(ax_values, 234, n235);
	int n216;
	AOI21_X1( n234, n238, n215, &n216);
	n216 = assign_value_to_net(ax_values, 215, n216);
	int n249;
	AOI21_X2( n136, n137, n135, &n249);
	n249 = assign_value_to_net(ax_values, 248, n249);
	int n130;
	INV_X1( n136, &n130);
	n130 = assign_value_to_net(ax_values, 129, n130);
	int n224;
	INV_X1( n223, &n224);
	n224 = assign_value_to_net(ax_values, 223, n224);
	int n204;
	OAI21_X1( n223, n228, n229, &n204);
	n204 = assign_value_to_net(ax_values, 203, n204);
	int n227;
	NAND2_X1( n233, n225, &n227);
	n227 = assign_value_to_net(ax_values, 226, n227);
	int n207;
	NAND2_X1( n233, n205, &n207);
	n207 = assign_value_to_net(ax_values, 206, n207);
	XOR2_X1( n249, n161, &out[10]);
	out[10] = assign_value_to_net(ax_values, 277, out[10]);
	int n221;
	OAI21_X1( n249, n217, n216, &n221);
	n221 = assign_value_to_net(ax_values, 220, n221);
	int n254;
	OAI21_X1( n249, n247, n248, &n254);
	n254 = assign_value_to_net(ax_values, 253, n254);
	int n240;
	OAI21_X1( n249, n236, n235, &n240);
	n240 = assign_value_to_net(ax_values, 239, n240);
	int n127;
	OAI21_X1( n130, n131, n133, &n127);
	n127 = assign_value_to_net(ax_values, 126, n127);
	XOR2_X1( n130, n129, &out[8]);
	out[8] = assign_value_to_net(ax_values, 275, out[8]);
	int n226;
	AOI21_X1( n234, n225, n224, &n226);
	n226 = assign_value_to_net(ax_values, 225, n226);
	int n206;
	AOI21_X1( n234, n205, n204, &n206);
	n206 = assign_value_to_net(ax_values, 205, n206);
	XNOR2_X1( n221, n220, &out[13]);
	out[13] = assign_value_to_net(ax_values, 280, out[13]);
	XNOR2_X1( n254, n253, &out[11]);
	out[11] = assign_value_to_net(ax_values, 278, out[11]);
	XNOR2_X1( n240, n239, &out[12]);
	out[12] = assign_value_to_net(ax_values, 279, out[12]);
	XNOR2_X1( n127, n126, &out[9]);
	out[9] = assign_value_to_net(ax_values, 276, out[9]);
	int n232;
	OAI21_X1( n249, n227, n226, &n232);
	n232 = assign_value_to_net(ax_values, 231, n232);
	OAI21_X1( n249, n207, n206, &out[15]);
	out[15] = assign_value_to_net(ax_values, 282, out[15]);
	XNOR2_X1( n232, n231, &out[14]);
	out[14] = assign_value_to_net(ax_values, 281, out[14]);


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

unsigned int top_mult_uint8b_45nm(int *ax_values, unsigned int in_a, unsigned int in_b, int signed_inputs, int signed_outputs){
    //FILE *fb2d = fopen("/home/balaskas/axcarbon/circuits/mult_uint8b_45nm/b2d.txt", "a");
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

    mult_uint8b_45nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
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

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint8b_45nm/inputs_decimal.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);

    //FILE *fax = fopen("/home/balaskas/axcarbon/circuits/mult_uint8b_45nm/ax_values.txt", "w");
    //if (fax == NULL)
    //    exit(1);
    //int j;
    //for (j=0; j<CHROMOSOME_LENGTH; j++) fprintf(fax, "%d %d\n", j, ax_values[j]);
    //fclose(fax);
    
    //FILE *fo = fopen("/home/balaskas/axcarbon/circuits/mult_uint8b_45nm/outputs.txt", "w");
    //if (fo == NULL)
    //    exit(1);

    while(fscanf(f, "%u_%u_%u", &in_a, &in_b, &y_true) == 3) {
        i++;
        
        res = top_mult_uint8b_45nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
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

    char file[] = "/home/balaskas/axcarbon/circuits/mult_uint8b_45nm/inputs.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);
	// char fileo[] = "/home/balaskas/axcarbon/circuits/mult_uint8b_45nm/outputs.txt";
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
            mult_uint8b_45nm_top(ax_values, in_a_bin, in_b_bin, out_bin);
        
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
    res = top_mult_uint8b_45nm(ax_values, in_a, in_b, signed_inputs, signed_outputs);
    return res;
}
