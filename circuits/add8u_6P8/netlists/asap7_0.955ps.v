/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:16:20 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;

  NOR2xp5_ASAP7_6t_R U28 ( .A(B[7]), .B(A[7]), .Y(n51) );
  OA21x1_ASAP7_6t_R U29 ( .A1(n49), .A2(n51), .B(n48), .Y(n50) );
  XOR2xp5_ASAP7_6t_R U30 ( .A(A[4]), .B(B[4]), .Y(n59) );
  INVxp5_ASAP7_6t_R U31 ( .A(n27), .Y(n28) );
  INVxp5_ASAP7_6t_R U32 ( .A(n23), .Y(n24) );
  XOR2xp5r_ASAP7_6t_R U33 ( .A(n57), .B(n26), .Y(O[3]) );
  NOR2x2R_ASAP7_6t_R U34 ( .A(A[1]), .B(B[1]), .Y(n55) );
  NAND2xp5R_ASAP7_6t_R U35 ( .A(B[6]), .B(A[6]), .Y(n40) );
  XNOR2xp5f_ASAP7_6t_R U36 ( .A(B[3]), .B(A[3]), .Y(n57) );
  NOR2x2R_ASAP7_6t_R U37 ( .A(A[0]), .B(B[0]), .Y(n54) );
  XNOR2xp5f_ASAP7_6t_R U38 ( .A(B[6]), .B(A[6]), .Y(n47) );
  XNOR2xp5f_ASAP7_6t_R U39 ( .A(B[7]), .B(A[7]), .Y(n41) );
  XNOR2xp5f_ASAP7_6t_R U40 ( .A(B[5]), .B(A[5]), .Y(n42) );
  NOR2x2_ASAP7_6t_R U41 ( .A(B[6]), .B(A[6]), .Y(n25) );
  INVxp5_ASAP7_6t_R U42 ( .A(n53), .Y(n23) );
  NAND2x2_ASAP7_6t_R U43 ( .A(B[2]), .B(A[2]), .Y(n26) );
  NAND2xp5R_ASAP7_6t_R U44 ( .A(B[7]), .B(A[7]), .Y(n48) );
  OA21x1_ASAP7_6t_R U45 ( .A1(A[2]), .A2(B[2]), .B(n26), .Y(O[2]) );
  NAND2xp5_ASAP7_6t_R U46 ( .A(n39), .B(n37), .Y(n36) );
  NOR2x2R_ASAP7_6t_R U47 ( .A(n46), .B(n25), .Y(n29) );
  OA21x1_ASAP7_6t_R U48 ( .A1(n25), .A2(n44), .B(n40), .Y(n49) );
  NOR2x2R_ASAP7_6t_R U49 ( .A(B[3]), .B(A[3]), .Y(n32) );
  INVxp5_ASAP7_6t_R U50 ( .A(n52), .Y(n27) );
  NAND2x1_ASAP7_6t_R U51 ( .A(n29), .B(n39), .Y(n53) );
  NOR2x2_ASAP7_6t_R U52 ( .A(A[4]), .B(B[4]), .Y(n46) );
  NAND2x2_ASAP7_6t_R U53 ( .A(n35), .B(n34), .Y(n33) );
  OAI21xp5b_ASAP7_6t_R U54 ( .A1(n52), .A2(n53), .B(n49), .Y(n31) );
  NOR2x2R_ASAP7_6t_R U55 ( .A(n33), .B(n38), .Y(n52) );
  XNOR2xp5f_ASAP7_6t_R U56 ( .A(n30), .B(n47), .Y(O[6]) );
  OAI21xp5b_ASAP7_6t_R U57 ( .A1(n36), .A2(n52), .B(n44), .Y(n30) );
  XNOR2xp5f_ASAP7_6t_R U58 ( .A(n31), .B(n41), .Y(O[7]) );
  NOR2x2R_ASAP7_6t_R U59 ( .A(n32), .B(n56), .Y(n38) );
  NAND2x2_ASAP7_6t_R U60 ( .A(B[2]), .B(A[2]), .Y(n56) );
  NAND2x2_ASAP7_6t_R U61 ( .A(B[3]), .B(A[3]), .Y(n34) );
  NAND2x2_ASAP7_6t_R U62 ( .A(B[4]), .B(A[4]), .Y(n35) );
  NOR2xp5_ASAP7_6t_R U63 ( .A(n46), .B(n52), .Y(n43) );
  INVx1_ASAP7_6t_R U64 ( .A(n46), .Y(n37) );
  NOR2xp5_ASAP7_6t_R U65 ( .A(n58), .B(n38), .Y(n60) );
  INVxp5_ASAP7_6t_R U66 ( .A(n54), .Y(O[0]) );
  NOR2x2R_ASAP7_6t_R U67 ( .A(B[5]), .B(A[5]), .Y(n45) );
  INVx1_ASAP7_6t_R U68 ( .A(n45), .Y(n39) );
  NAND2x2_ASAP7_6t_R U69 ( .A(B[5]), .B(A[5]), .Y(n44) );
  XNOR2xp5f_ASAP7_6t_R U70 ( .A(n43), .B(n42), .Y(O[5]) );
  OAI31xp5f_ASAP7_6t_R U71 ( .A1(n24), .A2(n28), .A3(n51), .B(n50), .Y(O[8])
         );
  INVxp5_ASAP7_6t_R U72 ( .A(n55), .Y(O[1]) );
  AND2x2_ASAP7_6t_R U73 ( .A(A[3]), .B(B[3]), .Y(n58) );
  XNOR2xp5_ASAP7_6t_R U74 ( .A(n60), .B(n59), .Y(O[4]) );
endmodule

