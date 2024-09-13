#include<stdint.h>
int not (int a){return (a ^ 1);}
int buf (int a){return (a);}
void AND2_X1 ( int A1, int A2, int* ZN){
 *ZN = A1 & A2;
}

void AND2_X2 ( int A1, int A2, int* ZN){
 *ZN = A1 & A2;
}

void AND2_X4 ( int A1, int A2, int* ZN){
 *ZN = A1 & A2;
}

void AND3_X1 ( int A1, int A2, int A3, int* ZN){
 int i_4 = A1 & A2;
 *ZN = i_4 & A3;
}

void AND3_X2 ( int A1, int A2, int A3, int* ZN){
 int i_4 = A1 & A2;
 *ZN = i_4 & A3;
}

void AND3_X4 ( int A1, int A2, int A3, int* ZN){
 int i_4 = A1 & A2;
 *ZN = i_4 & A3;
}

void AND4_X1 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_9 = A1 & A2;
 int i_8 = i_9 & A3;
 *ZN = i_8 & A4;
}

void AND4_X2 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_9 = A1 & A2;
 int i_8 = i_9 & A3;
 *ZN = i_8 & A4;
}

void AND4_X4 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_9 = A1 & A2;
 int i_8 = i_9 & A3;
 *ZN = i_8 & A4;
}

void ANTENNA_X1 ( int A){
}

// void AOI211_X1 ( int A, int B, int C1, int C2, int* ZN){
void AOI211_X1 ( int C1, int C2, int A, int B, int* ZN){
 int i_14 = C1 & C2;
 int i_13 = i_14 | B;
 int i_12 = i_13 | A;
 *ZN = 1 ^ i_12;
}

// void AOI211_X2 ( int A, int B, int C1, int C2, int* ZN){
void AOI211_X2 ( int C1, int C2, int A, int B, int* ZN){
 int i_14 = C1 & C2;
 int i_13 = i_14 | B;
 int i_12 = i_13 | A;
 *ZN = 1 ^ i_12;
}

// void AOI211_X4 ( int A, int B, int C1, int C2, int* ZN){
void AOI211_X4 ( int C1, int C2, int A, int B, int* ZN){
 int i_24 = C1 & C2;
 int i_23 = i_24 | B;
 int i_22 = i_23 | A;
 int i_21 = 1 ^ i_22;
 int i_20 = 1 ^ i_21;
 *ZN = 1 ^ i_20;
}

void AOI21_X1 ( int B1, int B2, int A, int* ZN){
 int i_9 = B1 & B2;
 int i_8 = A | i_9;
 *ZN = 1 ^ i_8;
}

void AOI21_X2 ( int B1, int B2, int A, int* ZN){
 int i_9 = B1 & B2;
 int i_8 = A | i_9;
 *ZN = 1 ^ i_8;
}

void AOI21_X4 ( int B1, int B2, int A, int* ZN){
 int i_9 = B1 & B2;
 int i_8 = A | i_9;
 *ZN = 1 ^ i_8;
}

void AOI221_X1 ( int A, int B1, int B2, int C1, int C2, int* ZN){
 int i_18 = C1 & C2;
 int i_17 = i_18 | A;
 int i_19 = B1 & B2;
 int i_16 = i_17 | i_19;
 *ZN = 1 ^ i_16;
}

void AOI221_X2 ( int A, int B1, int B2, int C1, int C2, int* ZN){
 int i_18 = C1 & C2;
 int i_17 = i_18 | A;
 int i_19 = B1 & B2;
 int i_16 = i_17 | i_19;
 *ZN = 1 ^ i_16;
}

void AOI221_X4 ( int A, int B1, int B2, int C1, int C2, int* ZN){
 int i_28 = C1 & C2;
 int i_27 = i_28 | A;
 int i_29 = B1 & B2;
 int i_26 = i_27 | i_29;
 int i_25 = 1 ^ i_26;
 int i_24 = 1 ^ i_25;
 *ZN = 1 ^ i_24;
}

void AOI222_X1 ( int A1, int A2, int B1, int B2, int C1, int C2, int* ZN){
 int i_22 = A1 & A2;
 int i_23 = B1 & B2;
 int i_21 = i_22 | i_23;
 int i_24 = C1 & C2;
 int i_20 = i_21 | i_24;
 *ZN = 1 ^ i_20;
}

void AOI222_X2 ( int A1, int A2, int B1, int B2, int C1, int C2, int* ZN){
 int i_22 = A1 & A2;
 int i_23 = B1 & B2;
 int i_21 = i_22 | i_23;
 int i_24 = C1 & C2;
 int i_20 = i_21 | i_24;
 *ZN = 1 ^ i_20;
}

