/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:30:24 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42;

  NAND2xp5_ASAP7_6t_R U28 ( .A(A[2]), .B(B[2]), .Y(n24) );
  XNOR2xp5_ASAP7_6t_R U29 ( .A(n23), .B(n24), .Y(O[3]) );
  AOI22xp25_ASAP7_6t_R U30 ( .A1(A[3]), .A2(B[3]), .B1(n25), .B2(n26), .Y(n23)
         );
  XNOR2xp5_ASAP7_6t_R U31 ( .A(B[4]), .B(n30), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U32 ( .A1(A[4]), .A2(n29), .B1(n28), .B2(n27), .Y(n30)
         );
  XNOR2xp5_ASAP7_6t_R U33 ( .A(n34), .B(n33), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U34 ( .A1(B[5]), .A2(A[5]), .B1(n32), .B2(n31), .Y(n33)
         );
  XNOR2xp5_ASAP7_6t_R U35 ( .A(B[6]), .B(n38), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U36 ( .A1(A[6]), .A2(n37), .B1(n36), .B2(n35), .Y(n38)
         );
  XNOR2xp5_ASAP7_6t_R U37 ( .A(n42), .B(n41), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U38 ( .A1(B[7]), .A2(A[7]), .B1(n40), .B2(n39), .Y(n41)
         );
  OR2x2_ASAP7_6t_R U39 ( .A(B[1]), .B(A[1]), .Y(O[1]) );
  OA21x1_ASAP7_6t_R U40 ( .A1(A[2]), .A2(B[2]), .B(n24), .Y(O[2]) );
  INVxp5_ASAP7_6t_R U41 ( .A(B[3]), .Y(n25) );
  INVxp5_ASAP7_6t_R U42 ( .A(A[3]), .Y(n26) );
  MAJIxp5_ASAP7_6t_R U43 ( .A(n26), .B(n25), .C(n24), .Y(n28) );
  MAJIxp5_ASAP7_6t_R U44 ( .A(B[4]), .B(A[4]), .C(n28), .Y(n34) );
  INVxp5_ASAP7_6t_R U45 ( .A(B[5]), .Y(n31) );
  INVxp5_ASAP7_6t_R U46 ( .A(A[5]), .Y(n32) );
  MAJIxp5_ASAP7_6t_R U47 ( .A(n34), .B(n31), .C(n32), .Y(n36) );
  MAJIxp5_ASAP7_6t_R U48 ( .A(B[6]), .B(A[6]), .C(n36), .Y(n42) );
  INVxp5_ASAP7_6t_R U49 ( .A(B[7]), .Y(n39) );
  INVxp5_ASAP7_6t_R U50 ( .A(A[7]), .Y(n40) );
  MAJIxp5_ASAP7_6t_R U51 ( .A(n42), .B(n39), .C(n40), .Y(O[8]) );
  OR2x2_ASAP7_6t_R U52 ( .A(A[0]), .B(B[0]), .Y(O[0]) );
  INVxp5_ASAP7_6t_R U53 ( .A(n28), .Y(n29) );
  INVxp5_ASAP7_6t_R U54 ( .A(A[4]), .Y(n27) );
  INVxp5_ASAP7_6t_R U55 ( .A(n36), .Y(n37) );
  INVxp5_ASAP7_6t_R U56 ( .A(A[6]), .Y(n35) );
endmodule

