/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:29:03 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57;

  NAND2xp5_ASAP7_6t_R U37 ( .A(A[0]), .B(B[0]), .Y(n31) );
  XNOR2xp5_ASAP7_6t_R U38 ( .A(n30), .B(n31), .Y(O[1]) );
  AOI22xp25_ASAP7_6t_R U39 ( .A1(A[1]), .A2(B[1]), .B1(n32), .B2(n33), .Y(n30)
         );
  XNOR2xp5_ASAP7_6t_R U40 ( .A(B[2]), .B(n36), .Y(O[2]) );
  AOI22xp25_ASAP7_6t_R U41 ( .A1(A[2]), .A2(n35), .B1(n37), .B2(n34), .Y(n36)
         );
  XNOR2xp5_ASAP7_6t_R U42 ( .A(n41), .B(n38), .Y(O[3]) );
  AOI22xp25_ASAP7_6t_R U43 ( .A1(B[3]), .A2(A[3]), .B1(n39), .B2(n40), .Y(n38)
         );
  XNOR2xp5_ASAP7_6t_R U44 ( .A(B[4]), .B(n53), .Y(O[4]) );
  AOI22xp25_ASAP7_6t_R U45 ( .A1(A[4]), .A2(n52), .B1(n51), .B2(n50), .Y(n53)
         );
  XNOR2xp5_ASAP7_6t_R U46 ( .A(n45), .B(n42), .Y(O[5]) );
  AOI22xp25_ASAP7_6t_R U47 ( .A1(A[5]), .A2(B[5]), .B1(n43), .B2(n44), .Y(n42)
         );
  XNOR2xp5_ASAP7_6t_R U48 ( .A(A[6]), .B(n48), .Y(O[6]) );
  AOI22xp25_ASAP7_6t_R U49 ( .A1(B[6]), .A2(n47), .B1(n49), .B2(n46), .Y(n48)
         );
  XNOR2xp5_ASAP7_6t_R U50 ( .A(n57), .B(n56), .Y(O[7]) );
  AOI22xp25_ASAP7_6t_R U51 ( .A1(B[7]), .A2(A[7]), .B1(n55), .B2(n54), .Y(n56)
         );
  OA21x1_ASAP7_6t_R U52 ( .A1(A[0]), .A2(B[0]), .B(n31), .Y(O[0]) );
  INVxp5_ASAP7_6t_R U53 ( .A(B[1]), .Y(n32) );
  INVxp5_ASAP7_6t_R U54 ( .A(A[1]), .Y(n33) );
  MAJIxp5_ASAP7_6t_R U55 ( .A(n33), .B(n32), .C(n31), .Y(n37) );
  INVxp5_ASAP7_6t_R U56 ( .A(n37), .Y(n35) );
  INVxp5_ASAP7_6t_R U57 ( .A(A[2]), .Y(n34) );
  MAJIxp5_ASAP7_6t_R U58 ( .A(B[2]), .B(A[2]), .C(n37), .Y(n41) );
  INVxp5_ASAP7_6t_R U59 ( .A(A[3]), .Y(n39) );
  INVxp5_ASAP7_6t_R U60 ( .A(B[3]), .Y(n40) );
  MAJIxp5_ASAP7_6t_R U61 ( .A(n41), .B(n40), .C(n39), .Y(n51) );
  MAJIxp5_ASAP7_6t_R U62 ( .A(B[4]), .B(A[4]), .C(n51), .Y(n45) );
  INVxp5_ASAP7_6t_R U63 ( .A(B[5]), .Y(n43) );
  INVxp5_ASAP7_6t_R U64 ( .A(A[5]), .Y(n44) );
  MAJIxp5_ASAP7_6t_R U65 ( .A(n45), .B(n44), .C(n43), .Y(n49) );
  INVxp5_ASAP7_6t_R U66 ( .A(n49), .Y(n47) );
  INVxp5_ASAP7_6t_R U67 ( .A(B[6]), .Y(n46) );
  MAJIxp5_ASAP7_6t_R U68 ( .A(A[6]), .B(B[6]), .C(n49), .Y(n57) );
  INVxp5_ASAP7_6t_R U69 ( .A(B[7]), .Y(n54) );
  INVxp5_ASAP7_6t_R U70 ( .A(A[7]), .Y(n55) );
  MAJIxp5_ASAP7_6t_R U71 ( .A(n57), .B(n54), .C(n55), .Y(O[8]) );
  INVxp5_ASAP7_6t_R U72 ( .A(n51), .Y(n52) );
  INVxp5_ASAP7_6t_R U73 ( .A(A[4]), .Y(n50) );
endmodule

