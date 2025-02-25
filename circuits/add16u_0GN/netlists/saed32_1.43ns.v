/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:51:00 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36;
  assign O[0] = 1'b1;
  assign O[2] = 1'b1;
  assign O[1] = A[2];

  FADDX1_RVT intadd_0_U11 ( .A(A[6]), .B(B[6]), .CI(intadd_0_n11), .CO(
        intadd_0_n10), .S(O[6]) );
  FADDX1_RVT intadd_0_U10 ( .A(A[7]), .B(B[7]), .CI(intadd_0_n10), .CO(
        intadd_0_n9), .S(O[7]) );
  FADDX1_RVT intadd_0_U9 ( .A(A[8]), .B(B[8]), .CI(intadd_0_n9), .CO(
        intadd_0_n8), .S(O[8]) );
  FADDX1_RVT intadd_0_U8 ( .A(A[9]), .B(B[9]), .CI(intadd_0_n8), .CO(
        intadd_0_n7), .S(O[9]) );
  FADDX1_RVT intadd_0_U7 ( .A(A[10]), .B(B[10]), .CI(intadd_0_n7), .CO(
        intadd_0_n6), .S(O[10]) );
  FADDX1_RVT intadd_0_U6 ( .A(A[11]), .B(B[11]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(O[11]) );
  FADDX1_RVT intadd_0_U5 ( .A(A[12]), .B(B[12]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(O[12]) );
  FADDX1_RVT intadd_0_U4 ( .A(A[13]), .B(B[13]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(O[13]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[14]), .B(B[14]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[14]) );
  XOR3X1_RVT U18 ( .A1(B[4]), .A2(A[4]), .A3(n35), .Y(O[4]) );
  XOR3X1_RVT U19 ( .A1(B[5]), .A2(A[5]), .A3(n25), .Y(O[5]) );
  OR2X1_RVT U20 ( .A1(B[5]), .A2(A[5]), .Y(n34) );
  XOR3X2_RVT U21 ( .A1(A[15]), .A2(B[15]), .A3(intadd_0_n2), .Y(O[15]) );
  INVX0_RVT U22 ( .A(n33), .Y(n29) );
  INVX1_RVT U23 ( .A(n30), .Y(n27) );
  INVX0_RVT U24 ( .A(n35), .Y(n36) );
  OR2X1_RVT U25 ( .A1(n32), .A2(n31), .Y(n30) );
  OR2X1_RVT U26 ( .A1(B[4]), .A2(A[4]), .Y(n28) );
  NAND2X0_RVT U27 ( .A1(n30), .A2(n29), .Y(n25) );
  AO21X1_RVT U28 ( .A1(n33), .A2(n34), .A3(n26), .Y(intadd_0_n11) );
  AO22X1_RVT U29 ( .A1(A[5]), .A2(B[5]), .A3(n27), .A4(n34), .Y(n26) );
  AND2X1_RVT U30 ( .A1(n35), .A2(n28), .Y(n33) );
  AND2X1_RVT U31 ( .A1(B[3]), .A2(A[3]), .Y(n35) );
  INVX1_RVT U32 ( .A(B[4]), .Y(n31) );
  INVX0_RVT U33 ( .A(A[4]), .Y(n32) );
  FADDX1_RVT U34 ( .A(A[15]), .B(B[15]), .CI(intadd_0_n2), .CO(O[16]) );
  OA21X1_RVT U36 ( .A1(A[3]), .A2(B[3]), .A3(n36), .Y(O[3]) );
endmodule

