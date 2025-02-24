/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:31:04 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38;

  NAND2xp5_ASAP7_6t_R U30 ( .A(B[3]), .B(A[3]), .Y(n37) );
  XNOR2xp5_ASAP7_6t_R U31 ( .A(B[4]), .B(n38), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U32 ( .A1(A[4]), .A2(n37), .B1(n36), .B2(n35), .Y(n38)
         );
  XNOR2xp5_ASAP7_6t_R U33 ( .A(n34), .B(n33), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U34 ( .A1(A[5]), .A2(B[5]), .B1(n32), .B2(n31), .Y(n33)
         );
  XNOR2xp5_ASAP7_6t_R U35 ( .A(A[6]), .B(n30), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U36 ( .A1(B[6]), .A2(n29), .B1(n28), .B2(n27), .Y(n30)
         );
  XNOR2xp5_ASAP7_6t_R U37 ( .A(n26), .B(n25), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U38 ( .A1(A[7]), .A2(B[7]), .B1(n24), .B2(n23), .Y(n25)
         );
  TIEHIxp5_ASAP7_6t_R U39 ( .H(O[0]) );
  OR2x2_ASAP7_6t_R U40 ( .A(A[1]), .B(B[1]), .Y(O[1]) );
  AND4x1_ASAP7_6t_R U41 ( .A(A[2]), .B(B[2]), .C(A[1]), .D(B[1]), .Y(n22) );
  OA31x1_ASAP7_6t_R U42 ( .A1(B[3]), .A2(A[3]), .A3(n22), .B(n37), .Y(O[3]) );
  OR2x2_ASAP7_6t_R U43 ( .A(A[2]), .B(B[2]), .Y(O[2]) );
  INVxp5_ASAP7_6t_R U44 ( .A(n37), .Y(n36) );
  MAJIxp5_ASAP7_6t_R U45 ( .A(B[4]), .B(A[4]), .C(n36), .Y(n34) );
  INVxp5_ASAP7_6t_R U46 ( .A(A[5]), .Y(n31) );
  INVxp5_ASAP7_6t_R U47 ( .A(B[5]), .Y(n32) );
  MAJIxp5_ASAP7_6t_R U48 ( .A(n34), .B(n31), .C(n32), .Y(n28) );
  MAJIxp5_ASAP7_6t_R U49 ( .A(A[6]), .B(B[6]), .C(n28), .Y(n26) );
  INVxp5_ASAP7_6t_R U50 ( .A(A[7]), .Y(n23) );
  INVxp5_ASAP7_6t_R U51 ( .A(B[7]), .Y(n24) );
  MAJIxp5_ASAP7_6t_R U52 ( .A(n26), .B(n23), .C(n24), .Y(O[8]) );
  INVxp5_ASAP7_6t_R U53 ( .A(n28), .Y(n29) );
  INVxp5_ASAP7_6t_R U54 ( .A(B[6]), .Y(n27) );
  INVxp5_ASAP7_6t_R U55 ( .A(A[4]), .Y(n35) );
endmodule

