/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:29:44 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106;
  assign O[0] = O[2];
  assign O[1] = A[2];

  NAND2xp5_ASAP7_6t_R U64 ( .A(A[3]), .B(B[3]), .Y(n61) );
  XNOR2xp5_ASAP7_6t_R U65 ( .A(A[4]), .B(n62), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U66 ( .A1(B[4]), .A2(n61), .B1(n60), .B2(n59), .Y(n62)
         );
  XNOR2xp5_ASAP7_6t_R U67 ( .A(n66), .B(n65), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U68 ( .A1(B[5]), .A2(A[5]), .B1(n64), .B2(n63), .Y(n65)
         );
  XNOR2xp5_ASAP7_6t_R U69 ( .A(B[6]), .B(n70), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U70 ( .A1(A[6]), .A2(n69), .B1(n68), .B2(n67), .Y(n70)
         );
  XNOR2xp5_ASAP7_6t_R U71 ( .A(n74), .B(n73), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U72 ( .A1(B[7]), .A2(A[7]), .B1(n72), .B2(n71), .Y(n73)
         );
  XNOR2xp5_ASAP7_6t_R U73 ( .A(B[8]), .B(n78), .Y(O[8]) );
  AOI22xp25_ASAP7_6t_R U74 ( .A1(A[8]), .A2(n77), .B1(n76), .B2(n75), .Y(n78)
         );
  XNOR2xp5_ASAP7_6t_R U75 ( .A(n82), .B(n81), .Y(O[9]) );
  AOI22xp25_ASAP7_6t_R U76 ( .A1(B[9]), .A2(A[9]), .B1(n80), .B2(n79), .Y(n81)
         );
  XNOR2xp5_ASAP7_6t_R U77 ( .A(B[10]), .B(n86), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U78 ( .A1(A[10]), .A2(n85), .B1(n84), .B2(n83), .Y(n86)
         );
  XNOR2xp5_ASAP7_6t_R U79 ( .A(n90), .B(n89), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U80 ( .A1(B[11]), .A2(A[11]), .B1(n88), .B2(n87), .Y(
        n89) );
  XNOR2xp5_ASAP7_6t_R U81 ( .A(B[12]), .B(n94), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U82 ( .A1(A[12]), .A2(n93), .B1(n92), .B2(n91), .Y(n94)
         );
  XNOR2xp5_ASAP7_6t_R U83 ( .A(n98), .B(n97), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U84 ( .A1(B[13]), .A2(A[13]), .B1(n96), .B2(n95), .Y(
        n97) );
  XNOR2xp5_ASAP7_6t_R U85 ( .A(B[14]), .B(n102), .Y(O[14]) );
  AOI22xp25_ASAP7_6t_R U86 ( .A1(A[14]), .A2(n101), .B1(n100), .B2(n99), .Y(
        n102) );
  XNOR2xp5_ASAP7_6t_R U87 ( .A(n106), .B(n105), .Y(O[15]) );
  AOI22xp25_ASAP7_6t_R U88 ( .A1(B[15]), .A2(A[15]), .B1(n104), .B2(n103), .Y(
        n105) );
  TIEHIxp5_ASAP7_6t_R U89 ( .H(O[2]) );
  OA21x1_ASAP7_6t_R U90 ( .A1(A[3]), .A2(B[3]), .B(n61), .Y(O[3]) );
  INVxp5_ASAP7_6t_R U91 ( .A(n61), .Y(n60) );
  MAJIxp5_ASAP7_6t_R U92 ( .A(A[4]), .B(B[4]), .C(n60), .Y(n66) );
  INVxp5_ASAP7_6t_R U93 ( .A(B[5]), .Y(n63) );
  INVxp5_ASAP7_6t_R U94 ( .A(A[5]), .Y(n64) );
  MAJIxp5_ASAP7_6t_R U95 ( .A(n66), .B(n63), .C(n64), .Y(n68) );
  MAJIxp5_ASAP7_6t_R U96 ( .A(B[6]), .B(A[6]), .C(n68), .Y(n74) );
  INVxp5_ASAP7_6t_R U97 ( .A(B[7]), .Y(n71) );
  INVxp5_ASAP7_6t_R U98 ( .A(A[7]), .Y(n72) );
  MAJIxp5_ASAP7_6t_R U99 ( .A(n74), .B(n71), .C(n72), .Y(n76) );
  MAJIxp5_ASAP7_6t_R U100 ( .A(B[8]), .B(A[8]), .C(n76), .Y(n82) );
  INVxp5_ASAP7_6t_R U101 ( .A(B[9]), .Y(n79) );
  INVxp5_ASAP7_6t_R U102 ( .A(A[9]), .Y(n80) );
  MAJIxp5_ASAP7_6t_R U103 ( .A(n82), .B(n79), .C(n80), .Y(n84) );
  MAJIxp5_ASAP7_6t_R U104 ( .A(B[10]), .B(A[10]), .C(n84), .Y(n90) );
  INVxp5_ASAP7_6t_R U105 ( .A(B[11]), .Y(n87) );
  INVxp5_ASAP7_6t_R U106 ( .A(A[11]), .Y(n88) );
  MAJIxp5_ASAP7_6t_R U107 ( .A(n90), .B(n87), .C(n88), .Y(n92) );
  MAJIxp5_ASAP7_6t_R U108 ( .A(B[12]), .B(A[12]), .C(n92), .Y(n98) );
  INVxp5_ASAP7_6t_R U109 ( .A(B[13]), .Y(n95) );
  INVxp5_ASAP7_6t_R U110 ( .A(A[13]), .Y(n96) );
  MAJIxp5_ASAP7_6t_R U111 ( .A(n98), .B(n95), .C(n96), .Y(n100) );
  MAJIxp5_ASAP7_6t_R U112 ( .A(B[14]), .B(A[14]), .C(n100), .Y(n106) );
  INVxp5_ASAP7_6t_R U113 ( .A(B[15]), .Y(n103) );
  INVxp5_ASAP7_6t_R U114 ( .A(A[15]), .Y(n104) );
  MAJIxp5_ASAP7_6t_R U115 ( .A(n106), .B(n103), .C(n104), .Y(O[16]) );
  INVxp5_ASAP7_6t_R U116 ( .A(B[4]), .Y(n59) );
  INVxp5_ASAP7_6t_R U117 ( .A(n68), .Y(n69) );
  INVxp5_ASAP7_6t_R U118 ( .A(A[6]), .Y(n67) );
  INVxp5_ASAP7_6t_R U119 ( .A(n76), .Y(n77) );
  INVxp5_ASAP7_6t_R U120 ( .A(A[8]), .Y(n75) );
  INVxp5_ASAP7_6t_R U121 ( .A(n84), .Y(n85) );
  INVxp5_ASAP7_6t_R U122 ( .A(A[10]), .Y(n83) );
  INVxp5_ASAP7_6t_R U123 ( .A(n92), .Y(n93) );
  INVxp5_ASAP7_6t_R U124 ( .A(A[12]), .Y(n91) );
  INVxp5_ASAP7_6t_R U125 ( .A(n100), .Y(n101) );
  INVxp5_ASAP7_6t_R U126 ( .A(A[14]), .Y(n99) );
endmodule

