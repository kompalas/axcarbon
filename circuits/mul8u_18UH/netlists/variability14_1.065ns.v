/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:26:05 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74;
  assign O[0] = 1'b0;
  assign O[3] = 1'b0;
  assign O[6] = 1'b0;
  assign O[9] = 1'b0;
  assign O[2] = O[13];
  assign O[5] = O[10];
  assign O[8] = O[10];
  assign O[1] = O[4];

  FA_X1 intadd_0_U4 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n3), .S(O[11]) );
  FA_X1 intadd_0_U3 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(O[12]) );
  FA_X1 intadd_0_U2 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(O[13]) );
  INV_X1 U45 ( .I(A[7]), .ZN(n74) );
  INV_X1 U46 ( .I(B[4]), .ZN(n57) );
  NOR2_X1 U47 ( .A1(n74), .A2(n57), .ZN(intadd_0_CI) );
  AND2_X1 U48 ( .A1(A[5]), .A2(B[5]), .Z(intadd_0_B_0_) );
  INV_X1 U49 ( .I(B[5]), .ZN(n41) );
  NOR2_X1 U50 ( .A1(n74), .A2(n41), .ZN(intadd_0_B_1_) );
  INV_X1 U51 ( .I(B[6]), .ZN(n54) );
  NOR2_X1 U52 ( .A1(n74), .A2(n54), .ZN(intadd_0_B_2_) );
  INV_X1 U53 ( .I(A[6]), .ZN(n58) );
  NOR2_X1 U54 ( .A1(n58), .A2(n41), .ZN(O[7]) );
  NAND2_X1 U55 ( .A1(B[7]), .A2(A[5]), .ZN(n53) );
  INV_X1 U56 ( .I(n53), .ZN(O[4]) );
  AND2_X1 U58 ( .A1(A[7]), .A2(B[3]), .Z(O[10]) );
  NAND2_X1 U59 ( .A1(B[7]), .A2(A[6]), .ZN(n63) );
  NAND3_X1 U60 ( .A1(B[7]), .A2(A[4]), .A3(B[6]), .ZN(n47) );
  NAND2_X1 U61 ( .A1(B[6]), .A2(A[5]), .ZN(n43) );
  NAND2_X1 U62 ( .A1(B[7]), .A2(A[4]), .ZN(n42) );
  XOR2_X1 U63 ( .A1(n43), .A2(n42), .Z(n56) );
  NAND2_X1 U64 ( .A1(B[7]), .A2(A[3]), .ZN(n45) );
  NAND2_X1 U65 ( .A1(A[4]), .A2(B[6]), .ZN(n48) );
  INV_X1 U66 ( .I(n47), .ZN(n44) );
  AOI22_X1 U67 ( .A1(n45), .A2(n48), .B1(n44), .B2(A[3]), .ZN(n55) );
  NAND2_X1 U68 ( .A1(n56), .A2(n55), .ZN(n46) );
  NAND2_X1 U69 ( .A1(n47), .A2(n46), .ZN(n52) );
  NAND2_X1 U70 ( .A1(O[4]), .A2(n52), .ZN(n61) );
  INV_X1 U71 ( .I(n52), .ZN(n51) );
  INV_X1 U72 ( .I(n48), .ZN(n49) );
  AOI21_X1 U73 ( .A1(A[3]), .A2(n49), .B(n53), .ZN(n50) );
  OAI22_X1 U74 ( .A1(n53), .A2(n52), .B1(n51), .B2(n50), .ZN(n66) );
  NOR2_X1 U75 ( .A1(n54), .A2(n58), .ZN(n65) );
  XOR2_X1 U76 ( .A1(n56), .A2(n55), .Z(n68) );
  NOR2_X1 U77 ( .A1(n58), .A2(n57), .ZN(n67) );
  INV_X1 U78 ( .I(n59), .ZN(n60) );
  NAND2_X1 U79 ( .A1(n61), .A2(n60), .ZN(n69) );
  OAI21_X1 U80 ( .A1(n61), .A2(n60), .B(n69), .ZN(n62) );
  XOR2_X1 U81 ( .A1(n63), .A2(n62), .Z(intadd_0_A_2_) );
  FA_X1 U82 ( .A(n66), .B(n65), .CI(n64), .CO(n59), .S(intadd_0_A_1_) );
  FA_X1 U83 ( .A(O[7]), .B(n68), .CI(n67), .CO(n64), .S(intadd_0_A_0_) );
  NAND3_X1 U84 ( .A1(B[7]), .A2(A[6]), .A3(n69), .ZN(n73) );
  AND2_X1 U85 ( .A1(B[7]), .A2(A[7]), .Z(n70) );
  NAND3_X1 U86 ( .A1(intadd_0_n1), .A2(B[7]), .A3(A[7]), .ZN(n72) );
  OAI21_X1 U87 ( .A1(intadd_0_n1), .A2(n70), .B(n72), .ZN(n71) );
  XOR2_X1 U88 ( .A1(n73), .A2(n71), .Z(O[14]) );
  OAI21_X1 U89 ( .A1(n74), .A2(n73), .B(n72), .ZN(O[15]) );
endmodule

