/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:30:26 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [5:0] inp;
  output [13:0] out;
  wire   n4, n5, n12, n15, n16, n17, n18, n19, n20, n21, n22, n23, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[12] = out[13];

  NAND2X1 U5 (.A1(n26), .A2(n55), .Y(n61));
  XOR2X1 U6 (.A1(n131), .A2(n80), .Y(out[8]));
  NAND2X1 U7 (.A1(n59), .A2(inp[0]), .Y(n57));
  INVX1 U8 (.A(n84), .Y(n30));
  NAND2X1 U9 (.A1(n31), .A2(n32), .Y(n84));
  INVX1 U10 (.A(inp[5]), .Y(n4));
  INVX1 U11 (.A(n28), .Y(n5));
  AND2X1 U12 (.A1(n5), .A2(n4), .Y(out[13]));
  AND2X1 U13 (.A1(n104), .A2(n103), .Y(n12));
  NAND2X1 U14 (.A1(n40), .A2(n61), .Y(n15));
  INVX1 U15 (.A(n12), .Y(n51));
  XOR2X1 U16 (.A1(n70), .A2(n72), .Y(n16));
  NAND2X1 U17 (.A1(inp[4]), .A2(inp[5]), .Y(n17));
  NAND2X1 U18 (.A1(inp[3]), .A2(inp[4]), .Y(n18));
  NAND2X1 U19 (.A1(n83), .A2(inp[1]), .Y(n19));
  NAND2X1 U20 (.A1(n17), .A2(n79), .Y(n20));
  NAND2X1 U21 (.A1(n43), .A2(n68), .Y(n21));
  AND2X1 U22 (.A1(n27), .A2(n109), .Y(n90));
  INVX1 U23 (.A(n90), .Y(n22));
  AND2X1 U24 (.A1(n37), .A2(n44), .Y(n117));
  INVX1 U25 (.A(n117), .Y(n23));
  AND2X1 U26 (.A1(n51), .A2(n62), .Y(n28));
  AND2X1 U27 (.A1(n86), .A2(n82), .Y(n36));
  INVX1 U28 (.A(n36), .Y(n25));
  AND2X1 U29 (.A1(n19), .A2(n54), .Y(n47));
  INVX1 U30 (.A(n47), .Y(n26));
  NAND2X1 U31 (.A1(inp[3]), .A2(inp[2]), .Y());
  INVX1 U32 (.A(inp[5]), .Y(n27));
  OR2X1 U33 (.A1(n50), .A2(n72), .Y(n31));
  NOR2X1 U34 (.A1(n38), .A2(n29), .Y(n50));
  NOR2X1 U35 (.A1(n39), .A2(n60), .Y(n29));
  NAND2X1 U36 (.A1(n63), .A2(n66), .Y(out[11]));
  INVX1 U37 (.A(inp[4]), .Y(n109));
  INVX1 U38 (.A(inp[3]), .Y(n107));
  NOR2X1 U39 (.A1(inp[4]), .A2(inp[3]), .Y(n62));
  NAND2X1 U40 (.A1(n36), .A2(n30), .Y(n103));
  NAND2X1 U41 (.A1(n101), .A2(n70), .Y(n32));
  AND2X1 U42 (.A1(n34), .A2(n125), .Y(n64));
  OR2X1 U43 (.A1(n73), .A2(n15), .Y(n125));
  NAND2X1 U44 (.A1(n33), .A2(n69), .Y(n34));
  NAND2X1 U45 (.A1(n15), .A2(n73), .Y(n33));
  NAND2X1 U46 (.A1(n57), .A2(n56), .Y(n35));
  NOR2X1 U47 (.A1(n89), .A2(n58), .Y(n37));
  NOR2X1 U48 (.A1(n80), .A2(n68), .Y(n38));
  AND2X1 U49 (.A1(n46), .A2(n126), .Y(n39));
  OR2X1 U50 (.A1(n35), .A2(n89), .Y(n40));
  NAND2X1 U51 (.A1(n99), .A2(inp[5]), .Y(n41));
  OR2X1 U52 (.A1(n37), .A2(n44), .Y(n42));
  NAND2X1 U53 (.A1(n111), .A2(inp[3]), .Y(n43));
  AND2X1 U54 (.A1(n77), .A2(n75), .Y(n44));
  INVX1 U55 (.A(n64), .Y(n46));
  AND2X1 U56 (.A1(n17), .A2(n22), .Y(n91));
  INVX1 U57 (.A(n91), .Y(n48));
  INVX1 U58 (.A(n62), .Y(n49));
  AND2X1 U59 (.A1(n49), .A2(n18), .Y(n83));
  INVX1 U60 (.A(n83), .Y(n52));
  NAND2X1 U61 (.A1(n110), .A2(n52), .Y(n54));
  NAND2X1 U62 (.A1(n35), .A2(n89), .Y(n55));
  INVX1 U63 (.A(n88), .Y(n56));
  INVX1 U64 (.A(inp[2]), .Y(n113));
  NOR2X1 U65 (.A1(inp[2]), .A2(inp[3]), .Y(n58));
  OR2X1 U66 (.A1(n37), .A2(inp[1]), .Y(n59));
  INVX1 U67 (.A(n95), .Y(n60));
  NAND2X1 U68 (.A1(n52), .A2(n12), .Y(n63));
  AND2X1 U69 (.A1(n45), .A2(n87), .Y(n88));
  AND2X1 U70 (.A1(n124), .A2(n125), .Y(n127));
  INVX1 U71 (.A(n127), .Y(n65));
  AND2X1 U72 (.A1(n51), .A2(n83), .Y(n105));
  INVX1 U73 (.A(n105), .Y(n66));
  AND2X1 U74 (.A1(n48), .A2(n113), .Y(n92));
  INVX1 U75 (.A(n92), .Y(n67));
  AND2X1 U76 (.A1(n107), .A2(inp[0]), .Y(n128));
  INVX1 U77 (.A(n128), .Y(n68));
  AND2X1 U78 (.A1(n18), .A2(n19), .Y(n119));
  INVX1 U79 (.A(n119), .Y(n69));
  AND2X1 U80 (.A1(n100), .A2(n41), .Y(n133));
  INVX1 U81 (.A(n133), .Y(n70));
  AND2X1 U82 (.A1(n113), .A2(n110), .Y(n85));
  INVX1 U83 (.A(n85), .Y(n71));
  AND2X1 U84 (.A1(n98), .A2(n97), .Y(n132));
  INVX1 U85 (.A(n132), .Y(n72));
  AND2X1 U86 (.A1(n67), .A2(n79), .Y(n120));
  INVX1 U87 (.A(n120), .Y(n73));
  AND2X1 U88 (.A1(n16), .A2(n50), .Y(n134));
  INVX1 U89 (.A(n134), .Y(n74));
  AND2X1 U90 (.A1(n110), .A2(inp[0]), .Y(n115));
  INVX1 U91 (.A(n115), .Y(n75));
  AND2X1 U92 (.A1(n111), .A2(inp[1]), .Y(n112));
  INVX1 U93 (.A(n112), .Y(n76));
  AND2X1 U94 (.A1(n87), .A2(n111), .Y(n116));
  INVX1 U95 (.A(n116), .Y(n77));
  AND2X1 U96 (.A1(n21), .A2(n20), .Y(n123));
  INVX1 U97 (.A(n123), .Y(n78));
  AND2X1 U98 (.A1(n91), .A2(inp[2]), .Y(n93));
  INVX1 U99 (.A(n93), .Y(n79));
  XNOR2X1 U100 (.A1(n110), .A2(n91), .Y(n130));
  INVX1 U101 (.A(n130), .Y(n80));
  XNOR2X1 U102 (.A1(n113), .A2(n110), .Y(n99));
  INVX1 U103 (.A(n99), .Y(n81));
  AND2X1 U104 (.A1(inp[1]), .A2(inp[2]), .Y(n87));
  INVX1 U105 (.A(n87), .Y(n82));
  INVX1 U106 (.A(inp[1]), .Y(n110));
  NAND2X1 U107 (.A1(n71), .A2(inp[5]), .Y(n86));
  INVX1 U108 (.A(n45), .Y(n89));
  INVX1 U109 (.A(inp[0]), .Y(n111));
  OR2X1 U110 (.A1(n21), .A2(n20), .Y(n126));
  NAND2X1 U111 (.A1(n68), .A2(n80), .Y(n94));
  AND2X1 U112 (.A1(n94), .A2(n78), .Y(n95));
  NAND2X1 U113 (.A1(n110), .A2(inp[5]), .Y(n96));
  NAND2X1 U114 (.A1(n96), .A2(inp[4]), .Y(n98));
  NAND2X1 U115 (.A1(n27), .A2(inp[1]), .Y(n97));
  NAND2X1 U116 (.A1(n50), .A2(n72), .Y(n101));
  NAND2X1 U117 (.A1(n27), .A2(n81), .Y(n100));
  NAND2X1 U118 (.A1(n84), .A2(n25), .Y(n102));
  NAND2X1 U119 (.A1(n102), .A2(inp[3]), .Y(n104));
  XOR2X1 U120 (.A1(inp[3]), .A2(n25), .Y(n106));
  XOR2X1 U121 (.A1(n106), .A2(n84), .Y(out[10]));
  NAND2X1 U122 (.A1(n76), .A2(n75), .Y(out[2]));
  NAND2X1 U123 (.A1(n113), .A2(n76), .Y(n114));
  AND2X1 U124 (.A1(n77), .A2(n114), .Y(out[3]));
  NAND2X1 U125 (.A1(n42), .A2(n23), .Y(out[4]));
  XOR2X1 U126 (.A1(n45), .A2(n26), .Y(n118));
  XOR2X1 U127 (.A1(n118), .A2(n35), .Y(out[5]));
  XOR2X1 U128 (.A1(n15), .A2(n69), .Y(n121));
  XOR2X1 U129 (.A1(n121), .A2(n73), .Y(out[6]));
  XOR2X1 U130 (.A1(n20), .A2(n46), .Y(n122));
  XOR2X1 U131 (.A1(n122), .A2(n21), .Y(out[7]));
  AND2X1 U132 (.A1(n78), .A2(n34), .Y(n124));
  AND2X1 U133 (.A1(n126), .A2(n65), .Y(n129));
  XOR2X1 U134 (.A1(n129), .A2(n68), .Y(n131));
  OR2X1 U135 (.A1(n16), .A2(n50), .Y(n135));
  NAND2X1 U136 (.A1(n135), .A2(n74), .Y(out[9]));

  assign n45 = 1'b1;
endmodule


