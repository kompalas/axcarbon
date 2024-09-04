void A2O1A1Ixp33_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B__bar;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & B__bar;
    *Y = int_fwire_1 | int_fwire_0 | C__bar;
}

void A2O1A1Ixp5_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B__bar;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & B__bar;
    *Y = int_fwire_1 | int_fwire_0 | C__bar;
}

void A2O1A1O1Ixp33_ASAP7_6t_R(int A1, int A2, int B, int C, int D, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    int_fwire_0 = C__bar & D__bar;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_1 = A2__bar & B__bar & D__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B__bar & D__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO211x1_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2;
    *Y = int_fwire_0 | B | C;
}

void AO211x2_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2;
    *Y = int_fwire_0 | B | C;
}

void AO21x1_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2;
    *Y = int_fwire_0 | B;
}

void AO21x2_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2;
    *Y = int_fwire_0 | B;
}

void AO221x1_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2;
    *Y = int_fwire_1 | int_fwire_0 | C;
}

void AO221x2_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2;
    *Y = int_fwire_1 | int_fwire_0 | C;
}

void AO222x1_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2;
    int_fwire_1 = B1 & B2;
    int_fwire_2 = A1 & A2;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO222x2_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2;
    int_fwire_1 = B1 & B2;
    int_fwire_2 = A1 & A2;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO22x1_ASAP7_6t_R(int A1, int A2, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2;
    *Y = int_fwire_1 | int_fwire_0;
}

void AO22x2_ASAP7_6t_R(int A1, int A2, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2;
    *Y = int_fwire_1 | int_fwire_0;
}

void AO311x1_ASAP7_6t_R(int A1, int A2, int A3, int B, int C, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2 & A3;
    *Y = int_fwire_0 | B | C;
}

void AO311x2_ASAP7_6t_R(int A1, int A2, int A3, int B, int C, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2 & A3;
    *Y = int_fwire_0 | B | C;
}

void AO31x1_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2 & A3;
    *Y = int_fwire_0 | B;
}

void AO31x2_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int int_fwire_0;
    int_fwire_0 = A1 & A2 & A3;
    *Y = int_fwire_0 | B;
}

void AO321x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0 | C;
}

void AO321x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0 | C;
}

void AO322x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2;
    int_fwire_1 = B1 & B2;
    int_fwire_2 = A1 & A2 & A3;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO322x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2;
    int_fwire_1 = B1 & B2;
    int_fwire_2 = A1 & A2 & A3;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO32x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0;
}

void AO32x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0;
}

void AO331x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2 & B3;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0 | C;
}

void AO331x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2 & B3;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0 | C;
}

void AO332x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2;
    int_fwire_1 = B1 & B2 & B3;
    int_fwire_2 = A1 & A2 & A3;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO332x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2;
    int_fwire_1 = B1 & B2 & B3;
    int_fwire_2 = A1 & A2 & A3;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO333x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int C3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2 & C3;
    int_fwire_1 = B1 & B2 & B3;
    int_fwire_2 = A1 & A2 & A3;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO333x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int C3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = C1 & C2 & C3;
    int_fwire_1 = B1 & B2 & B3;
    int_fwire_2 = A1 & A2 & A3;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AO33x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2 & B3;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0;
}

void AO33x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = B1 & B2 & B3;
    int_fwire_1 = A1 & A2 & A3;
    *Y = int_fwire_1 | int_fwire_0;
}

