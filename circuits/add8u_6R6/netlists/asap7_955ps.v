/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:32:20 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  assign O[4] = A[4];
  assign O[2] = A[3];
  assign O[1] = A[2];
  assign O[0] = B[0];

  XNOR2xp5_ASAP7_6t_R U18 ( .A(A[5]), .B(n15), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U19 ( .A1(B[4]), .A2(n14), .B1(B[5]), .B2(O[3]), .Y(n15) );
  XNOR2xp5_ASAP7_6t_R U20 ( .A(A[6]), .B(n23), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U21 ( .A1(B[6]), .A2(n22), .B1(n21), .B2(n20), .Y(n23)
         );
  XNOR2xp5_ASAP7_6t_R U22 ( .A(n19), .B(n18), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U23 ( .A1(A[7]), .A2(B[7]), .B1(n17), .B2(n16), .Y(n18)
         );
  INVxp5_ASAP7_6t_R U24 ( .A(B[4]), .Y(O[3]) );
  INVxp5_ASAP7_6t_R U25 ( .A(B[5]), .Y(n14) );
  MAJIxp5_ASAP7_6t_R U26 ( .A(B[4]), .B(A[5]), .C(B[5]), .Y(n22) );
  INVxp5_ASAP7_6t_R U27 ( .A(n22), .Y(n21) );
  MAJIxp5_ASAP7_6t_R U28 ( .A(A[6]), .B(B[6]), .C(n21), .Y(n19) );
  INVxp5_ASAP7_6t_R U29 ( .A(A[7]), .Y(n16) );
  INVxp5_ASAP7_6t_R U30 ( .A(B[7]), .Y(n17) );
  MAJIxp5_ASAP7_6t_R U31 ( .A(n19), .B(n16), .C(n17), .Y(O[8]) );
  INVxp5_ASAP7_6t_R U32 ( .A(B[6]), .Y(n20) );
endmodule

