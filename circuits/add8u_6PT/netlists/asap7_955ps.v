/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:29:46 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  NAND2xp5_ASAP7_6t_R U36 ( .A(A[1]), .B(B[1]), .Y(n28) );
  XNOR2xp5_ASAP7_6t_R U37 ( .A(A[2]), .B(n29), .Y(O[2]) );
  AOI22xp25_ASAP7_6t_R U38 ( .A1(B[2]), .A2(n28), .B1(n30), .B2(n27), .Y(n29)
         );
  XNOR2xp5_ASAP7_6t_R U39 ( .A(n50), .B(n49), .Y(O[3]) );
  AOI22xp25_ASAP7_6t_R U40 ( .A1(A[3]), .A2(B[3]), .B1(n48), .B2(n47), .Y(n49)
         );
  XNOR2xp5_ASAP7_6t_R U41 ( .A(A[4]), .B(n46), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U42 ( .A1(B[4]), .A2(n45), .B1(n44), .B2(n43), .Y(n46)
         );
  XNOR2xp5_ASAP7_6t_R U43 ( .A(n42), .B(n41), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U44 ( .A1(A[5]), .A2(B[5]), .B1(n40), .B2(n39), .Y(n41)
         );
  XNOR2xp5_ASAP7_6t_R U45 ( .A(A[6]), .B(n38), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U46 ( .A1(B[6]), .A2(n37), .B1(n36), .B2(n35), .Y(n38)
         );
  XNOR2xp5_ASAP7_6t_R U47 ( .A(n34), .B(n33), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U48 ( .A1(A[7]), .A2(B[7]), .B1(n32), .B2(n31), .Y(n33)
         );
  OR2x2_ASAP7_6t_R U49 ( .A(A[0]), .B(B[0]), .Y(O[0]) );
  OA21x1_ASAP7_6t_R U50 ( .A1(A[1]), .A2(B[1]), .B(n28), .Y(O[1]) );
  INVxp5_ASAP7_6t_R U51 ( .A(n28), .Y(n30) );
  INVxp5_ASAP7_6t_R U52 ( .A(B[2]), .Y(n27) );
  MAJIxp5_ASAP7_6t_R U53 ( .A(A[2]), .B(B[2]), .C(n30), .Y(n50) );
  INVxp5_ASAP7_6t_R U54 ( .A(A[3]), .Y(n47) );
  INVxp5_ASAP7_6t_R U55 ( .A(B[3]), .Y(n48) );
  MAJIxp5_ASAP7_6t_R U56 ( .A(n50), .B(n47), .C(n48), .Y(n44) );
  MAJIxp5_ASAP7_6t_R U57 ( .A(A[4]), .B(B[4]), .C(n44), .Y(n42) );
  INVxp5_ASAP7_6t_R U58 ( .A(A[5]), .Y(n39) );
  INVxp5_ASAP7_6t_R U59 ( .A(B[5]), .Y(n40) );
  MAJIxp5_ASAP7_6t_R U60 ( .A(n42), .B(n39), .C(n40), .Y(n36) );
  MAJIxp5_ASAP7_6t_R U61 ( .A(A[6]), .B(B[6]), .C(n36), .Y(n34) );
  INVxp5_ASAP7_6t_R U62 ( .A(A[7]), .Y(n31) );
  INVxp5_ASAP7_6t_R U63 ( .A(B[7]), .Y(n32) );
  MAJIxp5_ASAP7_6t_R U64 ( .A(n34), .B(n31), .C(n32), .Y(O[8]) );
  INVxp5_ASAP7_6t_R U65 ( .A(n36), .Y(n37) );
  INVxp5_ASAP7_6t_R U66 ( .A(B[6]), .Y(n35) );
  INVxp5_ASAP7_6t_R U67 ( .A(n44), .Y(n45) );
  INVxp5_ASAP7_6t_R U68 ( .A(B[4]), .Y(n43) );
endmodule

