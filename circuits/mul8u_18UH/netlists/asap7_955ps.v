/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:33:01 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106;
  assign O[0] = O[9];
  assign O[3] = O[9];
  assign O[6] = O[9];
  assign O[2] = O[13];
  assign O[5] = O[10];
  assign O[8] = O[10];
  assign O[1] = O[4];

  AOI22xp25_ASAP7_6t_R U66 ( .A1(B[7]), .A2(A[4]), .B1(A[5]), .B2(B[6]), .Y(
        n62) );
  AOI22xp25_ASAP7_6t_R U67 ( .A1(B[7]), .A2(A[3]), .B1(B[6]), .B2(A[4]), .Y(
        n63) );
  NAND4xp25_ASAP7_6t_R U68 ( .A(B[7]), .B(B[6]), .C(A[4]), .D(A[3]), .Y(n66)
         );
  NAND2xp5_ASAP7_6t_R U69 ( .A(O[4]), .B(n65), .Y(n64) );
  NAND2xp5_ASAP7_6t_R U70 ( .A(A[6]), .B(B[6]), .Y(n73) );
  MAJx1_ASAP7_6t_R U71 ( .A(n74), .B(n73), .C(n67), .Y(n81) );
  NAND2xp5_ASAP7_6t_R U72 ( .A(O[4]), .B(n68), .Y(n82) );
  NAND2xp5_ASAP7_6t_R U73 ( .A(B[4]), .B(A[7]), .Y(n99) );
  NAND2xp5_ASAP7_6t_R U74 ( .A(A[5]), .B(B[5]), .Y(n96) );
  XNOR2xp5_ASAP7_6t_R U75 ( .A(n80), .B(n79), .Y(n95) );
  AOI221xp25_ASAP7_6t_R U76 ( .A1(B[5]), .A2(B[4]), .B1(n78), .B2(n77), .C(n76), .Y(n79) );
  NAND2xp5_ASAP7_6t_R U77 ( .A(B[5]), .B(A[7]), .Y(n103) );
  NAND2xp5_ASAP7_6t_R U78 ( .A(B[6]), .B(A[7]), .Y(n89) );
  NAND2xp5_ASAP7_6t_R U79 ( .A(n82), .B(n81), .Y(n83) );
  XNOR2xp5_ASAP7_6t_R U80 ( .A(n100), .B(n99), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U81 ( .A1(n98), .A2(n97), .B1(n96), .B2(n95), .Y(n100)
         );
  XNOR2xp5_ASAP7_6t_R U82 ( .A(n106), .B(n105), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U83 ( .A1(n104), .A2(n103), .B1(n102), .B2(n101), .Y(
        n105) );
  XNOR2xp5_ASAP7_6t_R U84 ( .A(n94), .B(n93), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U85 ( .A1(n92), .A2(n91), .B1(n90), .B2(n89), .Y(n94)
         );
  XNOR2xp5_ASAP7_6t_R U86 ( .A(n88), .B(n87), .Y(O[14]) );
  NAND3xp33_ASAP7_6t_R U87 ( .A(B[7]), .B(A[7]), .C(n86), .Y(n85) );
  OAI21xp25_ASAP7_6t_R U88 ( .A1(n63), .A2(n60), .B(n59), .Y(n58) );
  TIELOxp5_ASAP7_6t_R U89 ( .L(O[9]) );
  AND2x2_ASAP7_6t_R U90 ( .A(A[7]), .B(B[3]), .Y(O[10]) );
  INVxp5_ASAP7_6t_R U91 ( .A(A[6]), .Y(n76) );
  INVxp5_ASAP7_6t_R U92 ( .A(B[5]), .Y(n78) );
  NOR2xp5_ASAP7_6t_R U93 ( .A(n76), .B(n78), .Y(O[7]) );
  AND2x2_ASAP7_6t_R U94 ( .A(B[7]), .B(A[5]), .Y(O[4]) );
  INVxp5_ASAP7_6t_R U95 ( .A(B[7]), .Y(n71) );
  INVxp5_ASAP7_6t_R U96 ( .A(n66), .Y(n60) );
  AND2x2_ASAP7_6t_R U97 ( .A(B[7]), .B(A[4]), .Y(n57) );
  AO31x1_ASAP7_6t_R U98 ( .A1(B[6]), .A2(A[5]), .A3(n57), .B(n62), .Y(n59) );
  OA31x1_ASAP7_6t_R U99 ( .A1(n63), .A2(n60), .A3(n59), .B(n58), .Y(n80) );
  INVxp5_ASAP7_6t_R U100 ( .A(B[4]), .Y(n77) );
  NOR2xp5_ASAP7_6t_R U101 ( .A(n76), .B(n77), .Y(n61) );
  MAJIxp5_ASAP7_6t_R U102 ( .A(O[7]), .B(n80), .C(n61), .Y(n74) );
  NOR2xp5_ASAP7_6t_R U103 ( .A(n63), .B(n62), .Y(n68) );
  INVxp5_ASAP7_6t_R U104 ( .A(n68), .Y(n65) );
  A2O1A1Ixp33_ASAP7_6t_R U105 ( .A1(O[4]), .A2(n66), .B(n65), .C(n64), .Y(n72)
         );
  INVxp5_ASAP7_6t_R U106 ( .A(n72), .Y(n67) );
  HAxp5_ASAP7_6t_R U107 ( .A(n81), .B(n82), .SN(n70) );
  OAI21xp5_ASAP7_6t_R U108 ( .A1(n76), .A2(n71), .B(n70), .Y(n69) );
  OAI31x1f_ASAP7_6t_R U109 ( .A1(n76), .A2(n71), .A3(n70), .B(n69), .Y(n93) );
  HAxp5_ASAP7_6t_R U110 ( .A(n73), .B(n72), .SN(n75) );
  HAxp5_ASAP7_6t_R U111 ( .A(n75), .B(n74), .SN(n106) );
  MAJIxp5_ASAP7_6t_R U112 ( .A(n99), .B(n95), .C(n96), .Y(n104) );
  INVxp5_ASAP7_6t_R U113 ( .A(n103), .Y(n102) );
  MAJIxp5_ASAP7_6t_R U114 ( .A(n106), .B(n104), .C(n102), .Y(n90) );
  MAJIxp5_ASAP7_6t_R U115 ( .A(n93), .B(n89), .C(n90), .Y(n86) );
  AND3x1_ASAP7_6t_R U116 ( .A(B[7]), .B(A[6]), .C(n83), .Y(n88) );
  A2O1A1Ixp33_ASAP7_6t_R U117 ( .A1(B[7]), .A2(n86), .B(n88), .C(A[7]), .Y(n84) );
  INVxp5_ASAP7_6t_R U118 ( .A(n84), .Y(O[15]) );
  A2O1A1Ixp33_ASAP7_6t_R U119 ( .A1(A[7]), .A2(B[7]), .B(n86), .C(n85), .Y(n87) );
  INVxp5_ASAP7_6t_R U120 ( .A(n89), .Y(n92) );
  INVxp5_ASAP7_6t_R U121 ( .A(n90), .Y(n91) );
  INVxp5_ASAP7_6t_R U122 ( .A(n95), .Y(n98) );
  INVxp5_ASAP7_6t_R U123 ( .A(n96), .Y(n97) );
  INVxp5_ASAP7_6t_R U124 ( .A(n104), .Y(n101) );
endmodule