void AOI211xp25_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B__bar & C__bar;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & B__bar & C__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void AOI211xp5_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B__bar & C__bar;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & B__bar & C__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void AOI21x1_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B__bar;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & B__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void AOI21xp25_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B__bar;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & B__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void AOI21xp5_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B__bar;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & B__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void AOI221xp25_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    C__bar = 1 ^ C;
    B2__bar = 1 ^ B2;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B2__bar & C__bar;
    B1__bar = 1 ^ B1;
    int_fwire_1 = A2__bar & B1__bar & C__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B2__bar & C__bar;
    int_fwire_3 = A1__bar & B1__bar & C__bar;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI221xp5_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    C__bar = 1 ^ C;
    B2__bar = 1 ^ B2;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B2__bar & C__bar;
    B1__bar = 1 ^ B1;
    int_fwire_1 = A2__bar & B1__bar & C__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B2__bar & C__bar;
    int_fwire_3 = A1__bar & B1__bar & C__bar;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI222xp25_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C1, int C2, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int C1__bar;
    int C2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    C2__bar = 1 ^ C2;
    B2__bar = 1 ^ B2;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B2__bar & C2__bar;
    C1__bar = 1 ^ C1;
    int_fwire_1 = A2__bar & B2__bar & C1__bar;
    B1__bar = 1 ^ B1;
    int_fwire_2 = A2__bar & B1__bar & C2__bar;
    int_fwire_3 = A2__bar & B1__bar & C1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_4 = A1__bar & B2__bar & C2__bar;
    int_fwire_5 = A1__bar & B2__bar & C1__bar;
    int_fwire_6 = A1__bar & B1__bar & C2__bar;
    int_fwire_7 = A1__bar & B1__bar & C1__bar;
    *Y = int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI22xp25_ASAP7_6t_R(int A1, int A2, int B1, int B2, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    B2__bar = 1 ^ B2;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B2__bar;
    B1__bar = 1 ^ B1;
    int_fwire_1 = A2__bar & B1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B2__bar;
    int_fwire_3 = A1__bar & B1__bar;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI22xp5_ASAP7_6t_R(int A1, int A2, int B1, int B2, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    B2__bar = 1 ^ B2;
    A2__bar = 1 ^ A2;
    int_fwire_0 = A2__bar & B2__bar;
    B1__bar = 1 ^ B1;
    int_fwire_1 = A2__bar & B1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B2__bar;
    int_fwire_3 = A1__bar & B1__bar;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI311xp33_ASAP7_6t_R(int A1, int A2, int A3, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B__bar & C__bar;
    A2__bar = 1 ^ A2;
    int_fwire_1 = A2__bar & B__bar & C__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B__bar & C__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI31xp33_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    B__bar = 1 ^ B;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B__bar;
    A2__bar = 1 ^ A2;
    int_fwire_1 = A2__bar & B__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI31xp67_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    B__bar = 1 ^ B;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B__bar;
    A2__bar = 1 ^ A2;
    int_fwire_1 = A2__bar & B__bar;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & B__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI321xp17_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    C__bar = 1 ^ C;
    B2__bar = 1 ^ B2;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B2__bar & C__bar;
    B1__bar = 1 ^ B1;
    int_fwire_1 = A3__bar & B1__bar & C__bar;
    A2__bar = 1 ^ A2;
    int_fwire_2 = A2__bar & B2__bar & C__bar;
    int_fwire_3 = A2__bar & B1__bar & C__bar;
    A1__bar = 1 ^ A1;
    int_fwire_4 = A1__bar & B2__bar & C__bar;
    int_fwire_5 = A1__bar & B1__bar & C__bar;
    *Y = int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI322xp17_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C1, int C2, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int C1__bar;
    int C2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    C2__bar = 1 ^ C2;
    B2__bar = 1 ^ B2;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B2__bar & C2__bar;
    C1__bar = 1 ^ C1;
    int_fwire_1 = A3__bar & B2__bar & C1__bar;
    B1__bar = 1 ^ B1;
    int_fwire_2 = A3__bar & B1__bar & C2__bar;
    int_fwire_3 = A3__bar & B1__bar & C1__bar;
    A2__bar = 1 ^ A2;
    int_fwire_4 = A2__bar & B2__bar & C2__bar;
    int_fwire_5 = A2__bar & B2__bar & C1__bar;
    int_fwire_6 = A2__bar & B1__bar & C2__bar;
    int_fwire_7 = A2__bar & B1__bar & C1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_8 = A1__bar & B2__bar & C2__bar;
    int_fwire_9 = A1__bar & B2__bar & C1__bar;
    int_fwire_10 = A1__bar & B1__bar & C2__bar;
    int_fwire_11 = A1__bar & B1__bar & C1__bar;
    *Y = int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI32xp33_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    B2__bar = 1 ^ B2;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B2__bar;
    B1__bar = 1 ^ B1;
    int_fwire_1 = A3__bar & B1__bar;
    A2__bar = 1 ^ A2;
    int_fwire_2 = A2__bar & B2__bar;
    int_fwire_3 = A2__bar & B1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_4 = A1__bar & B2__bar;
    int_fwire_5 = A1__bar & B1__bar;
    *Y = int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI331xp17_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    C__bar = 1 ^ C;
    B3__bar = 1 ^ B3;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B3__bar & C__bar;
    B2__bar = 1 ^ B2;
    int_fwire_1 = A3__bar & B2__bar & C__bar;
    B1__bar = 1 ^ B1;
    int_fwire_2 = A3__bar & B1__bar & C__bar;
    A2__bar = 1 ^ A2;
    int_fwire_3 = A2__bar & B3__bar & C__bar;
    int_fwire_4 = A2__bar & B2__bar & C__bar;
    int_fwire_5 = A2__bar & B1__bar & C__bar;
    A1__bar = 1 ^ A1;
    int_fwire_6 = A1__bar & B3__bar & C__bar;
    int_fwire_7 = A1__bar & B2__bar & C__bar;
    int_fwire_8 = A1__bar & B1__bar & C__bar;
    *Y = int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI332xp17_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int C1__bar;
    int C2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int int_fwire_12;
    int int_fwire_13;
    int int_fwire_14;
    int int_fwire_15;
    int int_fwire_16;
    int int_fwire_17;
    C2__bar = 1 ^ C2;
    B3__bar = 1 ^ B3;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B3__bar & C2__bar;
    C1__bar = 1 ^ C1;
    int_fwire_1 = A3__bar & B3__bar & C1__bar;
    B2__bar = 1 ^ B2;
    int_fwire_2 = A3__bar & B2__bar & C2__bar;
    int_fwire_3 = A3__bar & B2__bar & C1__bar;
    B1__bar = 1 ^ B1;
    int_fwire_4 = A3__bar & B1__bar & C2__bar;
    int_fwire_5 = A3__bar & B1__bar & C1__bar;
    A2__bar = 1 ^ A2;
    int_fwire_6 = A2__bar & B3__bar & C2__bar;
    int_fwire_7 = A2__bar & B3__bar & C1__bar;
    int_fwire_8 = A2__bar & B2__bar & C2__bar;
    int_fwire_9 = A2__bar & B2__bar & C1__bar;
    int_fwire_10 = A2__bar & B1__bar & C2__bar;
    int_fwire_11 = A2__bar & B1__bar & C1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_12 = A1__bar & B3__bar & C2__bar;
    int_fwire_13 = A1__bar & B3__bar & C1__bar;
    int_fwire_14 = A1__bar & B2__bar & C2__bar;
    int_fwire_15 = A1__bar & B2__bar & C1__bar;
    int_fwire_16 = A1__bar & B1__bar & C2__bar;
    int_fwire_17 = A1__bar & B1__bar & C1__bar;
    *Y = int_fwire_17 | int_fwire_16 | int_fwire_15 | int_fwire_14 | int_fwire_13 | int_fwire_12 | int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI333xp17_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int C3, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int C1__bar;
    int C2__bar;
    int C3__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int int_fwire_12;
    int int_fwire_13;
    int int_fwire_14;
    int int_fwire_15;
    int int_fwire_16;
    int int_fwire_17;
    int int_fwire_18;
    int int_fwire_19;
    int int_fwire_20;
    int int_fwire_21;
    int int_fwire_22;
    int int_fwire_23;
    int int_fwire_24;
    int int_fwire_25;
    int int_fwire_26;
    C3__bar = 1 ^ C3;
    B3__bar = 1 ^ B3;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B3__bar & C3__bar;
    C2__bar = 1 ^ C2;
    int_fwire_1 = A3__bar & B3__bar & C2__bar;
    C1__bar = 1 ^ C1;
    int_fwire_2 = A3__bar & B3__bar & C1__bar;
    B2__bar = 1 ^ B2;
    int_fwire_3 = A3__bar & B2__bar & C3__bar;
    int_fwire_4 = A3__bar & B2__bar & C2__bar;
    int_fwire_5 = A3__bar & B2__bar & C1__bar;
    B1__bar = 1 ^ B1;
    int_fwire_6 = A3__bar & B1__bar & C3__bar;
    int_fwire_7 = A3__bar & B1__bar & C2__bar;
    int_fwire_8 = A3__bar & B1__bar & C1__bar;
    A2__bar = 1 ^ A2;
    int_fwire_9 = A2__bar & B3__bar & C3__bar;
    int_fwire_10 = A2__bar & B3__bar & C2__bar;
    int_fwire_11 = A2__bar & B3__bar & C1__bar;
    int_fwire_12 = A2__bar & B2__bar & C3__bar;
    int_fwire_13 = A2__bar & B2__bar & C2__bar;
    int_fwire_14 = A2__bar & B2__bar & C1__bar;
    int_fwire_15 = A2__bar & B1__bar & C3__bar;
    int_fwire_16 = A2__bar & B1__bar & C2__bar;
    int_fwire_17 = A2__bar & B1__bar & C1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_18 = A1__bar & B3__bar & C3__bar;
    int_fwire_19 = A1__bar & B3__bar & C2__bar;
    int_fwire_20 = A1__bar & B3__bar & C1__bar;
    int_fwire_21 = A1__bar & B2__bar & C3__bar;
    int_fwire_22 = A1__bar & B2__bar & C2__bar;
    int_fwire_23 = A1__bar & B2__bar & C1__bar;
    int_fwire_24 = A1__bar & B1__bar & C3__bar;
    int_fwire_25 = A1__bar & B1__bar & C2__bar;
    int_fwire_26 = A1__bar & B1__bar & C1__bar;
    *Y = int_fwire_26 | int_fwire_25 | int_fwire_24 | int_fwire_23 | int_fwire_22 | int_fwire_21 | int_fwire_20 | int_fwire_19 | int_fwire_18 | int_fwire_17 | int_fwire_16 | int_fwire_15 | int_fwire_14 | int_fwire_13 | int_fwire_12 | int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void AOI33xp33_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    B3__bar = 1 ^ B3;
    A3__bar = 1 ^ A3;
    int_fwire_0 = A3__bar & B3__bar;
    B2__bar = 1 ^ B2;
    int_fwire_1 = A3__bar & B2__bar;
    B1__bar = 1 ^ B1;
    int_fwire_2 = A3__bar & B1__bar;
    A2__bar = 1 ^ A2;
    int_fwire_3 = A2__bar & B3__bar;
    int_fwire_4 = A2__bar & B2__bar;
    int_fwire_5 = A2__bar & B1__bar;
    A1__bar = 1 ^ A1;
    int_fwire_6 = A1__bar & B3__bar;
    int_fwire_7 = A1__bar & B2__bar;
    int_fwire_8 = A1__bar & B1__bar;
    *Y = int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void CKINVDCx10_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx11_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx12_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx14_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx16_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx20_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx5p5_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx6p5_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx8_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void CKINVDCx9p5_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void BUFx10_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx12_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx12q_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx16q_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx24_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx2_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx3_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx4_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx4q_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx5_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx6q_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void BUFx8_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void HB1x1_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void HB2x1_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void HB3x1_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void HB4x1_ASAP7_6t_R(int A, int* Y) {
    *Y = A;
}

void INVx11_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx13_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx1_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx2_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx3_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx4_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx5_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx6_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVx8_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void INVxp5_ASAP7_6t_R(int A, int* Y) {
    *Y = 1 ^ A;
}

void O2A1O1A1Ixp33_ASAP7_6t_R(int A1, int A2, int B, int C, int D, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    int int_fwire_0;
    int int_fwire_1;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    int_fwire_0 = B__bar & C__bar;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar & C__bar;
    *Y = int_fwire_1 | int_fwire_0 | D__bar;
}

void O2A1O1Ixp33_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    int_fwire_0 = B__bar & C__bar;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar & C__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void O2A1O1Ixp5_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    int_fwire_0 = B__bar & C__bar;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar & C__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void OA211x1_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = A2 & B & C;
    int_fwire_1 = A1 & B & C;
    *Y = int_fwire_1 | int_fwire_0;
}

void OA211x2_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = A2 & B & C;
    int_fwire_1 = A1 & B & C;
    *Y = int_fwire_1 | int_fwire_0;
}

void OA21x1_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = A2 & B;
    int_fwire_1 = A1 & B;
    *Y = int_fwire_1 | int_fwire_0;
}

