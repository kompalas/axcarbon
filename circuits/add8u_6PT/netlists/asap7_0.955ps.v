/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:14:32 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78;

  NAND2x2_ASAP7_6t_R U36 ( .A(A[2]), .B(B[2]), .Y(n29) );
  XOR2xp5_ASAP7_6t_R U37 ( .A(A[4]), .B(B[4]), .Y(n77) );
  NAND2x2_ASAP7_6t_R U38 ( .A(A[5]), .B(B[5]), .Y(n52) );
  INVx2_ASAP7_6t_R U39 ( .A(A[6]), .Y(n50) );
  XNOR2xp5f_ASAP7_6t_R U40 ( .A(n32), .B(n42), .Y(O[3]) );
  XOR2xp5r_ASAP7_6t_R U41 ( .A(n71), .B(n27), .Y(O[2]) );
  INVx1_ASAP7_6t_R U42 ( .A(B[6]), .Y(n49) );
  XNOR2xp5f_ASAP7_6t_R U43 ( .A(A[6]), .B(B[6]), .Y(n47) );
  XNOR2xp5f_ASAP7_6t_R U44 ( .A(A[2]), .B(B[2]), .Y(n71) );
  XNOR2xp5f_ASAP7_6t_R U45 ( .A(B[7]), .B(A[7]), .Y(n57) );
  XOR2xp5r_ASAP7_6t_R U46 ( .A(A[5]), .B(B[5]), .Y(n39) );
  XNOR2xp5f_ASAP7_6t_R U47 ( .A(A[3]), .B(B[3]), .Y(n42) );
  NOR2x2R_ASAP7_6t_R U48 ( .A(A[0]), .B(B[0]), .Y(n69) );
  NAND2xp5R_ASAP7_6t_R U49 ( .A(n53), .B(n54), .Y(n63) );
  NAND2xp5_ASAP7_6t_R U50 ( .A(n45), .B(n54), .Y(n67) );
  OAI21xp5_ASAP7_6t_R U51 ( .A1(B[7]), .A2(A[7]), .B(n59), .Y(n66) );
  INVx1_ASAP7_6t_R U52 ( .A(n68), .Y(n31) );
  HB1x1_ASAP7_6t_R U53 ( .A(n52), .Y(n46) );
  INVxp5_ASAP7_6t_R U54 ( .A(n59), .Y(n56) );
  NAND2xp5R_ASAP7_6t_R U55 ( .A(B[7]), .B(A[7]), .Y(n61) );
  NAND2x1p5_ASAP7_6t_R U56 ( .A(n73), .B(n33), .Y(n53) );
  NAND2x2_ASAP7_6t_R U57 ( .A(B[1]), .B(A[1]), .Y(n27) );
  NAND2x2_ASAP7_6t_R U58 ( .A(B[1]), .B(A[1]), .Y(n70) );
  NAND2x1_ASAP7_6t_R U59 ( .A(n45), .B(n54), .Y(n28) );
  NAND2x1_ASAP7_6t_R U60 ( .A(n52), .B(n51), .Y(n60) );
  AND2x4_ASAP7_6t_R U61 ( .A(n29), .B(n70), .Y(n68) );
  NOR2xp5_ASAP7_6t_R U62 ( .A(n41), .B(n68), .Y(n32) );
  AOI31xp67_ASAP7_6t_R U63 ( .A1(n31), .A2(n76), .A3(n30), .B(n75), .Y(n78) );
  INVx1_ASAP7_6t_R U64 ( .A(n41), .Y(n30) );
  HB1x1_ASAP7_6t_R U65 ( .A(n43), .Y(n36) );
  NAND2xp5R_ASAP7_6t_R U66 ( .A(n50), .B(n49), .Y(n59) );
  OA21x1_ASAP7_6t_R U67 ( .A1(A[1]), .A2(B[1]), .B(n27), .Y(O[1]) );
  HB1x1_ASAP7_6t_R U68 ( .A(n73), .Y(n74) );
  INVxp5_ASAP7_6t_R U69 ( .A(n69), .Y(O[0]) );
  NOR2x2R_ASAP7_6t_R U70 ( .A(A[3]), .B(B[3]), .Y(n72) );
  NOR2x2R_ASAP7_6t_R U71 ( .A(A[2]), .B(B[2]), .Y(n41) );
  NOR2x2R_ASAP7_6t_R U72 ( .A(n72), .B(n41), .Y(n45) );
  INVx1_ASAP7_6t_R U73 ( .A(n45), .Y(n35) );
  NAND2x2_ASAP7_6t_R U74 ( .A(A[3]), .B(B[3]), .Y(n73) );
  NAND2x2_ASAP7_6t_R U75 ( .A(A[4]), .B(B[4]), .Y(n33) );
  INVx1_ASAP7_6t_R U76 ( .A(n53), .Y(n34) );
  OAI21xp5_ASAP7_6t_R U77 ( .A1(n35), .A2(n68), .B(n34), .Y(n38) );
  NOR2x2_ASAP7_6t_R U78 ( .A(A[4]), .B(B[4]), .Y(n43) );
  INVx1_ASAP7_6t_R U79 ( .A(n36), .Y(n37) );
  NAND2xp5R_ASAP7_6t_R U80 ( .A(n38), .B(n37), .Y(n40) );
  XNOR2xp5f_ASAP7_6t_R U81 ( .A(n40), .B(n39), .Y(O[5]) );
  NOR2x2_ASAP7_6t_R U82 ( .A(A[5]), .B(B[5]), .Y(n44) );
  NOR2x2R_ASAP7_6t_R U83 ( .A(n44), .B(n43), .Y(n54) );
  OAI211xp67b_ASAP7_6t_R U84 ( .A1(n28), .A2(n68), .B(n46), .C(n63), .Y(n48)
         );
  XNOR2xp5_ASAP7_6t_R U85 ( .A(n48), .B(n47), .Y(O[6]) );
  NAND2xp5R_ASAP7_6t_R U86 ( .A(A[6]), .B(B[6]), .Y(n51) );
  A2O1A1Ixp33_ASAP7_6t_R U87 ( .A1(n54), .A2(n53), .B(n60), .C(n59), .Y(n55)
         );
  OAI31xp5f_ASAP7_6t_R U88 ( .A1(n67), .A2(n68), .A3(n56), .B(n55), .Y(n58) );
  XNOR2xp5_ASAP7_6t_R U89 ( .A(n58), .B(n57), .Y(O[7]) );
  INVx1_ASAP7_6t_R U90 ( .A(n60), .Y(n62) );
  A2O1A1Ixp33_ASAP7_6t_R U91 ( .A1(n63), .A2(n62), .B(n66), .C(n61), .Y(n64)
         );
  INVx1_ASAP7_6t_R U92 ( .A(n64), .Y(n65) );
  OAI31xp5f_ASAP7_6t_R U93 ( .A1(n68), .A2(n28), .A3(n66), .B(n65), .Y(O[8])
         );
  INVx1_ASAP7_6t_R U94 ( .A(n72), .Y(n76) );
  INVx1_ASAP7_6t_R U95 ( .A(n74), .Y(n75) );
  XNOR2xp5_ASAP7_6t_R U96 ( .A(n78), .B(n77), .Y(O[4]) );
endmodule

