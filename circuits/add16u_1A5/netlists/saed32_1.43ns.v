/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:49:43 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n67, n68, n69, n70,
         n71, n72, n73;

  FADDX1_RVT intadd_0_U12 ( .A(A[5]), .B(B[5]), .CI(intadd_0_n12), .CO(
        intadd_0_n11), .S(O[5]) );
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
  INVX0_RVT U19 ( .A(n71), .Y(n65) );
  OR3X1_RVT U20 ( .A1(n56), .A2(n54), .A3(n60), .Y(n63) );
  NOR2X0_RVT U21 ( .A1(n58), .A2(n59), .Y(n54) );
  NOR2X0_RVT U22 ( .A1(n41), .A2(n58), .Y(n56) );
  OA21X1_RVT U23 ( .A1(n51), .A2(n48), .A3(n47), .Y(n59) );
  XOR3X1_RVT U24 ( .A1(n73), .A2(n34), .A3(n33), .Y(O[1]) );
  INVX1_RVT U25 ( .A(n73), .Y(n48) );
  NAND2X0_RVT U26 ( .A1(A[4]), .A2(B[4]), .Y(n55) );
  NOR2X0_RVT U27 ( .A1(A[4]), .A2(B[4]), .Y(n42) );
  NBUFFX4_RVT U28 ( .A(B[3]), .Y(n31) );
  NBUFFX4_RVT U29 ( .A(A[3]), .Y(n32) );
  OR2X2_RVT U30 ( .A1(n34), .A2(n33), .Y(n71) );
  NAND2X1_RVT U31 ( .A1(n33), .A2(n34), .Y(n38) );
  NBUFFX4_RVT U32 ( .A(B[1]), .Y(n33) );
  NBUFFX4_RVT U33 ( .A(A[1]), .Y(n34) );
  NBUFFX4_RVT U34 ( .A(B[2]), .Y(n35) );
  NBUFFX4_RVT U35 ( .A(A[2]), .Y(n36) );
  INVX0_RVT U36 ( .A(n50), .Y(n47) );
  NAND2X0_RVT U37 ( .A1(n71), .A2(n39), .Y(n51) );
  NOR2X0_RVT U38 ( .A1(n31), .A2(n32), .Y(n58) );
  XOR3X1_RVT U39 ( .A1(n35), .A2(n37), .A3(n36), .Y(O[2]) );
  OR2X1_RVT U40 ( .A1(n65), .A2(n48), .Y(n67) );
  XOR3X1_RVT U41 ( .A1(n32), .A2(n31), .A3(n64), .Y(O[3]) );
  INVX1_RVT U42 ( .A(n59), .Y(n68) );
  NAND2X0_RVT U43 ( .A1(n38), .A2(n67), .Y(n37) );
  AND2X1_RVT U44 ( .A1(B[0]), .A2(A[0]), .Y(n73) );
  OA22X1_RVT U45 ( .A1(n32), .A2(n31), .A3(A[4]), .A4(B[4]), .Y(n53) );
  INVX1_RVT U46 ( .A(n35), .Y(n61) );
  OR2X1_RVT U47 ( .A1(n36), .A2(n35), .Y(n39) );
  INVX1_RVT U48 ( .A(n41), .Y(n69) );
  AO22X2_RVT U49 ( .A1(A[15]), .A2(B[15]), .A3(intadd_0_n2), .A4(n72), .Y(
        O[16]) );
  XOR3X1_RVT U50 ( .A1(A[4]), .A2(B[4]), .A3(n63), .Y(O[4]) );
  OA21X1_RVT U51 ( .A1(n40), .A2(n42), .A3(n55), .Y(n44) );
  INVX0_RVT U52 ( .A(n60), .Y(n40) );
  XOR3X2_RVT U53 ( .A1(A[15]), .A2(B[15]), .A3(intadd_0_n2), .Y(O[15]) );
  NAND2X0_RVT U54 ( .A1(n73), .A2(n53), .Y(n52) );
  NBUFFX2_RVT U55 ( .A(n57), .Y(n41) );
  NAND2X0_RVT U56 ( .A1(n45), .A2(n43), .Y(intadd_0_n12) );
  AND2X1_RVT U57 ( .A1(n31), .A2(n32), .Y(n60) );
  OR2X1_RVT U58 ( .A1(n42), .A2(n57), .Y(n46) );
  AO21X1_RVT U59 ( .A1(n61), .A2(n62), .A3(n70), .Y(n57) );
  AND2X1_RVT U60 ( .A1(n44), .A2(n49), .Y(n43) );
  OA22X1_RVT U61 ( .A1(n51), .A2(n52), .A3(n58), .A4(n46), .Y(n45) );
  NAND2X0_RVT U62 ( .A1(n50), .A2(n53), .Y(n49) );
  AND2X1_RVT U63 ( .A1(n35), .A2(n36), .Y(n50) );
  NAND2X0_RVT U64 ( .A1(n33), .A2(n34), .Y(n70) );
  INVX0_RVT U65 ( .A(n36), .Y(n62) );
  OR2X1_RVT U66 ( .A1(n69), .A2(n68), .Y(n64) );
  OR2X1_RVT U67 ( .A1(A[15]), .A2(B[15]), .Y(n72) );
  OA21X1_RVT U68 ( .A1(A[0]), .A2(B[0]), .A3(n48), .Y(O[0]) );
endmodule

