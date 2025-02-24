/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:25:14 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n7, n8, n9, n10;
  assign O[0] = O[8];
  assign O[2] = A[7];
  assign O[1] = A[3];
  assign O[4] = B[7];

  INVx1_ASAP7_6t_R U10 ( .A(A[7]), .Y(n10) );
  INVx1_ASAP7_6t_R U11 ( .A(B[7]), .Y(n9) );
  NOR2xp5_ASAP7_6t_R U12 ( .A(B[7]), .B(A[7]), .Y(n8) );
  AND2x4_ASAP7_6t_R U13 ( .A(A[6]), .B(B[6]), .Y(O[5]) );
  TIELOxp5_ASAP7_6t_R U14 ( .L(O[3]) );
  NOR2x2R_ASAP7_6t_R U15 ( .A(A[6]), .B(B[6]), .Y(O[6]) );
  XNOR2xp5f_ASAP7_6t_R U16 ( .A(B[7]), .B(A[7]), .Y(n7) );
  XOR2xp5r_ASAP7_6t_R U17 ( .A(n7), .B(O[6]), .Y(O[7]) );
  OAI22xp5_ASAP7_6t_R U18 ( .A1(n10), .A2(n9), .B1(O[6]), .B2(n8), .Y(O[8]) );
endmodule

