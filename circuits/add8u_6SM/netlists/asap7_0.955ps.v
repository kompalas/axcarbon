/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:18:08 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54;

  INVx3_ASAP7_6t_R U30 ( .A(A[2]), .Y(n34) );
  INVx3_ASAP7_6t_R U31 ( .A(A[1]), .Y(n32) );
  INVxp5_ASAP7_6t_R U32 ( .A(B[3]), .Y(n37) );
  INVxp5_ASAP7_6t_R U33 ( .A(A[3]), .Y(n38) );
  INVxp5_ASAP7_6t_R U34 ( .A(A[7]), .Y(n53) );
  INVxp5_ASAP7_6t_R U35 ( .A(B[7]), .Y(n54) );
  AND2x2_ASAP7_6t_R U36 ( .A(A[5]), .B(B[5]), .Y(n44) );
  INVx2_ASAP7_6t_R U37 ( .A(B[6]), .Y(n29) );
  INVx4_ASAP7_6t_R U38 ( .A(B[2]), .Y(n35) );
  INVx2_ASAP7_6t_R U39 ( .A(A[6]), .Y(n28) );
  INVx4_ASAP7_6t_R U40 ( .A(B[1]), .Y(n33) );
  OAI21xp5_ASAP7_6t_R U41 ( .A1(n54), .A2(n53), .B(n52), .Y(O[8]) );
  XNOR2xp5_ASAP7_6t_R U42 ( .A(n39), .B(n22), .Y(O[4]) );
  NAND2xp5R_ASAP7_6t_R U43 ( .A(n33), .B(n32), .Y(O[1]) );
  NAND2xp5R_ASAP7_6t_R U44 ( .A(n35), .B(n34), .Y(O[2]) );
  XNOR2xp5f_ASAP7_6t_R U45 ( .A(A[4]), .B(B[4]), .Y(n39) );
  XOR2xp5r_ASAP7_6t_R U46 ( .A(B[5]), .B(A[5]), .Y(n42) );
  XOR2xp5r_ASAP7_6t_R U47 ( .A(B[6]), .B(A[6]), .Y(n45) );
  XOR2xp5r_ASAP7_6t_R U48 ( .A(A[7]), .B(B[7]), .Y(n30) );
  NAND2x1_ASAP7_6t_R U49 ( .A(A[6]), .B(B[6]), .Y(n27) );
  NAND2x1_ASAP7_6t_R U50 ( .A(n27), .B(n26), .Y(n49) );
  NAND2xp5R_ASAP7_6t_R U51 ( .A(n29), .B(n28), .Y(n47) );
  OA21x1_ASAP7_6t_R U52 ( .A1(A[7]), .A2(B[7]), .B(n47), .Y(n48) );
  NAND4xp25_ASAP7_6t_R U53 ( .A(B[1]), .B(B[2]), .C(A[1]), .D(A[2]), .Y(n36)
         );
  AND2x4_ASAP7_6t_R U54 ( .A(B[3]), .B(A[3]), .Y(n22) );
  A2O1A1Ixp33_ASAP7_6t_R U55 ( .A1(n51), .A2(n50), .B(n49), .C(n47), .Y(n31)
         );
  NOR2x2R_ASAP7_6t_R U56 ( .A(n25), .B(n40), .Y(n51) );
  XNOR2xp5f_ASAP7_6t_R U57 ( .A(n31), .B(n30), .Y(O[7]) );
  NOR2x2R_ASAP7_6t_R U58 ( .A(A[4]), .B(B[4]), .Y(n40) );
  NOR2x2R_ASAP7_6t_R U59 ( .A(B[5]), .B(A[5]), .Y(n25) );
  NAND2x2_ASAP7_6t_R U60 ( .A(A[4]), .B(B[4]), .Y(n24) );
  NAND2x2_ASAP7_6t_R U61 ( .A(n24), .B(n23), .Y(n50) );
  NAND2x2_ASAP7_6t_R U62 ( .A(B[3]), .B(A[3]), .Y(n23) );
  INVxp5_ASAP7_6t_R U63 ( .A(n40), .Y(n41) );
  TIEHIxp5_ASAP7_6t_R U64 ( .H(O[0]) );
  NAND2xp5R_ASAP7_6t_R U65 ( .A(B[5]), .B(A[5]), .Y(n26) );
  AOI31xp33_ASAP7_6t_R U66 ( .A1(n38), .A2(n37), .A3(n36), .B(n22), .Y(O[3])
         );
  NAND2xp5_ASAP7_6t_R U67 ( .A(n50), .B(n41), .Y(n43) );
  XNOR2xp5_ASAP7_6t_R U68 ( .A(n43), .B(n42), .Y(O[5]) );
  AOI21xp5_ASAP7_6t_R U69 ( .A1(n50), .A2(n51), .B(n44), .Y(n46) );
  XNOR2xp5_ASAP7_6t_R U70 ( .A(n46), .B(n45), .Y(O[6]) );
  A2O1A1Ixp33_ASAP7_6t_R U71 ( .A1(n51), .A2(n50), .B(n49), .C(n48), .Y(n52)
         );
endmodule