void AOI222_X4 ( int A1, int A2, int B1, int B2, int C1, int C2, int* ZN){
 int i_32 = A1 & A2;
 int i_33 = B1 & B2;
 int i_31 = i_32 | i_33;
 int i_34 = C1 & C2;
 int i_30 = i_31 | i_34;
 int i_29 = 1 ^ i_30;
 int i_28 = 1 ^ i_29;
 *ZN = 1 ^ i_28;
}

void AOI22_X1 ( int A1, int A2, int B1, int B2, int* ZN){
 int i_13 = A1 & A2;
 int i_14 = B1 & B2;
 int i_12 = i_13 | i_14;
 *ZN = 1 ^ i_12;
}

void AOI22_X2 ( int A1, int A2, int B1, int B2, int* ZN){
 int i_13 = A1 & A2;
 int i_14 = B1 & B2;
 int i_12 = i_13 | i_14;
 *ZN = 1 ^ i_12;
}

void AOI22_X4 ( int A1, int A2, int B1, int B2, int* ZN){
 int i_13 = A1 & A2;
 int i_14 = B1 & B2;
 int i_12 = i_13 | i_14;
 *ZN = 1 ^ i_12;
}

void BUF_X1 ( int A, int* Z){
 *Z = A;
}

void BUF_X16 ( int A, int* Z){
 *Z = A;
}

void BUF_X2 ( int A, int* Z){
 *Z = A;
}

void BUF_X32 ( int A, int* Z){
 *Z = A;
}

void BUF_X4 ( int A, int* Z){
 *Z = A;
}

void BUF_X8 ( int A, int* Z){
 *Z = A;
}

void CLKBUF_X1 ( int A, int* Z){
 *Z = A;
}

void CLKBUF_X2 ( int A, int* Z){
 *Z = A;
}

void CLKBUF_X3 ( int A, int* Z){
 *Z = A;
}

