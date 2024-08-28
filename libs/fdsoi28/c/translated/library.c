void AND2_X1(int A1, int A2, int* ZN) {
    *ZN = A1 & A2;
}

void AND2_X2(int A1, int A2, int* ZN) {
    *ZN = A1 & A2;
}

void AND2_X4(int A1, int A2, int* ZN) {
    *ZN = A1 & A2;
}

void AND3_X1(int A1, int A2, int A3, int* ZN) {
    *ZN = A1 & A2 & A3;
}

void AND3_X2(int A1, int A2, int A3, int* ZN) {
    *ZN = A1 & A2 & A3;
}

void AND3_X4(int A1, int A2, int A3, int* ZN) {
    *ZN = A1 & A2 & A3;
}

void AND4_X1(int A1, int A2, int A3, int A4, int* ZN) {
    *ZN = A1 & A2 & A3 & A4;
}

void AND4_X2(int A1, int A2, int A3, int A4, int* ZN) {
    *ZN = A1 & A2 & A3 & A4;
}

void AND4_X4(int A1, int A2, int A3, int A4, int* ZN) {
    *ZN = A1 & A2 & A3 & A4;
}

void AOI211_X1(int A, int B, int C1, int C2, int* ZN) {
    int A_inv_for_AOI211_X1;
    int B_inv_for_AOI211_X1;
    int C1_inv_for_AOI211_X1;
    int ZN_row1;
    int C2_inv_for_AOI211_X1;
    int ZN_row2;
    A_inv_for_AOI211_X1 = 1 ^ A;
    B_inv_for_AOI211_X1 = 1 ^ B;
    C1_inv_for_AOI211_X1 = 1 ^ C1;
    ZN_row1 = A_inv_for_AOI211_X1 & B_inv_for_AOI211_X1 & C1_inv_for_AOI211_X1;
    C2_inv_for_AOI211_X1 = 1 ^ C2;
    ZN_row2 = A_inv_for_AOI211_X1 & B_inv_for_AOI211_X1 & C2_inv_for_AOI211_X1;
    *ZN = ZN_row1 | ZN_row2;
}

void AOI211_X2(int A, int B, int C1, int C2, int* ZN) {
    int A_inv_for_AOI211_X2;
    int B_inv_for_AOI211_X2;
    int C1_inv_for_AOI211_X2;
    int ZN_row1;
    int C2_inv_for_AOI211_X2;
    int ZN_row2;
    A_inv_for_AOI211_X2 = 1 ^ A;
    B_inv_for_AOI211_X2 = 1 ^ B;
    C1_inv_for_AOI211_X2 = 1 ^ C1;
    ZN_row1 = A_inv_for_AOI211_X2 & B_inv_for_AOI211_X2 & C1_inv_for_AOI211_X2;
    C2_inv_for_AOI211_X2 = 1 ^ C2;
    ZN_row2 = A_inv_for_AOI211_X2 & B_inv_for_AOI211_X2 & C2_inv_for_AOI211_X2;
    *ZN = ZN_row1 | ZN_row2;
}

void AOI211_X4(int A, int B, int C1, int C2, int* ZN) {
    int A_inv_for_AOI211_X4;
    int B_inv_for_AOI211_X4;
    int C1_inv_for_AOI211_X4;
    int ZN_row1;
    int C2_inv_for_AOI211_X4;
    int ZN_row2;
    A_inv_for_AOI211_X4 = 1 ^ A;
    B_inv_for_AOI211_X4 = 1 ^ B;
    C1_inv_for_AOI211_X4 = 1 ^ C1;
    ZN_row1 = A_inv_for_AOI211_X4 & B_inv_for_AOI211_X4 & C1_inv_for_AOI211_X4;
    C2_inv_for_AOI211_X4 = 1 ^ C2;
    ZN_row2 = A_inv_for_AOI211_X4 & B_inv_for_AOI211_X4 & C2_inv_for_AOI211_X4;
    *ZN = ZN_row1 | ZN_row2;
}

void AOI21_X1(int A, int B1, int B2, int* ZN) {
    int A_inv_for_AOI21_X1;
    int B1_inv_for_AOI21_X1;
    int ZN_row1;
    int B2_inv_for_AOI21_X1;
    int ZN_row2;
    A_inv_for_AOI21_X1 = 1 ^ A;
    B1_inv_for_AOI21_X1 = 1 ^ B1;
    ZN_row1 = A_inv_for_AOI21_X1 & B1_inv_for_AOI21_X1;
    B2_inv_for_AOI21_X1 = 1 ^ B2;
    ZN_row2 = A_inv_for_AOI21_X1 & B2_inv_for_AOI21_X1;
    *ZN = ZN_row1 | ZN_row2;
}

void AOI21_X2(int A, int B1, int B2, int* ZN) {
    int A_inv_for_AOI21_X2;
    int B1_inv_for_AOI21_X2;
    int ZN_row1;
    int B2_inv_for_AOI21_X2;
    int ZN_row2;
    A_inv_for_AOI21_X2 = 1 ^ A;
    B1_inv_for_AOI21_X2 = 1 ^ B1;
    ZN_row1 = A_inv_for_AOI21_X2 & B1_inv_for_AOI21_X2;
    B2_inv_for_AOI21_X2 = 1 ^ B2;
    ZN_row2 = A_inv_for_AOI21_X2 & B2_inv_for_AOI21_X2;
    *ZN = ZN_row1 | ZN_row2;
}

void AOI21_X4(int A, int B1, int B2, int* ZN) {
    int A_inv_for_AOI21_X4;
    int B1_inv_for_AOI21_X4;
    int ZN_row1;
    int B2_inv_for_AOI21_X4;
    int ZN_row2;
    A_inv_for_AOI21_X4 = 1 ^ A;
    B1_inv_for_AOI21_X4 = 1 ^ B1;
    ZN_row1 = A_inv_for_AOI21_X4 & B1_inv_for_AOI21_X4;
    B2_inv_for_AOI21_X4 = 1 ^ B2;
    ZN_row2 = A_inv_for_AOI21_X4 & B2_inv_for_AOI21_X4;
    *ZN = ZN_row1 | ZN_row2;
}

