/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:31:02 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81;
  assign O[0] = O[14];
  assign O[3] = A[4];
  assign O[2] = A[11];
  assign O[1] = B[9];

  XNOR2xp5_ASAP7_6t_R U50 ( .A(n49), .B(n48), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U51 ( .A1(A[7]), .A2(B[7]), .B1(n47), .B2(n46), .Y(n48)
         );
  XNOR2xp5_ASAP7_6t_R U52 ( .A(B[8]), .B(n53), .Y(O[8]) );
  AOI22xp25_ASAP7_6t_R U53 ( .A1(A[8]), .A2(n52), .B1(n51), .B2(n50), .Y(n53)
         );
  XNOR2xp5_ASAP7_6t_R U54 ( .A(n57), .B(n56), .Y(O[9]) );
  AOI22xp25_ASAP7_6t_R U55 ( .A1(B[9]), .A2(A[9]), .B1(n55), .B2(n54), .Y(n56)
         );
  XNOR2xp5_ASAP7_6t_R U56 ( .A(B[10]), .B(n61), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U57 ( .A1(A[10]), .A2(n60), .B1(n59), .B2(n58), .Y(n61)
         );
  XNOR2xp5_ASAP7_6t_R U58 ( .A(n63), .B(n62), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U59 ( .A1(A[11]), .A2(B[11]), .B1(n80), .B2(n81), .Y(
        n62) );
  XNOR2xp5_ASAP7_6t_R U60 ( .A(B[12]), .B(n67), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U61 ( .A1(A[12]), .A2(n66), .B1(n65), .B2(n64), .Y(n67)
         );
  XNOR2xp5_ASAP7_6t_R U62 ( .A(n71), .B(n70), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U63 ( .A1(B[13]), .A2(A[13]), .B1(n69), .B2(n68), .Y(
        n70) );
  XNOR2xp5_ASAP7_6t_R U64 ( .A(B[14]), .B(n75), .Y(O[14]) );
  AOI22xp25_ASAP7_6t_R U65 ( .A1(A[14]), .A2(n74), .B1(n73), .B2(n72), .Y(n75)
         );
  XNOR2xp5_ASAP7_6t_R U66 ( .A(n79), .B(n78), .Y(O[15]) );
  AOI22xp25_ASAP7_6t_R U67 ( .A1(B[15]), .A2(A[15]), .B1(n77), .B2(n76), .Y(
        n78) );
  TIELOxp5_ASAP7_6t_R U68 ( .L(O[4]) );
  NOR2xp5_ASAP7_6t_R U69 ( .A(B[6]), .B(A[6]), .Y(n49) );
  INVxp5_ASAP7_6t_R U70 ( .A(A[7]), .Y(n46) );
  INVxp5_ASAP7_6t_R U71 ( .A(B[7]), .Y(n47) );
  MAJIxp5_ASAP7_6t_R U72 ( .A(n49), .B(n46), .C(n47), .Y(n51) );
  MAJIxp5_ASAP7_6t_R U73 ( .A(B[8]), .B(A[8]), .C(n51), .Y(n57) );
  INVxp5_ASAP7_6t_R U74 ( .A(B[9]), .Y(n54) );
  INVxp5_ASAP7_6t_R U75 ( .A(A[9]), .Y(n55) );
  MAJIxp5_ASAP7_6t_R U76 ( .A(n57), .B(n54), .C(n55), .Y(n59) );
  MAJIxp5_ASAP7_6t_R U77 ( .A(B[10]), .B(A[10]), .C(n59), .Y(n63) );
  INVxp5_ASAP7_6t_R U78 ( .A(A[11]), .Y(n81) );
  INVxp5_ASAP7_6t_R U79 ( .A(B[11]), .Y(n80) );
  MAJIxp5_ASAP7_6t_R U80 ( .A(n63), .B(n81), .C(n80), .Y(n65) );
  MAJIxp5_ASAP7_6t_R U81 ( .A(B[12]), .B(A[12]), .C(n65), .Y(n71) );
  INVxp5_ASAP7_6t_R U82 ( .A(B[13]), .Y(n68) );
  INVxp5_ASAP7_6t_R U83 ( .A(A[13]), .Y(n69) );
  MAJIxp5_ASAP7_6t_R U84 ( .A(n71), .B(n68), .C(n69), .Y(n73) );
  MAJIxp5_ASAP7_6t_R U85 ( .A(B[14]), .B(A[14]), .C(n73), .Y(n79) );
  INVxp5_ASAP7_6t_R U86 ( .A(B[15]), .Y(n76) );
  INVxp5_ASAP7_6t_R U87 ( .A(A[15]), .Y(n77) );
  MAJIxp5_ASAP7_6t_R U88 ( .A(n79), .B(n76), .C(n77), .Y(O[16]) );
  AO21x1_ASAP7_6t_R U89 ( .A1(A[6]), .A2(B[6]), .B(n49), .Y(O[6]) );
  INVxp5_ASAP7_6t_R U90 ( .A(n51), .Y(n52) );
  INVxp5_ASAP7_6t_R U91 ( .A(A[8]), .Y(n50) );
  INVxp5_ASAP7_6t_R U92 ( .A(n59), .Y(n60) );
  INVxp5_ASAP7_6t_R U93 ( .A(A[10]), .Y(n58) );
  INVxp5_ASAP7_6t_R U94 ( .A(n65), .Y(n66) );
  INVxp5_ASAP7_6t_R U95 ( .A(A[12]), .Y(n64) );
  INVxp5_ASAP7_6t_R U96 ( .A(n73), .Y(n74) );
  INVxp5_ASAP7_6t_R U97 ( .A(A[14]), .Y(n72) );
  NOR2xp5_ASAP7_6t_R U98 ( .A(n81), .B(n80), .Y(O[5]) );
endmodule