void OA21x2_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int_fwire_0 = A2 & B;
    int_fwire_1 = A1 & B;
    *Y = int_fwire_1 | int_fwire_0;
}

void OA221x1_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int_fwire_0 = A2 & B2 & C;
    int_fwire_1 = A2 & B1 & C;
    int_fwire_2 = A1 & B2 & C;
    int_fwire_3 = A1 & B1 & C;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA221x2_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int_fwire_0 = A2 & B2 & C;
    int_fwire_1 = A2 & B1 & C;
    int_fwire_2 = A1 & B2 & C;
    int_fwire_3 = A1 & B1 & C;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA222x1_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int_fwire_0 = A2 & B2 & C2;
    int_fwire_1 = A2 & B2 & C1;
    int_fwire_2 = A2 & B1 & C2;
    int_fwire_3 = A2 & B1 & C1;
    int_fwire_4 = A1 & B2 & C2;
    int_fwire_5 = A1 & B2 & C1;
    int_fwire_6 = A1 & B1 & C2;
    int_fwire_7 = A1 & B1 & C1;
    *Y = int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA222x2_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int_fwire_0 = A2 & B2 & C2;
    int_fwire_1 = A2 & B2 & C1;
    int_fwire_2 = A2 & B1 & C2;
    int_fwire_3 = A2 & B1 & C1;
    int_fwire_4 = A1 & B2 & C2;
    int_fwire_5 = A1 & B2 & C1;
    int_fwire_6 = A1 & B1 & C2;
    int_fwire_7 = A1 & B1 & C1;
    *Y = int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA22x1_ASAP7_6t_R(int A1, int A2, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int_fwire_0 = A2 & B2;
    int_fwire_1 = A2 & B1;
    int_fwire_2 = A1 & B2;
    int_fwire_3 = A1 & B1;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA22x2_ASAP7_6t_R(int A1, int A2, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int_fwire_0 = A2 & B2;
    int_fwire_1 = A2 & B1;
    int_fwire_2 = A1 & B2;
    int_fwire_3 = A1 & B1;
    *Y = int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA311x1_ASAP7_6t_R(int A1, int A2, int A3, int B, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = A3 & B & C;
    int_fwire_1 = A2 & B & C;
    int_fwire_2 = A1 & B & C;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA311x2_ASAP7_6t_R(int A1, int A2, int A3, int B, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = A3 & B & C;
    int_fwire_1 = A2 & B & C;
    int_fwire_2 = A1 & B & C;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA31x1_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = A3 & B;
    int_fwire_1 = A2 & B;
    int_fwire_2 = A1 & B;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA31x2_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = A3 & B;
    int_fwire_1 = A2 & B;
    int_fwire_2 = A1 & B;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA321x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int_fwire_0 = A3 & B2 & C;
    int_fwire_1 = A3 & B1 & C;
    int_fwire_2 = A2 & B2 & C;
    int_fwire_3 = A2 & B1 & C;
    int_fwire_4 = A1 & B2 & C;
    int_fwire_5 = A1 & B1 & C;
    *Y = int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA321x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int_fwire_0 = A3 & B2 & C;
    int_fwire_1 = A3 & B1 & C;
    int_fwire_2 = A2 & B2 & C;
    int_fwire_3 = A2 & B1 & C;
    int_fwire_4 = A1 & B2 & C;
    int_fwire_5 = A1 & B1 & C;
    *Y = int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA322x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int_fwire_0 = A3 & B2 & C2;
    int_fwire_1 = A3 & B2 & C1;
    int_fwire_2 = A3 & B1 & C2;
    int_fwire_3 = A3 & B1 & C1;
    int_fwire_4 = A2 & B2 & C2;
    int_fwire_5 = A2 & B2 & C1;
    int_fwire_6 = A2 & B1 & C2;
    int_fwire_7 = A2 & B1 & C1;
    int_fwire_8 = A1 & B2 & C2;
    int_fwire_9 = A1 & B2 & C1;
    int_fwire_10 = A1 & B1 & C2;
    int_fwire_11 = A1 & B1 & C1;
    *Y = int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA322x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int_fwire_0 = A3 & B2 & C2;
    int_fwire_1 = A3 & B2 & C1;
    int_fwire_2 = A3 & B1 & C2;
    int_fwire_3 = A3 & B1 & C1;
    int_fwire_4 = A2 & B2 & C2;
    int_fwire_5 = A2 & B2 & C1;
    int_fwire_6 = A2 & B1 & C2;
    int_fwire_7 = A2 & B1 & C1;
    int_fwire_8 = A1 & B2 & C2;
    int_fwire_9 = A1 & B2 & C1;
    int_fwire_10 = A1 & B1 & C2;
    int_fwire_11 = A1 & B1 & C1;
    *Y = int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA32x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int_fwire_0 = A3 & B2;
    int_fwire_1 = A3 & B1;
    int_fwire_2 = A2 & B2;
    int_fwire_3 = A2 & B1;
    int_fwire_4 = A1 & B2;
    int_fwire_5 = A1 & B1;
    *Y = int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA32x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int_fwire_0 = A3 & B2;
    int_fwire_1 = A3 & B1;
    int_fwire_2 = A2 & B2;
    int_fwire_3 = A2 & B1;
    int_fwire_4 = A1 & B2;
    int_fwire_5 = A1 & B1;
    *Y = int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA331x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int_fwire_0 = A3 & B3 & C;
    int_fwire_1 = A3 & B2 & C;
    int_fwire_2 = A3 & B1 & C;
    int_fwire_3 = A2 & B3 & C;
    int_fwire_4 = A2 & B2 & C;
    int_fwire_5 = A2 & B1 & C;
    int_fwire_6 = A1 & B3 & C;
    int_fwire_7 = A1 & B2 & C;
    int_fwire_8 = A1 & B1 & C;
    *Y = int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA331x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int_fwire_0 = A3 & B3 & C;
    int_fwire_1 = A3 & B2 & C;
    int_fwire_2 = A3 & B1 & C;
    int_fwire_3 = A2 & B3 & C;
    int_fwire_4 = A2 & B2 & C;
    int_fwire_5 = A2 & B1 & C;
    int_fwire_6 = A1 & B3 & C;
    int_fwire_7 = A1 & B2 & C;
    int_fwire_8 = A1 & B1 & C;
    *Y = int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA332x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int int_fwire_12;
    int int_fwire_13;
    int int_fwire_14;
    int int_fwire_15;
    int int_fwire_16;
    int int_fwire_17;
    int_fwire_0 = A3 & B3 & C2;
    int_fwire_1 = A3 & B3 & C1;
    int_fwire_2 = A3 & B2 & C2;
    int_fwire_3 = A3 & B2 & C1;
    int_fwire_4 = A3 & B1 & C2;
    int_fwire_5 = A3 & B1 & C1;
    int_fwire_6 = A2 & B3 & C2;
    int_fwire_7 = A2 & B3 & C1;
    int_fwire_8 = A2 & B2 & C2;
    int_fwire_9 = A2 & B2 & C1;
    int_fwire_10 = A2 & B1 & C2;
    int_fwire_11 = A2 & B1 & C1;
    int_fwire_12 = A1 & B3 & C2;
    int_fwire_13 = A1 & B3 & C1;
    int_fwire_14 = A1 & B2 & C2;
    int_fwire_15 = A1 & B2 & C1;
    int_fwire_16 = A1 & B1 & C2;
    int_fwire_17 = A1 & B1 & C1;
    *Y = int_fwire_17 | int_fwire_16 | int_fwire_15 | int_fwire_14 | int_fwire_13 | int_fwire_12 | int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA332x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int int_fwire_12;
    int int_fwire_13;
    int int_fwire_14;
    int int_fwire_15;
    int int_fwire_16;
    int int_fwire_17;
    int_fwire_0 = A3 & B3 & C2;
    int_fwire_1 = A3 & B3 & C1;
    int_fwire_2 = A3 & B2 & C2;
    int_fwire_3 = A3 & B2 & C1;
    int_fwire_4 = A3 & B1 & C2;
    int_fwire_5 = A3 & B1 & C1;
    int_fwire_6 = A2 & B3 & C2;
    int_fwire_7 = A2 & B3 & C1;
    int_fwire_8 = A2 & B2 & C2;
    int_fwire_9 = A2 & B2 & C1;
    int_fwire_10 = A2 & B1 & C2;
    int_fwire_11 = A2 & B1 & C1;
    int_fwire_12 = A1 & B3 & C2;
    int_fwire_13 = A1 & B3 & C1;
    int_fwire_14 = A1 & B2 & C2;
    int_fwire_15 = A1 & B2 & C1;
    int_fwire_16 = A1 & B1 & C2;
    int_fwire_17 = A1 & B1 & C1;
    *Y = int_fwire_17 | int_fwire_16 | int_fwire_15 | int_fwire_14 | int_fwire_13 | int_fwire_12 | int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA333x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int C3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int int_fwire_12;
    int int_fwire_13;
    int int_fwire_14;
    int int_fwire_15;
    int int_fwire_16;
    int int_fwire_17;
    int int_fwire_18;
    int int_fwire_19;
    int int_fwire_20;
    int int_fwire_21;
    int int_fwire_22;
    int int_fwire_23;
    int int_fwire_24;
    int int_fwire_25;
    int int_fwire_26;
    int_fwire_0 = A3 & B3 & C3;
    int_fwire_1 = A3 & B3 & C2;
    int_fwire_2 = A3 & B3 & C1;
    int_fwire_3 = A3 & B2 & C3;
    int_fwire_4 = A3 & B2 & C2;
    int_fwire_5 = A3 & B2 & C1;
    int_fwire_6 = A3 & B1 & C3;
    int_fwire_7 = A3 & B1 & C2;
    int_fwire_8 = A3 & B1 & C1;
    int_fwire_9 = A2 & B3 & C3;
    int_fwire_10 = A2 & B3 & C2;
    int_fwire_11 = A2 & B3 & C1;
    int_fwire_12 = A2 & B2 & C3;
    int_fwire_13 = A2 & B2 & C2;
    int_fwire_14 = A2 & B2 & C1;
    int_fwire_15 = A2 & B1 & C3;
    int_fwire_16 = A2 & B1 & C2;
    int_fwire_17 = A2 & B1 & C1;
    int_fwire_18 = A1 & B3 & C3;
    int_fwire_19 = A1 & B3 & C2;
    int_fwire_20 = A1 & B3 & C1;
    int_fwire_21 = A1 & B2 & C3;
    int_fwire_22 = A1 & B2 & C2;
    int_fwire_23 = A1 & B2 & C1;
    int_fwire_24 = A1 & B1 & C3;
    int_fwire_25 = A1 & B1 & C2;
    int_fwire_26 = A1 & B1 & C1;
    *Y = int_fwire_26 | int_fwire_25 | int_fwire_24 | int_fwire_23 | int_fwire_22 | int_fwire_21 | int_fwire_20 | int_fwire_19 | int_fwire_18 | int_fwire_17 | int_fwire_16 | int_fwire_15 | int_fwire_14 | int_fwire_13 | int_fwire_12 | int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA333x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int C3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int int_fwire_9;
    int int_fwire_10;
    int int_fwire_11;
    int int_fwire_12;
    int int_fwire_13;
    int int_fwire_14;
    int int_fwire_15;
    int int_fwire_16;
    int int_fwire_17;
    int int_fwire_18;
    int int_fwire_19;
    int int_fwire_20;
    int int_fwire_21;
    int int_fwire_22;
    int int_fwire_23;
    int int_fwire_24;
    int int_fwire_25;
    int int_fwire_26;
    int_fwire_0 = A3 & B3 & C3;
    int_fwire_1 = A3 & B3 & C2;
    int_fwire_2 = A3 & B3 & C1;
    int_fwire_3 = A3 & B2 & C3;
    int_fwire_4 = A3 & B2 & C2;
    int_fwire_5 = A3 & B2 & C1;
    int_fwire_6 = A3 & B1 & C3;
    int_fwire_7 = A3 & B1 & C2;
    int_fwire_8 = A3 & B1 & C1;
    int_fwire_9 = A2 & B3 & C3;
    int_fwire_10 = A2 & B3 & C2;
    int_fwire_11 = A2 & B3 & C1;
    int_fwire_12 = A2 & B2 & C3;
    int_fwire_13 = A2 & B2 & C2;
    int_fwire_14 = A2 & B2 & C1;
    int_fwire_15 = A2 & B1 & C3;
    int_fwire_16 = A2 & B1 & C2;
    int_fwire_17 = A2 & B1 & C1;
    int_fwire_18 = A1 & B3 & C3;
    int_fwire_19 = A1 & B3 & C2;
    int_fwire_20 = A1 & B3 & C1;
    int_fwire_21 = A1 & B2 & C3;
    int_fwire_22 = A1 & B2 & C2;
    int_fwire_23 = A1 & B2 & C1;
    int_fwire_24 = A1 & B1 & C3;
    int_fwire_25 = A1 & B1 & C2;
    int_fwire_26 = A1 & B1 & C1;
    *Y = int_fwire_26 | int_fwire_25 | int_fwire_24 | int_fwire_23 | int_fwire_22 | int_fwire_21 | int_fwire_20 | int_fwire_19 | int_fwire_18 | int_fwire_17 | int_fwire_16 | int_fwire_15 | int_fwire_14 | int_fwire_13 | int_fwire_12 | int_fwire_11 | int_fwire_10 | int_fwire_9 | int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA33x1_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int_fwire_0 = A3 & B3;
    int_fwire_1 = A3 & B2;
    int_fwire_2 = A3 & B1;
    int_fwire_3 = A2 & B3;
    int_fwire_4 = A2 & B2;
    int_fwire_5 = A2 & B1;
    int_fwire_6 = A1 & B3;
    int_fwire_7 = A1 & B2;
    int_fwire_8 = A1 & B1;
    *Y = int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OA33x2_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    int int_fwire_7;
    int int_fwire_8;
    int_fwire_0 = A3 & B3;
    int_fwire_1 = A3 & B2;
    int_fwire_2 = A3 & B1;
    int_fwire_3 = A2 & B3;
    int_fwire_4 = A2 & B2;
    int_fwire_5 = A2 & B1;
    int_fwire_6 = A1 & B3;
    int_fwire_7 = A1 & B2;
    int_fwire_8 = A1 & B1;
    *Y = int_fwire_8 | int_fwire_7 | int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3 | int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OAI211xp33_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar;
    *Y = int_fwire_0 | B__bar | C__bar;
}

void OAI211xp67b_ASAP7_6t_R(int A1, int A2, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar;
    *Y = int_fwire_0 | B__bar | C__bar;
}

void OAI21xp25_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int int_fwire_0;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar;
    *Y = int_fwire_0 | B__bar;
}

void OAI21xp5_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int int_fwire_0;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar;
    *Y = int_fwire_0 | B__bar;
}

void OAI21xp5b_ASAP7_6t_R(int A1, int A2, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int B__bar;
    int int_fwire_0;
    B__bar = 1 ^ B;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar;
    *Y = int_fwire_0 | B__bar;
}

void OAI221xp33_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_0 = B1__bar & B2__bar;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar;
    *Y = int_fwire_1 | int_fwire_0 | C__bar;
}