void AOI221_X1(int A, int B1, int B2, int C1, int C2, int* ZN) {
    int A_inv_for_AOI221_X1;
    int B1_inv_for_AOI221_X1;
    int C1_inv_for_AOI221_X1;
    int ZN_row1;
    int C2_inv_for_AOI221_X1;
    int ZN_row2;
    int B2_inv_for_AOI221_X1;
    int ZN_row3;
    int ZN_row4;
    A_inv_for_AOI221_X1 = 1 ^ A;
    B1_inv_for_AOI221_X1 = 1 ^ B1;
    C1_inv_for_AOI221_X1 = 1 ^ C1;
    ZN_row1 = A_inv_for_AOI221_X1 & B1_inv_for_AOI221_X1 & C1_inv_for_AOI221_X1;
    C2_inv_for_AOI221_X1 = 1 ^ C2;
    ZN_row2 = A_inv_for_AOI221_X1 & B1_inv_for_AOI221_X1 & C2_inv_for_AOI221_X1;
    B2_inv_for_AOI221_X1 = 1 ^ B2;
    ZN_row3 = A_inv_for_AOI221_X1 & B2_inv_for_AOI221_X1 & C1_inv_for_AOI221_X1;
    ZN_row4 = A_inv_for_AOI221_X1 & B2_inv_for_AOI221_X1 & C2_inv_for_AOI221_X1;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4;
}

void AOI221_X2(int A, int B1, int B2, int C1, int C2, int* ZN) {
    int A_inv_for_AOI221_X2;
    int B1_inv_for_AOI221_X2;
    int C1_inv_for_AOI221_X2;
    int ZN_row1;
    int C2_inv_for_AOI221_X2;
    int ZN_row2;
    int B2_inv_for_AOI221_X2;
    int ZN_row3;
    int ZN_row4;
    A_inv_for_AOI221_X2 = 1 ^ A;
    B1_inv_for_AOI221_X2 = 1 ^ B1;
    C1_inv_for_AOI221_X2 = 1 ^ C1;
    ZN_row1 = A_inv_for_AOI221_X2 & B1_inv_for_AOI221_X2 & C1_inv_for_AOI221_X2;
    C2_inv_for_AOI221_X2 = 1 ^ C2;
    ZN_row2 = A_inv_for_AOI221_X2 & B1_inv_for_AOI221_X2 & C2_inv_for_AOI221_X2;
    B2_inv_for_AOI221_X2 = 1 ^ B2;
    ZN_row3 = A_inv_for_AOI221_X2 & B2_inv_for_AOI221_X2 & C1_inv_for_AOI221_X2;
    ZN_row4 = A_inv_for_AOI221_X2 & B2_inv_for_AOI221_X2 & C2_inv_for_AOI221_X2;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4;
}

void AOI221_X4(int A, int B1, int B2, int C1, int C2, int* ZN) {
    int A_inv_for_AOI221_X4;
    int B1_inv_for_AOI221_X4;
    int C1_inv_for_AOI221_X4;
    int ZN_row1;
    int C2_inv_for_AOI221_X4;
    int ZN_row2;
    int B2_inv_for_AOI221_X4;
    int ZN_row3;
    int ZN_row4;
    A_inv_for_AOI221_X4 = 1 ^ A;
    B1_inv_for_AOI221_X4 = 1 ^ B1;
    C1_inv_for_AOI221_X4 = 1 ^ C1;
    ZN_row1 = A_inv_for_AOI221_X4 & B1_inv_for_AOI221_X4 & C1_inv_for_AOI221_X4;
    C2_inv_for_AOI221_X4 = 1 ^ C2;
    ZN_row2 = A_inv_for_AOI221_X4 & B1_inv_for_AOI221_X4 & C2_inv_for_AOI221_X4;
    B2_inv_for_AOI221_X4 = 1 ^ B2;
    ZN_row3 = A_inv_for_AOI221_X4 & B2_inv_for_AOI221_X4 & C1_inv_for_AOI221_X4;
    ZN_row4 = A_inv_for_AOI221_X4 & B2_inv_for_AOI221_X4 & C2_inv_for_AOI221_X4;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4;
}

void AOI222_X1(int A1, int A2, int B1, int B2, int C1, int C2, int* ZN) {
    int A1_inv_for_AOI222_X1;
    int B1_inv_for_AOI222_X1;
    int C1_inv_for_AOI222_X1;
    int ZN_row1;
    int C2_inv_for_AOI222_X1;
    int ZN_row2;
    int B2_inv_for_AOI222_X1;
    int ZN_row3;
    int ZN_row4;
    int A2_inv_for_AOI222_X1;
    int ZN_row5;
    int ZN_row6;
    int ZN_row7;
    int ZN_row8;
    A1_inv_for_AOI222_X1 = 1 ^ A1;
    B1_inv_for_AOI222_X1 = 1 ^ B1;
    C1_inv_for_AOI222_X1 = 1 ^ C1;
    ZN_row1 = A1_inv_for_AOI222_X1 & B1_inv_for_AOI222_X1 & C1_inv_for_AOI222_X1;
    C2_inv_for_AOI222_X1 = 1 ^ C2;
    ZN_row2 = A1_inv_for_AOI222_X1 & B1_inv_for_AOI222_X1 & C2_inv_for_AOI222_X1;
    B2_inv_for_AOI222_X1 = 1 ^ B2;
    ZN_row3 = A1_inv_for_AOI222_X1 & B2_inv_for_AOI222_X1 & C1_inv_for_AOI222_X1;
    ZN_row4 = A1_inv_for_AOI222_X1 & B2_inv_for_AOI222_X1 & C2_inv_for_AOI222_X1;
    A2_inv_for_AOI222_X1 = 1 ^ A2;
    ZN_row5 = A2_inv_for_AOI222_X1 & B1_inv_for_AOI222_X1 & C1_inv_for_AOI222_X1;
    ZN_row6 = A2_inv_for_AOI222_X1 & B1_inv_for_AOI222_X1 & C2_inv_for_AOI222_X1;
    ZN_row7 = A2_inv_for_AOI222_X1 & B2_inv_for_AOI222_X1 & C1_inv_for_AOI222_X1;
    ZN_row8 = A2_inv_for_AOI222_X1 & B2_inv_for_AOI222_X1 & C2_inv_for_AOI222_X1;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4 | ZN_row5 | ZN_row6 | ZN_row7 | ZN_row8;
}

