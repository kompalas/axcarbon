/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:22:22 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86;
  assign O[0] = O[8];
  assign O[2] = O[8];
  assign O[14] = O[1];
  assign O[11] = O[5];
  assign O[9] = A[8];
  assign O[3] = A[6];
  assign O[7] = B[9];

  NOR2xp5_ASAP7_6t_R U34 ( .A(A[11]), .B(B[11]), .Y(n28) );
  NAND2xp5R_ASAP7_6t_R U35 ( .A(n53), .B(n29), .Y(n52) );
  INVx1_ASAP7_6t_R U36 ( .A(B[9]), .Y(n49) );
  INVx3_ASAP7_6t_R U37 ( .A(A[12]), .Y(n39) );
  INVx2_ASAP7_6t_R U38 ( .A(A[10]), .Y(n53) );
  NOR2x2R_ASAP7_6t_R U39 ( .A(B[10]), .B(A[10]), .Y(n68) );
  NAND2x1p5_ASAP7_6t_R U40 ( .A(n53), .B(n54), .Y(n31) );
  NAND2x2_ASAP7_6t_R U41 ( .A(B[10]), .B(A[10]), .Y(n50) );
  INVxp5_ASAP7_6t_R U42 ( .A(n32), .Y(n65) );
  OAI21xp5_ASAP7_6t_R U43 ( .A1(n32), .A2(n62), .B(n30), .Y(n64) );
  AOI21xp5_ASAP7_6t_R U44 ( .A1(A[14]), .A2(B[14]), .B(n33), .Y(n34) );
  XNOR2xp5_ASAP7_6t_R U45 ( .A(n72), .B(B[10]), .Y(O[10]) );
  XOR2xp5r_ASAP7_6t_R U46 ( .A(A[15]), .B(B[15]), .Y(n57) );
  XOR2xp5r_ASAP7_6t_R U47 ( .A(B[11]), .B(A[11]), .Y(n71) );
  XNOR2xp5f_ASAP7_6t_R U48 ( .A(B[9]), .B(A[10]), .Y(n72) );
  NAND2xp5R_ASAP7_6t_R U49 ( .A(A[9]), .B(B[4]), .Y(O[4]) );
  XNOR2xp5f_ASAP7_6t_R U50 ( .A(A[13]), .B(B[13]), .Y(n59) );
  XNOR2xp5f_ASAP7_6t_R U51 ( .A(A[14]), .B(B[14]), .Y(n66) );
  XNOR2xp5f_ASAP7_6t_R U52 ( .A(A[12]), .B(B[12]), .Y(n75) );
  NAND2xp5R_ASAP7_6t_R U53 ( .A(n46), .B(n45), .Y(n30) );
  INVx2_ASAP7_6t_R U54 ( .A(A[13]), .Y(n45) );
  INVx2_ASAP7_6t_R U55 ( .A(B[13]), .Y(n46) );
  INVx1_ASAP7_6t_R U56 ( .A(B[12]), .Y(n55) );
  AOI22xp5_ASAP7_6t_R U57 ( .A1(B[12]), .A2(A[12]), .B1(A[11]), .B2(B[11]), 
        .Y(n36) );
  NAND2xp5_ASAP7_6t_R U58 ( .A(n31), .B(n51), .Y(n42) );
  NAND2xp5_ASAP7_6t_R U59 ( .A(n62), .B(n61), .Y(n83) );
  NAND2x2_ASAP7_6t_R U60 ( .A(B[9]), .B(B[10]), .Y(n29) );
  AND2x4_ASAP7_6t_R U61 ( .A(A[13]), .B(B[13]), .Y(n32) );
  AND2x4_ASAP7_6t_R U62 ( .A(A[13]), .B(B[13]), .Y(n33) );
  AOI21xp25_ASAP7_6t_R U63 ( .A1(A[14]), .A2(B[14]), .B(n33), .Y(n35) );
  NAND2xp5R_ASAP7_6t_R U64 ( .A(n79), .B(n82), .Y(n80) );
  NAND2x1_ASAP7_6t_R U65 ( .A(A[15]), .B(B[15]), .Y(n82) );
  NAND2xp5R_ASAP7_6t_R U66 ( .A(A[11]), .B(B[11]), .Y(n73) );
  NOR2x2_ASAP7_6t_R U67 ( .A(A[11]), .B(B[11]), .Y(n48) );
  OA21x1_ASAP7_6t_R U68 ( .A1(n55), .A2(n39), .B(n73), .Y(n77) );
  OAI21xp5_ASAP7_6t_R U69 ( .A1(n28), .A2(n74), .B(n73), .Y(n76) );
  AOI21x1_ASAP7_6t_R U70 ( .A1(A[14]), .A2(B[14]), .B(n63), .Y(n37) );
  NAND2xp5R_ASAP7_6t_R U71 ( .A(n46), .B(n45), .Y(n61) );
  NOR2x2R_ASAP7_6t_R U72 ( .A(n47), .B(n48), .Y(n51) );
  NOR2x2_ASAP7_6t_R U73 ( .A(B[9]), .B(B[10]), .Y(n47) );
  NAND2x2_ASAP7_6t_R U74 ( .A(n38), .B(n39), .Y(n62) );
  INVx13_ASAP7_6t_R U75 ( .A(B[12]), .Y(n38) );
  NAND2xp5R_ASAP7_6t_R U76 ( .A(n62), .B(n30), .Y(n40) );
  NAND2xp5R_ASAP7_6t_R U77 ( .A(n31), .B(n51), .Y(n41) );
  NAND2xp5R_ASAP7_6t_R U78 ( .A(n56), .B(n43), .Y(n44) );
  NAND3xp33R_ASAP7_6t_R U79 ( .A(n77), .B(n78), .C(n37), .Y(n43) );
  AND2x4_ASAP7_6t_R U80 ( .A(A[13]), .B(B[13]), .Y(n63) );
  XNOR2xp5f_ASAP7_6t_R U81 ( .A(n44), .B(n57), .Y(O[15]) );
  NAND2xp5R_ASAP7_6t_R U82 ( .A(n50), .B(n49), .Y(n70) );
  NAND2xp5R_ASAP7_6t_R U83 ( .A(n51), .B(n52), .Y(n78) );
  NAND2x2_ASAP7_6t_R U84 ( .A(B[9]), .B(B[10]), .Y(n54) );
  INVxp5_ASAP7_6t_R U85 ( .A(n86), .Y(O[16]) );
  NAND2xp5R_ASAP7_6t_R U86 ( .A(n85), .B(n84), .Y(n86) );
  NAND2xp5R_ASAP7_6t_R U87 ( .A(n70), .B(n69), .Y(n74) );
  INVxp5_ASAP7_6t_R U88 ( .A(n62), .Y(n58) );
  TIEHIxp5_ASAP7_6t_R U89 ( .H(O[6]) );
  TIELOxp5_ASAP7_6t_R U90 ( .L(O[8]) );
  NOR2xp5_ASAP7_6t_R U91 ( .A(A[14]), .B(B[14]), .Y(n79) );
  AOI21xp5_ASAP7_6t_R U92 ( .A1(n37), .A2(n83), .B(n79), .Y(n56) );
  AOI21xp5_ASAP7_6t_R U93 ( .A1(n42), .A2(n36), .B(n58), .Y(n60) );
  XNOR2xp5_ASAP7_6t_R U94 ( .A(n60), .B(n59), .Y(O[13]) );
  AOI31xp33_ASAP7_6t_R U95 ( .A1(n36), .A2(n41), .A3(n65), .B(n64), .Y(n67) );
  XNOR2xp5_ASAP7_6t_R U96 ( .A(n67), .B(n66), .Y(O[1]) );
  INVx1_ASAP7_6t_R U97 ( .A(n68), .Y(n69) );
  XNOR2xp5_ASAP7_6t_R U98 ( .A(n74), .B(n71), .Y(O[5]) );
  XNOR2xp5_ASAP7_6t_R U99 ( .A(n76), .B(n75), .Y(O[12]) );
  NAND4xp25_ASAP7_6t_R U100 ( .A(n41), .B(n36), .C(n34), .D(n82), .Y(n85) );
  OAI21xp5_ASAP7_6t_R U101 ( .A1(A[15]), .A2(B[15]), .B(n80), .Y(n81) );
  AOI31xp33_ASAP7_6t_R U102 ( .A1(n35), .A2(n40), .A3(n82), .B(n81), .Y(n84)
         );
endmodule

