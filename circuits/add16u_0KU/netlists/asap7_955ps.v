/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:32:57 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;
  assign O[5] = A[10];
  assign O[1] = A[6];
  assign O[10] = A[6];
  assign O[11] = A[11];
  assign O[8] = B[6];
  assign O[7] = B[9];
  assign O[4] = B[12];
  assign O[2] = B[7];
  assign O[0] = B[13];
  assign O[3] = \O[3] ;
  assign O[9] = \O[3] ;

  NAND2xp5_ASAP7_6t_R U22 ( .A(B[15]), .B(A[15]), .Y(n22) );
  XNOR2xp5_ASAP7_6t_R U23 ( .A(A[12]), .B(n25), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U24 ( .A1(B[12]), .A2(n24), .B1(B[11]), .B2(n23), .Y(
        n25) );
  XNOR2xp5_ASAP7_6t_R U25 ( .A(n29), .B(n28), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U26 ( .A1(B[13]), .A2(A[13]), .B1(n27), .B2(n26), .Y(
        n28) );
  XNOR2xp5_ASAP7_6t_R U27 ( .A(B[14]), .B(n33), .Y(O[14]) );
  AOI22xp25_ASAP7_6t_R U28 ( .A1(A[14]), .A2(n32), .B1(n31), .B2(n30), .Y(n33)
         );
  OAI21xp5_ASAP7_6t_R U29 ( .A1(B[15]), .A2(A[15]), .B(n22), .Y(n19) );
  INVxp5_ASAP7_6t_R U30 ( .A(n19), .Y(O[6]) );
  MAJIxp5_ASAP7_6t_R U31 ( .A(B[12]), .B(A[12]), .C(B[11]), .Y(n29) );
  INVxp5_ASAP7_6t_R U32 ( .A(B[13]), .Y(n26) );
  INVxp5_ASAP7_6t_R U33 ( .A(A[13]), .Y(n27) );
  MAJIxp5_ASAP7_6t_R U34 ( .A(n29), .B(n26), .C(n27), .Y(n31) );
  MAJIxp5_ASAP7_6t_R U35 ( .A(B[14]), .B(A[14]), .C(n31), .Y(n20) );
  NOR2xp5_ASAP7_6t_R U36 ( .A(n20), .B(n19), .Y(\O[3] ) );
  AOI21xp25_ASAP7_6t_R U37 ( .A1(n20), .A2(n19), .B(\O[3] ), .Y(O[15]) );
  INVxp5_ASAP7_6t_R U38 ( .A(\O[3] ), .Y(n21) );
  NAND2xp5_ASAP7_6t_R U39 ( .A(n22), .B(n21), .Y(O[16]) );
  INVxp5_ASAP7_6t_R U40 ( .A(B[11]), .Y(n24) );
  INVxp5_ASAP7_6t_R U41 ( .A(B[12]), .Y(n23) );
  INVxp5_ASAP7_6t_R U42 ( .A(n31), .Y(n32) );
  INVxp5_ASAP7_6t_R U43 ( .A(A[14]), .Y(n30) );
endmodule