void AOI222_X2(int A1, int A2, int B1, int B2, int C1, int C2, int* ZN) {
    int A1_inv_for_AOI222_X2;
    int B1_inv_for_AOI222_X2;
    int C1_inv_for_AOI222_X2;
    int ZN_row1;
    int C2_inv_for_AOI222_X2;
    int ZN_row2;
    int B2_inv_for_AOI222_X2;
    int ZN_row3;
    int ZN_row4;
    int A2_inv_for_AOI222_X2;
    int ZN_row5;
    int ZN_row6;
    int ZN_row7;
    int ZN_row8;
    A1_inv_for_AOI222_X2 = 1 ^ A1;
    B1_inv_for_AOI222_X2 = 1 ^ B1;
    C1_inv_for_AOI222_X2 = 1 ^ C1;
    ZN_row1 = A1_inv_for_AOI222_X2 & B1_inv_for_AOI222_X2 & C1_inv_for_AOI222_X2;
    C2_inv_for_AOI222_X2 = 1 ^ C2;
    ZN_row2 = A1_inv_for_AOI222_X2 & B1_inv_for_AOI222_X2 & C2_inv_for_AOI222_X2;
    B2_inv_for_AOI222_X2 = 1 ^ B2;
    ZN_row3 = A1_inv_for_AOI222_X2 & B2_inv_for_AOI222_X2 & C1_inv_for_AOI222_X2;
    ZN_row4 = A1_inv_for_AOI222_X2 & B2_inv_for_AOI222_X2 & C2_inv_for_AOI222_X2;
    A2_inv_for_AOI222_X2 = 1 ^ A2;
    ZN_row5 = A2_inv_for_AOI222_X2 & B1_inv_for_AOI222_X2 & C1_inv_for_AOI222_X2;
    ZN_row6 = A2_inv_for_AOI222_X2 & B1_inv_for_AOI222_X2 & C2_inv_for_AOI222_X2;
    ZN_row7 = A2_inv_for_AOI222_X2 & B2_inv_for_AOI222_X2 & C1_inv_for_AOI222_X2;
    ZN_row8 = A2_inv_for_AOI222_X2 & B2_inv_for_AOI222_X2 & C2_inv_for_AOI222_X2;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4 | ZN_row5 | ZN_row6 | ZN_row7 | ZN_row8;
}

void AOI222_X4(int A1, int A2, int B1, int B2, int C1, int C2, int* ZN) {
    int A1_inv_for_AOI222_X4;
    int B1_inv_for_AOI222_X4;
    int C1_inv_for_AOI222_X4;
    int ZN_row1;
    int C2_inv_for_AOI222_X4;
    int ZN_row2;
    int B2_inv_for_AOI222_X4;
    int ZN_row3;
    int ZN_row4;
    int A2_inv_for_AOI222_X4;
    int ZN_row5;
    int ZN_row6;
    int ZN_row7;
    int ZN_row8;
    A1_inv_for_AOI222_X4 = 1 ^ A1;
    B1_inv_for_AOI222_X4 = 1 ^ B1;
    C1_inv_for_AOI222_X4 = 1 ^ C1;
    ZN_row1 = A1_inv_for_AOI222_X4 & B1_inv_for_AOI222_X4 & C1_inv_for_AOI222_X4;
    C2_inv_for_AOI222_X4 = 1 ^ C2;
    ZN_row2 = A1_inv_for_AOI222_X4 & B1_inv_for_AOI222_X4 & C2_inv_for_AOI222_X4;
    B2_inv_for_AOI222_X4 = 1 ^ B2;
    ZN_row3 = A1_inv_for_AOI222_X4 & B2_inv_for_AOI222_X4 & C1_inv_for_AOI222_X4;
    ZN_row4 = A1_inv_for_AOI222_X4 & B2_inv_for_AOI222_X4 & C2_inv_for_AOI222_X4;
    A2_inv_for_AOI222_X4 = 1 ^ A2;
    ZN_row5 = A2_inv_for_AOI222_X4 & B1_inv_for_AOI222_X4 & C1_inv_for_AOI222_X4;
    ZN_row6 = A2_inv_for_AOI222_X4 & B1_inv_for_AOI222_X4 & C2_inv_for_AOI222_X4;
    ZN_row7 = A2_inv_for_AOI222_X4 & B2_inv_for_AOI222_X4 & C1_inv_for_AOI222_X4;
    ZN_row8 = A2_inv_for_AOI222_X4 & B2_inv_for_AOI222_X4 & C2_inv_for_AOI222_X4;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4 | ZN_row5 | ZN_row6 | ZN_row7 | ZN_row8;
}

void AOI22_X1(int A1, int A2, int B1, int B2, int* ZN) {
    int A1_inv_for_AOI22_X1;
    int B1_inv_for_AOI22_X1;
    int ZN_row1;
    int B2_inv_for_AOI22_X1;
    int ZN_row2;
    int A2_inv_for_AOI22_X1;
    int ZN_row3;
    int ZN_row4;
    A1_inv_for_AOI22_X1 = 1 ^ A1;
    B1_inv_for_AOI22_X1 = 1 ^ B1;
    ZN_row1 = A1_inv_for_AOI22_X1 & B1_inv_for_AOI22_X1;
    B2_inv_for_AOI22_X1 = 1 ^ B2;
    ZN_row2 = A1_inv_for_AOI22_X1 & B2_inv_for_AOI22_X1;
    A2_inv_for_AOI22_X1 = 1 ^ A2;
    ZN_row3 = A2_inv_for_AOI22_X1 & B1_inv_for_AOI22_X1;
    ZN_row4 = A2_inv_for_AOI22_X1 & B2_inv_for_AOI22_X1;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4;
}

void AOI22_X2(int A1, int A2, int B1, int B2, int* ZN) {
    int A1_inv_for_AOI22_X2;
    int B1_inv_for_AOI22_X2;
    int ZN_row1;
    int B2_inv_for_AOI22_X2;
    int ZN_row2;
    int A2_inv_for_AOI22_X2;
    int ZN_row3;
    int ZN_row4;
    A1_inv_for_AOI22_X2 = 1 ^ A1;
    B1_inv_for_AOI22_X2 = 1 ^ B1;
    ZN_row1 = A1_inv_for_AOI22_X2 & B1_inv_for_AOI22_X2;
    B2_inv_for_AOI22_X2 = 1 ^ B2;
    ZN_row2 = A1_inv_for_AOI22_X2 & B2_inv_for_AOI22_X2;
    A2_inv_for_AOI22_X2 = 1 ^ A2;
    ZN_row3 = A2_inv_for_AOI22_X2 & B1_inv_for_AOI22_X2;
    ZN_row4 = A2_inv_for_AOI22_X2 & B2_inv_for_AOI22_X2;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4;
}

