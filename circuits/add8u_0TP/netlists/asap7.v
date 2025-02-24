/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:20:08 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  assign O[2] = O[4];
  assign O[1] = A[4];
  assign O[3] = A[4];
  assign O[0] = B[3];

  NOR2xp5_ASAP7_6t_R U14 ( .A(A[5]), .B(B[5]), .Y(n14) );
  NAND2xp5R_ASAP7_6t_R U15 ( .A(A[6]), .B(B[6]), .Y(n15) );
  OR2x3R_ASAP7_6t_R U16 ( .A(A[6]), .B(B[6]), .Y(n12) );
  NOR2xp5_ASAP7_6t_R U17 ( .A(A[5]), .B(B[5]), .Y(n13) );
  AO21x1_ASAP7_6t_R U18 ( .A1(B[5]), .A2(A[5]), .B(n13), .Y(O[5]) );
  OR2x2_ASAP7_6t_R U19 ( .A(A[5]), .B(B[5]), .Y(n11) );
  NAND2xp5R_ASAP7_6t_R U20 ( .A(B[7]), .B(A[7]), .Y(n21) );
  OAI21xp5_ASAP7_6t_R U21 ( .A1(B[7]), .A2(A[7]), .B(n12), .Y(n22) );
  TIELOxp5_ASAP7_6t_R U22 ( .L(O[4]) );
  XNOR2xp5f_ASAP7_6t_R U23 ( .A(A[6]), .B(B[6]), .Y(n16) );
  NOR2x2R_ASAP7_6t_R U24 ( .A(A[5]), .B(B[5]), .Y(n19) );
  XNOR2xp5f_ASAP7_6t_R U25 ( .A(n16), .B(n11), .Y(O[6]) );
  NOR2x2R_ASAP7_6t_R U26 ( .A(A[6]), .B(B[6]), .Y(n20) );
  NAND2xp5R_ASAP7_6t_R U27 ( .A(A[6]), .B(B[6]), .Y(n23) );
  OAI21xp5_ASAP7_6t_R U28 ( .A1(n20), .A2(n19), .B(n23), .Y(n18) );
  XNOR2xp5f_ASAP7_6t_R U29 ( .A(B[7]), .B(A[7]), .Y(n17) );
  XNOR2xp5f_ASAP7_6t_R U30 ( .A(n18), .B(n17), .Y(O[7]) );
  A2O1A1Ixp33_ASAP7_6t_R U31 ( .A1(n14), .A2(n15), .B(n22), .C(n21), .Y(O[8])
         );
endmodule

