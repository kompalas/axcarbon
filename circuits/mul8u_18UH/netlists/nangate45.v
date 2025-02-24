/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:25:50 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118;
  assign O[0] = 1'b0;
  assign O[3] = 1'b0;
  assign O[6] = 1'b0;
  assign O[9] = 1'b0;
  assign O[2] = O[13];
  assign O[8] = O[10];
  assign O[5] = O[10];
  assign O[4] = O[1];

  INV_X1 U45 ( .A(B[7]), .ZN(n110) );
  NAND2_X1 U46 ( .A1(B[7]), .A2(A[7]), .ZN(n93) );
  OAI21_X2 U47 ( .B1(n99), .B2(n103), .A(n101), .ZN(n107) );
  NAND2_X1 U48 ( .A1(B[7]), .A2(A[6]), .ZN(n89) );
  AND2_X1 U49 ( .A1(A[5]), .A2(B[5]), .ZN(n84) );
  AND2_X1 U50 ( .A1(B[5]), .A2(A[7]), .ZN(n86) );
  INV_X1 U51 ( .A(A[7]), .ZN(n116) );
  AND2_X1 U52 ( .A1(A[7]), .A2(B[3]), .ZN(O[10]) );
  AND2_X4 U53 ( .A1(B[4]), .A2(A[7]), .ZN(n85) );
  AND4_X1 U54 ( .A1(n61), .A2(n60), .A3(n63), .A4(n62), .ZN(n76) );
  AND2_X1 U55 ( .A1(n73), .A2(A[7]), .ZN(n112) );
  AND2_X1 U56 ( .A1(B[6]), .A2(A[5]), .ZN(n53) );
  BUF_X1 U57 ( .A(B[6]), .Z(n73) );
  XOR2_X1 U58 ( .A(n53), .B(n55), .Z(n41) );
  NAND2_X1 U59 ( .A1(A[3]), .A2(B[7]), .ZN(n48) );
  NAND2_X1 U60 ( .A1(B[6]), .A2(A[4]), .ZN(n47) );
  OR2_X1 U61 ( .A1(B[6]), .A2(A[3]), .ZN(n58) );
  OR2_X1 U62 ( .A1(B[6]), .A2(A[3]), .ZN(n43) );
  INV_X1 U63 ( .A(n71), .ZN(n42) );
  OR3_X2 U64 ( .A1(n111), .A2(n110), .A3(n56), .ZN(n118) );
  AND2_X2 U65 ( .A1(n87), .A2(n86), .ZN(n104) );
  AOI21_X1 U66 ( .B1(n106), .B2(n107), .A(n104), .ZN(n44) );
  AND2_X1 U67 ( .A1(A[4]), .A2(B[6]), .ZN(n64) );
  NAND2_X1 U68 ( .A1(n88), .A2(n74), .ZN(n45) );
  XOR2_X1 U69 ( .A(n91), .B(n113), .Z(n46) );
  XNOR2_X1 U70 ( .A(n47), .B(n48), .ZN(n83) );
  XNOR2_X1 U71 ( .A(n50), .B(n49), .ZN(n80) );
  NAND2_X1 U72 ( .A1(B[7]), .A2(A[4]), .ZN(n49) );
  NAND2_X1 U73 ( .A1(B[6]), .A2(A[5]), .ZN(n50) );
  AND2_X1 U74 ( .A1(B[7]), .A2(A[3]), .ZN(n51) );
  AOI21_X1 U75 ( .B1(B[7]), .B2(n43), .A(n53), .ZN(n52) );
  XNOR2_X1 U76 ( .A(n64), .B(n51), .ZN(n54) );
  AND2_X1 U77 ( .A1(B[7]), .A2(A[4]), .ZN(n55) );
  NOR2_X1 U78 ( .A1(n112), .A2(n113), .ZN(n56) );
  AND2_X1 U79 ( .A1(B[7]), .A2(A[5]), .ZN(O[1]) );
  AND2_X1 U80 ( .A1(A[6]), .A2(B[5]), .ZN(O[7]) );
  AND2_X1 U81 ( .A1(A[6]), .A2(n73), .ZN(n77) );
  NAND2_X1 U82 ( .A1(n64), .A2(A[3]), .ZN(n57) );
  NAND4_X1 U83 ( .A1(n57), .A2(n42), .A3(O[1]), .A4(n58), .ZN(n63) );
  NAND2_X1 U84 ( .A1(B[7]), .A2(A[5]), .ZN(n59) );
  INV_X1 U85 ( .A(A[4]), .ZN(n71) );
  NAND2_X1 U86 ( .A1(n59), .A2(n71), .ZN(n62) );
  AND2_X1 U87 ( .A1(n73), .A2(A[3]), .ZN(n68) );
  NAND2_X1 U88 ( .A1(n57), .A2(n68), .ZN(n61) );
  AOI21_X1 U89 ( .B1(n58), .B2(B[7]), .A(n53), .ZN(n70) );
  NAND2_X1 U90 ( .A1(n70), .A2(n59), .ZN(n60) );
  XNOR2_X1 U91 ( .A(n83), .B(n80), .ZN(n67) );
  NAND2_X1 U92 ( .A1(B[5]), .A2(B[4]), .ZN(n66) );
  OAI21_X1 U93 ( .B1(B[5]), .B2(B[4]), .A(A[6]), .ZN(n65) );
  AOI21_X1 U94 ( .B1(n67), .B2(n66), .A(n65), .ZN(n75) );
  INV_X1 U95 ( .A(n68), .ZN(n69) );
  OAI21_X1 U96 ( .B1(n71), .B2(n52), .A(n69), .ZN(n72) );
  AND2_X1 U97 ( .A1(O[1]), .A2(n72), .ZN(n92) );
  XNOR2_X1 U98 ( .A(n89), .B(n92), .ZN(n113) );
  XNOR2_X1 U99 ( .A(n91), .B(n113), .ZN(n88) );
  INV_X1 U100 ( .A(n112), .ZN(n74) );
  AND2_X1 U101 ( .A1(n88), .A2(n74), .ZN(n96) );
  FA_X1 U102 ( .A(n76), .B(n77), .CI(n75), .CO(n91), .S(n87) );
  OR2_X1 U103 ( .A1(n87), .A2(n86), .ZN(n106) );
  INV_X1 U104 ( .A(n85), .ZN(n79) );
  INV_X1 U105 ( .A(n84), .ZN(n78) );
  AND2_X1 U106 ( .A1(n79), .A2(n78), .ZN(n99) );
  NAND2_X1 U107 ( .A1(A[6]), .A2(B[4]), .ZN(n81) );
  XNOR2_X1 U108 ( .A(O[7]), .B(n81), .ZN(n82) );
  FA_X1 U109 ( .A(n82), .B(n41), .CI(n54), .S(n103) );
  NAND2_X1 U110 ( .A1(n85), .A2(n84), .ZN(n101) );
  AOI21_X1 U111 ( .B1(n106), .B2(n107), .A(n104), .ZN(n111) );
  NAND2_X1 U112 ( .A1(n46), .A2(n112), .ZN(n97) );
  OAI21_X1 U113 ( .B1(n44), .B2(n96), .A(n97), .ZN(n95) );
  INV_X1 U114 ( .A(n89), .ZN(n90) );
  OAI21_X1 U115 ( .B1(n91), .B2(n92), .A(n90), .ZN(n114) );
  XNOR2_X1 U116 ( .A(n93), .B(n114), .ZN(n94) );
  XNOR2_X1 U117 ( .A(n95), .B(n94), .ZN(O[14]) );
  AND2_X1 U118 ( .A1(n45), .A2(n97), .ZN(n98) );
  XNOR2_X1 U119 ( .A(n111), .B(n98), .ZN(O[13]) );
  INV_X1 U120 ( .A(n99), .ZN(n100) );
  AND2_X1 U121 ( .A1(n101), .A2(n100), .ZN(n102) );
  XNOR2_X1 U122 ( .A(n103), .B(n102), .ZN(O[11]) );
  INV_X1 U123 ( .A(n104), .ZN(n105) );
  AND2_X1 U124 ( .A1(n106), .A2(n105), .ZN(n109) );
  INV_X1 U125 ( .A(n107), .ZN(n108) );
  XNOR2_X1 U126 ( .A(n109), .B(n108), .ZN(O[12]) );
  NAND2_X1 U127 ( .A1(n113), .A2(n112), .ZN(n115) );
  AND2_X1 U128 ( .A1(n115), .A2(n114), .ZN(n117) );
  AOI21_X1 U129 ( .B1(n118), .B2(n117), .A(n116), .ZN(O[15]) );
endmodule