void OAI221xp33f_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_0 = B1__bar & B2__bar;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar;
    *Y = int_fwire_1 | int_fwire_0 | C__bar;
}

void OAI222xp33_ASAP7_6t_R(int A1, int A2, int B1, int B2, int C1, int C2, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int C1__bar;
    int C2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    C2__bar = 1 ^ C2;
    C1__bar = 1 ^ C1;
    int_fwire_0 = C1__bar & C2__bar;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_1 = B1__bar & B2__bar;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & A2__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OAI22xp5_ASAP7_6t_R(int A1, int A2, int B1, int B2, int* Y) {
    int A1__bar;
    int A2__bar;
    int B1__bar;
    int B2__bar;
    int int_fwire_0;
    int int_fwire_1;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_0 = B1__bar & B2__bar;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void OAI311xp33_ASAP7_6t_R(int A1, int A2, int A3, int B, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_0 | B__bar | C__bar;
}

void OAI31x1f_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B__bar;
    int int_fwire_0;
    B__bar = 1 ^ B;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_0 | B__bar;
}

void OAI31xp5f_ASAP7_6t_R(int A1, int A2, int A3, int B, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B__bar;
    int int_fwire_0;
    B__bar = 1 ^ B;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_0 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_0 | B__bar;
}

void OAI321xp33_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_0 = B1__bar & B2__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_1 | int_fwire_0 | C__bar;
}