void AOI22_X4(int A1, int A2, int B1, int B2, int* ZN) {
    int A1_inv_for_AOI22_X4;
    int B1_inv_for_AOI22_X4;
    int ZN_row1;
    int B2_inv_for_AOI22_X4;
    int ZN_row2;
    int A2_inv_for_AOI22_X4;
    int ZN_row3;
    int ZN_row4;
    A1_inv_for_AOI22_X4 = 1 ^ A1;
    B1_inv_for_AOI22_X4 = 1 ^ B1;
    ZN_row1 = A1_inv_for_AOI22_X4 & B1_inv_for_AOI22_X4;
    B2_inv_for_AOI22_X4 = 1 ^ B2;
    ZN_row2 = A1_inv_for_AOI22_X4 & B2_inv_for_AOI22_X4;
    A2_inv_for_AOI22_X4 = 1 ^ A2;
    ZN_row3 = A2_inv_for_AOI22_X4 & B1_inv_for_AOI22_X4;
    ZN_row4 = A2_inv_for_AOI22_X4 & B2_inv_for_AOI22_X4;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3 | ZN_row4;
}

void BUF_X1(int A, int* Z) {
    *Z = A;
}

void BUF_X16(int A, int* Z) {
    *Z = A;
}

void BUF_X2(int A, int* Z) {
    *Z = A;
}

void BUF_X4(int A, int* Z) {
    *Z = A;
}

void BUF_X8(int A, int* Z) {
    *Z = A;
}

void FA_X1(int A, int B, int CI, int* CO, int* S) {
    int CO_row1;
    int CO_row2;
    int CO_row3;
    int S_row1;
    int B_inv_for_FA_X1;
    int CI_inv_for_FA_X1;
    int S_row2;
    int A_inv_for_FA_X1;
    int S_row3;
    int S_row4;
    CO_row1 = A & B;
    CO_row2 = A & CI;
    CO_row3 = B & CI;
    *CO = CO_row1 | CO_row2 | CO_row3;
    S_row1 = A & B & CI;
    B_inv_for_FA_X1 = 1 ^ B;
    CI_inv_for_FA_X1 = 1 ^ CI;
    S_row2 = B_inv_for_FA_X1 & CI_inv_for_FA_X1 & A;
    A_inv_for_FA_X1 = 1 ^ A;
    S_row3 = A_inv_for_FA_X1 & CI_inv_for_FA_X1 & B;
    S_row4 = A_inv_for_FA_X1 & B_inv_for_FA_X1 & CI;
    *S = S_row1 | S_row2 | S_row3 | S_row4;
}

void HA_X1(int A, int B, int* CO, int* S) {
    int B_inv_for_HA_X1;
    int S_row1;
    int A_inv_for_HA_X1;
    int S_row2;
    *CO = A & B;
    B_inv_for_HA_X1 = 1 ^ B;
    S_row1 = B_inv_for_HA_X1 & A;
    A_inv_for_HA_X1 = 1 ^ A;
    S_row2 = A_inv_for_HA_X1 & B;
    *S = S_row1 | S_row2;
}

void INV_X1(int A, int* ZN) {
    *ZN = 1 ^ A;
}

void INV_X16(int A, int* ZN) {
    *ZN = 1 ^ A;
}

void INV_X2(int A, int* ZN) {
    *ZN = 1 ^ A;
}

void INV_X4(int A, int* ZN) {
    *ZN = 1 ^ A;
}

void INV_X8(int A, int* ZN) {
    *ZN = 1 ^ A;
}

void MUX2_X1(int A, int B, int S, int* Z) {
    int Z_row1;
    int S_inv_for_MUX2_X1;
    int Z_row2;
    int Z_row3;
    Z_row1 = A & B;
    S_inv_for_MUX2_X1 = 1 ^ S;
    Z_row2 = S_inv_for_MUX2_X1 & A;
    Z_row3 = B & S;
    *Z = Z_row1 | Z_row2 | Z_row3;
}

void MUX2_X2(int A, int B, int S, int* Z) {
    int Z_row1;
    int S_inv_for_MUX2_X2;
    int Z_row2;
    int Z_row3;
    Z_row1 = A & B;
    S_inv_for_MUX2_X2 = 1 ^ S;
    Z_row2 = S_inv_for_MUX2_X2 & A;
    Z_row3 = B & S;
    *Z = Z_row1 | Z_row2 | Z_row3;
}

void NAND2_X1(int A1, int A2, int* ZN) {
    int A1_inv_for_NAND2_X1;
    int A2_inv_for_NAND2_X1;
    A1_inv_for_NAND2_X1 = 1 ^ A1;
    A2_inv_for_NAND2_X1 = 1 ^ A2;
    *ZN = A1_inv_for_NAND2_X1 | A2_inv_for_NAND2_X1;
}

void NAND2_X2(int A1, int A2, int* ZN) {
    int A1_inv_for_NAND2_X2;
    int A2_inv_for_NAND2_X2;
    A1_inv_for_NAND2_X2 = 1 ^ A1;
    A2_inv_for_NAND2_X2 = 1 ^ A2;
    *ZN = A1_inv_for_NAND2_X2 | A2_inv_for_NAND2_X2;
}

void NAND2_X4(int A1, int A2, int* ZN) {
    int A1_inv_for_NAND2_X4;
    int A2_inv_for_NAND2_X4;
    A1_inv_for_NAND2_X4 = 1 ^ A1;
    A2_inv_for_NAND2_X4 = 1 ^ A2;
    *ZN = A1_inv_for_NAND2_X4 | A2_inv_for_NAND2_X4;
}

void NAND3_X1(int A1, int A2, int A3, int* ZN) {
    int A1_inv_for_NAND3_X1;
    int A2_inv_for_NAND3_X1;
    int A3_inv_for_NAND3_X1;
    A1_inv_for_NAND3_X1 = 1 ^ A1;
    A2_inv_for_NAND3_X1 = 1 ^ A2;
    A3_inv_for_NAND3_X1 = 1 ^ A3;
    *ZN = A1_inv_for_NAND3_X1 | A2_inv_for_NAND3_X1 | A3_inv_for_NAND3_X1;
}

