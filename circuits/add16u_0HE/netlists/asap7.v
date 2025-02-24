/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:10:55 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110;
  assign O[15] = O[5];
  assign O[7] = A[7];
  assign O[1] = A[13];
  assign O[4] = B[2];
  assign O[3] = B[13];
  assign O[0] = B[11];

  NOR2xp5_ASAP7_6t_R U40 ( .A(B[9]), .B(A[9]), .Y(n38) );
  INVxp5_ASAP7_6t_R U41 ( .A(B[15]), .Y(n66) );
  INVxp5_ASAP7_6t_R U42 ( .A(A[15]), .Y(n65) );
  INVx2_ASAP7_6t_R U43 ( .A(B[10]), .Y(n50) );
  INVx2_ASAP7_6t_R U44 ( .A(n43), .Y(n47) );
  XNOR2xp5_ASAP7_6t_R U45 ( .A(B[11]), .B(A[11]), .Y(n103) );
  OAI21xp5b_ASAP7_6t_R U46 ( .A1(n80), .A2(n79), .B(n78), .Y(n84) );
  XNOR2xp5f_ASAP7_6t_R U47 ( .A(B[15]), .B(A[15]), .Y(n76) );
  NAND2xp5R_ASAP7_6t_R U48 ( .A(n74), .B(n40), .Y(n79) );
  NAND2xp5R_ASAP7_6t_R U49 ( .A(n74), .B(n64), .Y(n68) );
  NAND2xp5R_ASAP7_6t_R U50 ( .A(B[8]), .B(A[8]), .Y(n49) );
  NAND2xp5R_ASAP7_6t_R U51 ( .A(B[15]), .B(A[15]), .Y(n64) );
  OAI21xp5_ASAP7_6t_R U52 ( .A1(n80), .A2(n68), .B(n67), .Y(n69) );
  AOI31xp33_ASAP7_6t_R U53 ( .A1(n37), .A2(n41), .A3(n91), .B(n90), .Y(O[2])
         );
  OAI21xp5_ASAP7_6t_R U54 ( .A1(n38), .A2(n96), .B(n39), .Y(n99) );
  XNOR2xp5_ASAP7_6t_R U55 ( .A(n96), .B(n95), .Y(O[9]) );
  XNOR2xp5_ASAP7_6t_R U56 ( .A(n92), .B(B[8]), .Y(O[8]) );
  AOI22xp5_ASAP7_6t_R U57 ( .A1(n66), .A2(n65), .B1(n64), .B2(n77), .Y(n67) );
  AO21x1_ASAP7_6t_R U58 ( .A1(n108), .A2(n62), .B(n63), .Y(n56) );
  NAND2xp5R_ASAP7_6t_R U59 ( .A(n62), .B(n61), .Y(n75) );
  XNOR2xp5f_ASAP7_6t_R U60 ( .A(B[12]), .B(A[12]), .Y(n105) );
  XNOR2xp5f_ASAP7_6t_R U61 ( .A(B[10]), .B(A[10]), .Y(n98) );
  XNOR2xp5f_ASAP7_6t_R U62 ( .A(B[15]), .B(A[15]), .Y(n40) );
  XNOR2xp5f_ASAP7_6t_R U63 ( .A(A[13]), .B(B[13]), .Y(n110) );
  NAND2xp5R_ASAP7_6t_R U64 ( .A(A[14]), .B(B[14]), .Y(n61) );
  XNOR2xp5f_ASAP7_6t_R U65 ( .A(A[14]), .B(B[14]), .Y(n58) );
  XNOR2xp5f_ASAP7_6t_R U66 ( .A(B[7]), .B(A[8]), .Y(n92) );
  XOR2xp5r_ASAP7_6t_R U67 ( .A(B[9]), .B(A[9]), .Y(n95) );
  INVx1_ASAP7_6t_R U68 ( .A(n35), .Y(n72) );
  NOR2xp5_ASAP7_6t_R U69 ( .A(n73), .B(n87), .Y(n35) );
  INVx2_ASAP7_6t_R U70 ( .A(A[10]), .Y(n51) );
  INVxp5_ASAP7_6t_R U71 ( .A(n79), .Y(n85) );
  INVxp5_ASAP7_6t_R U72 ( .A(n107), .Y(n71) );
  INVxp5_ASAP7_6t_R U73 ( .A(n68), .Y(n70) );
  OA21x1_ASAP7_6t_R U74 ( .A1(n51), .A2(n50), .B(n44), .Y(n36) );
  OA21x1_ASAP7_6t_R U75 ( .A1(n51), .A2(n50), .B(n44), .Y(n37) );
  OA21x1_ASAP7_6t_R U76 ( .A1(n51), .A2(n50), .B(n44), .Y(n102) );
  NAND2x2_ASAP7_6t_R U77 ( .A(A[9]), .B(B[9]), .Y(n44) );
  NAND2xp5R_ASAP7_6t_R U78 ( .A(A[9]), .B(B[9]), .Y(n39) );
  NAND2xp5R_ASAP7_6t_R U79 ( .A(n47), .B(n45), .Y(n41) );
  NOR2x2R_ASAP7_6t_R U80 ( .A(n46), .B(n97), .Y(n45) );
  XNOR2xp5_ASAP7_6t_R U81 ( .A(n42), .B(n110), .Y(O[13]) );
  AOI21x1_ASAP7_6t_R U82 ( .A1(n57), .A2(n109), .B(n108), .Y(n42) );
  AOI21x1_ASAP7_6t_R U83 ( .A1(B[7]), .A2(B[8]), .B(A[8]), .Y(n43) );
  NAND2xp5R_ASAP7_6t_R U84 ( .A(n47), .B(n45), .Y(n87) );
  NOR2x2R_ASAP7_6t_R U85 ( .A(B[9]), .B(A[9]), .Y(n97) );
  NOR2x2R_ASAP7_6t_R U86 ( .A(B[8]), .B(B[7]), .Y(n46) );
  NAND2xp5R_ASAP7_6t_R U87 ( .A(n49), .B(n48), .Y(n94) );
  INVx1_ASAP7_6t_R U88 ( .A(B[7]), .Y(n48) );
  NAND2xp5R_ASAP7_6t_R U89 ( .A(n94), .B(n93), .Y(n96) );
  OAI21xp25_ASAP7_6t_R U90 ( .A1(n89), .A2(n100), .B(n88), .Y(n90) );
  TIEHIxp5_ASAP7_6t_R U91 ( .H(O[6]) );
  INVx4_ASAP7_6t_R U92 ( .A(B[11]), .Y(n53) );
  INVx3_ASAP7_6t_R U93 ( .A(A[11]), .Y(n52) );
  NAND2x2_ASAP7_6t_R U94 ( .A(n53), .B(n52), .Y(n88) );
  INVx4_ASAP7_6t_R U95 ( .A(B[10]), .Y(n55) );
  INVx3_ASAP7_6t_R U96 ( .A(A[10]), .Y(n54) );
  NAND2x2_ASAP7_6t_R U97 ( .A(n55), .B(n54), .Y(n100) );
  NAND2x2_ASAP7_6t_R U98 ( .A(n88), .B(n100), .Y(n73) );
  AND2x4_ASAP7_6t_R U99 ( .A(B[11]), .B(A[11]), .Y(n89) );
  AOI21x1_ASAP7_6t_R U100 ( .A1(B[12]), .A2(A[12]), .B(n89), .Y(n60) );
  OA21x2_ASAP7_6t_R U101 ( .A1(n102), .A2(n73), .B(n60), .Y(n57) );
  NAND2x2_ASAP7_6t_R U102 ( .A(A[13]), .B(B[13]), .Y(n62) );
  NOR2x1_ASAP7_6t_R U103 ( .A(B[12]), .B(A[12]), .Y(n108) );
  NOR2xp5_ASAP7_6t_R U104 ( .A(A[13]), .B(B[13]), .Y(n63) );
  AOI31xp67_ASAP7_6t_R U105 ( .A1(n57), .A2(n72), .A3(n62), .B(n56), .Y(n59)
         );
  XNOR2xp5f_ASAP7_6t_R U106 ( .A(n59), .B(n58), .Y(O[14]) );
  OAI21xp5b_ASAP7_6t_R U107 ( .A1(n36), .A2(n73), .B(n60), .Y(n107) );
  INVx1_ASAP7_6t_R U108 ( .A(n75), .Y(n74) );
  NOR2xp5_ASAP7_6t_R U109 ( .A(n63), .B(n108), .Y(n80) );
  NOR2xp5_ASAP7_6t_R U110 ( .A(A[14]), .B(B[14]), .Y(n77) );
  AOI31xp33_ASAP7_6t_R U111 ( .A1(n72), .A2(n71), .A3(n70), .B(n69), .Y(O[16])
         );
  NOR2xp5_ASAP7_6t_R U112 ( .A(n73), .B(n87), .Y(n106) );
  NOR2xp5_ASAP7_6t_R U113 ( .A(n107), .B(n106), .Y(n86) );
  NOR2xp5_ASAP7_6t_R U114 ( .A(n77), .B(n76), .Y(n81) );
  AOI22xp25_ASAP7_6t_R U115 ( .A1(n77), .A2(n40), .B1(n75), .B2(n81), .Y(n78)
         );
  NAND2xp5_ASAP7_6t_R U116 ( .A(n81), .B(n80), .Y(n82) );
  NOR2xp5_ASAP7_6t_R U117 ( .A(n82), .B(n86), .Y(n83) );
  AOI211xp25_ASAP7_6t_R U118 ( .A1(n86), .A2(n85), .B(n84), .C(n83), .Y(O[5])
         );
  INVx1_ASAP7_6t_R U119 ( .A(n89), .Y(n91) );
  OR2x2_ASAP7_6t_R U120 ( .A(A[8]), .B(B[8]), .Y(n93) );
  XNOR2xp5_ASAP7_6t_R U121 ( .A(n99), .B(n98), .Y(O[10]) );
  INVx1_ASAP7_6t_R U122 ( .A(n100), .Y(n101) );
  AOI21xp5_ASAP7_6t_R U123 ( .A1(n41), .A2(n37), .B(n101), .Y(n104) );
  XNOR2xp5_ASAP7_6t_R U124 ( .A(n104), .B(n103), .Y(O[11]) );
  XNOR2xp5_ASAP7_6t_R U125 ( .A(O[2]), .B(n105), .Y(O[12]) );
  INVx1_ASAP7_6t_R U126 ( .A(n106), .Y(n109) );
endmodule

