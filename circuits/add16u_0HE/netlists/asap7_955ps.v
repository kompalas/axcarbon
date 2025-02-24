/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 16:31:40 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64;
  assign O[5] = O[15];
  assign O[7] = A[7];
  assign O[1] = A[13];
  assign O[4] = B[2];
  assign O[3] = B[13];
  assign O[0] = B[11];

  XNOR2xp5_ASAP7_6t_R U40 ( .A(B[8]), .B(n37), .Y(O[8]) );
  AOI22xp25_ASAP7_6t_R U41 ( .A1(A[8]), .A2(n36), .B1(B[7]), .B2(n35), .Y(n37)
         );
  XNOR2xp5_ASAP7_6t_R U42 ( .A(n41), .B(n40), .Y(O[9]) );
  AOI22xp25_ASAP7_6t_R U43 ( .A1(B[9]), .A2(A[9]), .B1(n39), .B2(n38), .Y(n40)
         );
  XNOR2xp5_ASAP7_6t_R U44 ( .A(B[10]), .B(n45), .Y(O[10]) );
  AOI22xp25_ASAP7_6t_R U45 ( .A1(A[10]), .A2(n44), .B1(n43), .B2(n42), .Y(n45)
         );
  XNOR2xp5_ASAP7_6t_R U46 ( .A(n49), .B(n48), .Y(O[11]) );
  AOI22xp25_ASAP7_6t_R U47 ( .A1(B[11]), .A2(A[11]), .B1(n47), .B2(n46), .Y(
        n48) );
  XNOR2xp5_ASAP7_6t_R U48 ( .A(B[12]), .B(n52), .Y(O[12]) );
  AOI22xp25_ASAP7_6t_R U49 ( .A1(A[12]), .A2(n51), .B1(O[2]), .B2(n50), .Y(n52) );
  XNOR2xp5_ASAP7_6t_R U50 ( .A(n56), .B(n55), .Y(O[13]) );
  AOI22xp25_ASAP7_6t_R U51 ( .A1(B[13]), .A2(A[13]), .B1(n54), .B2(n53), .Y(
        n55) );
  XNOR2xp5_ASAP7_6t_R U52 ( .A(B[14]), .B(n60), .Y(O[14]) );
  AOI22xp25_ASAP7_6t_R U53 ( .A1(A[14]), .A2(n59), .B1(n58), .B2(n57), .Y(n60)
         );
  XNOR2xp5_ASAP7_6t_R U54 ( .A(n64), .B(n63), .Y(O[15]) );
  AOI22xp25_ASAP7_6t_R U55 ( .A1(B[15]), .A2(A[15]), .B1(n62), .B2(n61), .Y(
        n63) );
  TIEHIxp5_ASAP7_6t_R U56 ( .H(O[6]) );
  MAJIxp5_ASAP7_6t_R U57 ( .A(B[8]), .B(A[8]), .C(B[7]), .Y(n41) );
  INVxp5_ASAP7_6t_R U58 ( .A(B[9]), .Y(n38) );
  INVxp5_ASAP7_6t_R U59 ( .A(A[9]), .Y(n39) );
  MAJIxp5_ASAP7_6t_R U60 ( .A(n41), .B(n38), .C(n39), .Y(n43) );
  MAJIxp5_ASAP7_6t_R U61 ( .A(B[10]), .B(A[10]), .C(n43), .Y(n49) );
  INVxp5_ASAP7_6t_R U62 ( .A(B[11]), .Y(n46) );
  INVxp5_ASAP7_6t_R U63 ( .A(A[11]), .Y(n47) );
  MAJIxp5_ASAP7_6t_R U64 ( .A(n49), .B(n46), .C(n47), .Y(O[2]) );
  MAJIxp5_ASAP7_6t_R U65 ( .A(B[12]), .B(A[12]), .C(O[2]), .Y(n56) );
  INVxp5_ASAP7_6t_R U66 ( .A(B[13]), .Y(n53) );
  INVxp5_ASAP7_6t_R U67 ( .A(A[13]), .Y(n54) );
  MAJIxp5_ASAP7_6t_R U68 ( .A(n56), .B(n53), .C(n54), .Y(n58) );
  MAJIxp5_ASAP7_6t_R U69 ( .A(B[14]), .B(A[14]), .C(n58), .Y(n64) );
  INVxp5_ASAP7_6t_R U70 ( .A(B[15]), .Y(n61) );
  INVxp5_ASAP7_6t_R U71 ( .A(A[15]), .Y(n62) );
  MAJIxp5_ASAP7_6t_R U72 ( .A(n64), .B(n61), .C(n62), .Y(O[16]) );
  INVxp5_ASAP7_6t_R U73 ( .A(B[7]), .Y(n36) );
  INVxp5_ASAP7_6t_R U74 ( .A(A[8]), .Y(n35) );
  INVxp5_ASAP7_6t_R U75 ( .A(n43), .Y(n44) );
  INVxp5_ASAP7_6t_R U76 ( .A(A[10]), .Y(n42) );
  INVxp5_ASAP7_6t_R U77 ( .A(O[2]), .Y(n51) );
  INVxp5_ASAP7_6t_R U78 ( .A(A[12]), .Y(n50) );
  INVxp5_ASAP7_6t_R U79 ( .A(n58), .Y(n59) );
  INVxp5_ASAP7_6t_R U80 ( .A(A[14]), .Y(n57) );
endmodule