void OAI322xp33_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C1, int C2, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int C1__bar;
    int C2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    C2__bar = 1 ^ C2;
    C1__bar = 1 ^ C1;
    int_fwire_0 = C1__bar & C2__bar;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_1 = B1__bar & B2__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OAI322xp33b_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int C1, int C2, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int C1__bar;
    int C2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    C2__bar = 1 ^ C2;
    C1__bar = 1 ^ C1;
    int_fwire_0 = C1__bar & C2__bar;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_1 = B1__bar & B2__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OAI32xp5f_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int int_fwire_0;
    int int_fwire_1;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_0 = B1__bar & B2__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void OAI331xp33_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    C__bar = 1 ^ C;
    B3__bar = 1 ^ B3;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_0 = B1__bar & B2__bar & B3__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_1 | int_fwire_0 | C__bar;
}

void OAI332xp33_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int C1__bar;
    int C2__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    C2__bar = 1 ^ C2;
    C1__bar = 1 ^ C1;
    int_fwire_0 = C1__bar & C2__bar;
    B3__bar = 1 ^ B3;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_1 = B1__bar & B2__bar & B3__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OAI333xp33_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int C1, int C2, int C3, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int C1__bar;
    int C2__bar;
    int C3__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    C3__bar = 1 ^ C3;
    C2__bar = 1 ^ C2;
    C1__bar = 1 ^ C1;
    int_fwire_0 = C1__bar & C2__bar & C3__bar;
    B3__bar = 1 ^ B3;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_1 = B1__bar & B2__bar & B3__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_2 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void OAI33xp5f_ASAP7_6t_R(int A1, int A2, int A3, int B1, int B2, int B3, int* Y) {
    int A1__bar;
    int A2__bar;
    int A3__bar;
    int B1__bar;
    int B2__bar;
    int B3__bar;
    int int_fwire_0;
    int int_fwire_1;
    B3__bar = 1 ^ B3;
    B2__bar = 1 ^ B2;
    B1__bar = 1 ^ B1;
    int_fwire_0 = B1__bar & B2__bar & B3__bar;
    A3__bar = 1 ^ A3;
    A2__bar = 1 ^ A2;
    A1__bar = 1 ^ A1;
    int_fwire_1 = A1__bar & A2__bar & A3__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void DFFARHQNx1_ASAP7_6t_R(int D, int RESETN, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_d;
    int int_fwire_IQN;
    int int_fwire_s;
    int xcr_0;
    int adacond0;
    int adacond1;
    int D__bar;
    int_fwire_d = 1 ^ delayed_D;
    int_fwire_s = 1 ^ RESETN;
    *QN = int_fwire_IQN;
    adacond0 = D & RESETN;
    D__bar = 1 ^ D;
    adacond1 = D__bar & RESETN;
}

void DFFASHQNx1_ASAP7_6t_R(int D, int SETN, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_d;
    int int_fwire_IQN;
    int int_fwire_r;
    int xcr_0;
    int adacond0;
    int adacond1;
    int D__bar;
    int_fwire_d = 1 ^ delayed_D;
    int_fwire_r = 1 ^ SETN;
    *QN = int_fwire_IQN;
    adacond0 = D & SETN;
    D__bar = 1 ^ D;
    adacond1 = D__bar & SETN;
}

void DFFASRHQNx1_ASAP7_6t_R(int D, int RESETN, int SETN, int CLK, int* QN) {
    int delayed_D;
    int delayed_RESETN;
    int delayed_SETN;
    int delayed_CLK;
    int int_fwire_d;
    int int_fwire_IQN;
    int int_fwire_r;
    int int_fwire_s;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int adacond8;
    int CLK__bar;
    int D__bar;
    int_fwire_d = 1 ^ delayed_D;
    int_fwire_s = 1 ^ delayed_RESETN;
    int_fwire_r = 1 ^ delayed_SETN;
    *QN = int_fwire_IQN;
    adacond0 = RESETN & SETN;
    adacond1 = D & SETN;
    adacond2 = CLK & SETN;
    CLK__bar = 1 ^ CLK;
    adacond3 = CLK__bar & SETN;
    D__bar = 1 ^ D;
    adacond4 = D__bar & RESETN;
    adacond5 = CLK & RESETN;
    adacond6 = CLK__bar & RESETN;
    adacond7 = D & RESETN & SETN;
    adacond8 = D__bar & RESETN & SETN;
}

void DFFHQNx1_ASAP7_6t_R(int D, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int_fwire_d = 1 ^ delayed_D;
    *QN = int_fwire_IQN;
}

void DFFHQNx2_ASAP7_6t_R(int D, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int_fwire_d = 1 ^ delayed_D;
    *QN = int_fwire_IQN;
}

void DFFHQNx3_ASAP7_6t_R(int D, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int_fwire_d = 1 ^ delayed_D;
    *QN = int_fwire_IQN;
}

void DFFHQx4_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_IQ;
    int xcr_0;
    *Q = int_fwire_IQ;
}