void NAND3_X2(int A1, int A2, int A3, int* ZN) {
    int A1_inv_for_NAND3_X2;
    int A2_inv_for_NAND3_X2;
    int A3_inv_for_NAND3_X2;
    A1_inv_for_NAND3_X2 = 1 ^ A1;
    A2_inv_for_NAND3_X2 = 1 ^ A2;
    A3_inv_for_NAND3_X2 = 1 ^ A3;
    *ZN = A1_inv_for_NAND3_X2 | A2_inv_for_NAND3_X2 | A3_inv_for_NAND3_X2;
}

void NAND3_X4(int A1, int A2, int A3, int* ZN) {
    int A1_inv_for_NAND3_X4;
    int A2_inv_for_NAND3_X4;
    int A3_inv_for_NAND3_X4;
    A1_inv_for_NAND3_X4 = 1 ^ A1;
    A2_inv_for_NAND3_X4 = 1 ^ A2;
    A3_inv_for_NAND3_X4 = 1 ^ A3;
    *ZN = A1_inv_for_NAND3_X4 | A2_inv_for_NAND3_X4 | A3_inv_for_NAND3_X4;
}

void NAND4_X1(int A1, int A2, int A3, int A4, int* ZN) {
    int A1_inv_for_NAND4_X1;
    int A2_inv_for_NAND4_X1;
    int A3_inv_for_NAND4_X1;
    int A4_inv_for_NAND4_X1;
    A1_inv_for_NAND4_X1 = 1 ^ A1;
    A2_inv_for_NAND4_X1 = 1 ^ A2;
    A3_inv_for_NAND4_X1 = 1 ^ A3;
    A4_inv_for_NAND4_X1 = 1 ^ A4;
    *ZN = A1_inv_for_NAND4_X1 | A2_inv_for_NAND4_X1 | A3_inv_for_NAND4_X1 | A4_inv_for_NAND4_X1;
}

void NAND4_X2(int A1, int A2, int A3, int A4, int* ZN) {
    int A1_inv_for_NAND4_X2;
    int A2_inv_for_NAND4_X2;
    int A3_inv_for_NAND4_X2;
    int A4_inv_for_NAND4_X2;
    A1_inv_for_NAND4_X2 = 1 ^ A1;
    A2_inv_for_NAND4_X2 = 1 ^ A2;
    A3_inv_for_NAND4_X2 = 1 ^ A3;
    A4_inv_for_NAND4_X2 = 1 ^ A4;
    *ZN = A1_inv_for_NAND4_X2 | A2_inv_for_NAND4_X2 | A3_inv_for_NAND4_X2 | A4_inv_for_NAND4_X2;
}

void NAND4_X4(int A1, int A2, int A3, int A4, int* ZN) {
    int A1_inv_for_NAND4_X4;
    int A2_inv_for_NAND4_X4;
    int A3_inv_for_NAND4_X4;
    int A4_inv_for_NAND4_X4;
    A1_inv_for_NAND4_X4 = 1 ^ A1;
    A2_inv_for_NAND4_X4 = 1 ^ A2;
    A3_inv_for_NAND4_X4 = 1 ^ A3;
    A4_inv_for_NAND4_X4 = 1 ^ A4;
    *ZN = A1_inv_for_NAND4_X4 | A2_inv_for_NAND4_X4 | A3_inv_for_NAND4_X4 | A4_inv_for_NAND4_X4;
}

void NOR2_X1(int A1, int A2, int* ZN) {
    int A1_inv_for_NOR2_X1;
    int A2_inv_for_NOR2_X1;
    A1_inv_for_NOR2_X1 = 1 ^ A1;
    A2_inv_for_NOR2_X1 = 1 ^ A2;
    *ZN = A1_inv_for_NOR2_X1 & A2_inv_for_NOR2_X1;
}

void NOR2_X2(int A1, int A2, int* ZN) {
    int A1_inv_for_NOR2_X2;
    int A2_inv_for_NOR2_X2;
    A1_inv_for_NOR2_X2 = 1 ^ A1;
    A2_inv_for_NOR2_X2 = 1 ^ A2;
    *ZN = A1_inv_for_NOR2_X2 & A2_inv_for_NOR2_X2;
}

void NOR2_X4(int A1, int A2, int* ZN) {
    int A1_inv_for_NOR2_X4;
    int A2_inv_for_NOR2_X4;
    A1_inv_for_NOR2_X4 = 1 ^ A1;
    A2_inv_for_NOR2_X4 = 1 ^ A2;
    *ZN = A1_inv_for_NOR2_X4 & A2_inv_for_NOR2_X4;
}

void NOR3_X1(int A1, int A2, int A3, int* ZN) {
    int A1_inv_for_NOR3_X1;
    int A2_inv_for_NOR3_X1;
    int A3_inv_for_NOR3_X1;
    A1_inv_for_NOR3_X1 = 1 ^ A1;
    A2_inv_for_NOR3_X1 = 1 ^ A2;
    A3_inv_for_NOR3_X1 = 1 ^ A3;
    *ZN = A1_inv_for_NOR3_X1 & A2_inv_for_NOR3_X1 & A3_inv_for_NOR3_X1;
}

void NOR3_X2(int A1, int A2, int A3, int* ZN) {
    int A1_inv_for_NOR3_X2;
    int A2_inv_for_NOR3_X2;
    int A3_inv_for_NOR3_X2;
    A1_inv_for_NOR3_X2 = 1 ^ A1;
    A2_inv_for_NOR3_X2 = 1 ^ A2;
    A3_inv_for_NOR3_X2 = 1 ^ A3;
    *ZN = A1_inv_for_NOR3_X2 & A2_inv_for_NOR3_X2 & A3_inv_for_NOR3_X2;
}

void NOR3_X4(int A1, int A2, int A3, int* ZN) {
    int A1_inv_for_NOR3_X4;
    int A2_inv_for_NOR3_X4;
    int A3_inv_for_NOR3_X4;
    A1_inv_for_NOR3_X4 = 1 ^ A1;
    A2_inv_for_NOR3_X4 = 1 ^ A2;
    A3_inv_for_NOR3_X4 = 1 ^ A3;
    *ZN = A1_inv_for_NOR3_X4 & A2_inv_for_NOR3_X4 & A3_inv_for_NOR3_X4;
}

