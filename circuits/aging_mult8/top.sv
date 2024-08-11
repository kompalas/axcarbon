/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Thu Feb 22 22:13:52 2024
/////////////////////////////////////////////////////////////


module top ( a_i_0, a_i_1, p_o );
  input [7:0] a_i_0;
  input [7:0] a_i_1;
  output [8:0] p_o;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;

  NAND2_X1 U11 ( .A1(a_i_1[4]), .A2(a_i_0[4]), .ZN(n11) );
  AND2_X2 U12 ( .A1(a_i_0[2]), .A2(a_i_1[2]), .ZN(n34) );
  NAND2_X1 U13 ( .A1(a_i_1[7]), .A2(a_i_0[7]), .ZN(n29) );
  OR2_X1 U14 ( .A1(a_i_0[0]), .A2(a_i_1[0]), .ZN(p_o[0]) );
  OR2_X1 U15 ( .A1(a_i_0[5]), .A2(a_i_1[5]), .ZN(n40) );
  OR2_X4 U16 ( .A1(a_i_0[1]), .A2(a_i_1[1]), .ZN(p_o[1]) );
  NAND3_X1 U17 ( .A1(n23), .A2(n40), .A3(n32), .ZN(n27) );
  OR2_X2 U18 ( .A1(a_i_1[4]), .A2(a_i_0[4]), .ZN(n32) );
  NAND2_X1 U19 ( .A1(n40), .A2(n32), .ZN(n8) );
  OR2_X1 U20 ( .A1(a_i_1[5]), .A2(a_i_0[5]), .ZN(n10) );
  OR2_X1 U21 ( .A1(a_i_1[7]), .A2(a_i_0[7]), .ZN(n28) );
  NAND2_X1 U22 ( .A1(n9), .A2(n10), .ZN(n20) );
  NOR2_X1 U23 ( .A1(n42), .A2(n9), .ZN(n33) );
  AND2_X2 U24 ( .A1(a_i_0[4]), .A2(a_i_1[4]), .ZN(n9) );
  AOI21_X1 U25 ( .B1(n35), .B2(n34), .A(n37), .ZN(n12) );
  AOI21_X1 U26 ( .B1(n35), .B2(n34), .A(n37), .ZN(n13) );
  AOI21_X1 U27 ( .B1(n35), .B2(n34), .A(n37), .ZN(n43) );
  OR2_X2 U28 ( .A1(a_i_1[3]), .A2(a_i_0[3]), .ZN(n35) );
  AND2_X2 U29 ( .A1(a_i_1[3]), .A2(a_i_0[3]), .ZN(n37) );
  AND2_X1 U30 ( .A1(a_i_0[5]), .A2(a_i_1[5]), .ZN(n24) );
  INV_X1 U31 ( .A(n24), .ZN(n41) );
  OAI211_X1 U32 ( .C1(n43), .C2(n8), .A(n20), .B(n41), .ZN(n18) );
  OR2_X1 U33 ( .A1(a_i_1[6]), .A2(a_i_0[6]), .ZN(n23) );
  AND2_X1 U34 ( .A1(n23), .A2(n28), .ZN(n14) );
  NAND2_X1 U35 ( .A1(n18), .A2(n14), .ZN(n16) );
  AND2_X1 U36 ( .A1(a_i_1[6]), .A2(a_i_0[6]), .ZN(n22) );
  NAND2_X1 U37 ( .A1(n28), .A2(n22), .ZN(n15) );
  NAND3_X1 U38 ( .A1(n16), .A2(n15), .A3(n29), .ZN(p_o[8]) );
  INV_X1 U39 ( .A(n22), .ZN(n17) );
  NAND2_X1 U40 ( .A1(n17), .A2(n23), .ZN(n19) );
  XNOR2_X1 U41 ( .A(n18), .B(n19), .ZN(p_o[6]) );
  NOR2_X1 U42 ( .A1(a_i_1[6]), .A2(a_i_0[6]), .ZN(n21) );
  OR2_X1 U43 ( .A1(n20), .A2(n21), .ZN(n26) );
  AOI21_X1 U44 ( .B1(n24), .B2(n23), .A(n22), .ZN(n25) );
  OAI211_X1 U45 ( .C1(n27), .C2(n12), .A(n26), .B(n25), .ZN(n31) );
  NAND2_X1 U46 ( .A1(n29), .A2(n28), .ZN(n30) );
  XNOR2_X1 U47 ( .A(n31), .B(n30), .ZN(p_o[7]) );
  INV_X1 U48 ( .A(n32), .ZN(n42) );
  XNOR2_X1 U49 ( .A(n13), .B(n33), .ZN(p_o[4]) );
  XOR2_X1 U50 ( .A(a_i_0[2]), .B(a_i_1[2]), .Z(p_o[2]) );
  INV_X1 U51 ( .A(n34), .ZN(n39) );
  INV_X1 U52 ( .A(n35), .ZN(n36) );
  NOR2_X1 U53 ( .A1(n37), .A2(n36), .ZN(n38) );
  XNOR2_X1 U54 ( .A(n39), .B(n38), .ZN(p_o[3]) );
  NAND2_X1 U55 ( .A1(n41), .A2(n40), .ZN(n45) );
  OAI21_X1 U56 ( .B1(n13), .B2(n42), .A(n11), .ZN(n44) );
  XNOR2_X1 U57 ( .A(n45), .B(n44), .ZN(p_o[5]) );
endmodule

