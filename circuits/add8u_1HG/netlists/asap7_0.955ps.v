/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:12:43 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90;

  AND2x2_ASAP7_6t_R U37 ( .A(A[3]), .B(B[3]), .Y(n57) );
  AOI22xp5_ASAP7_6t_R U38 ( .A1(n90), .A2(n89), .B1(n88), .B2(n87), .Y(O[8])
         );
  XOR2xp5_ASAP7_6t_R U39 ( .A(A[4]), .B(B[4]), .Y(n58) );
  NAND2xp5R_ASAP7_6t_R U40 ( .A(A[3]), .B(B[3]), .Y(n33) );
  NAND2xp5R_ASAP7_6t_R U41 ( .A(A[7]), .B(B[7]), .Y(n90) );
  XNOR2xp5f_ASAP7_6t_R U42 ( .A(n81), .B(n80), .Y(O[3]) );
  NOR2xp5_ASAP7_6t_R U43 ( .A(n75), .B(n74), .Y(n77) );
  XOR2xp5r_ASAP7_6t_R U44 ( .A(n71), .B(n34), .Y(O[1]) );
  INVx1_ASAP7_6t_R U45 ( .A(n47), .Y(n50) );
  INVxp5_ASAP7_6t_R U46 ( .A(n69), .Y(n60) );
  XNOR2xp5f_ASAP7_6t_R U47 ( .A(A[3]), .B(B[3]), .Y(n80) );
  XNOR2xp5f_ASAP7_6t_R U48 ( .A(B[1]), .B(A[1]), .Y(n71) );
  INVx4_ASAP7_6t_R U49 ( .A(B[2]), .Y(n31) );
  XOR2xp5r_ASAP7_6t_R U50 ( .A(A[2]), .B(B[2]), .Y(n76) );
  XOR2xp5r_ASAP7_6t_R U51 ( .A(A[7]), .B(B[7]), .Y(n54) );
  XOR2xp5r_ASAP7_6t_R U52 ( .A(A[6]), .B(B[6]), .Y(n43) );
  INVx4_ASAP7_6t_R U53 ( .A(A[2]), .Y(n30) );
  AND2x4_ASAP7_6t_R U54 ( .A(A[5]), .B(B[5]), .Y(n47) );
  NAND2xp5R_ASAP7_6t_R U55 ( .A(n31), .B(n30), .Y(n78) );
  OA21x1_ASAP7_6t_R U56 ( .A1(A[0]), .A2(B[0]), .B(n32), .Y(O[0]) );
  NAND2xp5R_ASAP7_6t_R U57 ( .A(A[0]), .B(B[0]), .Y(n32) );
  NAND2xp5R_ASAP7_6t_R U58 ( .A(A[0]), .B(B[0]), .Y(n34) );
  INVxp5_ASAP7_6t_R U59 ( .A(n72), .Y(n73) );
  NAND2xp5R_ASAP7_6t_R U60 ( .A(A[4]), .B(B[4]), .Y(n35) );
  NAND2xp5R_ASAP7_6t_R U61 ( .A(n40), .B(n83), .Y(n36) );
  INVx1_ASAP7_6t_R U62 ( .A(n87), .Y(n37) );
  AOI211xp5_ASAP7_6t_R U63 ( .A1(A[2]), .A2(B[2]), .B(n75), .C(n72), .Y(n38)
         );
  AOI211xp25_ASAP7_6t_R U64 ( .A1(A[2]), .A2(B[2]), .B(n72), .C(n75), .Y(n39)
         );
  NOR2x2_ASAP7_6t_R U65 ( .A(n70), .B(n41), .Y(n72) );
  AOI211xp5_ASAP7_6t_R U66 ( .A1(A[2]), .A2(B[2]), .B(n75), .C(n72), .Y(n40)
         );
  NOR2x1_ASAP7_6t_R U67 ( .A(n56), .B(n38), .Y(n86) );
  NOR2xp5_ASAP7_6t_R U68 ( .A(n79), .B(n39), .Y(n81) );
  XNOR2xp5_ASAP7_6t_R U69 ( .A(n59), .B(n58), .Y(O[4]) );
  XNOR2xp5_ASAP7_6t_R U70 ( .A(n44), .B(n43), .Y(O[6]) );
  XNOR2xp5_ASAP7_6t_R U71 ( .A(n55), .B(n54), .Y(O[7]) );
  AND2x4_ASAP7_6t_R U72 ( .A(A[1]), .B(B[1]), .Y(n75) );
  NAND2xp5R_ASAP7_6t_R U73 ( .A(A[4]), .B(B[4]), .Y(n61) );
  NAND2xp5R_ASAP7_6t_R U74 ( .A(A[3]), .B(B[3]), .Y(n62) );
  AND2x4_ASAP7_6t_R U75 ( .A(n61), .B(n62), .Y(n83) );
  NOR2x2R_ASAP7_6t_R U76 ( .A(B[1]), .B(A[1]), .Y(n41) );
  NAND2x2_ASAP7_6t_R U77 ( .A(A[0]), .B(B[0]), .Y(n70) );
  NOR2x2R_ASAP7_6t_R U78 ( .A(A[4]), .B(B[4]), .Y(n64) );
  NOR2xp5_ASAP7_6t_R U79 ( .A(A[5]), .B(B[5]), .Y(n46) );
  NOR2xp5_ASAP7_6t_R U80 ( .A(n64), .B(n46), .Y(n42) );
  OAI21xp5b_ASAP7_6t_R U81 ( .A1(A[3]), .A2(B[3]), .B(n78), .Y(n56) );
  NAND2xp5R_ASAP7_6t_R U82 ( .A(n56), .B(n83), .Y(n53) );
  AOI31xp33_ASAP7_6t_R U83 ( .A1(n36), .A2(n42), .A3(n53), .B(n47), .Y(n44) );
  INVx2_ASAP7_6t_R U84 ( .A(A[6]), .Y(n52) );
  INVx2_ASAP7_6t_R U85 ( .A(B[6]), .Y(n51) );
  NAND2xp5R_ASAP7_6t_R U86 ( .A(n52), .B(n51), .Y(n48) );
  INVx2_ASAP7_6t_R U87 ( .A(n64), .Y(n68) );
  NAND2xp5_ASAP7_6t_R U88 ( .A(n48), .B(n68), .Y(n45) );
  NOR2xp5_ASAP7_6t_R U89 ( .A(n46), .B(n45), .Y(n82) );
  INVx1_ASAP7_6t_R U90 ( .A(n48), .Y(n49) );
  OAI22xp5_ASAP7_6t_R U91 ( .A1(n52), .A2(n51), .B1(n50), .B2(n49), .Y(n84) );
  AOI31xp33_ASAP7_6t_R U92 ( .A1(n36), .A2(n82), .A3(n53), .B(n84), .Y(n55) );
  NOR2x1_ASAP7_6t_R U93 ( .A(n57), .B(n86), .Y(n59) );
  XOR2x2_ASAP7_6t_R U94 ( .A(A[5]), .B(B[5]), .Y(n69) );
  NAND2xp5_ASAP7_6t_R U95 ( .A(n83), .B(n60), .Y(n66) );
  OAI211xp33_ASAP7_6t_R U96 ( .A1(n64), .A2(n33), .B(n35), .C(n69), .Y(n63) );
  OAI21xp5_ASAP7_6t_R U97 ( .A1(n64), .A2(n69), .B(n63), .Y(n65) );
  OAI21xp5b_ASAP7_6t_R U98 ( .A1(n66), .A2(n86), .B(n65), .Y(n67) );
  AOI31xp33_ASAP7_6t_R U99 ( .A1(n37), .A2(n69), .A3(n68), .B(n67), .Y(O[5])
         );
  INVx1_ASAP7_6t_R U100 ( .A(n73), .Y(n74) );
  XNOR2xp5_ASAP7_6t_R U101 ( .A(n77), .B(n76), .Y(O[2]) );
  INVxp5_ASAP7_6t_R U102 ( .A(n78), .Y(n79) );
  OAI22xp5_ASAP7_6t_R U103 ( .A1(A[7]), .A2(B[7]), .B1(n84), .B2(n82), .Y(n89)
         );
  NAND2xp5_ASAP7_6t_R U104 ( .A(n83), .B(n90), .Y(n85) );
  NOR2xp5_ASAP7_6t_R U105 ( .A(n85), .B(n84), .Y(n88) );
  INVx1_ASAP7_6t_R U106 ( .A(n86), .Y(n87) );
endmodule