void DFFLQNx1_ASAP7_6t_R(int D, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int_fwire_d = 1 ^ delayed_D;
    int_fwire_clk = 1 ^ delayed_CLK;
    *QN = int_fwire_IQN;
}

void DFFLQNx2_ASAP7_6t_R(int D, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int_fwire_d = 1 ^ delayed_D;
    int_fwire_clk = 1 ^ delayed_CLK;
    *QN = int_fwire_IQN;
}

void DFFLQNx3_ASAP7_6t_R(int D, int CLK, int* QN) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int_fwire_d = 1 ^ delayed_D;
    int_fwire_clk = 1 ^ delayed_CLK;
    *QN = int_fwire_IQN;
}

void DFFLQx4_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int xcr_0;
    int_fwire_clk = 1 ^ delayed_CLK;
    *Q = int_fwire_IQ;
}

void DHLx1_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_IQ;
    *Q = int_fwire_IQ;
}

void DHLx2_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_IQ;
    *Q = int_fwire_IQ;
}

void DHLx3_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_IQ;
    *Q = int_fwire_IQ;
}

void DLLx1_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int_fwire_clk = 1 ^ delayed_CLK;
    *Q = int_fwire_IQ;
}

void DLLx2_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int_fwire_clk = 1 ^ delayed_CLK;
    *Q = int_fwire_IQ;
}

