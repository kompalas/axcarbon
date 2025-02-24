/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 20:52:27 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73;

  NAND2_X2 U10 ( .A1(B[7]), .A2(A[7]), .ZN(n38) );
  NAND2_X1 U11 ( .A1(B[2]), .A2(A[2]), .ZN(n16) );
  NOR2_X1 U12 ( .A1(A[2]), .A2(B[2]), .ZN(n66) );
  NAND2_X2 U13 ( .A1(A[3]), .A2(B[3]), .ZN(n64) );
  NAND2_X1 U14 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  BUF_X1 U15 ( .A(B[0]), .Z(n11) );
  OR2_X4 U16 ( .A1(B[3]), .A2(A[3]), .ZN(n18) );
  AND2_X1 U17 ( .A1(B[2]), .A2(A[2]), .ZN(n65) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(n11), .ZN(n14) );
  OR2_X1 U19 ( .A1(B[5]), .A2(A[5]), .ZN(n22) );
  NAND2_X1 U20 ( .A1(n10), .A2(n45), .ZN(n46) );
  NAND3_X1 U21 ( .A1(n71), .A2(n52), .A3(n55), .ZN(n10) );
  NAND2_X1 U22 ( .A1(n19), .A2(n65), .ZN(n12) );
  OAI211_X1 U23 ( .C1(A[5]), .C2(B[5]), .A(B[4]), .B(A[4]), .ZN(n33) );
  NAND2_X1 U24 ( .A1(n39), .A2(n41), .ZN(n13) );
  AND2_X1 U25 ( .A1(A[1]), .A2(B[1]), .ZN(n15) );
  AND2_X1 U26 ( .A1(A[1]), .A2(B[1]), .ZN(n61) );
  OR2_X2 U27 ( .A1(B[1]), .A2(A[1]), .ZN(n17) );
  AND2_X1 U28 ( .A1(n33), .A2(n49), .ZN(n42) );
  OR2_X2 U29 ( .A1(B[3]), .A2(A[3]), .ZN(n19) );
  OR2_X1 U30 ( .A1(B[3]), .A2(A[3]), .ZN(n63) );
  NAND2_X1 U31 ( .A1(n19), .A2(n65), .ZN(n20) );
  AOI21_X1 U32 ( .B1(n59), .B2(n58), .A(n15), .ZN(n21) );
  AOI21_X1 U33 ( .B1(n17), .B2(n58), .A(n61), .ZN(n23) );
  AOI21_X1 U34 ( .B1(n59), .B2(n58), .A(n15), .ZN(n24) );
  AOI21_X1 U35 ( .B1(n17), .B2(n58), .A(n61), .ZN(n36) );
  OAI211_X1 U36 ( .C1(n23), .C2(n30), .A(n29), .B(n64), .ZN(n25) );
  OAI211_X1 U37 ( .C1(n36), .C2(n30), .A(n64), .B(n12), .ZN(n26) );
  OR2_X1 U38 ( .A1(n34), .A2(n42), .ZN(n27) );
  NAND4_X1 U39 ( .A1(n35), .A2(n27), .A3(n13), .A4(n38), .ZN(O[8]) );
  OR2_X2 U40 ( .A1(B[1]), .A2(A[1]), .ZN(n59) );
  AND2_X2 U41 ( .A1(A[0]), .A2(B[0]), .ZN(n58) );
  OR2_X1 U42 ( .A1(A[2]), .A2(B[2]), .ZN(n28) );
  NAND2_X1 U43 ( .A1(n63), .A2(n28), .ZN(n30) );
  NAND2_X1 U44 ( .A1(n19), .A2(n65), .ZN(n29) );
  OAI211_X1 U45 ( .C1(n24), .C2(n30), .A(n64), .B(n20), .ZN(n71) );
  OR2_X1 U46 ( .A1(B[6]), .A2(A[6]), .ZN(n55) );
  OR2_X1 U47 ( .A1(B[7]), .A2(A[7]), .ZN(n39) );
  NAND2_X1 U48 ( .A1(n55), .A2(n39), .ZN(n34) );
  OR2_X1 U49 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NAND2_X1 U50 ( .A1(n69), .A2(n22), .ZN(n40) );
  NOR2_X1 U51 ( .A1(n34), .A2(n40), .ZN(n31) );
  AND2_X1 U52 ( .A1(n26), .A2(n31), .ZN(n32) );
  INV_X1 U53 ( .A(n32), .ZN(n35) );
  NAND2_X1 U54 ( .A1(B[5]), .A2(A[5]), .ZN(n49) );
  AND2_X1 U55 ( .A1(B[6]), .A2(A[6]), .ZN(n41) );
  NOR2_X1 U56 ( .A1(n65), .A2(n66), .ZN(n37) );
  XNOR2_X1 U57 ( .A(n21), .B(n37), .ZN(O[2]) );
  NAND2_X1 U58 ( .A1(n39), .A2(n38), .ZN(n47) );
  INV_X1 U59 ( .A(n40), .ZN(n52) );
  INV_X1 U60 ( .A(n55), .ZN(n43) );
  INV_X1 U61 ( .A(n41), .ZN(n54) );
  OAI21_X1 U62 ( .B1(n42), .B2(n43), .A(n54), .ZN(n44) );
  INV_X1 U63 ( .A(n44), .ZN(n45) );
  XNOR2_X1 U64 ( .A(n46), .B(n47), .ZN(O[7]) );
  NAND2_X1 U65 ( .A1(n26), .A2(n69), .ZN(n48) );
  NAND2_X1 U66 ( .A1(n48), .A2(n70), .ZN(n51) );
  NAND2_X1 U67 ( .A1(n22), .A2(n49), .ZN(n50) );
  XNOR2_X1 U68 ( .A(n51), .B(n50), .ZN(O[5]) );
  NAND2_X1 U69 ( .A1(n25), .A2(n52), .ZN(n53) );
  NAND2_X1 U70 ( .A1(n53), .A2(n42), .ZN(n57) );
  NAND2_X1 U71 ( .A1(n55), .A2(n54), .ZN(n56) );
  XNOR2_X1 U72 ( .A(n57), .B(n56), .ZN(O[6]) );
  XOR2_X1 U73 ( .A(A[0]), .B(n11), .Z(O[0]) );
  INV_X1 U74 ( .A(n59), .ZN(n60) );
  NOR2_X1 U75 ( .A1(n15), .A2(n60), .ZN(n62) );
  XNOR2_X1 U76 ( .A(n14), .B(n62), .ZN(O[1]) );
  NAND2_X1 U77 ( .A1(n64), .A2(n18), .ZN(n68) );
  OAI21_X1 U78 ( .B1(n66), .B2(n21), .A(n16), .ZN(n67) );
  XNOR2_X1 U79 ( .A(n68), .B(n67), .ZN(O[3]) );
  NAND2_X1 U80 ( .A1(n70), .A2(n69), .ZN(n73) );
  BUF_X1 U81 ( .A(n25), .Z(n72) );
  XNOR2_X1 U82 ( .A(n73), .B(n72), .ZN(O[4]) );
endmodule