void DFFRS_X1 ( int D, int RN, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void DFFRS_X2 ( int D, int RN, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void DFFR_X1 ( int D, int RN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void DFFR_X2 ( int D, int RN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void DFFS_X1 ( int D, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void DFFS_X2 ( int D, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void DFF_X1 ( int D, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void DFF_X2 ( int D, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void FA_X1 ( int A, int B, int CI, int* CO, int* S){
 int i_16 = A & B;
 int i_18 = A | B;
 int i_17 = CI & i_18;
 *CO = i_16 | i_17;
 int i_22 = A ^ B;
 *S = CI ^ i_22;
}

void HA_X1 ( int A, int B, int* CO, int* S){
 *CO = A & B;
 *S = A ^ B;
}

void INV_X1 ( int A, int* ZN){
 *ZN = 1 ^ A;
}

void INV_X16 ( int A, int* ZN){
 *ZN = 1 ^ A;
}

void INV_X2 ( int A, int* ZN){
 *ZN = 1 ^ A;
}

void INV_X32 ( int A, int* ZN){
 *ZN = 1 ^ A;
}

void INV_X4 ( int A, int* ZN){
 *ZN = 1 ^ A;
}

void INV_X8 ( int A, int* ZN){
 *ZN = 1 ^ A;
}

void LOGIC0_X1 ( int* Z){
}

void LOGIC1_X1 ( int* Z){
}

void MUX2_X1 ( int A, int B, int S, int* Z){
 int i_12 = S & B;
 int i_14 = 1 ^ S;
 int i_13 = A & i_14;
 *Z = i_12 | i_13;
}

void MUX2_X2 ( int A, int B, int S, int* Z){
 int i_12 = S & B;
 int i_14 = 1 ^ S;
 int i_13 = A & i_14;
 *Z = i_12 | i_13;
}

void NAND2_X1 ( int A1, int A2, int* ZN){
 int i_10 = A1 & A2;
 *ZN = 1 ^ i_10;
}

void NAND2_X2 ( int A1, int A2, int* ZN){
 int i_22 = A1 & A2;
 *ZN = 1 ^ i_22;
}

void NAND2_X4 ( int A1, int A2, int* ZN){
 int i_10 = A1 & A2;
 *ZN = 1 ^ i_10;
}

void NAND3_X1 ( int A1, int A2, int A3, int* ZN){
 int i_9 = A1 & A2;
 int i_8 = i_9 & A3;
 *ZN = 1 ^ i_8;
}

void NAND3_X2 ( int A1, int A2, int A3, int* ZN){
 int i_9 = A1 & A2;
 int i_8 = i_9 & A3;
 *ZN = 1 ^ i_8;
}

void NAND3_X4 ( int A1, int A2, int A3, int* ZN){
 int i_9 = A1 & A2;
 int i_8 = i_9 & A3;
 *ZN = 1 ^ i_8;
}

void NAND4_X1 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_14 = A1 & A2;
 int i_13 = i_14 & A3;
 int i_12 = i_13 & A4;
 *ZN = 1 ^ i_12;
}

void NAND4_X2 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_14 = A1 & A2;
 int i_13 = i_14 & A3;
 int i_12 = i_13 & A4;
 *ZN = 1 ^ i_12;
}

void NAND4_X4 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_14 = A1 & A2;
 int i_13 = i_14 & A3;
 int i_12 = i_13 & A4;
 *ZN = 1 ^ i_12;
}

void NOR2_X1 ( int A1, int A2, int* ZN){
 int i_10 = A1 | A2;
 *ZN = 1 ^ i_10;
}

void NOR2_X2 ( int A1, int A2, int* ZN){
 int i_10 = A1 | A2;
 *ZN = 1 ^ i_10;
}

void NOR2_X4 ( int A1, int A2, int* ZN){
 int i_16 = A1 | A2;
 *ZN = 1 ^ i_16;
}

void NOR3_X1 ( int A1, int A2, int A3, int* ZN){
 int i_9 = A1 | A2;
 int i_8 = i_9 | A3;
 *ZN = 1 ^ i_8;
}

void NOR3_X2 ( int A1, int A2, int A3, int* ZN){
 int i_9 = A1 | A2;
 int i_8 = i_9 | A3;
 *ZN = 1 ^ i_8;
}

void NOR3_X4 ( int A1, int A2, int A3, int* ZN){
 int i_9 = A1 | A2;
 int i_8 = i_9 | A3;
 *ZN = 1 ^ i_8;
}

void NOR4_X1 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_14 = A1 | A2;
 int i_13 = i_14 | A3;
 int i_12 = i_13 | A4;
 *ZN = 1 ^ i_12;
}

void NOR4_X2 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_14 = A1 | A2;
 int i_13 = i_14 | A3;
 int i_12 = i_13 | A4;
 *ZN = 1 ^ i_12;
}

void NOR4_X4 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_14 = A1 | A2;
 int i_13 = i_14 | A3;
 int i_12 = i_13 | A4;
 *ZN = 1 ^ i_12;
}

void OAI211_X1 ( int C1, int C2, int A, int B, int* ZN){
 int i_14 = C1 | C2;
 int i_13 = i_14 & A;
 int i_12 = i_13 & B;
 *ZN = 1 ^ i_12;
}

void OAI211_X2 ( int C1, int C2, int A, int B, int* ZN){
 int i_14 = C1 | C2;
 int i_13 = i_14 & A;
 int i_12 = i_13 & B;
 *ZN = 1 ^ i_12;
}

void OAI211_X4 ( int C1, int C2, int A, int B, int* ZN){
 int i_14 = C1 | C2;
 int i_13 = i_14 & A;
 int i_12 = i_13 & B;
 *ZN = 1 ^ i_12;
}

void OAI21_X1 ( int B1, int B2, int A, int* ZN){
 int i_9 = B1 | B2;
 int i_8 = A & i_9;
 *ZN = 1 ^ i_8;
}

void OAI21_X2 ( int B1, int B2, int A, int* ZN){
 int i_9 = B1 | B2;
 int i_8 = A & i_9;
 *ZN = 1 ^ i_8;
}

void OAI21_X4 ( int B1, int B2, int A, int* ZN){
 int i_9 = B1 | B2;
 int i_8 = A & i_9;
 *ZN = 1 ^ i_8;
}

void OAI221_X1 ( int A, int B1, int B2, int C1, int C2, int* ZN){
 int i_18 = C1 | C2;
 int i_17 = i_18 & A;
 int i_19 = B1 | B2;
 int i_16 = i_17 & i_19;
 *ZN = 1 ^ i_16;
}

void OAI221_X2 ( int A, int B1, int B2, int C1, int C2, int* ZN){
 int i_18 = C1 | C2;
 int i_17 = i_18 & A;
 int i_19 = B1 | B2;
 int i_16 = i_17 & i_19;
 *ZN = 1 ^ i_16;
}

void OAI221_X4 ( int A, int B1, int B2, int C1, int C2, int* ZN){
 int i_28 = C1 | C2;
 int i_27 = i_28 & A;
 int i_29 = B1 | B2;
 int i_26 = i_27 & i_29;
 int i_25 = 1 ^ i_26;
 int i_24 = 1 ^ i_25;
 *ZN = 1 ^ i_24;
}

void OAI222_X1 ( int A1, int A2, int B1, int B2, int C1, int C2, int* ZN){
 int i_22 = A1 | A2;
 int i_23 = B1 | B2;
 int i_21 = i_22 & i_23;
 int i_24 = C1 | C2;
 int i_20 = i_21 & i_24;
 *ZN = 1 ^ i_20;
}

void OAI222_X2 ( int A1, int A2, int B1, int B2, int C1, int C2, int* ZN){
 int i_22 = A1 | A2;
 int i_23 = B1 | B2;
 int i_21 = i_22 & i_23;
 int i_24 = C1 | C2;
 int i_20 = i_21 & i_24;
 *ZN = 1 ^ i_20;
}

void OAI222_X4 ( int A1, int A2, int B1, int B2, int C1, int C2, int* ZN){
 int i_32 = A1 | A2;
 int i_33 = B1 | B2;
 int i_31 = i_32 & i_33;
 int i_34 = C1 | C2;
 int i_30 = i_31 & i_34;
 int i_29 = 1 ^ i_30;
 int i_28 = 1 ^ i_29;
 *ZN = 1 ^ i_28;
}

void OAI22_X1 ( int A1, int A2, int B1, int B2, int* ZN){
 int i_13 = A1 | A2;
 int i_14 = B1 | B2;
 int i_12 = i_13 & i_14;
 *ZN = 1 ^ i_12;
}

void OAI22_X2 ( int A1, int A2, int B1, int B2, int* ZN){
 int i_13 = A1 | A2;
 int i_14 = B1 | B2;
 int i_12 = i_13 & i_14;
 *ZN = 1 ^ i_12;
}

void OAI22_X4 ( int A1, int A2, int B1, int B2, int* ZN){
 int i_13 = A1 | A2;
 int i_14 = B1 | B2;
 int i_12 = i_13 & i_14;
 *ZN = 1 ^ i_12;
}

void OAI33_X1 ( int A1, int A2, int A3, int B1, int B2, int B3, int* ZN){
 int i_22 = A1 | A2;
 int i_21 = i_22 | A3;
 int i_24 = B1 | B2;
 int i_23 = i_24 | B3;
 int i_20 = i_21 & i_23;
 *ZN = 1 ^ i_20;
}

void OR2_X1 ( int A1, int A2, int* ZN){
 *ZN = A1 | A2;
}

void OR2_X2 ( int A1, int A2, int* ZN){
 *ZN = A1 | A2;
}

void OR2_X4 ( int A1, int A2, int* ZN){
 *ZN = A1 | A2;
}

void OR3_X1 ( int A1, int A2, int A3, int* ZN){
 int i_4 = A1 | A2;
 *ZN = i_4 | A3;
}

void OR3_X2 ( int A1, int A2, int A3, int* ZN){
 int i_4 = A1 | A2;
 *ZN = i_4 | A3;
}

void OR3_X4 ( int A1, int A2, int A3, int* ZN){
 int i_4 = A1 | A2;
 *ZN = i_4 | A3;
}

void OR4_X1 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_9 = A1 | A2;
 int i_8 = i_9 | A3;
 *ZN = i_8 | A4;
}

void OR4_X2 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_9 = A1 | A2;
 int i_8 = i_9 | A3;
 *ZN = i_8 | A4;
}

void OR4_X4 ( int A1, int A2, int A3, int A4, int* ZN){
 int i_9 = A1 | A2;
 int i_8 = i_9 | A3;
 *ZN = i_8 | A4;
}

void SDFFRS_X1 ( int D, int RN, int SE, int SI, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void SDFFRS_X2 ( int D, int RN, int SE, int SI, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void SDFFR_X1 ( int D, int RN, int SE, int SI, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void SDFFR_X2 ( int D, int RN, int SE, int SI, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void SDFFS_X1 ( int D, int SE, int SI, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void SDFFS_X2 ( int D, int SE, int SI, int SN, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void SDFF_X1 ( int D, int SE, int SI, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void SDFF_X2 ( int D, int SE, int SI, int CK, int* Q, int* QN){
 *Q=buf(D);
}

void XNOR2_X1 ( int A, int B, int* ZN){
 int i_4 = A ^ B;
 *ZN = 1 ^ i_4;
}

void XNOR2_X2 ( int A, int B, int* ZN){
 int i_4 = A ^ B;
 *ZN = 1 ^ i_4;
}

void XOR2_X1 ( int A, int B, int* Z){
 *Z = A ^ B;
}

void XOR2_X2 ( int A, int B, int* Z){
 *Z = A ^ B;
}