void DLLx3_ASAP7_6t_R(int D, int CLK, int* Q) {
    int delayed_D;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int_fwire_clk = 1 ^ delayed_CLK;
    *Q = int_fwire_IQ;
}

void ICGx10_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void ICGx12_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void ICGx1_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void ICGx2_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void ICGx3_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void ICGx4_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void ICGx5_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void ICGx8_ASAP7_6t_R(int ENA, int SE, int CLK, int* GCLK) {
    int delayed_ENA;
    int delayed_SE;
    int delayed_CLK;
    int int_fwire_clk;
    int int_fwire_IQ;
    int int_fwire_test;
    int adacond0;
    int adacond1;
    int ENA__bar;
    int int_twire_0;
    int SE__bar;
    int_fwire_clk = 1 ^ delayed_CLK;
    int_fwire_test = delayed_ENA | delayed_SE;
    *GCLK = delayed_CLK & int_fwire_IQ;
    ENA__bar = 1 ^ ENA;
    int_twire_0 = ENA__bar & SE;
    adacond0 = ENA | int_twire_0;
    SE__bar = 1 ^ SE;
    adacond1 = ENA__bar & SE__bar;
}

void SDFHx1_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void SDFHx2_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void SDFHx3_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void SDFHx4_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void SDFLx1_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_clk;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    int_fwire_clk = 1 ^ delayed_CLK;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void SDFLx2_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_clk;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    int_fwire_clk = 1 ^ delayed_CLK;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void SDFLx3_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_clk;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    int_fwire_clk = 1 ^ delayed_CLK;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void SDFLx4_ASAP7_6t_R(int D, int SE, int SI, int CLK, int* QN) {
    int delayed_D;
    int delayed_SE;
    int delayed_SI;
    int delayed_CLK;
    int delayed_D__bar;
    int delayed_SE__bar;
    int delayed_SI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_clk;
    int int_fwire_d;
    int int_fwire_IQN;
    int xcr_0;
    int adacond0;
    int adacond1;
    int adacond2;
    int adacond3;
    int adacond4;
    int adacond5;
    int adacond6;
    int adacond7;
    int D__bar;
    int int_twire_0;
    int int_twire_1;
    int int_twire_2;
    int int_twire_3;
    int int_twire_4;
    int int_twire_5;
    int SE__bar;
    int SI__bar;
    delayed_SI__bar = 1 ^ delayed_SI;
    int_fwire_0 = delayed_SE & delayed_SI__bar;
    delayed_D__bar = 1 ^ delayed_D;
    int_fwire_1 = delayed_D__bar & delayed_SI__bar;
    delayed_SE__bar = 1 ^ delayed_SE;
    int_fwire_2 = delayed_D__bar & delayed_SE__bar;
    int_fwire_d = int_fwire_2 | int_fwire_1 | int_fwire_0;
    int_fwire_clk = 1 ^ delayed_CLK;
    *QN = int_fwire_IQN;
    SE__bar = 1 ^ SE;
    adacond0 = SE__bar & SI;
    SI__bar = 1 ^ SI;
    adacond1 = SE__bar & SI__bar;
    adacond2 = D & SI__bar;
    D__bar = 1 ^ D;
    adacond3 = D__bar & SI;
    adacond4 = D & SE;
    adacond5 = D__bar & SE;
    int_twire_0 = D__bar & SE & SI;
    int_twire_1 = D & SE__bar;
    int_twire_2 = D & SE & SI;
    adacond6 = int_twire_2 | int_twire_1 | int_twire_0;
    int_twire_3 = D__bar & SE__bar;
    int_twire_4 = D__bar & SE & SI__bar;
    int_twire_5 = D & SE & SI__bar;
    adacond7 = int_twire_5 | int_twire_4 | int_twire_3;
}

void NAND5xp2R_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    int E__bar;
    E__bar = 1 ^ E;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar | D__bar | E__bar;
}

void AND2x2_ASAP7_6t_R(int A, int B, int* Y) {
    *Y = A & B;
}

void AND2x4_ASAP7_6t_R(int A, int B, int* Y) {
    *Y = A & B;
}

void AND2x6_ASAP7_6t_R(int A, int B, int* Y) {
    *Y = A & B;
}

void AND3x1_ASAP7_6t_R(int A, int B, int C, int* Y) {
    *Y = A & B & C;
}

void AND3x2_ASAP7_6t_R(int A, int B, int C, int* Y) {
    *Y = A & B & C;
}