void NOR4_X1(int A1, int A2, int A3, int A4, int* ZN) {
    int A1_inv_for_NOR4_X1;
    int A2_inv_for_NOR4_X1;
    int A3_inv_for_NOR4_X1;
    int A4_inv_for_NOR4_X1;
    A1_inv_for_NOR4_X1 = 1 ^ A1;
    A2_inv_for_NOR4_X1 = 1 ^ A2;
    A3_inv_for_NOR4_X1 = 1 ^ A3;
    A4_inv_for_NOR4_X1 = 1 ^ A4;
    *ZN = A1_inv_for_NOR4_X1 & A2_inv_for_NOR4_X1 & A3_inv_for_NOR4_X1 & A4_inv_for_NOR4_X1;
}

void NOR4_X2(int A1, int A2, int A3, int A4, int* ZN) {
    int A1_inv_for_NOR4_X2;
    int A2_inv_for_NOR4_X2;
    int A3_inv_for_NOR4_X2;
    int A4_inv_for_NOR4_X2;
    A1_inv_for_NOR4_X2 = 1 ^ A1;
    A2_inv_for_NOR4_X2 = 1 ^ A2;
    A3_inv_for_NOR4_X2 = 1 ^ A3;
    A4_inv_for_NOR4_X2 = 1 ^ A4;
    *ZN = A1_inv_for_NOR4_X2 & A2_inv_for_NOR4_X2 & A3_inv_for_NOR4_X2 & A4_inv_for_NOR4_X2;
}

void NOR4_X4(int A1, int A2, int A3, int A4, int* ZN) {
    int A1_inv_for_NOR4_X4;
    int A2_inv_for_NOR4_X4;
    int A3_inv_for_NOR4_X4;
    int A4_inv_for_NOR4_X4;
    A1_inv_for_NOR4_X4 = 1 ^ A1;
    A2_inv_for_NOR4_X4 = 1 ^ A2;
    A3_inv_for_NOR4_X4 = 1 ^ A3;
    A4_inv_for_NOR4_X4 = 1 ^ A4;
    *ZN = A1_inv_for_NOR4_X4 & A2_inv_for_NOR4_X4 & A3_inv_for_NOR4_X4 & A4_inv_for_NOR4_X4;
}

void OAI211_X1(int A, int B, int C1, int C2, int* ZN) {
    int A_inv_for_OAI211_X1;
    int B_inv_for_OAI211_X1;
    int C1_inv_for_OAI211_X1;
    int C2_inv_for_OAI211_X1;
    int ZN_row3;
    A_inv_for_OAI211_X1 = 1 ^ A;
    B_inv_for_OAI211_X1 = 1 ^ B;
    C1_inv_for_OAI211_X1 = 1 ^ C1;
    C2_inv_for_OAI211_X1 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI211_X1 & C2_inv_for_OAI211_X1;
    *ZN = A_inv_for_OAI211_X1 | B_inv_for_OAI211_X1 | ZN_row3;
}

void OAI211_X2(int A, int B, int C1, int C2, int* ZN) {
    int A_inv_for_OAI211_X2;
    int B_inv_for_OAI211_X2;
    int C1_inv_for_OAI211_X2;
    int C2_inv_for_OAI211_X2;
    int ZN_row3;
    A_inv_for_OAI211_X2 = 1 ^ A;
    B_inv_for_OAI211_X2 = 1 ^ B;
    C1_inv_for_OAI211_X2 = 1 ^ C1;
    C2_inv_for_OAI211_X2 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI211_X2 & C2_inv_for_OAI211_X2;
    *ZN = A_inv_for_OAI211_X2 | B_inv_for_OAI211_X2 | ZN_row3;
}

void OAI211_X4(int A, int B, int C1, int C2, int* ZN) {
    int A_inv_for_OAI211_X4;
    int B_inv_for_OAI211_X4;
    int C1_inv_for_OAI211_X4;
    int C2_inv_for_OAI211_X4;
    int ZN_row3;
    A_inv_for_OAI211_X4 = 1 ^ A;
    B_inv_for_OAI211_X4 = 1 ^ B;
    C1_inv_for_OAI211_X4 = 1 ^ C1;
    C2_inv_for_OAI211_X4 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI211_X4 & C2_inv_for_OAI211_X4;
    *ZN = A_inv_for_OAI211_X4 | B_inv_for_OAI211_X4 | ZN_row3;
}

void OAI21_X1(int A, int B1, int B2, int* ZN) {
    int A_inv_for_OAI21_X1;
    int B1_inv_for_OAI21_X1;
    int B2_inv_for_OAI21_X1;
    int ZN_row2;
    A_inv_for_OAI21_X1 = 1 ^ A;
    B1_inv_for_OAI21_X1 = 1 ^ B1;
    B2_inv_for_OAI21_X1 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI21_X1 & B2_inv_for_OAI21_X1;
    *ZN = A_inv_for_OAI21_X1 | ZN_row2;
}

void OAI21_X2(int A, int B1, int B2, int* ZN) {
    int A_inv_for_OAI21_X2;
    int B1_inv_for_OAI21_X2;
    int B2_inv_for_OAI21_X2;
    int ZN_row2;
    A_inv_for_OAI21_X2 = 1 ^ A;
    B1_inv_for_OAI21_X2 = 1 ^ B1;
    B2_inv_for_OAI21_X2 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI21_X2 & B2_inv_for_OAI21_X2;
    *ZN = A_inv_for_OAI21_X2 | ZN_row2;
}

void OAI21_X4(int A, int B1, int B2, int* ZN) {
    int A_inv_for_OAI21_X4;
    int B1_inv_for_OAI21_X4;
    int B2_inv_for_OAI21_X4;
    int ZN_row2;
    A_inv_for_OAI21_X4 = 1 ^ A;
    B1_inv_for_OAI21_X4 = 1 ^ B1;
    B2_inv_for_OAI21_X4 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI21_X4 & B2_inv_for_OAI21_X4;
    *ZN = A_inv_for_OAI21_X4 | ZN_row2;
}

