/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:31:41 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38;

  NAND3xp33_ASAP7_6t_R U30 ( .A(B[2]), .B(A[3]), .C(n23), .Y(O[1]) );
  XNOR2xp5_ASAP7_6t_R U31 ( .A(B[4]), .B(n25), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U32 ( .A1(A[4]), .A2(O[1]), .B1(n26), .B2(n24), .Y(n25)
         );
  XNOR2xp5_ASAP7_6t_R U33 ( .A(n38), .B(n37), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U34 ( .A1(A[5]), .A2(B[5]), .B1(n36), .B2(n35), .Y(n37)
         );
  XNOR2xp5_ASAP7_6t_R U35 ( .A(B[6]), .B(n34), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U36 ( .A1(A[6]), .A2(n33), .B1(n32), .B2(n31), .Y(n34)
         );
  XNOR2xp5_ASAP7_6t_R U37 ( .A(n30), .B(n29), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U38 ( .A1(B[7]), .A2(A[7]), .B1(n28), .B2(n27), .Y(n29)
         );
  TIEHIxp5_ASAP7_6t_R U39 ( .H(O[0]) );
  INVxp5_ASAP7_6t_R U40 ( .A(B[7]), .Y(n27) );
  INVxp5_ASAP7_6t_R U41 ( .A(A[5]), .Y(n35) );
  AND4x1_ASAP7_6t_R U42 ( .A(A[2]), .B(B[3]), .C(n27), .D(n35), .Y(n23) );
  INVxp5_ASAP7_6t_R U43 ( .A(O[1]), .Y(n26) );
  INVxp5_ASAP7_6t_R U44 ( .A(A[4]), .Y(n24) );
  OR2x2_ASAP7_6t_R U45 ( .A(A[3]), .B(B[3]), .Y(O[3]) );
  OR2x2_ASAP7_6t_R U46 ( .A(B[2]), .B(A[2]), .Y(O[2]) );
  MAJIxp5_ASAP7_6t_R U47 ( .A(B[4]), .B(A[4]), .C(n26), .Y(n38) );
  INVxp5_ASAP7_6t_R U48 ( .A(B[5]), .Y(n36) );
  MAJIxp5_ASAP7_6t_R U49 ( .A(n38), .B(n35), .C(n36), .Y(n32) );
  MAJIxp5_ASAP7_6t_R U50 ( .A(B[6]), .B(A[6]), .C(n32), .Y(n30) );
  INVxp5_ASAP7_6t_R U51 ( .A(A[7]), .Y(n28) );
  MAJIxp5_ASAP7_6t_R U52 ( .A(n30), .B(n27), .C(n28), .Y(O[8]) );
  INVxp5_ASAP7_6t_R U53 ( .A(n32), .Y(n33) );
  INVxp5_ASAP7_6t_R U54 ( .A(A[6]), .Y(n31) );
endmodule

