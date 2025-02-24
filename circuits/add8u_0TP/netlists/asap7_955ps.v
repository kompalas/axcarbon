/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:32:57 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;
  assign O[2] = O[4];
  assign O[1] = A[4];
  assign O[3] = A[4];
  assign O[0] = B[3];

  XNOR2xp5_ASAP7_6t_R U14 ( .A(A[6]), .B(n14), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U15 ( .A1(B[6]), .A2(n13), .B1(n12), .B2(n11), .Y(n14)
         );
  XNOR2xp5_ASAP7_6t_R U16 ( .A(n18), .B(n17), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U17 ( .A1(B[7]), .A2(A[7]), .B1(n16), .B2(n15), .Y(n17)
         );
  TIELOxp5_ASAP7_6t_R U18 ( .L(O[4]) );
  NOR2xp5_ASAP7_6t_R U19 ( .A(A[5]), .B(B[5]), .Y(n13) );
  INVxp5_ASAP7_6t_R U20 ( .A(n13), .Y(n12) );
  MAJIxp5_ASAP7_6t_R U21 ( .A(A[6]), .B(B[6]), .C(n12), .Y(n18) );
  INVxp5_ASAP7_6t_R U22 ( .A(B[7]), .Y(n15) );
  INVxp5_ASAP7_6t_R U23 ( .A(A[7]), .Y(n16) );
  MAJIxp5_ASAP7_6t_R U24 ( .A(n18), .B(n15), .C(n16), .Y(O[8]) );
  AO21x1_ASAP7_6t_R U25 ( .A1(B[5]), .A2(A[5]), .B(n13), .Y(O[5]) );
  INVxp5_ASAP7_6t_R U26 ( .A(B[6]), .Y(n11) );
endmodule

