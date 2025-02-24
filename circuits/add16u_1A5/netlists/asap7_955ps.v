/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:29:05 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133;

  NAND2xp5_ASAP7_6t_R U77 ( .A(A[0]), .B(B[0]), .Y(n76) );
  XNOR2xp5_ASAP7_6t_R U78 ( .A(n77), .B(n76), .Y(O[1]) );
  AOI22xp25_ASAP7_6t_R U79 ( .A1(A[1]), .A2(B[1]), .B1(n75), .B2(n74), .Y(n77)
         );
  XNOR2xp5_ASAP7_6t_R U80 ( .A(B[2]), .B(n81), .Y(O[2]) );
  AOI22xp25_ASAP7_6t_R U81 ( .A1(A[2]), .A2(n80), .B1(n79), .B2(n78), .Y(n81)
         );
  XNOR2xp5_ASAP7_6t_R U82 ( .A(n85), .B(n84), .Y(O[3]) );
  AOI22xp25_ASAP7_6t_R U83 ( .A1(B[3]), .A2(A[3]), .B1(n83), .B2(n82), .Y(n84)
         );
  XNOR2xp5_ASAP7_6t_R U84 ( .A(B[4]), .B(n89), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U85 ( .A1(A[4]), .A2(n88), .B1(n87), .B2(n86), .Y(n89)
         );
  XNOR2xp5_ASAP7_6t_R U86 ( .A(n93), .B(n92), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U87 ( .A1(B[5]), .A2(A[5]), .B1(n91), .B2(n90), .Y(n92)
         );
  XNOR2xp5_ASAP7_6t_R U88 ( .A(B[6]), .B(n97), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U89 ( .A1(A[6]), .A2(n96), .B1(n95), .B2(n94), .Y(n97)
         );
  XNOR2xp5_ASAP7_6t_R U90 ( .A(n101), .B(n100), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U91 ( .A1(B[7]), .A2(A[7]), .B1(n99), .B2(n98), .Y(n100) );
  XNOR2xp5_ASAP7_6t_R U92 ( .A(B[8]), .B(n105), .Y(O[8]) );
  AOI22xp25_ASAP7_6t_R U93 ( .A1(A[8]), .A2(n104), .B1(n103), .B2(n102), .Y(
        n105) );
  XNOR2xp5_ASAP7_6t_R U94 ( .A(n109), .B(n108), .Y(O[9]) );
  AOI22xp25_ASAP7_6t_R U95 ( .A1(B[9]), .A2(A[9]), .B1(n107), .B2(n106), .Y(
        n108) );
  XNOR2xp5_ASAP7_6t_R U96 ( .A(B[10]), .B(n113), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U97 ( .A1(A[10]), .A2(n112), .B1(n111), .B2(n110), .Y(
        n113) );
  XNOR2xp5_ASAP7_6t_R U98 ( .A(n117), .B(n116), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U99 ( .A1(B[11]), .A2(A[11]), .B1(n115), .B2(n114), .Y(
        n116) );
  XNOR2xp5_ASAP7_6t_R U100 ( .A(B[12]), .B(n121), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U101 ( .A1(A[12]), .A2(n120), .B1(n119), .B2(n118), .Y(
        n121) );
  XNOR2xp5_ASAP7_6t_R U102 ( .A(n125), .B(n124), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U103 ( .A1(B[13]), .A2(A[13]), .B1(n123), .B2(n122), 
        .Y(n124) );
  XNOR2xp5_ASAP7_6t_R U104 ( .A(B[14]), .B(n129), .Y(O[14]) );
  AOI22xp25_ASAP7_6t_R U105 ( .A1(A[14]), .A2(n128), .B1(n127), .B2(n126), .Y(
        n129) );
  XNOR2xp5_ASAP7_6t_R U106 ( .A(n133), .B(n132), .Y(O[15]) );
  AOI22xp25_ASAP7_6t_R U107 ( .A1(B[15]), .A2(A[15]), .B1(n131), .B2(n130), 
        .Y(n132) );
  OA21x1_ASAP7_6t_R U108 ( .A1(A[0]), .A2(B[0]), .B(n76), .Y(O[0]) );
  INVxp5_ASAP7_6t_R U109 ( .A(A[1]), .Y(n74) );
  INVxp5_ASAP7_6t_R U110 ( .A(B[1]), .Y(n75) );
  MAJIxp5_ASAP7_6t_R U111 ( .A(n74), .B(n75), .C(n76), .Y(n79) );
  MAJIxp5_ASAP7_6t_R U112 ( .A(B[2]), .B(A[2]), .C(n79), .Y(n85) );
  INVxp5_ASAP7_6t_R U113 ( .A(B[3]), .Y(n82) );
  INVxp5_ASAP7_6t_R U114 ( .A(A[3]), .Y(n83) );
  MAJIxp5_ASAP7_6t_R U115 ( .A(n85), .B(n82), .C(n83), .Y(n87) );
  MAJIxp5_ASAP7_6t_R U116 ( .A(B[4]), .B(A[4]), .C(n87), .Y(n93) );
  INVxp5_ASAP7_6t_R U117 ( .A(B[5]), .Y(n90) );
  INVxp5_ASAP7_6t_R U118 ( .A(A[5]), .Y(n91) );
  MAJIxp5_ASAP7_6t_R U119 ( .A(n93), .B(n90), .C(n91), .Y(n95) );
  MAJIxp5_ASAP7_6t_R U120 ( .A(B[6]), .B(A[6]), .C(n95), .Y(n101) );
  INVxp5_ASAP7_6t_R U121 ( .A(B[7]), .Y(n98) );
  INVxp5_ASAP7_6t_R U122 ( .A(A[7]), .Y(n99) );
  MAJIxp5_ASAP7_6t_R U123 ( .A(n101), .B(n98), .C(n99), .Y(n103) );
  MAJIxp5_ASAP7_6t_R U124 ( .A(B[8]), .B(A[8]), .C(n103), .Y(n109) );
  INVxp5_ASAP7_6t_R U125 ( .A(B[9]), .Y(n106) );
  INVxp5_ASAP7_6t_R U126 ( .A(A[9]), .Y(n107) );
  MAJIxp5_ASAP7_6t_R U127 ( .A(n109), .B(n106), .C(n107), .Y(n111) );
  MAJIxp5_ASAP7_6t_R U128 ( .A(B[10]), .B(A[10]), .C(n111), .Y(n117) );
  INVxp5_ASAP7_6t_R U129 ( .A(B[11]), .Y(n114) );
  INVxp5_ASAP7_6t_R U130 ( .A(A[11]), .Y(n115) );
  MAJIxp5_ASAP7_6t_R U131 ( .A(n117), .B(n114), .C(n115), .Y(n119) );
  MAJIxp5_ASAP7_6t_R U132 ( .A(B[12]), .B(A[12]), .C(n119), .Y(n125) );
  INVxp5_ASAP7_6t_R U133 ( .A(B[13]), .Y(n122) );
  INVxp5_ASAP7_6t_R U134 ( .A(A[13]), .Y(n123) );
  MAJIxp5_ASAP7_6t_R U135 ( .A(n125), .B(n122), .C(n123), .Y(n127) );
  MAJIxp5_ASAP7_6t_R U136 ( .A(B[14]), .B(A[14]), .C(n127), .Y(n133) );
  INVxp5_ASAP7_6t_R U137 ( .A(B[15]), .Y(n130) );
  INVxp5_ASAP7_6t_R U138 ( .A(A[15]), .Y(n131) );
  MAJIxp5_ASAP7_6t_R U139 ( .A(n133), .B(n130), .C(n131), .Y(O[16]) );
  INVxp5_ASAP7_6t_R U140 ( .A(n79), .Y(n80) );
  INVxp5_ASAP7_6t_R U141 ( .A(A[2]), .Y(n78) );
  INVxp5_ASAP7_6t_R U142 ( .A(n87), .Y(n88) );
  INVxp5_ASAP7_6t_R U143 ( .A(A[4]), .Y(n86) );
  INVxp5_ASAP7_6t_R U144 ( .A(n95), .Y(n96) );
  INVxp5_ASAP7_6t_R U145 ( .A(A[6]), .Y(n94) );
  INVxp5_ASAP7_6t_R U146 ( .A(n103), .Y(n104) );
  INVxp5_ASAP7_6t_R U147 ( .A(A[8]), .Y(n102) );
  INVxp5_ASAP7_6t_R U148 ( .A(n111), .Y(n112) );
  INVxp5_ASAP7_6t_R U149 ( .A(A[10]), .Y(n110) );
  INVxp5_ASAP7_6t_R U150 ( .A(n119), .Y(n120) );
  INVxp5_ASAP7_6t_R U151 ( .A(A[12]), .Y(n118) );
  INVxp5_ASAP7_6t_R U152 ( .A(n127), .Y(n128) );
  INVxp5_ASAP7_6t_R U153 ( .A(A[14]), .Y(n126) );
endmodule

