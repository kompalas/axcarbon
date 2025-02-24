/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:09:03 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76;

  INVx3_ASAP7_6t_R U30 ( .A(A[2]), .Y(n67) );
  INVxp5_ASAP7_6t_R U31 ( .A(A[7]), .Y(n72) );
  INVxp5_ASAP7_6t_R U32 ( .A(B[7]), .Y(n73) );
  INVx8_ASAP7_6t_R U33 ( .A(A[2]), .Y(n42) );
  OAI21xp5_ASAP7_6t_R U34 ( .A1(B[7]), .A2(A[7]), .B(n70), .Y(n75) );
  INVx2_ASAP7_6t_R U35 ( .A(B[3]), .Y(n68) );
  NAND2xp5R_ASAP7_6t_R U36 ( .A(n52), .B(n23), .Y(n59) );
  NAND2x2_ASAP7_6t_R U37 ( .A(B[4]), .B(A[4]), .Y(n62) );
  NOR2x1_ASAP7_6t_R U38 ( .A(A[6]), .B(B[6]), .Y(n61) );
  NAND2x1_ASAP7_6t_R U39 ( .A(n48), .B(n47), .Y(n54) );
  XOR2xp5r_ASAP7_6t_R U40 ( .A(A[6]), .B(B[6]), .Y(n52) );
  XOR2xp5r_ASAP7_6t_R U41 ( .A(B[5]), .B(A[5]), .Y(n65) );
  INVx11_ASAP7_6t_R U42 ( .A(A[3]), .Y(n28) );
  XOR2xp5r_ASAP7_6t_R U43 ( .A(B[4]), .B(A[4]), .Y(n69) );
  INVx3_ASAP7_6t_R U44 ( .A(A[3]), .Y(n24) );
  XOR2xp5r_ASAP7_6t_R U45 ( .A(B[7]), .B(A[7]), .Y(n63) );
  XNOR2xp5f_ASAP7_6t_R U46 ( .A(A[6]), .B(B[6]), .Y(n27) );
  INVx3_ASAP7_6t_R U47 ( .A(A[5]), .Y(n47) );
  NAND2xp5R_ASAP7_6t_R U48 ( .A(B[5]), .B(A[5]), .Y(n23) );
  NAND2xp5R_ASAP7_6t_R U49 ( .A(B[5]), .B(A[5]), .Y(n60) );
  NAND2xp5R_ASAP7_6t_R U50 ( .A(n27), .B(n60), .Y(n55) );
  NAND2xp5_ASAP7_6t_R U51 ( .A(O[1]), .B(n62), .Y(n36) );
  NOR2x2R_ASAP7_6t_R U52 ( .A(n29), .B(n24), .Y(n33) );
  XNOR2xp5f_ASAP7_6t_R U53 ( .A(n39), .B(n69), .Y(O[4]) );
  NAND2xp5R_ASAP7_6t_R U54 ( .A(n48), .B(n47), .Y(n25) );
  INVx8_ASAP7_6t_R U55 ( .A(B[5]), .Y(n48) );
  NOR2x2R_ASAP7_6t_R U56 ( .A(A[5]), .B(B[7]), .Y(n26) );
  NOR2x2_ASAP7_6t_R U57 ( .A(n28), .B(n29), .Y(n45) );
  INVx13_ASAP7_6t_R U58 ( .A(B[2]), .Y(n29) );
  NAND2x2_ASAP7_6t_R U59 ( .A(B[5]), .B(A[5]), .Y(n30) );
  NAND2x2_ASAP7_6t_R U60 ( .A(A[6]), .B(B[6]), .Y(n41) );
  AND2x4_ASAP7_6t_R U61 ( .A(B[5]), .B(A[5]), .Y(n31) );
  NOR2x2R_ASAP7_6t_R U62 ( .A(n43), .B(n42), .Y(n32) );
  NAND2xp5R_ASAP7_6t_R U63 ( .A(n25), .B(n53), .Y(n34) );
  NAND2x1p5_ASAP7_6t_R U64 ( .A(n54), .B(n53), .Y(n38) );
  NAND3x1_ASAP7_6t_R U65 ( .A(n33), .B(n46), .C(n44), .Y(O[1]) );
  NAND3x1_ASAP7_6t_R U66 ( .A(n32), .B(n45), .C(n26), .Y(n76) );
  XNOR2xp5f_ASAP7_6t_R U67 ( .A(n37), .B(n63), .Y(O[7]) );
  NAND2xp5R_ASAP7_6t_R U68 ( .A(n71), .B(n70), .Y(n37) );
  INVx11_ASAP7_6t_R U69 ( .A(B[3]), .Y(n43) );
  NOR2xp5_ASAP7_6t_R U70 ( .A(n34), .B(n52), .Y(n51) );
  AOI21x1_ASAP7_6t_R U71 ( .A1(n38), .A2(n40), .B(n61), .Y(n70) );
  HB1x1_ASAP7_6t_R U72 ( .A(O[1]), .Y(n39) );
  NAND3x1_ASAP7_6t_R U73 ( .A(n76), .B(n40), .C(n62), .Y(n71) );
  NAND2xp5R_ASAP7_6t_R U74 ( .A(O[1]), .B(n62), .Y(n64) );
  AND2x4_ASAP7_6t_R U75 ( .A(n30), .B(n41), .Y(n40) );
  INVxp5_ASAP7_6t_R U76 ( .A(n71), .Y(n74) );
  NAND2xp5R_ASAP7_6t_R U77 ( .A(n53), .B(n64), .Y(n66) );
  OAI211xp33_ASAP7_6t_R U78 ( .A1(n36), .A2(n59), .B(n57), .C(n58), .Y(O[6])
         );
  TIEHIxp5_ASAP7_6t_R U79 ( .H(O[0]) );
  NOR2x2R_ASAP7_6t_R U80 ( .A(n43), .B(n42), .Y(n46) );
  NOR2x2R_ASAP7_6t_R U81 ( .A(A[5]), .B(B[7]), .Y(n44) );
  INVx13_ASAP7_6t_R U82 ( .A(B[4]), .Y(n50) );
  INVx4_ASAP7_6t_R U83 ( .A(A[4]), .Y(n49) );
  NAND2x2_ASAP7_6t_R U84 ( .A(n50), .B(n49), .Y(n53) );
  NAND2xp5_ASAP7_6t_R U85 ( .A(n36), .B(n51), .Y(n58) );
  OAI21xp25_ASAP7_6t_R U86 ( .A1(n53), .A2(n31), .B(n25), .Y(n56) );
  OAI21xp5_ASAP7_6t_R U87 ( .A1(n27), .A2(n56), .B(n55), .Y(n57) );
  XNOR2xp5f_ASAP7_6t_R U88 ( .A(n66), .B(n65), .Y(O[5]) );
  NAND2xp5_ASAP7_6t_R U89 ( .A(n67), .B(n29), .Y(O[2]) );
  NAND2xp5_ASAP7_6t_R U90 ( .A(n68), .B(n24), .Y(O[3]) );
  OAI22xp5_ASAP7_6t_R U91 ( .A1(n75), .A2(n74), .B1(n73), .B2(n72), .Y(O[8])
         );
endmodule