void OAI221_X1(int A, int B1, int B2, int C1, int C2, int* ZN) {
    int A_inv_for_OAI221_X1;
    int B1_inv_for_OAI221_X1;
    int B2_inv_for_OAI221_X1;
    int ZN_row2;
    int C1_inv_for_OAI221_X1;
    int C2_inv_for_OAI221_X1;
    int ZN_row3;
    A_inv_for_OAI221_X1 = 1 ^ A;
    B1_inv_for_OAI221_X1 = 1 ^ B1;
    B2_inv_for_OAI221_X1 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI221_X1 & B2_inv_for_OAI221_X1;
    C1_inv_for_OAI221_X1 = 1 ^ C1;
    C2_inv_for_OAI221_X1 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI221_X1 & C2_inv_for_OAI221_X1;
    *ZN = A_inv_for_OAI221_X1 | ZN_row2 | ZN_row3;
}

void OAI221_X2(int A, int B1, int B2, int C1, int C2, int* ZN) {
    int A_inv_for_OAI221_X2;
    int B1_inv_for_OAI221_X2;
    int B2_inv_for_OAI221_X2;
    int ZN_row2;
    int C1_inv_for_OAI221_X2;
    int C2_inv_for_OAI221_X2;
    int ZN_row3;
    A_inv_for_OAI221_X2 = 1 ^ A;
    B1_inv_for_OAI221_X2 = 1 ^ B1;
    B2_inv_for_OAI221_X2 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI221_X2 & B2_inv_for_OAI221_X2;
    C1_inv_for_OAI221_X2 = 1 ^ C1;
    C2_inv_for_OAI221_X2 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI221_X2 & C2_inv_for_OAI221_X2;
    *ZN = A_inv_for_OAI221_X2 | ZN_row2 | ZN_row3;
}

void OAI221_X4(int A, int B1, int B2, int C1, int C2, int* ZN) {
    int A_inv_for_OAI221_X4;
    int B1_inv_for_OAI221_X4;
    int B2_inv_for_OAI221_X4;
    int ZN_row2;
    int C1_inv_for_OAI221_X4;
    int C2_inv_for_OAI221_X4;
    int ZN_row3;
    A_inv_for_OAI221_X4 = 1 ^ A;
    B1_inv_for_OAI221_X4 = 1 ^ B1;
    B2_inv_for_OAI221_X4 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI221_X4 & B2_inv_for_OAI221_X4;
    C1_inv_for_OAI221_X4 = 1 ^ C1;
    C2_inv_for_OAI221_X4 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI221_X4 & C2_inv_for_OAI221_X4;
    *ZN = A_inv_for_OAI221_X4 | ZN_row2 | ZN_row3;
}

void OAI222_X1(int A1, int A2, int B1, int B2, int C1, int C2, int* ZN) {
    int A1_inv_for_OAI222_X1;
    int A2_inv_for_OAI222_X1;
    int ZN_row1;
    int B1_inv_for_OAI222_X1;
    int B2_inv_for_OAI222_X1;
    int ZN_row2;
    int C1_inv_for_OAI222_X1;
    int C2_inv_for_OAI222_X1;
    int ZN_row3;
    A1_inv_for_OAI222_X1 = 1 ^ A1;
    A2_inv_for_OAI222_X1 = 1 ^ A2;
    ZN_row1 = A1_inv_for_OAI222_X1 & A2_inv_for_OAI222_X1;
    B1_inv_for_OAI222_X1 = 1 ^ B1;
    B2_inv_for_OAI222_X1 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI222_X1 & B2_inv_for_OAI222_X1;
    C1_inv_for_OAI222_X1 = 1 ^ C1;
    C2_inv_for_OAI222_X1 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI222_X1 & C2_inv_for_OAI222_X1;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3;
}

void OAI222_X2(int A1, int A2, int B1, int B2, int C1, int C2, int* ZN) {
    int A1_inv_for_OAI222_X2;
    int A2_inv_for_OAI222_X2;
    int ZN_row1;
    int B1_inv_for_OAI222_X2;
    int B2_inv_for_OAI222_X2;
    int ZN_row2;
    int C1_inv_for_OAI222_X2;
    int C2_inv_for_OAI222_X2;
    int ZN_row3;
    A1_inv_for_OAI222_X2 = 1 ^ A1;
    A2_inv_for_OAI222_X2 = 1 ^ A2;
    ZN_row1 = A1_inv_for_OAI222_X2 & A2_inv_for_OAI222_X2;
    B1_inv_for_OAI222_X2 = 1 ^ B1;
    B2_inv_for_OAI222_X2 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI222_X2 & B2_inv_for_OAI222_X2;
    C1_inv_for_OAI222_X2 = 1 ^ C1;
    C2_inv_for_OAI222_X2 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI222_X2 & C2_inv_for_OAI222_X2;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3;
}

void OAI222_X4(int A1, int A2, int B1, int B2, int C1, int C2, int* ZN) {
    int A1_inv_for_OAI222_X4;
    int A2_inv_for_OAI222_X4;
    int ZN_row1;
    int B1_inv_for_OAI222_X4;
    int B2_inv_for_OAI222_X4;
    int ZN_row2;
    int C1_inv_for_OAI222_X4;
    int C2_inv_for_OAI222_X4;
    int ZN_row3;
    A1_inv_for_OAI222_X4 = 1 ^ A1;
    A2_inv_for_OAI222_X4 = 1 ^ A2;
    ZN_row1 = A1_inv_for_OAI222_X4 & A2_inv_for_OAI222_X4;
    B1_inv_for_OAI222_X4 = 1 ^ B1;
    B2_inv_for_OAI222_X4 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI222_X4 & B2_inv_for_OAI222_X4;
    C1_inv_for_OAI222_X4 = 1 ^ C1;
    C2_inv_for_OAI222_X4 = 1 ^ C2;
    ZN_row3 = C1_inv_for_OAI222_X4 & C2_inv_for_OAI222_X4;
    *ZN = ZN_row1 | ZN_row2 | ZN_row3;
}

void OAI22_X1(int A1, int A2, int B1, int B2, int* ZN) {
    int A1_inv_for_OAI22_X1;
    int A2_inv_for_OAI22_X1;
    int ZN_row1;
    int B1_inv_for_OAI22_X1;
    int B2_inv_for_OAI22_X1;
    int ZN_row2;
    A1_inv_for_OAI22_X1 = 1 ^ A1;
    A2_inv_for_OAI22_X1 = 1 ^ A2;
    ZN_row1 = A1_inv_for_OAI22_X1 & A2_inv_for_OAI22_X1;
    B1_inv_for_OAI22_X1 = 1 ^ B1;
    B2_inv_for_OAI22_X1 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI22_X1 & B2_inv_for_OAI22_X1;
    *ZN = ZN_row1 | ZN_row2;
}

