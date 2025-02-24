/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:33:35 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n10, n11, n12, n13, n14, n15, n16;
  assign O[8] = O[5];
  assign O[1] = O[15];
  assign O[9] = A[15];
  assign O[6] = A[3];
  assign O[3] = A[6];
  assign O[2] = A[7];
  assign O[0] = A[9];
  assign O[12] = A[9];
  assign O[11] = B[11];
  assign O[10] = B[10];
  assign O[4] = B[12];

  NAND2xp5_ASAP7_6t_R U15 ( .A(A[14]), .B(B[14]), .Y(n10) );
  XNOR2xp5_ASAP7_6t_R U16 ( .A(n16), .B(n15), .Y(O[15]) );
  AOI22xp25_ASAP7_6t_R U17 ( .A1(A[15]), .A2(B[15]), .B1(n14), .B2(n13), .Y(
        n15) );
  OAI21xp25_ASAP7_6t_R U18 ( .A1(A[14]), .A2(B[14]), .B(n10), .Y(n11) );
  TIELOxp5_ASAP7_6t_R U19 ( .L(O[13]) );
  NOR2xp5_ASAP7_6t_R U20 ( .A(A[13]), .B(B[13]), .Y(n12) );
  INVxp5_ASAP7_6t_R U21 ( .A(n12), .Y(O[5]) );
  NOR2xp5_ASAP7_6t_R U22 ( .A(n12), .B(n11), .Y(O[7]) );
  AOI21xp25_ASAP7_6t_R U23 ( .A1(n12), .A2(n11), .B(O[7]), .Y(O[14]) );
  AOI21xp25_ASAP7_6t_R U24 ( .A1(B[14]), .A2(A[14]), .B(O[7]), .Y(n16) );
  INVxp5_ASAP7_6t_R U25 ( .A(A[15]), .Y(n13) );
  INVxp5_ASAP7_6t_R U26 ( .A(B[15]), .Y(n14) );
  MAJIxp5_ASAP7_6t_R U27 ( .A(n16), .B(n13), .C(n14), .Y(O[16]) );
endmodule

