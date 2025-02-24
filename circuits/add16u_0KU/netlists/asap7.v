/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:22:22 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53;
  assign O[5] = A[10];
  assign O[1] = A[6];
  assign O[10] = A[6];
  assign O[11] = A[11];
  assign O[8] = B[6];
  assign O[7] = B[9];
  assign O[4] = B[12];
  assign O[2] = B[7];
  assign O[0] = B[13];
  assign O[9] = \O[3] ;
  assign O[3] = \O[3] ;

  INVxp5_ASAP7_6t_R U22 ( .A(A[15]), .Y(n37) );
  INVxp5_ASAP7_6t_R U23 ( .A(B[15]), .Y(n38) );
  INVx4_ASAP7_6t_R U24 ( .A(B[12]), .Y(n28) );
  XNOR2xp5f_ASAP7_6t_R U25 ( .A(n48), .B(n47), .Y(O[13]) );
  XNOR2xp5_ASAP7_6t_R U26 ( .A(n44), .B(B[12]), .Y(O[12]) );
  XOR2xp5r_ASAP7_6t_R U27 ( .A(A[15]), .B(B[15]), .Y(O[6]) );
  XNOR2xp5f_ASAP7_6t_R U28 ( .A(A[12]), .B(B[11]), .Y(n44) );
  XOR2xp5r_ASAP7_6t_R U29 ( .A(A[13]), .B(B[13]), .Y(n47) );
  XNOR2xp5f_ASAP7_6t_R U30 ( .A(B[14]), .B(A[14]), .Y(n52) );
  OAI21xp5_ASAP7_6t_R U31 ( .A1(A[13]), .A2(B[13]), .B(n45), .Y(n50) );
  XOR2xp5_ASAP7_6t_R U32 ( .A(A[15]), .B(B[15]), .Y(n25) );
  OAI21xp5b_ASAP7_6t_R U33 ( .A1(A[13]), .A2(B[13]), .B(n45), .Y(n19) );
  NAND2x2_ASAP7_6t_R U34 ( .A(B[14]), .B(A[14]), .Y(n20) );
  NAND2xp5R_ASAP7_6t_R U35 ( .A(B[14]), .B(A[14]), .Y(n32) );
  AO21x1_ASAP7_6t_R U36 ( .A1(A[12]), .A2(B[12]), .B(B[11]), .Y(n21) );
  AO21x1_ASAP7_6t_R U37 ( .A1(A[12]), .A2(B[12]), .B(B[11]), .Y(n22) );
  AO21x1_ASAP7_6t_R U38 ( .A1(A[12]), .A2(B[12]), .B(B[11]), .Y(n46) );
  NAND2xp5R_ASAP7_6t_R U39 ( .A(A[13]), .B(B[13]), .Y(n23) );
  NAND2xp5R_ASAP7_6t_R U40 ( .A(A[13]), .B(B[13]), .Y(n24) );
  XOR2xp5r_ASAP7_6t_R U41 ( .A(A[15]), .B(B[15]), .Y(n26) );
  OA21x1_ASAP7_6t_R U42 ( .A1(A[13]), .A2(B[13]), .B(n45), .Y(n27) );
  NAND2x1_ASAP7_6t_R U43 ( .A(n49), .B(n20), .Y(n40) );
  INVx13_ASAP7_6t_R U44 ( .A(A[12]), .Y(n29) );
  NOR2x1_ASAP7_6t_R U45 ( .A(n40), .B(n46), .Y(n33) );
  OAI21xp25_ASAP7_6t_R U46 ( .A1(n38), .A2(n37), .B(n36), .Y(O[16]) );
  AOI21xp25_ASAP7_6t_R U47 ( .A1(n43), .A2(n42), .B(\O[3] ), .Y(O[15]) );
  AOI21xp25_ASAP7_6t_R U48 ( .A1(n40), .A2(n41), .B(n25), .Y(n43) );
  NAND2x2_ASAP7_6t_R U49 ( .A(n29), .B(n28), .Y(n45) );
  NAND2x2_ASAP7_6t_R U50 ( .A(A[13]), .B(B[13]), .Y(n49) );
  AND2x2_ASAP7_6t_R U51 ( .A(n32), .B(n23), .Y(n35) );
  INVx1_ASAP7_6t_R U52 ( .A(B[14]), .Y(n31) );
  INVx1_ASAP7_6t_R U53 ( .A(A[14]), .Y(n30) );
  NAND2xp5R_ASAP7_6t_R U54 ( .A(n31), .B(n30), .Y(n41) );
  NAND2xp5R_ASAP7_6t_R U55 ( .A(n26), .B(n41), .Y(n34) );
  AOI211xp5_ASAP7_6t_R U56 ( .A1(n50), .A2(n35), .B(n34), .C(n33), .Y(\O[3] )
         );
  INVx1_ASAP7_6t_R U57 ( .A(\O[3] ), .Y(n36) );
  NAND3xp33_ASAP7_6t_R U58 ( .A(n27), .B(n22), .C(n41), .Y(n42) );
  NAND2xp5R_ASAP7_6t_R U59 ( .A(n21), .B(n45), .Y(n48) );
  AOI21xp5_ASAP7_6t_R U60 ( .A1(A[12]), .A2(B[12]), .B(B[11]), .Y(n51) );
  OAI21xp5_ASAP7_6t_R U61 ( .A1(n51), .A2(n19), .B(n24), .Y(n53) );
  XNOR2xp5_ASAP7_6t_R U62 ( .A(n53), .B(n52), .Y(O[14]) );
endmodule

