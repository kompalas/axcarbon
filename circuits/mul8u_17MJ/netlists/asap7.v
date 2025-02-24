/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:27:36 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4, n5, n6, n7;
  assign O[0] = O[10];
  assign O[1] = O[10];
  assign O[2] = O[10];
  assign O[3] = O[10];
  assign O[4] = O[10];
  assign O[5] = O[10];
  assign O[6] = O[10];
  assign O[8] = O[10];
  assign O[9] = O[10];
  assign O[11] = O[12];
  assign O[7] = O[12];

  AND2x4_ASAP7_6t_R U9 ( .A(A[5]), .B(B[5]), .Y(O[12]) );
  INVx8_ASAP7_6t_R U10 ( .A(B[7]), .Y(n4) );
  INVx2_ASAP7_6t_R U11 ( .A(A[6]), .Y(n3) );
  NOR2xp5_ASAP7_6t_R U12 ( .A(n4), .B(n3), .Y(n5) );
  OAI22xp5_ASAP7_6t_R U13 ( .A1(B[6]), .A2(B[7]), .B1(n5), .B2(A[7]), .Y(n7)
         );
  OA21x1_ASAP7_6t_R U14 ( .A1(A[6]), .A2(B[6]), .B(O[13]), .Y(O[15]) );
  TIELOxp5_ASAP7_6t_R U15 ( .L(O[10]) );
  INVx13_ASAP7_6t_R U16 ( .A(A[7]), .Y(n6) );
  NOR2x2_ASAP7_6t_R U17 ( .A(n6), .B(n4), .Y(O[13]) );
  NOR2xp5_ASAP7_6t_R U18 ( .A(n7), .B(O[15]), .Y(O[14]) );
endmodule

