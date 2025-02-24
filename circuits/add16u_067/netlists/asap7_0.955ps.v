/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 15:29:45 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n2, n3, n4, n5;
  assign O[1] = O[12];
  assign O[3] = A[7];
  assign O[2] = A[8];
  assign O[10] = A[8];
  assign O[14] = B[14];
  assign O[13] = B[10];
  assign O[9] = B[13];
  assign O[11] = B[13];
  assign O[4] = B[11];
  assign O[7] = B[11];
  assign O[8] = B[11];
  assign O[0] = B[2];

  INVx3_ASAP7_6t_R U9 ( .A(A[14]), .Y(n3) );
  NAND2xp5_ASAP7_6t_R U10 ( .A(A[15]), .B(B[15]), .Y(n5) );
  OAI31xp5f_ASAP7_6t_R U11 ( .A1(B[15]), .A2(A[15]), .A3(n3), .B(n2), .Y(O[15]) );
  OAI21xp5b_ASAP7_6t_R U12 ( .A1(B[15]), .A2(A[15]), .B(n3), .Y(n2) );
  INVxp5_ASAP7_6t_R U13 ( .A(n4), .Y(O[5]) );
  TIEHIxp5_ASAP7_6t_R U14 ( .H(O[6]) );
  TIELOxp5_ASAP7_6t_R U15 ( .L(O[12]) );
  OAI21xp5b_ASAP7_6t_R U16 ( .A1(A[15]), .A2(B[15]), .B(A[14]), .Y(n4) );
  NAND2xp5_ASAP7_6t_R U17 ( .A(n5), .B(n4), .Y(O[16]) );
endmodule

