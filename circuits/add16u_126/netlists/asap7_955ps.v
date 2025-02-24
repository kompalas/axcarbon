/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:30:23 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97;
  assign O[2] = O[3];
  assign O[4] = A[3];
  assign O[0] = A[8];
  assign O[1] = B[0];

  NAND2xp5_ASAP7_6t_R U58 ( .A(A[4]), .B(B[4]), .Y(n56) );
  XNOR2xp5_ASAP7_6t_R U59 ( .A(n57), .B(n56), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U60 ( .A1(B[5]), .A2(A[5]), .B1(n55), .B2(n54), .Y(n57)
         );
  XNOR2xp5_ASAP7_6t_R U61 ( .A(B[6]), .B(n61), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U62 ( .A1(A[6]), .A2(n60), .B1(n59), .B2(n58), .Y(n61)
         );
  XNOR2xp5_ASAP7_6t_R U63 ( .A(n65), .B(n64), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U64 ( .A1(B[7]), .A2(A[7]), .B1(n63), .B2(n62), .Y(n64)
         );
  XNOR2xp5_ASAP7_6t_R U65 ( .A(B[8]), .B(n69), .Y(O[8]) );
  AOI22xp25_ASAP7_6t_R U66 ( .A1(A[8]), .A2(n68), .B1(n67), .B2(n66), .Y(n69)
         );
  XNOR2xp5_ASAP7_6t_R U67 ( .A(n73), .B(n72), .Y(O[9]) );
  AOI22xp25_ASAP7_6t_R U68 ( .A1(B[9]), .A2(A[9]), .B1(n71), .B2(n70), .Y(n72)
         );
  XNOR2xp5_ASAP7_6t_R U69 ( .A(B[10]), .B(n77), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U70 ( .A1(A[10]), .A2(n76), .B1(n75), .B2(n74), .Y(n77)
         );
  XNOR2xp5_ASAP7_6t_R U71 ( .A(n81), .B(n80), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U72 ( .A1(B[11]), .A2(A[11]), .B1(n79), .B2(n78), .Y(
        n80) );
  XNOR2xp5_ASAP7_6t_R U73 ( .A(B[12]), .B(n85), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U74 ( .A1(A[12]), .A2(n84), .B1(n83), .B2(n82), .Y(n85)
         );
  XNOR2xp5_ASAP7_6t_R U75 ( .A(n89), .B(n88), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U76 ( .A1(B[13]), .A2(A[13]), .B1(n87), .B2(n86), .Y(
        n88) );
  XNOR2xp5_ASAP7_6t_R U77 ( .A(B[14]), .B(n93), .Y(O[14]) );
  AOI22xp25_ASAP7_6t_R U78 ( .A1(A[14]), .A2(n92), .B1(n91), .B2(n90), .Y(n93)
         );
  XNOR2xp5_ASAP7_6t_R U79 ( .A(n97), .B(n96), .Y(O[15]) );
  AOI22xp25_ASAP7_6t_R U80 ( .A1(B[15]), .A2(A[15]), .B1(n95), .B2(n94), .Y(
        n96) );
  TIEHIxp5_ASAP7_6t_R U81 ( .H(O[3]) );
  INVxp5_ASAP7_6t_R U82 ( .A(B[5]), .Y(n54) );
  INVxp5_ASAP7_6t_R U83 ( .A(A[5]), .Y(n55) );
  MAJIxp5_ASAP7_6t_R U84 ( .A(n54), .B(n55), .C(n56), .Y(n59) );
  MAJIxp5_ASAP7_6t_R U85 ( .A(B[6]), .B(A[6]), .C(n59), .Y(n65) );
  INVxp5_ASAP7_6t_R U86 ( .A(B[7]), .Y(n62) );
  INVxp5_ASAP7_6t_R U87 ( .A(A[7]), .Y(n63) );
  MAJIxp5_ASAP7_6t_R U88 ( .A(n65), .B(n62), .C(n63), .Y(n67) );
  MAJIxp5_ASAP7_6t_R U89 ( .A(A[8]), .B(B[8]), .C(n67), .Y(n73) );
  INVxp5_ASAP7_6t_R U90 ( .A(B[9]), .Y(n70) );
  INVxp5_ASAP7_6t_R U91 ( .A(A[9]), .Y(n71) );
  MAJIxp5_ASAP7_6t_R U92 ( .A(n73), .B(n70), .C(n71), .Y(n75) );
  MAJIxp5_ASAP7_6t_R U93 ( .A(B[10]), .B(A[10]), .C(n75), .Y(n81) );
  INVxp5_ASAP7_6t_R U94 ( .A(B[11]), .Y(n78) );
  INVxp5_ASAP7_6t_R U95 ( .A(A[11]), .Y(n79) );
  MAJIxp5_ASAP7_6t_R U96 ( .A(n81), .B(n78), .C(n79), .Y(n83) );
  MAJIxp5_ASAP7_6t_R U97 ( .A(B[12]), .B(A[12]), .C(n83), .Y(n89) );
  INVxp5_ASAP7_6t_R U98 ( .A(B[13]), .Y(n86) );
  INVxp5_ASAP7_6t_R U99 ( .A(A[13]), .Y(n87) );
  MAJIxp5_ASAP7_6t_R U100 ( .A(n89), .B(n86), .C(n87), .Y(n91) );
  MAJIxp5_ASAP7_6t_R U101 ( .A(B[14]), .B(A[14]), .C(n91), .Y(n97) );
  INVxp5_ASAP7_6t_R U102 ( .A(B[15]), .Y(n94) );
  INVxp5_ASAP7_6t_R U103 ( .A(A[15]), .Y(n95) );
  MAJIxp5_ASAP7_6t_R U104 ( .A(n97), .B(n94), .C(n95), .Y(O[16]) );
  INVxp5_ASAP7_6t_R U105 ( .A(n59), .Y(n60) );
  INVxp5_ASAP7_6t_R U106 ( .A(A[6]), .Y(n58) );
  INVxp5_ASAP7_6t_R U107 ( .A(n67), .Y(n68) );
  INVxp5_ASAP7_6t_R U108 ( .A(A[8]), .Y(n66) );
  INVxp5_ASAP7_6t_R U109 ( .A(n75), .Y(n76) );
  INVxp5_ASAP7_6t_R U110 ( .A(A[10]), .Y(n74) );
  INVxp5_ASAP7_6t_R U111 ( .A(n83), .Y(n84) );
  INVxp5_ASAP7_6t_R U112 ( .A(A[12]), .Y(n82) );
  INVxp5_ASAP7_6t_R U113 ( .A(n91), .Y(n92) );
  INVxp5_ASAP7_6t_R U114 ( .A(A[14]), .Y(n90) );
endmodule

