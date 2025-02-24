/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:13:29 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  assign O[6] = 1'b1;
  assign O[15] = O[5];
  assign O[7] = A[7];
  assign O[1] = A[13];
  assign O[4] = B[2];
  assign O[3] = B[13];
  assign O[0] = B[11];

  INV_X1 U11 ( .A(n57), .ZN(n61) );
  OR2_X1 U12 ( .A1(A[14]), .A2(B[14]), .ZN(n46) );
  NAND2_X1 U13 ( .A1(A[14]), .A2(B[14]), .ZN(n48) );
  NAND2_X1 U14 ( .A1(n72), .A2(n36), .ZN(n38) );
  NAND2_X1 U15 ( .A1(A[15]), .A2(B[15]), .ZN(n81) );
  NAND2_X1 U16 ( .A1(B[13]), .A2(A[13]), .ZN(n37) );
  INV_X8 U17 ( .A(A[11]), .ZN(n15) );
  INV_X8 U18 ( .A(A[9]), .ZN(n28) );
  NAND2_X4 U19 ( .A1(n38), .A2(n37), .ZN(n47) );
  NAND2_X4 U20 ( .A1(A[11]), .A2(B[11]), .ZN(n69) );
  OR2_X2 U21 ( .A1(A[15]), .A2(B[15]), .ZN(n79) );
  AND2_X2 U22 ( .A1(A[12]), .A2(B[12]), .ZN(n72) );
  INV_X1 U23 ( .A(n68), .ZN(n18) );
  INV_X16 U24 ( .A(B[11]), .ZN(n14) );
  NAND2_X2 U25 ( .A1(n15), .A2(n14), .ZN(n68) );
  AOI21_X2 U26 ( .B1(n51), .B2(n50), .A(n78), .ZN(n52) );
  OR2_X4 U27 ( .A1(B[13]), .A2(A[13]), .ZN(n36) );
  BUF_X2 U28 ( .A(O[2]), .Z(n16) );
  BUF_X1 U29 ( .A(n62), .Z(n17) );
  NAND2_X1 U30 ( .A1(n64), .A2(n57), .ZN(n26) );
  OAI21_X1 U31 ( .B1(n26), .B2(n17), .A(n25), .ZN(n71) );
  NAND3_X1 U32 ( .A1(n20), .A2(n19), .A3(n68), .ZN(n45) );
  NAND2_X1 U33 ( .A1(n25), .A2(n62), .ZN(n19) );
  NAND2_X1 U34 ( .A1(n25), .A2(n26), .ZN(n20) );
  NAND3_X4 U35 ( .A1(n22), .A2(n21), .A3(n69), .ZN(O[2]) );
  OR2_X4 U36 ( .A1(n25), .A2(n18), .ZN(n21) );
  NAND3_X2 U37 ( .A1(n24), .A2(n23), .A3(n68), .ZN(n22) );
  INV_X2 U38 ( .A(n62), .ZN(n23) );
  INV_X1 U39 ( .A(n26), .ZN(n24) );
  AOI21_X4 U40 ( .B1(n59), .B2(n64), .A(n63), .ZN(n25) );
  AND2_X4 U41 ( .A1(n27), .A2(n55), .ZN(n62) );
  AND2_X4 U42 ( .A1(B[10]), .A2(A[10]), .ZN(n63) );
  AND2_X4 U43 ( .A1(A[9]), .A2(B[9]), .ZN(n59) );
  NAND2_X4 U44 ( .A1(n28), .A2(n29), .ZN(n57) );
  NAND2_X4 U45 ( .A1(n31), .A2(n32), .ZN(n64) );
  NAND2_X4 U46 ( .A1(A[8]), .A2(B[7]), .ZN(n55) );
  OAI21_X4 U47 ( .B1(A[8]), .B2(B[7]), .A(B[8]), .ZN(n27) );
  AOI21_X1 U48 ( .B1(O[2]), .B2(n40), .A(n47), .ZN(n39) );
  INV_X16 U49 ( .A(B[9]), .ZN(n29) );
  OR2_X4 U50 ( .A1(A[12]), .A2(B[12]), .ZN(n73) );
  AND2_X1 U51 ( .A1(n48), .A2(n46), .ZN(n30) );
  INV_X16 U52 ( .A(A[10]), .ZN(n32) );
  INV_X16 U53 ( .A(B[10]), .ZN(n31) );
  AOI21_X1 U54 ( .B1(O[2]), .B2(n73), .A(n72), .ZN(n35) );
  NAND2_X1 U55 ( .A1(n37), .A2(n36), .ZN(n33) );
  INV_X1 U56 ( .A(n33), .ZN(n34) );
  XNOR2_X1 U57 ( .A(n35), .B(n34), .ZN(O[13]) );
  AND2_X1 U58 ( .A1(n73), .A2(n36), .ZN(n40) );
  XNOR2_X1 U59 ( .A(n39), .B(n30), .ZN(O[14]) );
  NAND2_X1 U60 ( .A1(n40), .A2(n46), .ZN(n76) );
  NAND2_X1 U61 ( .A1(n81), .A2(n79), .ZN(n44) );
  NOR2_X1 U62 ( .A1(n76), .A2(n44), .ZN(n54) );
  INV_X1 U63 ( .A(n48), .ZN(n42) );
  INV_X1 U64 ( .A(n44), .ZN(n41) );
  OAI211_X1 U65 ( .C1(n47), .C2(n42), .A(n41), .B(n46), .ZN(n43) );
  INV_X1 U66 ( .A(n43), .ZN(n53) );
  NAND2_X1 U67 ( .A1(n76), .A2(n44), .ZN(n51) );
  NAND3_X1 U68 ( .A1(n45), .A2(n69), .A3(n44), .ZN(n50) );
  NAND2_X1 U69 ( .A1(n47), .A2(n46), .ZN(n49) );
  NAND2_X2 U70 ( .A1(n49), .A2(n48), .ZN(n78) );
  AOI211_X1 U71 ( .C1(n54), .C2(n16), .A(n53), .B(n52), .ZN(O[5]) );
  OAI21_X2 U72 ( .B1(A[8]), .B2(B[7]), .A(n55), .ZN(n56) );
  XNOR2_X1 U73 ( .A(B[8]), .B(n56), .ZN(O[8]) );
  NOR2_X1 U74 ( .A1(n61), .A2(n59), .ZN(n58) );
  XNOR2_X1 U75 ( .A(n58), .B(n62), .ZN(O[9]) );
  INV_X1 U76 ( .A(n59), .ZN(n60) );
  OAI21_X1 U77 ( .B1(n17), .B2(n61), .A(n60), .ZN(n67) );
  INV_X1 U78 ( .A(n63), .ZN(n65) );
  NAND2_X1 U79 ( .A1(n64), .A2(n65), .ZN(n66) );
  XNOR2_X1 U80 ( .A(n67), .B(n66), .ZN(O[10]) );
  NAND2_X1 U81 ( .A1(n69), .A2(n68), .ZN(n70) );
  XNOR2_X1 U82 ( .A(n71), .B(n70), .ZN(O[11]) );
  INV_X1 U83 ( .A(n72), .ZN(n74) );
  NAND2_X1 U84 ( .A1(n74), .A2(n73), .ZN(n75) );
  XNOR2_X1 U85 ( .A(O[2]), .B(n75), .ZN(O[12]) );
  INV_X1 U86 ( .A(n76), .ZN(n77) );
  NAND3_X1 U87 ( .A1(n16), .A2(n77), .A3(n79), .ZN(n82) );
  NAND2_X1 U88 ( .A1(n79), .A2(n78), .ZN(n80) );
  NAND3_X1 U89 ( .A1(n82), .A2(n81), .A3(n80), .ZN(O[16]) );
endmodule

