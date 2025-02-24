/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:21:43 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30;
  assign O[4] = A[4];
  assign O[2] = A[3];
  assign O[1] = A[2];
  assign O[0] = B[0];

  INVxp5_ASAP7_6t_R U18 ( .A(A[7]), .Y(n18) );
  INVxp5_ASAP7_6t_R U19 ( .A(B[7]), .Y(n19) );
  INVx3_ASAP7_6t_R U20 ( .A(A[6]), .Y(n15) );
  XNOR2xp5f_ASAP7_6t_R U21 ( .A(n20), .B(A[5]), .Y(O[5]) );
  INVx2_ASAP7_6t_R U22 ( .A(B[6]), .Y(n14) );
  INVx8_ASAP7_6t_R U23 ( .A(B[4]), .Y(O[3]) );
  XNOR2xp5f_ASAP7_6t_R U24 ( .A(B[4]), .B(B[5]), .Y(n20) );
  XNOR2xp5f_ASAP7_6t_R U25 ( .A(A[6]), .B(B[6]), .Y(n21) );
  XOR2xp5r_ASAP7_6t_R U26 ( .A(A[7]), .B(B[7]), .Y(n29) );
  NAND2xp5R_ASAP7_6t_R U27 ( .A(n15), .B(n14), .Y(n26) );
  AOI21xp5_ASAP7_6t_R U28 ( .A1(O[3]), .A2(n24), .B(n23), .Y(n22) );
  OAI21xp25_ASAP7_6t_R U29 ( .A1(n19), .A2(n18), .B(n17), .Y(O[8]) );
  NOR2x2_ASAP7_6t_R U30 ( .A(B[5]), .B(A[5]), .Y(n23) );
  NAND2x2_ASAP7_6t_R U31 ( .A(A[6]), .B(B[6]), .Y(n25) );
  NAND2x2_ASAP7_6t_R U32 ( .A(A[5]), .B(B[5]), .Y(n24) );
  OAI211xp67b_ASAP7_6t_R U33 ( .A1(n23), .A2(O[3]), .B(n25), .C(n24), .Y(n16)
         );
  OAI211xp33_ASAP7_6t_R U34 ( .A1(A[7]), .A2(B[7]), .B(n26), .C(n16), .Y(n17)
         );
  XNOR2xp5_ASAP7_6t_R U35 ( .A(n22), .B(n21), .Y(O[6]) );
  NOR2x1_ASAP7_6t_R U36 ( .A(O[3]), .B(n23), .Y(n28) );
  NAND2x1_ASAP7_6t_R U37 ( .A(n25), .B(n24), .Y(n27) );
  OAI21xp5_ASAP7_6t_R U38 ( .A1(n28), .A2(n27), .B(n26), .Y(n30) );
  XNOR2xp5_ASAP7_6t_R U39 ( .A(n30), .B(n29), .Y(O[7]) );
endmodule

