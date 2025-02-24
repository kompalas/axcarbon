/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:34:13 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n2;
  assign O[5] = A[5];
  assign O[4] = A[7];
  assign O[1] = A[0];
  assign O[2] = A[0];
  assign O[0] = A[2];

  NAND2xp5_ASAP7_6t_R U8 ( .A(B[7]), .B(A[7]), .Y(n2) );
  TIEHIxp5_ASAP7_6t_R U9 ( .H(O[6]) );
  TIELOxp5_ASAP7_6t_R U10 ( .L(O[3]) );
  INVxp5_ASAP7_6t_R U11 ( .A(n2), .Y(O[8]) );
  OA21x1_ASAP7_6t_R U12 ( .A1(B[7]), .A2(A[7]), .B(n2), .Y(O[7]) );
endmodule

