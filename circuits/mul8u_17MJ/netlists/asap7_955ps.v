/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:33:40 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4;
  assign O[0] = O[10];
  assign O[1] = O[10];
  assign O[2] = O[10];
  assign O[3] = O[10];
  assign O[4] = O[10];
  assign O[5] = O[10];
  assign O[6] = O[10];
  assign O[8] = O[10];
  assign O[9] = O[10];
  assign O[7] = O[12];
  assign O[11] = O[12];

  NAND2xp5_ASAP7_6t_R U9 ( .A(A[7]), .B(B[7]), .Y(n3) );
  AOI22xp25_ASAP7_6t_R U10 ( .A1(A[7]), .A2(B[6]), .B1(B[7]), .B2(A[6]), .Y(n4) );
  TIELOxp5_ASAP7_6t_R U11 ( .L(O[10]) );
  AND2x2_ASAP7_6t_R U12 ( .A(A[5]), .B(B[5]), .Y(O[12]) );
  INVxp5_ASAP7_6t_R U13 ( .A(n3), .Y(O[13]) );
  OA21x1_ASAP7_6t_R U14 ( .A1(A[6]), .A2(B[6]), .B(O[13]), .Y(O[15]) );
  AOI21xp25_ASAP7_6t_R U15 ( .A1(n4), .A2(n3), .B(O[15]), .Y(O[14]) );
endmodule

