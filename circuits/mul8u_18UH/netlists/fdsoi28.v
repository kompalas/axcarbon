/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:24:31 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n56, n57, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139;
  assign O[0] = 1'b0;
  assign O[3] = 1'b0;
  assign O[6] = 1'b0;
  assign O[9] = 1'b0;
  assign O[2] = O[13];
  assign O[8] = O[10];
  assign O[5] = O[10];
  assign O[4] = O[1];

  INV_X2 U45 ( .A(n133), .ZN(n52) );
  NAND2_X1 U46 ( .A1(n129), .A2(n137), .ZN(n134) );
  XNOR2_X1 U47 ( .A(n103), .B(n119), .ZN(n120) );
  INV_X1 U48 ( .A(n139), .ZN(n137) );
  OAI21_X1 U49 ( .B1(n51), .B2(n83), .A(n130), .ZN(n131) );
  AND2_X2 U50 ( .A1(n113), .A2(n119), .ZN(n78) );
  NAND2_X1 U51 ( .A1(A[7]), .A2(B[7]), .ZN(n139) );
  INV_X1 U52 ( .A(n103), .ZN(n53) );
  NAND2_X1 U53 ( .A1(n112), .A2(n111), .ZN(n116) );
  NAND2_X1 U54 ( .A1(n109), .A2(n110), .ZN(n115) );
  NOR2_X1 U55 ( .A1(n106), .A2(n62), .ZN(n54) );
  NAND2_X2 U56 ( .A1(n61), .A2(B[5]), .ZN(n110) );
  NAND2_X1 U57 ( .A1(A[7]), .A2(B[4]), .ZN(n109) );
  INV_X1 U58 ( .A(n106), .ZN(n126) );
  INV_X1 U59 ( .A(n96), .ZN(n61) );
  INV_X1 U60 ( .A(n88), .ZN(n68) );
  OAI211_X1 U61 ( .C1(n64), .C2(n95), .A(n94), .B(O[1]), .ZN(n47) );
  INV_X1 U62 ( .A(A[3]), .ZN(n94) );
  NAND3_X2 U63 ( .A1(n59), .A2(n133), .A3(n77), .ZN(n42) );
  NAND4_X1 U64 ( .A1(n42), .A2(n135), .A3(n56), .A4(n41), .ZN(O[14]) );
  NAND3_X1 U65 ( .A1(n87), .A2(n134), .A3(n131), .ZN(n41) );
  INV_X2 U66 ( .A(n86), .ZN(n63) );
  XOR2_X2 U67 ( .A(B[6]), .B(A[4]), .Z(n43) );
  BUF_X2 U68 ( .A(n93), .Z(n85) );
  AND2_X4 U69 ( .A1(A[6]), .A2(B[5]), .ZN(O[7]) );
  INV_X4 U70 ( .A(A[5]), .ZN(n96) );
  BUF_X2 U71 ( .A(n85), .Z(n44) );
  INV_X1 U72 ( .A(A[6]), .ZN(n48) );
  INV_X1 U73 ( .A(n131), .ZN(n57) );
  AND2_X4 U74 ( .A1(A[7]), .A2(B[3]), .ZN(O[10]) );
  NAND2_X4 U75 ( .A1(B[6]), .A2(A[6]), .ZN(n106) );
  NAND2_X4 U76 ( .A1(B[7]), .A2(A[6]), .ZN(n127) );
  XNOR2_X2 U77 ( .A(n105), .B(n51), .ZN(n114) );
  AOI21_X4 U78 ( .B1(n85), .B2(n95), .A(n62), .ZN(n46) );
  OR2_X4 U79 ( .A1(n103), .A2(n126), .ZN(n74) );
  AND3_X4 U80 ( .A1(n47), .A2(n46), .A3(n45), .ZN(n103) );
  NAND2_X2 U81 ( .A1(n43), .A2(n75), .ZN(n45) );
  INV_X4 U82 ( .A(n93), .ZN(n64) );
  NOR2_X2 U83 ( .A1(n49), .A2(n48), .ZN(n82) );
  XNOR2_X2 U84 ( .A(B[5]), .B(B[4]), .ZN(n49) );
  AND2_X2 U85 ( .A1(n50), .A2(n96), .ZN(n62) );
  XNOR2_X2 U86 ( .A(n50), .B(n90), .ZN(n81) );
  NAND2_X4 U87 ( .A1(A[4]), .A2(B[7]), .ZN(n50) );
  XNOR2_X2 U88 ( .A(n51), .B(n83), .ZN(n76) );
  NAND2_X4 U89 ( .A1(n80), .A2(n104), .ZN(n51) );
  NAND2_X1 U90 ( .A1(n52), .A2(n134), .ZN(n135) );
  AOI22_X2 U91 ( .A1(n52), .A2(n137), .B1(n136), .B2(A[7]), .ZN(n138) );
  XNOR2_X2 U92 ( .A(n121), .B(n53), .ZN(n79) );
  NOR2_X1 U93 ( .A1(n125), .A2(n54), .ZN(n128) );
  NAND2_X1 U94 ( .A1(n87), .A2(n131), .ZN(n60) );
  NAND3_X1 U95 ( .A1(n57), .A2(n133), .A3(n77), .ZN(n56) );
  INV_X2 U96 ( .A(n87), .ZN(n59) );
  OAI21_X1 U97 ( .B1(n139), .B2(n60), .A(n138), .ZN(O[15]) );
  AND2_X1 U98 ( .A1(A[3]), .A2(A[5]), .ZN(n75) );
  XNOR2_X1 U99 ( .A(n114), .B(n87), .ZN(O[13]) );
  NAND2_X4 U100 ( .A1(n76), .A2(n132), .ZN(n133) );
  AOI21_X4 U101 ( .B1(n80), .B2(n128), .A(n127), .ZN(n136) );
  NAND2_X4 U102 ( .A1(n74), .A2(n73), .ZN(n80) );
  NAND2_X2 U103 ( .A1(n86), .A2(n93), .ZN(n65) );
  NAND2_X4 U104 ( .A1(n63), .A2(n64), .ZN(n66) );
  NAND2_X4 U105 ( .A1(n65), .A2(n66), .ZN(n84) );
  INV_X1 U106 ( .A(n108), .ZN(n88) );
  NAND2_X2 U107 ( .A1(n89), .A2(n88), .ZN(n69) );
  NAND2_X4 U108 ( .A1(n67), .A2(n68), .ZN(n70) );
  NAND2_X4 U109 ( .A1(n69), .A2(n70), .ZN(n118) );
  INV_X2 U110 ( .A(n89), .ZN(n67) );
  XNOR2_X1 U111 ( .A(n118), .B(n117), .ZN(O[11]) );
  AOI21_X4 U112 ( .B1(n72), .B2(n44), .A(n92), .ZN(n125) );
  NAND2_X4 U113 ( .A1(n118), .A2(n115), .ZN(n113) );
  NAND2_X4 U114 ( .A1(B[5]), .A2(B[4]), .ZN(n98) );
  XNOR2_X2 U115 ( .A(n125), .B(n127), .ZN(n71) );
  XNOR2_X2 U116 ( .A(n124), .B(n106), .ZN(n121) );
  NAND3_X4 U117 ( .A1(n101), .A2(n102), .A3(n100), .ZN(n124) );
  INV_X4 U118 ( .A(n71), .ZN(n83) );
  XNOR2_X2 U119 ( .A(n83), .B(n132), .ZN(n105) );
  NAND2_X2 U120 ( .A1(n97), .A2(n84), .ZN(n72) );
  INV_X2 U121 ( .A(n124), .ZN(n73) );
  OAI22_X4 U122 ( .A1(n79), .A2(n78), .B1(n123), .B2(n119), .ZN(n87) );
  XNOR2_X2 U123 ( .A(n136), .B(n139), .ZN(n77) );
  AND2_X4 U124 ( .A1(n113), .A2(n116), .ZN(n123) );
  INV_X4 U125 ( .A(n81), .ZN(n97) );
  XNOR2_X2 U126 ( .A(n97), .B(n82), .ZN(n89) );
  INV_X2 U127 ( .A(n84), .ZN(n108) );
  NAND3_X2 U128 ( .A1(n97), .A2(n98), .A3(n84), .ZN(n102) );
  NAND3_X4 U129 ( .A1(n107), .A2(n108), .A3(n98), .ZN(n101) );
  INV_X4 U130 ( .A(n91), .ZN(n86) );
  NAND2_X4 U131 ( .A1(B[6]), .A2(A[4]), .ZN(n93) );
  INV_X2 U132 ( .A(n97), .ZN(n107) );
  OAI21_X4 U133 ( .B1(A[5]), .B2(A[3]), .A(B[7]), .ZN(n95) );
  AND2_X4 U134 ( .A1(B[7]), .A2(A[5]), .ZN(O[1]) );
  NAND2_X4 U135 ( .A1(B[6]), .A2(A[5]), .ZN(n90) );
  NAND2_X4 U136 ( .A1(B[7]), .A2(A[3]), .ZN(n91) );
  INV_X1 U137 ( .A(O[1]), .ZN(n92) );
  NAND2_X4 U138 ( .A1(B[6]), .A2(A[7]), .ZN(n130) );
  INV_X2 U139 ( .A(n130), .ZN(n132) );
  OAI21_X1 U140 ( .B1(B[5]), .B2(B[4]), .A(A[6]), .ZN(n99) );
  INV_X1 U141 ( .A(n99), .ZN(n100) );
  NAND2_X1 U142 ( .A1(n103), .A2(n126), .ZN(n104) );
  NAND2_X4 U143 ( .A1(A[7]), .A2(B[5]), .ZN(n119) );
  INV_X1 U144 ( .A(n109), .ZN(n112) );
  INV_X1 U145 ( .A(n110), .ZN(n111) );
  NAND2_X1 U146 ( .A1(n116), .A2(n115), .ZN(n117) );
  XNOR2_X1 U147 ( .A(n121), .B(n120), .ZN(n122) );
  XNOR2_X1 U148 ( .A(n123), .B(n122), .ZN(O[12]) );
  INV_X1 U149 ( .A(n136), .ZN(n129) );
endmodule

