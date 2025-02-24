/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:09:07 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95;
  assign O[4] = 1'b0;
  assign O[14] = O[0];
  assign O[3] = A[4];
  assign O[2] = A[11];
  assign O[1] = B[9];

  NAND2_X1 U15 ( .A1(A[15]), .A2(B[15]), .ZN(n92) );
  OR2_X1 U16 ( .A1(B[14]), .A2(A[14]), .ZN(n87) );
  AND2_X1 U17 ( .A1(B[14]), .A2(A[14]), .ZN(n90) );
  OR2_X4 U18 ( .A1(A[15]), .A2(B[15]), .ZN(n91) );
  CLKBUF_X1 U19 ( .A(B[6]), .Z(n21) );
  OR2_X1 U20 ( .A1(A[11]), .A2(B[11]), .ZN(n20) );
  NAND2_X1 U21 ( .A1(A[6]), .A2(n21), .ZN(n72) );
  INV_X1 U22 ( .A(n22), .ZN(n79) );
  NOR2_X1 U23 ( .A1(A[9]), .A2(B[9]), .ZN(n82) );
  NAND2_X1 U24 ( .A1(B[8]), .A2(A[8]), .ZN(n22) );
  OR2_X1 U25 ( .A1(A[6]), .A2(n21), .ZN(n23) );
  OR2_X1 U26 ( .A1(A[6]), .A2(n21), .ZN(n24) );
  OR2_X1 U27 ( .A1(A[6]), .A2(B[6]), .ZN(n73) );
  AND2_X2 U28 ( .A1(A[7]), .A2(B[7]), .ZN(n76) );
  NAND4_X1 U29 ( .A1(n45), .A2(n62), .A3(n35), .A4(n52), .ZN(n39) );
  INV_X1 U30 ( .A(n75), .ZN(n25) );
  NOR2_X1 U31 ( .A1(A[6]), .A2(n21), .ZN(n26) );
  AOI21_X1 U32 ( .B1(n23), .B2(n25), .A(n76), .ZN(n27) );
  OR2_X2 U33 ( .A1(A[7]), .A2(B[7]), .ZN(n74) );
  AOI21_X1 U34 ( .B1(n45), .B2(n44), .A(O[5]), .ZN(n28) );
  AOI21_X1 U35 ( .B1(n20), .B2(n44), .A(O[5]), .ZN(n55) );
  INV_X1 U36 ( .A(n39), .ZN(n41) );
  OR2_X1 U37 ( .A1(n90), .A2(n67), .ZN(n68) );
  OR2_X2 U38 ( .A1(A[11]), .A2(B[11]), .ZN(n45) );
  OR2_X2 U39 ( .A1(A[12]), .A2(B[12]), .ZN(n52) );
  OR2_X2 U40 ( .A1(B[10]), .A2(A[10]), .ZN(n35) );
  OR2_X2 U41 ( .A1(A[13]), .A2(B[13]), .ZN(n62) );
  NAND2_X1 U42 ( .A1(n52), .A2(n62), .ZN(n38) );
  NAND2_X1 U43 ( .A1(n20), .A2(n35), .ZN(n49) );
  OR3_X1 U44 ( .A1(n78), .A2(n84), .A3(n82), .ZN(n36) );
  INV_X1 U45 ( .A(n40), .ZN(n32) );
  OR2_X1 U46 ( .A1(n66), .A2(n65), .ZN(n69) );
  AOI21_X1 U47 ( .B1(n74), .B2(n73), .A(n76), .ZN(n78) );
  AND2_X1 U48 ( .A1(A[11]), .A2(B[11]), .ZN(O[5]) );
  OR2_X1 U49 ( .A1(n82), .A2(n22), .ZN(n29) );
  NAND2_X1 U50 ( .A1(B[9]), .A2(A[9]), .ZN(n81) );
  NAND2_X1 U51 ( .A1(n29), .A2(n81), .ZN(n40) );
  INV_X1 U52 ( .A(B[8]), .ZN(n31) );
  INV_X1 U53 ( .A(A[8]), .ZN(n30) );
  AND2_X1 U54 ( .A1(n31), .A2(n30), .ZN(n84) );
  NAND2_X1 U55 ( .A1(n32), .A2(n36), .ZN(n60) );
  AND2_X1 U56 ( .A1(A[10]), .A2(B[10]), .ZN(n44) );
  INV_X1 U57 ( .A(n44), .ZN(n33) );
  NAND2_X1 U58 ( .A1(n33), .A2(n35), .ZN(n34) );
  XNOR2_X1 U59 ( .A(n60), .B(n34), .ZN(O[10]) );
  NOR2_X1 U60 ( .A1(n36), .A2(n39), .ZN(n65) );
  AND2_X1 U61 ( .A1(A[12]), .A2(B[12]), .ZN(n57) );
  NAND2_X1 U62 ( .A1(n62), .A2(n57), .ZN(n37) );
  NAND2_X1 U63 ( .A1(A[13]), .A2(B[13]), .ZN(n61) );
  OAI211_X1 U64 ( .C1(n38), .C2(n55), .A(n37), .B(n61), .ZN(n67) );
  AND2_X1 U65 ( .A1(n41), .A2(n40), .ZN(n66) );
  OR3_X1 U66 ( .A1(n65), .A2(n67), .A3(n66), .ZN(n89) );
  INV_X1 U67 ( .A(n90), .ZN(n42) );
  NAND2_X1 U68 ( .A1(n42), .A2(n87), .ZN(n43) );
  XNOR2_X1 U69 ( .A(n89), .B(n43), .ZN(O[0]) );
  AOI21_X1 U70 ( .B1(n60), .B2(n35), .A(n44), .ZN(n48) );
  INV_X1 U71 ( .A(n45), .ZN(n46) );
  NOR2_X1 U72 ( .A1(O[5]), .A2(n46), .ZN(n47) );
  XNOR2_X1 U73 ( .A(n48), .B(n47), .ZN(O[11]) );
  INV_X1 U74 ( .A(n49), .ZN(n51) );
  INV_X1 U75 ( .A(n28), .ZN(n50) );
  AOI21_X1 U76 ( .B1(n51), .B2(n60), .A(n50), .ZN(n54) );
  INV_X1 U77 ( .A(n52), .ZN(n56) );
  NOR2_X1 U78 ( .A1(n57), .A2(n56), .ZN(n53) );
  XNOR2_X1 U79 ( .A(n54), .B(n53), .ZN(O[12]) );
  NOR2_X1 U80 ( .A1(n56), .A2(n49), .ZN(n59) );
  NOR2_X1 U81 ( .A1(n56), .A2(n28), .ZN(n58) );
  AOI211_X1 U82 ( .C1(n60), .C2(n59), .A(n58), .B(n57), .ZN(n64) );
  AND2_X1 U83 ( .A1(n62), .A2(n61), .ZN(n63) );
  XNOR2_X1 U84 ( .A(n64), .B(n63), .ZN(O[13]) );
  OAI21_X1 U85 ( .B1(n69), .B2(n68), .A(n87), .ZN(n71) );
  AND2_X1 U86 ( .A1(n91), .A2(n92), .ZN(n70) );
  XNOR2_X1 U87 ( .A(n71), .B(n70), .ZN(O[15]) );
  NAND2_X1 U88 ( .A1(n72), .A2(n24), .ZN(O[6]) );
  INV_X1 U89 ( .A(n74), .ZN(n75) );
  NOR2_X1 U90 ( .A1(n75), .A2(n76), .ZN(n77) );
  XNOR2_X1 U91 ( .A(n26), .B(n77), .ZN(O[7]) );
  NOR2_X1 U92 ( .A1(n79), .A2(n84), .ZN(n80) );
  XNOR2_X1 U93 ( .A(n27), .B(n80), .ZN(O[8]) );
  INV_X1 U94 ( .A(n81), .ZN(n83) );
  OR2_X1 U95 ( .A1(n83), .A2(n82), .ZN(n86) );
  OAI21_X1 U96 ( .B1(n84), .B2(n27), .A(n22), .ZN(n85) );
  XNOR2_X1 U97 ( .A(n86), .B(n85), .ZN(O[9]) );
  AND2_X1 U98 ( .A1(n87), .A2(n91), .ZN(n88) );
  NAND2_X1 U99 ( .A1(n89), .A2(n88), .ZN(n95) );
  NAND2_X1 U100 ( .A1(n91), .A2(n90), .ZN(n93) );
  AND2_X1 U101 ( .A1(n93), .A2(n92), .ZN(n94) );
  NAND2_X1 U102 ( .A1(n95), .A2(n94), .ZN(O[16]) );
endmodule

