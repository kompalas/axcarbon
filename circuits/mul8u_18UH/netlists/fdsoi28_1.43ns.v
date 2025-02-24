/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:26:28 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71;
  assign O[0] = 1'b0;
  assign O[3] = 1'b0;
  assign O[6] = 1'b0;
  assign O[9] = 1'b0;
  assign O[2] = O[13];
  assign O[5] = O[10];
  assign O[8] = O[10];
  assign O[1] = O[4];

  FA_X1 intadd_0_U4 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n3), .S(O[11]) );
  FA_X1 intadd_0_U3 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(O[12]) );
  FA_X1 intadd_0_U2 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(O[13]) );
  AND2_X1 U45 ( .A1(A[7]), .A2(B[3]), .ZN(O[10]) );
  AND2_X1 U46 ( .A1(A[7]), .A2(B[4]), .ZN(intadd_0_B_0_) );
  INV_X1 U48 ( .A(B[7]), .ZN(n66) );
  INV_X1 U49 ( .A(A[5]), .ZN(n64) );
  NOR2_X1 U50 ( .A1(n66), .A2(n64), .ZN(O[4]) );
  INV_X1 U51 ( .A(A[6]), .ZN(n49) );
  INV_X1 U52 ( .A(B[5]), .ZN(n63) );
  NOR2_X1 U53 ( .A1(n49), .A2(n63), .ZN(O[7]) );
  NAND2_X1 U54 ( .A1(B[7]), .A2(A[6]), .ZN(n56) );
  NAND2_X1 U55 ( .A1(B[6]), .A2(A[4]), .ZN(n47) );
  NAND2_X1 U56 ( .A1(B[7]), .A2(A[3]), .ZN(n41) );
  XOR2_X1 U57 ( .A(n47), .B(n41), .Z(n51) );
  NAND2_X1 U58 ( .A1(B[6]), .A2(A[5]), .ZN(n43) );
  NAND2_X1 U59 ( .A1(A[4]), .A2(B[7]), .ZN(n42) );
  XOR2_X1 U60 ( .A(n43), .B(n42), .Z(n50) );
  NAND2_X1 U61 ( .A1(n51), .A2(n50), .ZN(n44) );
  OAI21_X1 U62 ( .B1(n47), .B2(n66), .A(n44), .ZN(n45) );
  NAND2_X1 U63 ( .A1(O[4]), .A2(n45), .ZN(n54) );
  NAND2_X1 U64 ( .A1(O[4]), .A2(A[3]), .ZN(n48) );
  OAI21_X1 U65 ( .B1(O[4]), .B2(n45), .A(n54), .ZN(n46) );
  OAI21_X1 U66 ( .B1(n48), .B2(n47), .A(n46), .ZN(n60) );
  INV_X1 U67 ( .A(B[6]), .ZN(n57) );
  NOR2_X1 U68 ( .A1(n57), .A2(n49), .ZN(n59) );
  XOR2_X1 U69 ( .A(n51), .B(n50), .Z(n62) );
  AND2_X1 U70 ( .A1(A[6]), .A2(B[4]), .ZN(n61) );
  INV_X1 U71 ( .A(n52), .ZN(n53) );
  NAND2_X1 U72 ( .A1(n54), .A2(n53), .ZN(n65) );
  OAI21_X1 U73 ( .B1(n54), .B2(n53), .A(n65), .ZN(n55) );
  XOR2_X1 U74 ( .A(n56), .B(n55), .Z(intadd_0_A_2_) );
  INV_X1 U75 ( .A(A[7]), .ZN(n71) );
  NOR2_X1 U76 ( .A1(n71), .A2(n57), .ZN(intadd_0_B_2_) );
  FA_X1 U77 ( .A(n60), .B(n59), .CI(n58), .CO(n52), .S(intadd_0_A_1_) );
  NOR2_X1 U78 ( .A1(n71), .A2(n63), .ZN(intadd_0_B_1_) );
  FA_X1 U79 ( .A(O[7]), .B(n62), .CI(n61), .CO(n58), .S(intadd_0_A_0_) );
  NOR2_X1 U80 ( .A1(n64), .A2(n63), .ZN(intadd_0_CI) );
  NAND3_X1 U81 ( .A1(B[7]), .A2(A[6]), .A3(n65), .ZN(n70) );
  NOR2_X1 U82 ( .A1(n66), .A2(n71), .ZN(n67) );
  NAND3_X1 U83 ( .A1(intadd_0_n1), .A2(B[7]), .A3(A[7]), .ZN(n69) );
  OAI21_X1 U84 ( .B1(intadd_0_n1), .B2(n67), .A(n69), .ZN(n68) );
  XOR2_X1 U85 ( .A(n70), .B(n68), .Z(O[14]) );
  OAI21_X1 U86 ( .B1(n71), .B2(n70), .A(n69), .ZN(O[15]) );
endmodule

