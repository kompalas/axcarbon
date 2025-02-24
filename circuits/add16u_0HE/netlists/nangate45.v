/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:14:51 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84;
  assign O[6] = 1'b1;
  assign O[15] = O[5];
  assign O[7] = A[7];
  assign O[1] = A[13];
  assign O[4] = B[2];
  assign O[3] = B[13];
  assign O[0] = B[11];

  NOR2_X1 U11 ( .A1(A[9]), .A2(B[9]), .ZN(n19) );
  NAND2_X1 U12 ( .A1(A[14]), .A2(B[14]), .ZN(n66) );
  OR2_X2 U13 ( .A1(A[10]), .A2(B[10]), .ZN(n37) );
  OR2_X2 U14 ( .A1(A[12]), .A2(B[12]), .ZN(n69) );
  NAND2_X1 U15 ( .A1(A[11]), .A2(B[11]), .ZN(n78) );
  OR2_X2 U16 ( .A1(A[11]), .A2(B[11]), .ZN(n77) );
  NAND2_X1 U17 ( .A1(A[15]), .A2(B[15]), .ZN(n51) );
  AND2_X1 U18 ( .A1(n33), .A2(n56), .ZN(n62) );
  OR2_X2 U19 ( .A1(A[13]), .A2(B[13]), .ZN(n57) );
  NAND4_X1 U20 ( .A1(n43), .A2(n27), .A3(n77), .A4(n39), .ZN(n14) );
  AND2_X1 U21 ( .A1(A[10]), .A2(B[10]), .ZN(n15) );
  AND2_X1 U22 ( .A1(A[10]), .A2(B[10]), .ZN(n36) );
  OR2_X1 U23 ( .A1(A[10]), .A2(B[10]), .ZN(n22) );
  AND2_X1 U24 ( .A1(n37), .A2(n38), .ZN(n43) );
  OR2_X1 U25 ( .A1(A[15]), .A2(B[15]), .ZN(n50) );
  NAND2_X1 U26 ( .A1(n48), .A2(n50), .ZN(n16) );
  NAND2_X1 U27 ( .A1(n37), .A2(n38), .ZN(n17) );
  AND2_X1 U28 ( .A1(A[11]), .A2(B[11]), .ZN(n18) );
  AND2_X1 U29 ( .A1(B[11]), .A2(A[11]), .ZN(n25) );
  OAI21_X1 U30 ( .B1(n34), .B2(n62), .A(n66), .ZN(n48) );
  AOI21_X1 U31 ( .B1(n39), .B2(B[8]), .A(n73), .ZN(n20) );
  AOI21_X1 U32 ( .B1(n39), .B2(B[8]), .A(n73), .ZN(n21) );
  AOI21_X1 U33 ( .B1(n39), .B2(B[8]), .A(n73), .ZN(n82) );
  OR2_X1 U34 ( .A1(n47), .A2(n28), .ZN(n60) );
  BUF_X1 U35 ( .A(n22), .Z(n23) );
  AOI211_X1 U36 ( .C1(n79), .C2(n37), .A(n15), .B(n18), .ZN(n24) );
  AOI211_X1 U37 ( .C1(n79), .C2(n22), .A(n25), .B(n36), .ZN(n47) );
  NAND2_X1 U38 ( .A1(n60), .A2(n14), .ZN(n30) );
  BUF_X1 U39 ( .A(n30), .Z(O[2]) );
  OR2_X1 U40 ( .A1(A[9]), .A2(B[9]), .ZN(n38) );
  NAND2_X1 U41 ( .A1(B[7]), .A2(A[8]), .ZN(n26) );
  INV_X1 U42 ( .A(B[8]), .ZN(n75) );
  NAND2_X1 U43 ( .A1(n26), .A2(n75), .ZN(n27) );
  OR2_X2 U44 ( .A1(B[7]), .A2(A[8]), .ZN(n39) );
  NAND4_X1 U45 ( .A1(n43), .A2(n27), .A3(n77), .A4(n39), .ZN(n61) );
  AND2_X2 U46 ( .A1(A[9]), .A2(B[9]), .ZN(n79) );
  INV_X1 U47 ( .A(n77), .ZN(n28) );
  OR2_X1 U48 ( .A1(A[14]), .A2(B[14]), .ZN(n65) );
  NAND2_X1 U49 ( .A1(n65), .A2(n50), .ZN(n29) );
  NAND2_X1 U50 ( .A1(n69), .A2(n57), .ZN(n64) );
  NOR2_X1 U51 ( .A1(n29), .A2(n64), .ZN(n31) );
  AND2_X1 U52 ( .A1(n30), .A2(n31), .ZN(n32) );
  INV_X1 U53 ( .A(n32), .ZN(n35) );
  INV_X1 U54 ( .A(n65), .ZN(n34) );
  AND2_X1 U55 ( .A1(A[12]), .A2(B[12]), .ZN(n54) );
  NAND2_X1 U56 ( .A1(n57), .A2(n54), .ZN(n33) );
  NAND2_X1 U57 ( .A1(A[13]), .A2(B[13]), .ZN(n56) );
  NAND3_X1 U58 ( .A1(n35), .A2(n16), .A3(n51), .ZN(O[16]) );
  INV_X1 U59 ( .A(n15), .ZN(n80) );
  NAND2_X1 U60 ( .A1(n80), .A2(n23), .ZN(n42) );
  AND2_X1 U61 ( .A1(B[7]), .A2(A[8]), .ZN(n73) );
  INV_X1 U62 ( .A(n79), .ZN(n40) );
  OAI21_X1 U63 ( .B1(n19), .B2(n21), .A(n40), .ZN(n41) );
  XNOR2_X1 U64 ( .A(n42), .B(n41), .ZN(O[10]) );
  OR2_X1 U65 ( .A1(n17), .A2(n82), .ZN(n46) );
  NAND2_X1 U66 ( .A1(n77), .A2(n65), .ZN(n44) );
  OR2_X1 U67 ( .A1(n44), .A2(n64), .ZN(n45) );
  AOI21_X1 U68 ( .B1(n46), .B2(n24), .A(n45), .ZN(n49) );
  NOR2_X1 U69 ( .A1(n49), .A2(n48), .ZN(n53) );
  AND2_X1 U70 ( .A1(n51), .A2(n50), .ZN(n52) );
  XNOR2_X1 U71 ( .A(n53), .B(n52), .ZN(O[5]) );
  INV_X1 U72 ( .A(n54), .ZN(n70) );
  NAND3_X1 U73 ( .A1(n60), .A2(n14), .A3(n70), .ZN(n55) );
  NAND2_X1 U74 ( .A1(n55), .A2(n69), .ZN(n59) );
  AND2_X1 U75 ( .A1(n57), .A2(n56), .ZN(n58) );
  XNOR2_X1 U76 ( .A(n59), .B(n58), .ZN(O[13]) );
  OR2_X1 U77 ( .A1(n61), .A2(n64), .ZN(n63) );
  OAI211_X1 U78 ( .C1(n64), .C2(n60), .A(n63), .B(n62), .ZN(n68) );
  NAND2_X1 U79 ( .A1(n66), .A2(n65), .ZN(n67) );
  XNOR2_X1 U80 ( .A(n68), .B(n67), .ZN(O[14]) );
  NAND2_X1 U81 ( .A1(n70), .A2(n69), .ZN(n71) );
  XNOR2_X1 U82 ( .A(O[2]), .B(n71), .ZN(O[12]) );
  INV_X1 U83 ( .A(n39), .ZN(n72) );
  NOR2_X1 U84 ( .A1(n73), .A2(n72), .ZN(n74) );
  XNOR2_X1 U85 ( .A(n75), .B(n74), .ZN(O[8]) );
  NOR2_X1 U86 ( .A1(n79), .A2(n19), .ZN(n76) );
  XNOR2_X1 U87 ( .A(n20), .B(n76), .ZN(O[9]) );
  NAND2_X1 U88 ( .A1(n78), .A2(n77), .ZN(n84) );
  NAND2_X1 U89 ( .A1(n23), .A2(n79), .ZN(n81) );
  OAI211_X1 U90 ( .C1(n17), .C2(n21), .A(n81), .B(n80), .ZN(n83) );
  XNOR2_X1 U91 ( .A(n84), .B(n83), .ZN(O[11]) );
endmodule

