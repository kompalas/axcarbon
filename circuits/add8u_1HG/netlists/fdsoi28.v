/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:52:00 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75;

  NOR2_X1 U10 ( .A1(n70), .A2(n67), .ZN(n33) );
  AND2_X2 U11 ( .A1(A[0]), .A2(B[0]), .ZN(n46) );
  NOR2_X1 U12 ( .A1(A[2]), .A2(B[2]), .ZN(n48) );
  INV_X1 U13 ( .A(n16), .ZN(n39) );
  NAND2_X2 U14 ( .A1(A[3]), .A2(B[3]), .ZN(n57) );
  NOR2_X2 U15 ( .A1(B[7]), .A2(A[7]), .ZN(n70) );
  NAND2_X1 U16 ( .A1(B[6]), .A2(A[6]), .ZN(n69) );
  NOR2_X2 U17 ( .A1(n14), .A2(n15), .ZN(n16) );
  INV_X8 U18 ( .A(A[3]), .ZN(n23) );
  INV_X8 U19 ( .A(B[6]), .ZN(n29) );
  AND2_X2 U20 ( .A1(B[7]), .A2(A[7]), .ZN(n67) );
  NAND2_X4 U21 ( .A1(n21), .A2(n20), .ZN(n51) );
  INV_X16 U22 ( .A(A[2]), .ZN(n10) );
  NOR2_X4 U23 ( .A1(n21), .A2(n10), .ZN(n54) );
  INV_X2 U24 ( .A(n11), .ZN(n32) );
  NAND2_X2 U25 ( .A1(n66), .A2(n41), .ZN(n11) );
  AND2_X4 U26 ( .A1(n35), .A2(n62), .ZN(n66) );
  NAND2_X4 U27 ( .A1(n13), .A2(n12), .ZN(n62) );
  NAND2_X4 U28 ( .A1(n15), .A2(n14), .ZN(n35) );
  INV_X16 U29 ( .A(B[4]), .ZN(n12) );
  INV_X16 U30 ( .A(A[4]), .ZN(n13) );
  INV_X16 U31 ( .A(B[5]), .ZN(n14) );
  INV_X16 U32 ( .A(A[5]), .ZN(n15) );
  AND2_X4 U33 ( .A1(A[4]), .A2(B[4]), .ZN(n61) );
  AOI21_X4 U34 ( .B1(n17), .B2(n66), .A(n72), .ZN(n44) );
  NAND2_X2 U35 ( .A1(n40), .A2(n39), .ZN(n72) );
  NAND2_X2 U36 ( .A1(n61), .A2(n35), .ZN(n40) );
  OAI211_X4 U37 ( .C1(n27), .C2(n50), .A(n18), .B(n57), .ZN(n17) );
  OAI211_X4 U38 ( .C1(n27), .C2(n50), .A(n18), .B(n57), .ZN(n19) );
  NAND2_X4 U39 ( .A1(n58), .A2(n54), .ZN(n18) );
  NAND2_X4 U40 ( .A1(n53), .A2(n52), .ZN(n50) );
  NAND3_X1 U41 ( .A1(n17), .A2(n66), .A3(n73), .ZN(n75) );
  AOI21_X2 U42 ( .B1(n19), .B2(n62), .A(n61), .ZN(n38) );
  AOI21_X2 U43 ( .B1(n19), .B2(n32), .A(n31), .ZN(n34) );
  XNOR2_X1 U44 ( .A(n17), .B(n64), .ZN(O[4]) );
  INV_X16 U45 ( .A(A[2]), .ZN(n20) );
  INV_X16 U46 ( .A(B[2]), .ZN(n21) );
  INV_X8 U47 ( .A(A[6]), .ZN(n28) );
  INV_X2 U48 ( .A(n41), .ZN(n65) );
  NAND2_X4 U49 ( .A1(n29), .A2(n28), .ZN(n41) );
  INV_X16 U50 ( .A(B[3]), .ZN(n22) );
  NAND2_X4 U51 ( .A1(n23), .A2(n22), .ZN(n58) );
  NAND2_X2 U52 ( .A1(n58), .A2(n51), .ZN(n27) );
  NAND2_X4 U53 ( .A1(B[1]), .A2(A[1]), .ZN(n45) );
  NAND2_X4 U54 ( .A1(A[0]), .A2(B[0]), .ZN(n24) );
  NAND2_X4 U55 ( .A1(n45), .A2(n24), .ZN(n53) );
  INV_X16 U56 ( .A(B[1]), .ZN(n26) );
  INV_X16 U57 ( .A(A[1]), .ZN(n25) );
  NAND2_X4 U58 ( .A1(n26), .A2(n25), .ZN(n52) );
  NAND2_X2 U59 ( .A1(n16), .A2(n41), .ZN(n30) );
  OAI211_X2 U60 ( .C1(n40), .C2(n65), .A(n30), .B(n69), .ZN(n31) );
  XNOR2_X1 U61 ( .A(n34), .B(n33), .ZN(O[7]) );
  NAND2_X1 U62 ( .A1(n35), .A2(n39), .ZN(n36) );
  INV_X1 U63 ( .A(n36), .ZN(n37) );
  XNOR2_X1 U64 ( .A(n38), .B(n37), .ZN(O[5]) );
  NAND2_X1 U65 ( .A1(n69), .A2(n41), .ZN(n42) );
  INV_X1 U66 ( .A(n42), .ZN(n43) );
  XNOR2_X1 U67 ( .A(n44), .B(n43), .ZN(O[6]) );
  XOR2_X2 U68 ( .A(A[0]), .B(B[0]), .Z(O[0]) );
  NAND2_X1 U69 ( .A1(n45), .A2(n52), .ZN(n47) );
  XNOR2_X1 U70 ( .A(n47), .B(n46), .ZN(O[1]) );
  NOR2_X1 U71 ( .A1(n48), .A2(n54), .ZN(n49) );
  XNOR2_X1 U72 ( .A(n50), .B(n49), .ZN(O[2]) );
  NAND3_X1 U73 ( .A1(n53), .A2(n52), .A3(n51), .ZN(n56) );
  INV_X1 U74 ( .A(n54), .ZN(n55) );
  NAND2_X1 U75 ( .A1(n56), .A2(n55), .ZN(n60) );
  NAND2_X1 U76 ( .A1(n57), .A2(n58), .ZN(n59) );
  XNOR2_X1 U77 ( .A(n60), .B(n59), .ZN(O[3]) );
  INV_X1 U78 ( .A(n61), .ZN(n63) );
  NAND2_X1 U79 ( .A1(n63), .A2(n62), .ZN(n64) );
  NOR2_X1 U80 ( .A1(n65), .A2(n70), .ZN(n73) );
  INV_X1 U81 ( .A(n67), .ZN(n68) );
  OAI21_X1 U82 ( .B1(n70), .B2(n69), .A(n68), .ZN(n71) );
  AOI21_X1 U83 ( .B1(n72), .B2(n73), .A(n71), .ZN(n74) );
  NAND2_X1 U84 ( .A1(n75), .A2(n74), .ZN(O[8]) );
endmodule

