/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:24:53 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [5:0] inp;
  output [13:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n40, n41, n42, n43, n44, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n81, n82, n83, n84, n85, n86, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[12] = out[13];

  NAND2X1 U5 (.A1(n16), .A2(n106), .Y(n44));
  NOR2X1 U6 (.A1(n46), .A2(n5), .Y(n3));
  INVX1 U7 (.A(n2), .Y(n6));
  AND2X1 U8 (.A1(n23), .A2(n90), .Y(n2));
  NAND2X1 U9 (.A1(n110), .A2(n102), .Y(n14));
  INVX1 U10 (.A(n22), .Y(n4));
  NOR2X1 U11 (.A1(n4), .A2(n3), .Y(n31));
  NAND2X1 U12 (.A1(n24), .A2(n13), .Y(n5));
  NAND2X1 U13 (.A1(inp[4]), .A2(inp[5]), .Y(n7));
  NAND2X1 U14 (.A1(n57), .A2(inp[1]), .Y(n8));
  XOR2X1 U15 (.A1(n11), .A2(n21), .Y(n9));
  NAND2X1 U16 (.A1(inp[1]), .A2(inp[2]), .Y(n10));
  NAND2X1 U17 (.A1(n86), .A2(n51), .Y(n11));
  XOR2X1 U18 (.A1(n5), .A2(n46), .Y(n12));
  AND2X1 U19 (.A1(n27), .A2(n119), .Y(n26));
  INVX1 U20 (.A(n26), .Y(n13));
  INVX1 U21 (.A(n31), .Y(n15));
  AND2X1 U22 (.A1(n50), .A2(n105), .Y(n58));
  INVX1 U23 (.A(n58), .Y(n16));
  XNOR2X1 U24 (.A1(n20), .A2(n35), .Y(n37));
  INVX1 U25 (.A(n37), .Y(n17));
  XNOR2X1 U26 (.A1(n6), .A2(n79), .Y(n36));
  INVX1 U27 (.A(n36), .Y(n18));
  AND2X1 U28 (.A1(n30), .A2(n97), .Y(n50));
  INVX1 U29 (.A(n50), .Y(n19));
  XNOR2X1 U30 (.A1(n102), .A2(n113), .Y(n32));
  INVX1 U31 (.A(n32), .Y(n20));
  AND2X1 U32 (.A1(n7), .A2(n8), .Y(n33));
  INVX1 U33 (.A(n33), .Y(n21));
  NAND2X1 U34 (.A1(inp[4]), .A2(inp[3]), .Y(n22));
  NAND2X1 U35 (.A1(n6), .A2(n55), .Y(n54));
  NAND2X1 U36 (.A1(n47), .A2(n70), .Y(n23));
  NAND2X1 U37 (.A1(n25), .A2(n77), .Y(n24));
  NAND2X1 U38 (.A1(n48), .A2(inp[0]), .Y(n25));
  INVX1 U39 (.A(n48), .Y(n27));
  NAND2X1 U40 (.A1(n28), .A2(n10), .Y(n48));
  NAND2X1 U41 (.A1(n29), .A2(inp[3]), .Y(n28));
  NAND2X1 U42 (.A1(n34), .A2(n98), .Y(n29));
  NAND2X1 U43 (.A1(inp[1]), .A2(inp[0]), .Y());
  NAND2X1 U44 (.A1(n35), .A2(n52), .Y(n30));
  NAND2X1 U45 (.A1(n15), .A2(n62), .Y(n47));
  NAND2X1 U46 (.A1(n54), .A2(n41), .Y(n35));
  NAND2X1 U47 (.A1(n116), .A2(n75), .Y(n38));
  NAND2X1 U48 (.A1(n101), .A2(inp[4]), .Y(n40));
  AND2X1 U49 (.A1(n126), .A2(n60), .Y(n53));
  INVX1 U50 (.A(n53), .Y(n41));
  AND2X1 U51 (.A1(n118), .A2(n110), .Y(n73));
  INVX1 U52 (.A(n73), .Y(n42));
  AND2X1 U53 (.A1(n14), .A2(n7), .Y(n57));
  INVX1 U54 (.A(n57), .Y(n43));
  AND2X1 U55 (.A1(n8), .A2(n56), .Y(n63));
  INVX1 U56 (.A(n63), .Y(n46));
  AND2X1 U57 (.A1(n91), .A2(n42), .Y(n81));
  INVX1 U58 (.A(n81), .Y(n49));
  AND2X1 U59 (.A1(n98), .A2(inp[0]), .Y(n60));
  INVX1 U60 (.A(n60), .Y(n51));
  INVX1 U61 (.A(n126), .Y(n79));
  INVX1 U62 (.A(n96), .Y(n52));
  INVX1 U63 (.A(n92), .Y(n55));
  NAND2X1 U64 (.A1(n111), .A2(n43), .Y(n56));
  XOR2X1 U65 (.A1(n107), .A2(n44), .Y(out[11]));
  NAND2X1 U66 (.A1(n5), .A2(n46), .Y(n62));
  XOR2X1 U67 (.A1(n59), .A2(n19), .Y(out[10]));
  XOR2X1 U68 (.A1(n78), .A2(n82), .Y(n59));
  AND2X1 U69 (.A1(n102), .A2(n118), .Y(n88));
  INVX1 U70 (.A(n88), .Y(n61));
  AND2X1 U71 (.A1(n95), .A2(n94), .Y(n129));
  INVX1 U72 (.A(n129), .Y(n64));
  AND2X1 U73 (.A1(n42), .A2(n74), .Y(n101));
  INVX1 U74 (.A(n101), .Y(n65));
  AND2X1 U75 (.A1(n22), .A2(n12), .Y(n122));
  INVX1 U76 (.A(n122), .Y(n66));
  AND2X1 U77 (.A1(n18), .A2(n51), .Y(n127));
  INVX1 U78 (.A(n127), .Y(n67));
  AND2X1 U79 (.A1(n17), .A2(n64), .Y(n130));
  INVX1 U80 (.A(n130), .Y(n68));
  AND2X1 U81 (.A1(n111), .A2(n119), .Y(n112));
  INVX1 U82 (.A(n112), .Y(n69));
  AND2X1 U83 (.A1(n51), .A2(n79), .Y(n92));
  AND2X1 U84 (.A1(n20), .A2(n64), .Y(n96));
  AND2X1 U85 (.A1(n11), .A2(n21), .Y(n89));
  INVX1 U86 (.A(n89), .Y(n70));
  AND2X1 U87 (.A1(n34), .A2(n113), .Y(n115));
  INVX1 U88 (.A(n115), .Y(n71));
  AND2X1 U89 (.A1(n47), .A2(n9), .Y(n124));
  INVX1 U90 (.A(n124), .Y(n72));
  AND2X1 U91 (.A1(n81), .A2(n98), .Y(n100));
  INVX1 U92 (.A(n100), .Y(n74));
  AND2X1 U93 (.A1(n111), .A2(n98), .Y(n117));
  INVX1 U94 (.A(n117), .Y(n75));
  AND2X1 U95 (.A1(n102), .A2(n65), .Y(n108));
  INVX1 U96 (.A(n108), .Y(n76));
  AND2X1 U97 (.A1(n22), .A2(n61), .Y(n120));
  INVX1 U98 (.A(n120), .Y(n77));
  AND2X1 U99 (.A1(n85), .A2(n84), .Y(n103));
  INVX1 U100 (.A(n103), .Y(n78));
  XNOR2X1 U101 (.A1(inp[1]), .A2(n49), .Y(n126));
  AND2X1 U102 (.A1(n99), .A2(n74), .Y(n105));
  INVX1 U103 (.A(n105), .Y(n82));
  INVX1 U104 (.A(inp[4]), .Y(n102));
  NAND2X1 U105 (.A1(n102), .A2(inp[1]), .Y(n83));
  NAND2X1 U106 (.A1(n83), .A2(inp[2]), .Y(n85));
  INVX1 U107 (.A(inp[1]), .Y(n111));
  NAND2X1 U108 (.A1(n111), .A2(inp[4]), .Y(n84));
  INVX1 U109 (.A(inp[2]), .Y(n98));
  INVX1 U110 (.A(inp[0]), .Y(n119));
  NAND2X1 U111 (.A1(n119), .A2(inp[2]), .Y(n86));
  INVX1 U112 (.A(inp[5]), .Y(n110));
  INVX1 U113 (.A(inp[3]), .Y(n118));
  OR2X1 U114 (.A1(n11), .A2(n21), .Y(n90));
  NAND2X1 U115 (.A1(inp[5]), .A2(inp[3]), .Y(n91));
  NAND2X1 U116 (.A1(n118), .A2(inp[5]), .Y(n93));
  NAND2X1 U117 (.A1(n93), .A2(inp[1]), .Y(n95));
  NAND2X1 U118 (.A1(n110), .A2(inp[3]), .Y(n94));
  AND2X1 U119 (.A1(n75), .A2(n10), .Y(n113));
  OR2X1 U120 (.A1(n64), .A2(n20), .Y(n97));
  NAND2X1 U121 (.A1(n49), .A2(inp[2]), .Y(n99));
  NAND2X1 U122 (.A1(n40), .A2(n76), .Y(n107));
  NAND2X1 U123 (.A1(n19), .A2(n82), .Y(n104));
  NAND2X1 U124 (.A1(n104), .A2(n78), .Y(n106));
  NAND2X1 U125 (.A1(n108), .A2(n44), .Y(n109));
  AND2X1 U126 (.A1(n110), .A2(n109), .Y(out[13]));
  AND2X1 U127 (.A1(n69), .A2(n34), .Y(out[2]));
  OR2X1 U128 (.A1(n34), .A2(n10), .Y(n114));
  NAND2X1 U129 (.A1(n114), .A2(n71), .Y(out[3]));
  NAND2X1 U130 (.A1(n51), .A2(inp[1]), .Y(n116));
  XOR2X1 U131 (.A1(n38), .A2(n118), .Y(out[4]));
  XOR2X1 U132 (.A1(n48), .A2(n119), .Y(n121));
  XOR2X1 U133 (.A1(n121), .A2(n77), .Y(out[5]));
  OR2X1 U134 (.A1(n12), .A2(n22), .Y(n123));
  NAND2X1 U135 (.A1(n123), .A2(n66), .Y(out[6]));
  OR2X1 U136 (.A1(n9), .A2(n47), .Y(n125));
  NAND2X1 U137 (.A1(n125), .A2(n72), .Y(out[7]));
  OR2X1 U138 (.A1(n18), .A2(n51), .Y(n128));
  NAND2X1 U139 (.A1(n128), .A2(n67), .Y(out[8]));
  OR2X1 U140 (.A1(n17), .A2(n64), .Y(n131));
  NAND2X1 U141 (.A1(n131), .A2(n68), .Y(out[9]));

  assign n34 = 1'b0;
endmodule


