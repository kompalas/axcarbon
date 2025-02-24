/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:07:43 2025
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
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109;
  assign O[4] = 1'b0;
  assign O[14] = O[0];
  assign O[3] = A[4];
  assign O[2] = A[11];
  assign O[1] = B[9];

  NAND2_X1 U15 ( .A1(n107), .A2(n105), .ZN(n101) );
  NOR2_X1 U16 ( .A1(n92), .A2(n106), .ZN(n58) );
  NAND2_X1 U17 ( .A1(A[6]), .A2(B[6]), .ZN(n59) );
  INV_X1 U18 ( .A(n64), .ZN(n69) );
  NAND2_X1 U19 ( .A1(n34), .A2(n86), .ZN(n87) );
  NAND2_X1 U20 ( .A1(B[15]), .A2(A[15]), .ZN(n107) );
  NAND2_X1 U21 ( .A1(n95), .A2(n27), .ZN(n34) );
  AND2_X1 U22 ( .A1(A[14]), .A2(B[14]), .ZN(n106) );
  OR2_X2 U23 ( .A1(A[12]), .A2(B[12]), .ZN(n27) );
  INV_X2 U24 ( .A(n72), .ZN(n39) );
  NAND2_X2 U25 ( .A1(n50), .A2(n49), .ZN(n25) );
  NAND2_X2 U26 ( .A1(n57), .A2(n56), .ZN(n104) );
  INV_X8 U27 ( .A(B[8]), .ZN(n31) );
  INV_X4 U28 ( .A(A[8]), .ZN(n38) );
  INV_X4 U29 ( .A(A[14]), .ZN(n57) );
  INV_X8 U30 ( .A(B[10]), .ZN(n20) );
  INV_X2 U31 ( .A(n104), .ZN(n92) );
  INV_X1 U32 ( .A(n35), .ZN(O[5]) );
  NAND2_X4 U33 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  INV_X8 U34 ( .A(B[7]), .ZN(n41) );
  NOR2_X4 U35 ( .A1(n81), .A2(n24), .ZN(n26) );
  NOR2_X4 U36 ( .A1(A[12]), .A2(B[12]), .ZN(n81) );
  NAND2_X4 U37 ( .A1(n41), .A2(n40), .ZN(n60) );
  NOR2_X4 U38 ( .A1(n20), .A2(n21), .ZN(n77) );
  INV_X16 U39 ( .A(A[10]), .ZN(n21) );
  BUF_X1 U40 ( .A(n65), .Z(n70) );
  NAND2_X4 U41 ( .A1(n46), .A2(n45), .ZN(n22) );
  NOR2_X4 U42 ( .A1(A[13]), .A2(B[13]), .ZN(n23) );
  OAI21_X4 U43 ( .B1(n23), .B2(n86), .A(n52), .ZN(n97) );
  NAND2_X1 U44 ( .A1(n61), .A2(n60), .ZN(n62) );
  INV_X1 U45 ( .A(n25), .ZN(n78) );
  INV_X2 U46 ( .A(n76), .ZN(n32) );
  NOR2_X1 U47 ( .A1(n24), .A2(n89), .ZN(n90) );
  NOR2_X4 U48 ( .A1(A[13]), .A2(B[13]), .ZN(n24) );
  NAND2_X1 U49 ( .A1(n104), .A2(n105), .ZN(n109) );
  INV_X2 U50 ( .A(n26), .ZN(n93) );
  NAND3_X2 U51 ( .A1(n29), .A2(n96), .A3(n94), .ZN(n100) );
  AOI21_X1 U52 ( .B1(n29), .B2(n32), .A(n77), .ZN(n80) );
  AOI21_X2 U53 ( .B1(n29), .B2(n55), .A(n54), .ZN(n103) );
  AOI21_X1 U54 ( .B1(n29), .B2(n94), .A(n95), .ZN(n84) );
  AOI21_X1 U55 ( .B1(n29), .B2(n88), .A(n87), .ZN(n91) );
  XNOR2_X1 U56 ( .A(n29), .B(n28), .ZN(O[10]) );
  INV_X1 U57 ( .A(n75), .ZN(n28) );
  OAI21_X4 U58 ( .B1(n65), .B2(n48), .A(n47), .ZN(n29) );
  INV_X16 U59 ( .A(A[8]), .ZN(n30) );
  NAND2_X4 U60 ( .A1(n31), .A2(n30), .ZN(n64) );
  INV_X4 U61 ( .A(B[14]), .ZN(n56) );
  NAND2_X2 U62 ( .A1(n25), .A2(n32), .ZN(n85) );
  INV_X16 U63 ( .A(A[11]), .ZN(n49) );
  NAND2_X2 U64 ( .A1(n53), .A2(n33), .ZN(n54) );
  NAND2_X2 U65 ( .A1(n95), .A2(n26), .ZN(n33) );
  NAND2_X4 U66 ( .A1(n36), .A2(n35), .ZN(n95) );
  NAND2_X4 U67 ( .A1(n77), .A2(n51), .ZN(n36) );
  INV_X16 U68 ( .A(B[8]), .ZN(n37) );
  NOR2_X4 U69 ( .A1(n38), .A2(n37), .ZN(n67) );
  AOI21_X4 U70 ( .B1(n22), .B2(n67), .A(n39), .ZN(n47) );
  NAND2_X4 U71 ( .A1(B[9]), .A2(A[9]), .ZN(n72) );
  INV_X4 U72 ( .A(n61), .ZN(n44) );
  NAND2_X4 U73 ( .A1(B[7]), .A2(A[7]), .ZN(n61) );
  INV_X2 U74 ( .A(n97), .ZN(n53) );
  NAND2_X4 U75 ( .A1(n64), .A2(n71), .ZN(n48) );
  NOR2_X2 U76 ( .A1(n93), .A2(n92), .ZN(n96) );
  INV_X16 U77 ( .A(A[7]), .ZN(n40) );
  INV_X4 U78 ( .A(n82), .ZN(n86) );
  INV_X4 U79 ( .A(n89), .ZN(n52) );
  NOR2_X4 U80 ( .A1(A[10]), .A2(B[10]), .ZN(n76) );
  INV_X16 U81 ( .A(A[6]), .ZN(n43) );
  INV_X16 U82 ( .A(B[6]), .ZN(n42) );
  NAND2_X4 U83 ( .A1(n43), .A2(n42), .ZN(n63) );
  AOI21_X4 U84 ( .B1(n60), .B2(n63), .A(n44), .ZN(n65) );
  INV_X16 U85 ( .A(A[9]), .ZN(n46) );
  INV_X16 U86 ( .A(B[9]), .ZN(n45) );
  NAND2_X4 U87 ( .A1(n46), .A2(n45), .ZN(n71) );
  INV_X8 U88 ( .A(B[11]), .ZN(n50) );
  NAND2_X4 U89 ( .A1(n50), .A2(n49), .ZN(n51) );
  NOR2_X1 U90 ( .A1(n85), .A2(n93), .ZN(n55) );
  AND2_X4 U91 ( .A1(B[12]), .A2(A[12]), .ZN(n82) );
  AND2_X4 U92 ( .A1(A[13]), .A2(B[13]), .ZN(n89) );
  XNOR2_X1 U93 ( .A(n103), .B(n58), .ZN(O[0]) );
  NAND2_X1 U94 ( .A1(n63), .A2(n59), .ZN(O[6]) );
  XNOR2_X1 U95 ( .A(n63), .B(n62), .ZN(O[7]) );
  NOR2_X1 U96 ( .A1(n69), .A2(n67), .ZN(n66) );
  XNOR2_X1 U97 ( .A(n66), .B(n70), .ZN(O[8]) );
  INV_X1 U98 ( .A(n67), .ZN(n68) );
  OAI21_X1 U99 ( .B1(n70), .B2(n69), .A(n68), .ZN(n74) );
  NAND2_X1 U100 ( .A1(n72), .A2(n22), .ZN(n73) );
  XNOR2_X1 U101 ( .A(n74), .B(n73), .ZN(O[9]) );
  NOR2_X1 U102 ( .A1(n76), .A2(n77), .ZN(n75) );
  NOR2_X1 U103 ( .A1(n78), .A2(O[5]), .ZN(n79) );
  XNOR2_X1 U104 ( .A(n80), .B(n79), .ZN(O[11]) );
  INV_X2 U105 ( .A(n85), .ZN(n94) );
  NOR2_X1 U106 ( .A1(n81), .A2(n82), .ZN(n83) );
  XNOR2_X1 U107 ( .A(n84), .B(n83), .ZN(O[12]) );
  NOR2_X1 U108 ( .A1(n85), .A2(n81), .ZN(n88) );
  XNOR2_X1 U109 ( .A(n91), .B(n90), .ZN(O[13]) );
  NAND2_X1 U110 ( .A1(n95), .A2(n96), .ZN(n99) );
  AOI21_X1 U111 ( .B1(n97), .B2(n104), .A(n106), .ZN(n98) );
  NAND3_X1 U112 ( .A1(n100), .A2(n99), .A3(n98), .ZN(n102) );
  OR2_X4 U113 ( .A1(B[15]), .A2(A[15]), .ZN(n105) );
  XNOR2_X1 U114 ( .A(n102), .B(n101), .ZN(O[15]) );
  NAND2_X1 U115 ( .A1(n106), .A2(n105), .ZN(n108) );
  OAI211_X1 U116 ( .C1(n103), .C2(n109), .A(n108), .B(n107), .ZN(O[16]) );
endmodule

