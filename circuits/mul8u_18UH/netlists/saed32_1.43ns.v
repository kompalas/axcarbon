/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:58:57 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  assign O[0] = 1'b0;
  assign O[3] = 1'b0;
  assign O[6] = 1'b0;
  assign O[9] = 1'b0;
  assign O[2] = O[13];
  assign O[5] = O[10];
  assign O[8] = O[10];
  assign O[1] = O[4];

  FADDX1_RVT intadd_0_U4 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n3), .S(O[11]) );
  FADDX1_RVT intadd_0_U3 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(O[12]) );
  FADDX1_RVT intadd_0_U2 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(
        intadd_0_n2), .CO(intadd_0_n1), .S(O[13]) );
  AND2X1_RVT U38 ( .A1(A[7]), .A2(B[7]), .Y(n56) );
  AND2X1_RVT U39 ( .A1(B[7]), .A2(A[5]), .Y(O[4]) );
  NAND3X0_RVT U40 ( .A1(B[6]), .A2(B[7]), .A3(A[4]), .Y(n38) );
  NAND2X0_RVT U41 ( .A1(A[4]), .A2(B[6]), .Y(n35) );
  NAND2X0_RVT U42 ( .A1(A[3]), .A2(B[7]), .Y(n34) );
  HADDX1_RVT U43 ( .A0(n35), .B0(n34), .SO(n43) );
  NAND2X0_RVT U44 ( .A1(B[7]), .A2(A[4]), .Y(n37) );
  NAND2X0_RVT U45 ( .A1(B[6]), .A2(A[5]), .Y(n36) );
  HADDX1_RVT U46 ( .A0(n37), .B0(n36), .SO(n42) );
  NAND2X0_RVT U47 ( .A1(n43), .A2(n42), .Y(n41) );
  NAND2X0_RVT U48 ( .A1(n38), .A2(n41), .Y(n39) );
  NAND2X0_RVT U49 ( .A1(O[4]), .A2(n39), .Y(n48) );
  AND3X1_RVT U50 ( .A1(A[4]), .A2(B[6]), .A3(A[3]), .Y(n40) );
  AO222X1_RVT U51 ( .A1(O[4]), .A2(n48), .A3(O[4]), .A4(n40), .A5(n48), .A6(
        n39), .Y(n52) );
  AND2X1_RVT U52 ( .A1(B[6]), .A2(A[6]), .Y(n51) );
  AND2X1_RVT U53 ( .A1(A[6]), .A2(B[5]), .Y(O[7]) );
  OA21X1_RVT U54 ( .A1(n43), .A2(n42), .A3(n41), .Y(n54) );
  AND2X1_RVT U55 ( .A1(A[6]), .A2(B[4]), .Y(n53) );
  INVX1_RVT U56 ( .A(n49), .Y(n44) );
  NAND2X0_RVT U57 ( .A1(n48), .A2(n44), .Y(n45) );
  AND3X1_RVT U58 ( .A1(B[7]), .A2(A[6]), .A3(n45), .Y(n55) );
  OR2X1_RVT U59 ( .A1(intadd_0_n1), .A2(n55), .Y(n46) );
  AND2X1_RVT U60 ( .A1(n56), .A2(n46), .Y(O[15]) );
  AND2X1_RVT U62 ( .A1(A[7]), .A2(B[3]), .Y(O[10]) );
  NAND2X0_RVT U63 ( .A1(B[7]), .A2(A[6]), .Y(n47) );
  FADDX1_RVT U64 ( .A(n49), .B(n48), .CI(n47), .S(intadd_0_A_2_) );
  AND2X1_RVT U65 ( .A1(A[7]), .A2(B[6]), .Y(intadd_0_B_2_) );
  FADDX1_RVT U66 ( .A(n52), .B(n51), .CI(n50), .CO(n49), .S(intadd_0_A_1_) );
  AND2X1_RVT U67 ( .A1(A[7]), .A2(B[5]), .Y(intadd_0_B_1_) );
  FADDX1_RVT U68 ( .A(O[7]), .B(n54), .CI(n53), .CO(n50), .S(intadd_0_A_0_) );
  AND2X1_RVT U69 ( .A1(A[5]), .A2(B[5]), .Y(intadd_0_B_0_) );
  AND2X1_RVT U70 ( .A1(A[7]), .A2(B[4]), .Y(intadd_0_CI) );
  FADDX1_RVT U71 ( .A(intadd_0_n1), .B(n56), .CI(n55), .S(O[14]) );
endmodule

