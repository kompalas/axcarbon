/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:25:34 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65;
  assign O[0] = O[9];
  assign O[3] = O[9];
  assign O[6] = O[9];
  assign O[2] = O[13];
  assign O[5] = O[10];
  assign O[8] = O[10];
  assign O[1] = O[4];

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_CI), .B(intadd_0_A_0_), .CI(
        intadd_0_B_0_), .CO(intadd_0_n3), .S(O[11]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(intadd_0_A_1_), .CI(
        intadd_0_B_1_), .CO(intadd_0_n2), .S(O[12]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(intadd_0_A_2_), .CI(
        intadd_0_B_2_), .CO(intadd_0_n1), .S(O[13]) );
  SAEDRVT14_TIE0_V1_2 U43 ( .X(O[9]) );
  SAEDRVT14_AOI21_0P75 U44 ( .A1(B[6]), .A2(A[5]), .B(n44), .X(n39) );
  SAEDRVT14_AN2_MM_0P5 U45 ( .A1(B[7]), .A2(A[4]), .X(n44) );
  SAEDRVT14_AOI21_0P75 U46 ( .A1(n47), .A2(n49), .B(n45), .X(n51) );
  SAEDRVT14_NR2_1 U47 ( .A1(n51), .A2(n52), .X(n63) );
  SAEDRVT14_AN2_MM_0P5 U48 ( .A1(A[6]), .A2(B[4]), .X(n60) );
  SAEDRVT14_NR2_1 U49 ( .A1(n43), .A2(n42), .X(n58) );
  SAEDRVT14_AOI21_0P75 U50 ( .A1(n50), .A2(n49), .B(n48), .X(n57) );
  SAEDRVT14_AOI21_0P75 U51 ( .A1(B[6]), .A2(n44), .B(O[4]), .X(n50) );
  SAEDRVT14_AOI21_0P75 U52 ( .A1(n52), .A2(n51), .B(n63), .X(n53) );
  SAEDRVT14_NR2_1 U53 ( .A1(n42), .A2(n55), .X(O[7]) );
  SAEDRVT14_AN2_MM_0P5 U54 ( .A1(A[5]), .A2(B[5]), .X(intadd_0_B_0_) );
  SAEDRVT14_AN2_MM_0P5 U55 ( .A1(A[7]), .A2(B[4]), .X(intadd_0_CI) );
  SAEDRVT14_NR2_1 U56 ( .A1(n56), .A2(n55), .X(intadd_0_B_1_) );
  SAEDRVT14_NR2_1 U57 ( .A1(n56), .A2(n43), .X(intadd_0_B_2_) );
  SAEDRVT14_INV_0P5 U58 ( .A(A[7]), .X(n56) );
  SAEDRVT14_INV_0P5 U59 ( .A(B[6]), .X(n43) );
  SAEDRVT14_INV_0P5 U60 ( .A(A[6]), .X(n42) );
  SAEDRVT14_INV_0P5 U61 ( .A(B[5]), .X(n55) );
  SAEDRVT14_ND2_CDC_0P5 U62 ( .A1(B[7]), .A2(A[5]), .X(n45) );
  SAEDRVT14_INV_0P5 U63 ( .A(n45), .X(O[4]) );
  SAEDRVT14_ND2_CDC_0P5 U64 ( .A1(B[7]), .A2(A[6]), .X(n62) );
  SAEDRVT14_INV_0P5 U65 ( .A(n62), .X(n54) );
  SAEDRVT14_ND2_CDC_0P5 U66 ( .A1(B[6]), .A2(A[4]), .X(n47) );
  SAEDRVT14_ND2_CDC_0P5 U67 ( .A1(B[7]), .A2(A[3]), .X(n46) );
  SAEDRVT14_EO2_V1_0P75 U68 ( .A1(n47), .A2(n46), .X(n41) );
  SAEDRVT14_OA21B_1 U69 ( .A1(n47), .A2(n45), .B(n39), .X(n40) );
  SAEDRVT14_ND2_CDC_0P5 U70 ( .A1(n41), .A2(n40), .X(n49) );
  SAEDRVT14_OA21_1 U71 ( .A1(n41), .A2(n40), .B(n49), .X(n61) );
  SAEDRVT14_OA21_1 U72 ( .A1(n47), .A2(n46), .B(n51), .X(n48) );
  SAEDRVT14_MUXI2_U_0P5 U73 ( .D0(n62), .D1(n54), .S(n53), .X(intadd_0_A_2_)
         );
  SAEDRVT14_ADDF_V1_0P5 U74 ( .A(n59), .B(n58), .CI(n57), .CO(n52), .S(
        intadd_0_A_1_) );
  SAEDRVT14_ADDF_V1_0P5 U75 ( .A(O[7]), .B(n61), .CI(n60), .CO(n59), .S(
        intadd_0_A_0_) );
  SAEDRVT14_AN2_MM_0P5 U76 ( .A1(A[7]), .A2(B[3]), .X(O[10]) );
  SAEDRVT14_NR2_1 U77 ( .A1(n63), .A2(n62), .X(n65) );
  SAEDRVT14_ND2_CDC_0P5 U78 ( .A1(B[7]), .A2(A[7]), .X(n64) );
  SAEDRVT14_EN3_U_0P5 U79 ( .A1(intadd_0_n1), .A2(n65), .A3(n64), .X(O[14]) );
  SAEDRVT14_AO32_U_0P5 U80 ( .A1(A[7]), .A2(B[7]), .A3(intadd_0_n1), .B1(A[7]), 
        .B2(n65), .X(O[15]) );
endmodule

