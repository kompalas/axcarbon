void INVX1(int A, int* Y) {
    *Y = 1 ^ A;
}

void DFFNRX1(int D, int* Q) {
}

void NAND2X1(int A1, int A2, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ A2;
    A__bar = 1 ^ A1;
    *Y = A__bar | B__bar;
}

void NOR2X1(int A1, int A2, int* Y) {
    int A__bar;
    int B__bar;
    B__bar = 1 ^ A2;
    A__bar = 1 ^ A1;
    *Y = A__bar & B__bar;
}

void TSBUF(int I, int OE, int* Y) {
}

void AND2X1(int A1, int A2, int* Y) {
    *Y = A1 & A2;
}

void OR2X1(int A1, int A2, int* Y) {
    *Y = A1 | A2;
}

void XNOR2X1(int A1, int A2, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    B__bar = 1 ^ A2;
    A__bar = 1 ^ A1;
    int_fwire_0 = A__bar & B__bar;
    int_fwire_1 = A1 & A2;
    *Y = int_fwire_1 | int_fwire_0;
}

void XOR2X1(int A1, int A2, int* Y) {
    int A__bar;
    int B__bar;
    int int_fwire_0;
    int int_fwire_1;
    A__bar = 1 ^ A1;
    int_fwire_0 = A__bar & A2;
    B__bar = 1 ^ A2;
    int_fwire_1 = A1 & B__bar;
    *Y = int_fwire_1 | int_fwire_0;
}

