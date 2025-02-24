/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:26:52 2025
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
  INV_X1 U48 ( .A(B[7]), .ZN(n45) );
  INV_X1 U49 ( .A(A[5]), .ZN(n65) );
  NOR2_X1 U50 ( .A1(n45), .A2(n65), .ZN(O[4]) );
  INV_X1 U51 ( .A(A[6]), .ZN(n50) );
  INV_X1 U52 ( .A(B[5]), .ZN(n64) );
  NOR2_X1 U53 ( .A1(n50), .A2(n64), .ZN(O[7]) );
  NAND2_X1 U54 ( .A1(B[7]), .A2(A[6]), .ZN(n57) );
  NAND2_X1 U55 ( .A1(B[6]), .A2(A[4]), .ZN(n48) );
  NAND2_X1 U56 ( .A1(B[7]), .A2(A[3]), .ZN(n41) );
  XOR2_X1 U57 ( .A(n48), .B(n41), .Z(n52) );
  NAND2_X1 U58 ( .A1(B[6]), .A2(A[5]), .ZN(n43) );
  NAND2_X1 U59 ( .A1(A[4]), .A2(B[7]), .ZN(n42) );
  XOR2_X1 U60 ( .A(n43), .B(n42), .Z(n51) );
  NAND2_X1 U61 ( .A1(n52), .A2(n51), .ZN(n44) );
  OAI21_X1 U62 ( .B1(n48), .B2(n45), .A(n44), .ZN(n46) );
  NAND2_X1 U63 ( .A1(O[4]), .A2(n46), .ZN(n55) );
  NAND2_X1 U64 ( .A1(O[4]), .A2(A[3]), .ZN(n49) );
  OAI21_X1 U65 ( .B1(O[4]), .B2(n46), .A(n55), .ZN(n47) );
  OAI21_X1 U66 ( .B1(n49), .B2(n48), .A(n47), .ZN(n61) );
  INV_X1 U67 ( .A(B[6]), .ZN(n58) );
  NOR2_X1 U68 ( .A1(n58), .A2(n50), .ZN(n60) );
  XOR2_X1 U69 ( .A(n52), .B(n51), .Z(n63) );
  AND2_X1 U70 ( .A1(A[6]), .A2(B[4]), .ZN(n62) );
  INV_X1 U71 ( .A(n53), .ZN(n54) );
  NAND2_X1 U72 ( .A1(n55), .A2(n54), .ZN(n66) );
  OAI21_X1 U73 ( .B1(n55), .B2(n54), .A(n66), .ZN(n56) );
  XOR2_X1 U74 ( .A(n57), .B(n56), .Z(intadd_0_A_2_) );
  INV_X1 U75 ( .A(A[7]), .ZN(n69) );
  NOR2_X1 U76 ( .A1(n58), .A2(n69), .ZN(intadd_0_B_2_) );
  FA_X1 U77 ( .A(n61), .B(n60), .CI(n59), .CO(n53), .S(intadd_0_A_1_) );
  NOR2_X1 U78 ( .A1(n69), .A2(n64), .ZN(intadd_0_B_1_) );
  FA_X1 U79 ( .A(O[7]), .B(n63), .CI(n62), .CO(n59), .S(intadd_0_A_0_) );
  NOR2_X1 U80 ( .A1(n65), .A2(n64), .ZN(intadd_0_CI) );
  NAND3_X1 U81 ( .A1(B[7]), .A2(A[6]), .A3(n66), .ZN(n71) );
  NAND2_X1 U82 ( .A1(A[7]), .A2(B[7]), .ZN(n67) );
  XNOR2_X1 U83 ( .A(n71), .B(n67), .ZN(n68) );
  XNOR2_X1 U84 ( .A(intadd_0_n1), .B(n68), .ZN(O[14]) );
  NAND2_X1 U85 ( .A1(intadd_0_n1), .A2(B[7]), .ZN(n70) );
  AOI21_X1 U86 ( .B1(n71), .B2(n70), .A(n69), .ZN(O[15]) );
endmodule

