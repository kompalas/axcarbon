/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:27:56 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26;
  assign O[15] = O[1];
  assign O[5] = O[8];
  assign O[9] = A[15];
  assign O[6] = A[3];
  assign O[3] = A[6];
  assign O[2] = A[7];
  assign O[0] = A[9];
  assign O[12] = A[9];
  assign O[11] = B[11];
  assign O[10] = B[10];
  assign O[4] = B[12];

  INVxp5_ASAP7_6t_R U15 ( .A(A[15]), .Y(n26) );
  INVxp5_ASAP7_6t_R U16 ( .A(B[15]), .Y(n25) );
  NOR2x1_ASAP7_6t_R U17 ( .A(A[13]), .B(B[13]), .Y(n22) );
  INVx6_ASAP7_6t_R U18 ( .A(A[14]), .Y(n16) );
  INVx6_ASAP7_6t_R U19 ( .A(B[13]), .Y(n14) );
  INVx4_ASAP7_6t_R U20 ( .A(B[14]), .Y(n12) );
  INVx8_ASAP7_6t_R U21 ( .A(B[14]), .Y(n17) );
  XNOR2xp5f_ASAP7_6t_R U22 ( .A(B[14]), .B(A[14]), .Y(n10) );
  OAI21xp25_ASAP7_6t_R U23 ( .A1(A[15]), .A2(B[15]), .B(n11), .Y(n23) );
  AOI21x1_ASAP7_6t_R U24 ( .A1(n11), .A2(O[8]), .B(n18), .Y(n20) );
  NAND2x2_ASAP7_6t_R U25 ( .A(n13), .B(n12), .Y(n11) );
  INVx11_ASAP7_6t_R U26 ( .A(A[13]), .Y(n15) );
  INVx13_ASAP7_6t_R U27 ( .A(A[14]), .Y(n13) );
  NAND2x2_ASAP7_6t_R U28 ( .A(n15), .B(n14), .Y(O[8]) );
  XNOR2xp5f_ASAP7_6t_R U29 ( .A(n19), .B(n20), .Y(O[1]) );
  NOR2x2R_ASAP7_6t_R U30 ( .A(n17), .B(n16), .Y(n18) );
  NOR2xp5_ASAP7_6t_R U31 ( .A(O[8]), .B(n18), .Y(n24) );
  NOR2xp5_ASAP7_6t_R U32 ( .A(n22), .B(n21), .Y(O[7]) );
  XNOR2xp5f_ASAP7_6t_R U33 ( .A(B[14]), .B(A[14]), .Y(n21) );
  XOR2xp5r_ASAP7_6t_R U34 ( .A(A[15]), .B(B[15]), .Y(n19) );
  TIELOxp5_ASAP7_6t_R U35 ( .L(O[13]) );
  AOI21xp25_ASAP7_6t_R U36 ( .A1(n22), .A2(n10), .B(O[7]), .Y(O[14]) );
  OAI22xp5_ASAP7_6t_R U37 ( .A1(n26), .A2(n25), .B1(n24), .B2(n23), .Y(O[16])
         );
endmodule

