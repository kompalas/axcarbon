/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:32:19 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50;
  assign O[0] = O[8];
  assign O[2] = O[8];
  assign O[1] = O[14];
  assign O[5] = O[11];
  assign O[9] = A[8];
  assign O[3] = A[6];
  assign O[7] = B[9];

  XNOR2xp5_ASAP7_6t_R U34 ( .A(B[10]), .B(n30), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U35 ( .A1(A[10]), .A2(n29), .B1(B[9]), .B2(n28), .Y(n30) );
  XNOR2xp5_ASAP7_6t_R U36 ( .A(n34), .B(n33), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U37 ( .A1(B[11]), .A2(A[11]), .B1(n32), .B2(n31), .Y(
        n33) );
  XNOR2xp5_ASAP7_6t_R U38 ( .A(B[12]), .B(n38), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U39 ( .A1(A[12]), .A2(n37), .B1(n36), .B2(n35), .Y(n38)
         );
  XNOR2xp5_ASAP7_6t_R U40 ( .A(n42), .B(n41), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U41 ( .A1(B[13]), .A2(A[13]), .B1(n40), .B2(n39), .Y(
        n41) );
  XNOR2xp5_ASAP7_6t_R U42 ( .A(B[14]), .B(n46), .Y(O[14]) );
  AOI22xp25_ASAP7_6t_R U43 ( .A1(A[14]), .A2(n45), .B1(n44), .B2(n43), .Y(n46)
         );
  XNOR2xp5_ASAP7_6t_R U44 ( .A(n50), .B(n49), .Y(O[15]) );
  AOI22xp25_ASAP7_6t_R U45 ( .A1(B[15]), .A2(A[15]), .B1(n48), .B2(n47), .Y(
        n49) );
  TIEHIxp5_ASAP7_6t_R U46 ( .H(O[6]) );
  TIELOxp5_ASAP7_6t_R U47 ( .L(O[8]) );
  MAJIxp5_ASAP7_6t_R U48 ( .A(B[10]), .B(A[10]), .C(B[9]), .Y(n34) );
  INVxp5_ASAP7_6t_R U49 ( .A(B[11]), .Y(n31) );
  INVxp5_ASAP7_6t_R U50 ( .A(A[11]), .Y(n32) );
  MAJIxp5_ASAP7_6t_R U51 ( .A(n34), .B(n31), .C(n32), .Y(n36) );
  MAJIxp5_ASAP7_6t_R U52 ( .A(B[12]), .B(A[12]), .C(n36), .Y(n42) );
  INVxp5_ASAP7_6t_R U53 ( .A(B[13]), .Y(n39) );
  INVxp5_ASAP7_6t_R U54 ( .A(A[13]), .Y(n40) );
  MAJIxp5_ASAP7_6t_R U55 ( .A(n42), .B(n39), .C(n40), .Y(n44) );
  MAJIxp5_ASAP7_6t_R U56 ( .A(B[14]), .B(A[14]), .C(n44), .Y(n50) );
  INVxp5_ASAP7_6t_R U57 ( .A(B[15]), .Y(n47) );
  INVxp5_ASAP7_6t_R U58 ( .A(A[15]), .Y(n48) );
  MAJIxp5_ASAP7_6t_R U59 ( .A(n50), .B(n47), .C(n48), .Y(O[16]) );
  INVxp5_ASAP7_6t_R U60 ( .A(B[9]), .Y(n29) );
  INVxp5_ASAP7_6t_R U61 ( .A(A[10]), .Y(n28) );
  NAND2xp5_ASAP7_6t_R U62 ( .A(B[4]), .B(A[9]), .Y(O[4]) );
  INVxp5_ASAP7_6t_R U63 ( .A(n36), .Y(n37) );
  INVxp5_ASAP7_6t_R U64 ( .A(A[12]), .Y(n35) );
  INVxp5_ASAP7_6t_R U65 ( .A(n44), .Y(n45) );
  INVxp5_ASAP7_6t_R U66 ( .A(A[14]), .Y(n43) );
endmodule

