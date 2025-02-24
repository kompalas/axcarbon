/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Feb 23 21:01:59 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111;
  assign O[2] = 1'b1;
  assign O[3] = 1'b1;
  assign O[4] = A[3];
  assign O[0] = A[8];
  assign O[1] = B[0];

  XNOR2_X1 U15 ( .A(n65), .B(n22), .ZN(O[11]) );
  AND2_X1 U16 ( .A1(A[4]), .A2(B[4]), .ZN(n25) );
  INV_X1 U17 ( .A(n107), .ZN(n95) );
  NAND2_X1 U18 ( .A1(B[15]), .A2(A[15]), .ZN(n104) );
  NAND2_X2 U19 ( .A1(n26), .A2(n44), .ZN(n49) );
  INV_X4 U20 ( .A(n57), .ZN(n70) );
  OR2_X4 U21 ( .A1(n68), .A2(n55), .ZN(n67) );
  NOR2_X4 U22 ( .A1(A[9]), .A2(B[9]), .ZN(n68) );
  OR2_X1 U23 ( .A1(n72), .A2(n73), .ZN(n22) );
  INV_X4 U24 ( .A(B[6]), .ZN(n29) );
  INV_X4 U25 ( .A(A[5]), .ZN(n24) );
  NAND2_X2 U26 ( .A1(A[13]), .A2(B[13]), .ZN(n87) );
  INV_X1 U27 ( .A(n44), .ZN(n33) );
  INV_X2 U28 ( .A(n82), .ZN(n85) );
  INV_X8 U29 ( .A(B[5]), .ZN(n23) );
  NAND2_X4 U30 ( .A1(A[14]), .A2(B[14]), .ZN(n94) );
  OR2_X2 U31 ( .A1(B[15]), .A2(A[15]), .ZN(n102) );
  NAND2_X4 U32 ( .A1(n24), .A2(n23), .ZN(n35) );
  AOI21_X2 U33 ( .B1(n95), .B2(n100), .A(n103), .ZN(n96) );
  NAND2_X4 U34 ( .A1(n40), .A2(n39), .ZN(n26) );
  NAND2_X2 U35 ( .A1(n85), .A2(n89), .ZN(n101) );
  AND2_X4 U36 ( .A1(A[10]), .A2(B[10]), .ZN(n74) );
  INV_X2 U37 ( .A(n68), .ZN(n69) );
  OAI21_X4 U38 ( .B1(n71), .B2(n70), .A(n69), .ZN(n77) );
  NAND2_X4 U39 ( .A1(n29), .A2(n28), .ZN(n44) );
  INV_X2 U40 ( .A(n72), .ZN(n75) );
  NOR2_X4 U41 ( .A1(n78), .A2(n67), .ZN(n80) );
  NAND3_X1 U42 ( .A1(n27), .A2(n60), .A3(n61), .ZN(n64) );
  AOI21_X4 U43 ( .B1(n27), .B2(n80), .A(n79), .ZN(n111) );
  AOI21_X1 U44 ( .B1(n27), .B2(n52), .A(n70), .ZN(n54) );
  AOI21_X1 U45 ( .B1(n27), .B2(n60), .A(n62), .ZN(n59) );
  XOR2_X1 U46 ( .A(n27), .B(n51), .Z(O[8]) );
  OAI21_X4 U47 ( .B1(n50), .B2(n49), .A(n48), .ZN(n27) );
  INV_X16 U48 ( .A(A[6]), .ZN(n28) );
  NOR2_X4 U49 ( .A1(B[8]), .A2(A[8]), .ZN(n55) );
  NAND2_X4 U50 ( .A1(n36), .A2(n35), .ZN(n50) );
  AOI21_X4 U51 ( .B1(n47), .B2(n46), .A(n45), .ZN(n48) );
  AND2_X4 U52 ( .A1(A[7]), .A2(B[7]), .ZN(n45) );
  NAND2_X4 U53 ( .A1(B[5]), .A2(A[5]), .ZN(n32) );
  NAND2_X1 U54 ( .A1(n32), .A2(n35), .ZN(n30) );
  NAND2_X4 U55 ( .A1(A[4]), .A2(B[4]), .ZN(n31) );
  XNOR2_X1 U56 ( .A(n30), .B(n25), .ZN(O[5]) );
  NAND2_X4 U57 ( .A1(n32), .A2(n31), .ZN(n36) );
  AND2_X4 U58 ( .A1(A[6]), .A2(B[6]), .ZN(n47) );
  NOR2_X2 U59 ( .A1(n33), .A2(n47), .ZN(n34) );
  XNOR2_X1 U60 ( .A(n50), .B(n34), .ZN(O[6]) );
  NAND3_X1 U61 ( .A1(n36), .A2(n35), .A3(n44), .ZN(n38) );
  INV_X1 U62 ( .A(n47), .ZN(n37) );
  NAND2_X1 U63 ( .A1(n38), .A2(n37), .ZN(n43) );
  INV_X1 U64 ( .A(n45), .ZN(n41) );
  INV_X8 U65 ( .A(A[7]), .ZN(n40) );
  INV_X16 U66 ( .A(B[7]), .ZN(n39) );
  NAND2_X4 U67 ( .A1(n40), .A2(n39), .ZN(n46) );
  NAND2_X1 U68 ( .A1(n41), .A2(n26), .ZN(n42) );
  XNOR2_X1 U69 ( .A(n43), .B(n42), .ZN(O[7]) );
  NAND2_X4 U70 ( .A1(A[8]), .A2(B[8]), .ZN(n57) );
  NOR2_X1 U71 ( .A1(n55), .A2(n70), .ZN(n51) );
  INV_X1 U72 ( .A(n55), .ZN(n52) );
  AND2_X4 U73 ( .A1(A[9]), .A2(B[9]), .ZN(n71) );
  NOR2_X1 U74 ( .A1(n68), .A2(n71), .ZN(n53) );
  XNOR2_X1 U75 ( .A(n54), .B(n53), .ZN(O[9]) );
  INV_X1 U76 ( .A(n67), .ZN(n60) );
  INV_X1 U77 ( .A(n71), .ZN(n56) );
  OAI21_X1 U78 ( .B1(n57), .B2(n68), .A(n56), .ZN(n62) );
  NOR2_X4 U79 ( .A1(A[10]), .A2(B[10]), .ZN(n66) );
  NOR2_X1 U80 ( .A1(n66), .A2(n74), .ZN(n58) );
  XNOR2_X1 U81 ( .A(n59), .B(n58), .ZN(O[10]) );
  OR2_X1 U82 ( .A1(A[10]), .A2(B[10]), .ZN(n61) );
  AOI21_X1 U83 ( .B1(n62), .B2(n61), .A(n74), .ZN(n63) );
  NAND2_X1 U84 ( .A1(n64), .A2(n63), .ZN(n65) );
  NOR2_X4 U85 ( .A1(A[11]), .A2(B[11]), .ZN(n72) );
  AND2_X2 U86 ( .A1(A[11]), .A2(B[11]), .ZN(n73) );
  OR2_X4 U87 ( .A1(n72), .A2(n66), .ZN(n78) );
  AOI21_X4 U88 ( .B1(n75), .B2(n74), .A(n73), .ZN(n76) );
  OAI21_X4 U89 ( .B1(n78), .B2(n77), .A(n76), .ZN(n79) );
  NOR2_X4 U90 ( .A1(A[12]), .A2(B[12]), .ZN(n82) );
  NAND2_X2 U91 ( .A1(A[12]), .A2(B[12]), .ZN(n86) );
  NAND2_X1 U92 ( .A1(n85), .A2(n86), .ZN(n81) );
  XOR2_X1 U93 ( .A(n111), .B(n81), .Z(O[12]) );
  OAI21_X1 U94 ( .B1(n111), .B2(n82), .A(n86), .ZN(n84) );
  OR2_X4 U95 ( .A1(A[13]), .A2(B[13]), .ZN(n89) );
  NAND2_X1 U96 ( .A1(n87), .A2(n89), .ZN(n83) );
  XNOR2_X1 U97 ( .A(n84), .B(n83), .ZN(O[13]) );
  INV_X1 U98 ( .A(n86), .ZN(n90) );
  INV_X1 U99 ( .A(n87), .ZN(n88) );
  AOI21_X4 U100 ( .B1(n90), .B2(n89), .A(n88), .ZN(n107) );
  OAI21_X1 U101 ( .B1(n111), .B2(n101), .A(n107), .ZN(n92) );
  OR2_X2 U102 ( .A1(A[14]), .A2(B[14]), .ZN(n100) );
  NAND2_X1 U103 ( .A1(n94), .A2(n100), .ZN(n91) );
  XNOR2_X1 U104 ( .A(n92), .B(n91), .ZN(O[14]) );
  INV_X1 U105 ( .A(n100), .ZN(n93) );
  OR2_X1 U106 ( .A1(n101), .A2(n93), .ZN(n97) );
  INV_X1 U107 ( .A(n94), .ZN(n103) );
  OAI21_X1 U108 ( .B1(n111), .B2(n97), .A(n96), .ZN(n99) );
  NAND2_X1 U109 ( .A1(n104), .A2(n102), .ZN(n98) );
  XNOR2_X1 U110 ( .A(n99), .B(n98), .ZN(O[15]) );
  NAND2_X1 U111 ( .A1(n100), .A2(n102), .ZN(n106) );
  OR2_X1 U112 ( .A1(n101), .A2(n106), .ZN(n110) );
  NAND2_X1 U113 ( .A1(n103), .A2(n102), .ZN(n105) );
  OAI211_X1 U114 ( .C1(n107), .C2(n106), .A(n105), .B(n104), .ZN(n108) );
  INV_X1 U115 ( .A(n108), .ZN(n109) );
  OAI21_X1 U116 ( .B1(n110), .B2(n111), .A(n109), .ZN(O[16]) );
endmodule

