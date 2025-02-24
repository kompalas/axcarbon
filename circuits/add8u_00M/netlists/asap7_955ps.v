/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:33:35 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n6, n7, n8;
  assign O[0] = O[8];
  assign O[2] = A[7];
  assign O[1] = A[3];
  assign O[4] = B[7];

  XNOR2xp5_ASAP7_6t_R U10 ( .A(O[6]), .B(n8), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U11 ( .A1(A[7]), .A2(B[7]), .B1(n7), .B2(n6), .Y(n8) );
  TIELOxp5_ASAP7_6t_R U12 ( .L(O[3]) );
  AND2x2_ASAP7_6t_R U13 ( .A(B[6]), .B(A[6]), .Y(O[5]) );
  NOR2xp5_ASAP7_6t_R U14 ( .A(B[6]), .B(A[6]), .Y(O[6]) );
  INVxp5_ASAP7_6t_R U15 ( .A(A[7]), .Y(n6) );
  INVxp5_ASAP7_6t_R U16 ( .A(B[7]), .Y(n7) );
  MAJIxp5_ASAP7_6t_R U17 ( .A(O[6]), .B(n6), .C(n7), .Y(O[8]) );
endmodule