void OAI22_X2(int A1, int A2, int B1, int B2, int* ZN) {
    int A1_inv_for_OAI22_X2;
    int A2_inv_for_OAI22_X2;
    int ZN_row1;
    int B1_inv_for_OAI22_X2;
    int B2_inv_for_OAI22_X2;
    int ZN_row2;
    A1_inv_for_OAI22_X2 = 1 ^ A1;
    A2_inv_for_OAI22_X2 = 1 ^ A2;
    ZN_row1 = A1_inv_for_OAI22_X2 & A2_inv_for_OAI22_X2;
    B1_inv_for_OAI22_X2 = 1 ^ B1;
    B2_inv_for_OAI22_X2 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI22_X2 & B2_inv_for_OAI22_X2;
    *ZN = ZN_row1 | ZN_row2;
}

void OAI22_X4(int A1, int A2, int B1, int B2, int* ZN) {
    int A1_inv_for_OAI22_X4;
    int A2_inv_for_OAI22_X4;
    int ZN_row1;
    int B1_inv_for_OAI22_X4;
    int B2_inv_for_OAI22_X4;
    int ZN_row2;
    A1_inv_for_OAI22_X4 = 1 ^ A1;
    A2_inv_for_OAI22_X4 = 1 ^ A2;
    ZN_row1 = A1_inv_for_OAI22_X4 & A2_inv_for_OAI22_X4;
    B1_inv_for_OAI22_X4 = 1 ^ B1;
    B2_inv_for_OAI22_X4 = 1 ^ B2;
    ZN_row2 = B1_inv_for_OAI22_X4 & B2_inv_for_OAI22_X4;
    *ZN = ZN_row1 | ZN_row2;
}

void OAI33_X1(int A1, int A2, int A3, int B1, int B2, int B3, int* ZN) {
    int A1_inv_for_OAI33_X1;
    int A2_inv_for_OAI33_X1;
    int A3_inv_for_OAI33_X1;
    int ZN_row1;
    int B1_inv_for_OAI33_X1;
    int B2_inv_for_OAI33_X1;
    int B3_inv_for_OAI33_X1;
    int ZN_row2;
    A1_inv_for_OAI33_X1 = 1 ^ A1;
    A2_inv_for_OAI33_X1 = 1 ^ A2;
    A3_inv_for_OAI33_X1 = 1 ^ A3;
    ZN_row1 = A1_inv_for_OAI33_X1 & A2_inv_for_OAI33_X1 & A3_inv_for_OAI33_X1;
    B1_inv_for_OAI33_X1 = 1 ^ B1;
    B2_inv_for_OAI33_X1 = 1 ^ B2;
    B3_inv_for_OAI33_X1 = 1 ^ B3;
    ZN_row2 = B1_inv_for_OAI33_X1 & B2_inv_for_OAI33_X1 & B3_inv_for_OAI33_X1;
    *ZN = ZN_row1 | ZN_row2;
}

void OR2_X1(int A1, int A2, int* ZN) {
    *ZN = A1 | A2;
}

void OR2_X2(int A1, int A2, int* ZN) {
    *ZN = A1 | A2;
}

void OR2_X4(int A1, int A2, int* ZN) {
    *ZN = A1 | A2;
}

void OR3_X1(int A1, int A2, int A3, int* ZN) {
    *ZN = A1 | A2 | A3;
}

void OR3_X2(int A1, int A2, int A3, int* ZN) {
    *ZN = A1 | A2 | A3;
}

void OR3_X4(int A1, int A2, int A3, int* ZN) {
    *ZN = A1 | A2 | A3;
}

void OR4_X1(int A1, int A2, int A3, int A4, int* ZN) {
    *ZN = A1 | A2 | A3 | A4;
}

void OR4_X2(int A1, int A2, int A3, int A4, int* ZN) {
    *ZN = A1 | A2 | A3 | A4;
}

void OR4_X4(int A1, int A2, int A3, int A4, int* ZN) {
    *ZN = A1 | A2 | A3 | A4;
}

void XNOR2_X1(int A, int B, int* ZN) {
    int ZN_row1;
    int A_inv_for_XNOR2_X1;
    int B_inv_for_XNOR2_X1;
    int ZN_row2;
    ZN_row1 = A & B;
    A_inv_for_XNOR2_X1 = 1 ^ A;
    B_inv_for_XNOR2_X1 = 1 ^ B;
    ZN_row2 = A_inv_for_XNOR2_X1 & B_inv_for_XNOR2_X1;
    *ZN = ZN_row1 | ZN_row2;
}

void XNOR2_X2(int A, int B, int* ZN) {
    int ZN_row1;
    int A_inv_for_XNOR2_X2;
    int B_inv_for_XNOR2_X2;
    int ZN_row2;
    ZN_row1 = A & B;
    A_inv_for_XNOR2_X2 = 1 ^ A;
    B_inv_for_XNOR2_X2 = 1 ^ B;
    ZN_row2 = A_inv_for_XNOR2_X2 & B_inv_for_XNOR2_X2;
    *ZN = ZN_row1 | ZN_row2;
}

void XOR2_X1(int A, int B, int* Z) {
    int B_inv_for_XOR2_X1;
    int Z_row1;
    int A_inv_for_XOR2_X1;
    int Z_row2;
    B_inv_for_XOR2_X1 = 1 ^ B;
    Z_row1 = B_inv_for_XOR2_X1 & A;
    A_inv_for_XOR2_X1 = 1 ^ A;
    Z_row2 = A_inv_for_XOR2_X1 & B;
    *Z = Z_row1 | Z_row2;
}

void XOR2_X2(int A, int B, int* Z) {
    int B_inv_for_XOR2_X2;
    int Z_row1;
    int A_inv_for_XOR2_X2;
    int Z_row2;
    B_inv_for_XOR2_X2 = 1 ^ B;
    Z_row1 = B_inv_for_XOR2_X2 & A;
    A_inv_for_XOR2_X2 = 1 ^ A;
    Z_row2 = A_inv_for_XOR2_X2 & B;
    *Z = Z_row1 | Z_row2;
}