void AND3x4_ASAP7_6t_R(int A, int B, int C, int* Y) {
    *Y = A & B & C;
}

void AND4x1_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    *Y = A & B & C & D;
}

void AND4x2_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    *Y = A & B & C & D;
}

void AND5x1_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    *Y = A & B & C & D & E;
}

void AND5x2_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    *Y = A & B & C & D & E;
}

void FAxp33_ASAP7_6t_R(int A, int B, int CI, int* CON, int* SN) {
    int A__bar;
    int B__bar;
    int CI__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int int_fwire_3;
    int int_fwire_4;
    int int_fwire_5;
    int int_fwire_6;
    CI__bar = 1 ^ CI;
    B__bar = 1 ^ B;
    int_fwire_0 = B__bar & CI__bar;
    A__bar = 1 ^ A;
    int_fwire_1 = A__bar & CI__bar;
    int_fwire_2 = A__bar & B__bar;
    *CON = int_fwire_2 | int_fwire_1 | int_fwire_0;
    int_fwire_3 = A__bar & B__bar & CI__bar;
    int_fwire_4 = A__bar & B & CI;
    int_fwire_5 = A & B__bar & CI;
    int_fwire_6 = A & B & CI__bar;
    *SN = int_fwire_6 | int_fwire_5 | int_fwire_4 | int_fwire_3;
}

void HAxp5_ASAP7_6t_R(int A, int B, int* CON, int* SN) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *CON = A__bar | B__bar;
    int_fwire_0 = A__bar & B__bar;
    int_fwire_1 = A & B;
    *SN = int_fwire_1 | int_fwire_0;
}

void MAJIxp5_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    int_fwire_0 = B__bar & C__bar;
    A__bar = 1 ^ A;
    int_fwire_1 = A__bar & C__bar;
    int_fwire_2 = A__bar & B__bar;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void MAJx1_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = B & C;
    int_fwire_1 = A & C;
    int_fwire_2 = A & B;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void MAJx2_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = B & C;
    int_fwire_1 = A & C;
    int_fwire_2 = A & B;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void MAJx3_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int int_fwire_0;
    int int_fwire_1;
    int int_fwire_2;
    int_fwire_0 = B & C;
    int_fwire_1 = A & C;
    int_fwire_2 = A & B;
    *Y = int_fwire_2 | int_fwire_1 | int_fwire_0;
}

void NAND2x1_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar;
}

void NAND2x1p5_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar;
}

void NAND2x2_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar;
}

void NAND2xp5R_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar;
}

void NAND2xp5_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar;
}

void NAND3x1_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar;
}

void NAND3x2_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar;
}

void NAND3xp33R_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar;
}

void NAND3xp33_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar;
}

void NAND4xp25R_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar | D__bar;
}

void NAND4xp25_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar | D__bar;
}

void NAND4xp75_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar | D__bar;
}

void NAND5xp2_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    int E__bar;
    E__bar = 1 ^ E;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar | B__bar | C__bar | D__bar | E__bar;
}

void NOR2x1_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar;
}

void NOR2x2R_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar;
}

void NOR2x2_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar;
}

void NOR2xp5_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar;
}

void NOR3x1_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar;
}

void NOR3x1f_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar;
}

void NOR3x2_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar;
}

void NOR3xp33_ASAP7_6t_R(int A, int B, int C, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar;
}

void NOR4x3f_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar & D__bar;
}

void NOR4xp25_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar & D__bar;
}

void NOR5x1f_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    int E__bar;
    E__bar = 1 ^ E;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar & D__bar & E__bar;
}

void NOR5xp2_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    int A__bar;
    int B__bar;
    int C__bar;
    int D__bar;
    int E__bar;
    E__bar = 1 ^ E;
    D__bar = 1 ^ D;
    C__bar = 1 ^ C;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    *Y = A__bar & B__bar & C__bar & D__bar & E__bar;
}

void OR2x2_ASAP7_6t_R(int A, int B, int* Y) {
    *Y = A | B;
}

void OR2x3R_ASAP7_6t_R(int A, int B, int* Y) {
    *Y = A | B;
}

void OR2x4_ASAP7_6t_R(int A, int B, int* Y) {
    *Y = A | B;
}

void OR3x1_ASAP7_6t_R(int A, int B, int C, int* Y) {
    *Y = A | B | C;
}

void OR3x2_ASAP7_6t_R(int A, int B, int C, int* Y) {
    *Y = A | B | C;
}

void OR3x4_ASAP7_6t_R(int A, int B, int C, int* Y) {
    *Y = A | B | C;
}

void OR4x1_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    *Y = A | B | C | D;
}

void OR4x2_ASAP7_6t_R(int A, int B, int C, int D, int* Y) {
    *Y = A | B | C | D;
}

void OR5x1_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    *Y = A | B | C | D | E;
}

void OR5x2_ASAP7_6t_R(int A, int B, int C, int D, int E, int* Y) {
    *Y = A | B | C | D | E;
}

void TIEHIxp5_ASAP7_6t_R(int* H) {
}

void TIELOxp5_ASAP7_6t_R(int* L) {
}

void XNOR2x2_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    int_fwire_0 = A__bar & B__bar;
    int_fwire_1 = A & B;
    *Y = int_fwire_1 | int_fwire_0;
}

void XNOR2xp5_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    int_fwire_0 = A__bar & B__bar;
    int_fwire_1 = A & B;
    *Y = int_fwire_1 | int_fwire_0;
}

void XNOR2xp5f_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ B;
    A__bar = 1 ^ A;
    int_fwire_0 = A__bar & B__bar;
    int_fwire_1 = A & B;
    *Y = int_fwire_1 | int_fwire_0;
}

void XOR2x2_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    A__bar = 1 ^ A;
    int_fwire_0 = A__bar & B;
    B__bar = 1 ^ B;
    int_fwire_1 = A & B__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void XOR2xp5_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    A__bar = 1 ^ A;
    int_fwire_0 = A__bar & B;
    B__bar = 1 ^ B;
    int_fwire_1 = A & B__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

void XOR2xp5r_ASAP7_6t_R(int A, int B, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    A__bar = 1 ^ A;
    int_fwire_0 = A__bar & B;
    B__bar = 1 ^ B;
    int_fwire_1 = A & B__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

