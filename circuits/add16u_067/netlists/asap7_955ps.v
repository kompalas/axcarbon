/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:34:13 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n2;
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

  OAI21xp25_ASAP7_6t_R U9 ( .A1(B[15]), .A2(A[15]), .B(A[14]), .Y(n2) );
  TIEHIxp5_ASAP7_6t_R U10 ( .H(O[6]) );
  TIELOxp5_ASAP7_6t_R U11 ( .L(O[12]) );
  INVxp5_ASAP7_6t_R U12 ( .A(n2), .Y(O[5]) );
  OA31x1_ASAP7_6t_R U13 ( .A1(B[15]), .A2(A[15]), .A3(A[14]), .B(n2), .Y(O[15]) );
  AO21x1_ASAP7_6t_R U14 ( .A1(A[15]), .A2(B[15]), .B(O[5]), .Y(O[16]) );
endmodule

