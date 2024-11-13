/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:42:15 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [6:0] inp;
  output [14:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[13] = out[14];

  INVX1 U5 (.A(n2), .Y(n41));
  NAND2X1 U6 (.A1(n84), .A2(n80), .Y(n2));
  NOR2X1 U7 (.A1(n65), .A2(n82), .Y(n84));
  INVX1 U8 (.A(n84), .Y(n53));
  NAND2X1 U9 (.A1(n52), .A2(n51), .Y(n7));
  NAND2X1 U10 (.A1(n86), .A2(n70), .Y(n75));
  NAND2X1 U11 (.A1(n42), .A2(n13), .Y(n6));
  AND2X1 U12 (.A1(n149), .A2(n118), .Y(n3));
  OR2X1 U13 (.A1(n54), .A2(n3), .Y(n4));
  AND2X1 U14 (.A1(n8), .A2(n20), .Y(n5));
  INVX1 U15 (.A(n5), .Y(n77));
  AND2X1 U16 (.A1(n32), .A2(n40), .Y(n45));
  INVX1 U17 (.A(n45), .Y(n8));
  AND2X1 U18 (.A1(n47), .A2(n153), .Y(n154));
  INVX1 U19 (.A(n154), .Y(n9));
  XOR2X1 U20 (.A1(n28), .A2(n109), .Y(n10));
  AND2X1 U21 (.A1(n18), .A2(n126), .Y(n59));
  INVX1 U22 (.A(n59), .Y(n11));
  XNOR2X1 U23 (.A1(n4), .A2(n32), .Y(n153));
  INVX1 U24 (.A(n153), .Y());
  INVX1 U25 (.A(n41), .Y(n13));
  AND2X1 U26 (.A1(n80), .A2(n25), .Y(n129));
  INVX1 U27 (.A(n129), .Y(n14));
  AND2X1 U28 (.A1(n80), .A2(n105), .Y(n79));
  INVX1 U29 (.A(n79), .Y(n15));
  AND2X1 U30 (.A1(inp[6]), .A2(n149), .Y(n38));
  INVX1 U31 (.A(n38), .Y(n16));
  AND2X1 U32 (.A1(n48), .A2(n132), .Y(n125));
  INVX1 U33 (.A(n125), .Y(n17));
  AND2X1 U34 (.A1(n17), .A2(n27), .Y(n34));
  INVX1 U35 (.A(n34), .Y(n18));
  AND2X1 U36 (.A1(n151), .A2(n25), .Y(n64));
  INVX1 U37 (.A(n64), .Y(n19));
  AND2X1 U38 (.A1(n49), .A2(n89), .Y(n44));
  INVX1 U39 (.A(n44), .Y(n20));
  AND2X1 U40 (.A1(n107), .A2(inp[1]), .Y(n37));
  INVX1 U41 (.A(n37), .Y(n21));
  AND2X1 U42 (.A1(n119), .A2(inp[2]), .Y(n57));
  INVX1 U43 (.A(n57), .Y(n22));
  AND2X1 U44 (.A1(inp[4]), .A2(inp[5]), .Y(n61));
  INVX1 U45 (.A(n61), .Y(n23));
  XNOR2X1 U46 (.A1(n108), .A2(n69), .Y(n68));
  INVX1 U47 (.A(n68), .Y(n24));
  AND2X1 U48 (.A1(n143), .A2(n149), .Y(n33));
  INVX1 U49 (.A(n33), .Y(n25));
  AND2X1 U50 (.A1(n80), .A2(n132), .Y(n35));
  INVX1 U51 (.A(n35), .Y(n26));
  AND2X1 U52 (.A1(n16), .A2(n107), .Y(n58));
  INVX1 U53 (.A(n58), .Y(n27));
  AND2X1 U54 (.A1(n120), .A2(n22), .Y(n72));
  INVX1 U55 (.A(n72), .Y(n28));
  AND2X1 U56 (.A1(n47), .A2(n138), .Y(n39));
  INVX1 U57 (.A(n39), .Y(n29));
  XNOR2X1 U58 (.A1(n74), .A2(n11), .Y(n60));
  INVX1 U59 (.A(n60), .Y(n30));
  XNOR2X1 U60 (.A1(n136), .A2(n152), .Y(n56));
  INVX1 U61 (.A(n56), .Y(n31));
  OR2X1 U62 (.A1(n36), .A2(n46), .Y(n32));
  NOR2X1 U63 (.A1(n80), .A2(n62), .Y(n36));
  OR2X1 U64 (.A1(n49), .A2(n89), .Y(n40));
  XOR2X1 U65 (.A1(n6), .A2(n119), .Y(out[12]));
  NAND2X1 U66 (.A1(n141), .A2(n29), .Y(n42));
  NAND2X1 U67 (.A1(n43), .A2(n28), .Y(n86));
  NAND2X1 U68 (.A1(n77), .A2(n109), .Y(n43));
  INVX1 U69 (.A(n81), .Y(n46));
  AND2X1 U70 (.A1(n152), .A2(inp[0]), .Y(n55));
  AND2X1 U71 (.A1(n71), .A2(n47), .Y(n152));
  NAND2X1 U72 (.A1(inp[3]), .A2(inp[2]), .Y(n47));
  NAND2X1 U73 (.A1(n131), .A2(n48), .Y(n71));
  INVX1 U74 (.A(inp[3]), .Y(n48));
  INVX1 U75 (.A(inp[2]), .Y(n131));
  XOR2X1 U76 (.A1(inp[3]), .A2(inp[1]), .Y(n62));
  NOR2X1 U77 (.A1(n54), .A2(n3), .Y(n49));
  NAND2X1 U78 (.A1(n63), .A2(n127), .Y(n87));
  NAND2X1 U79 (.A1(n75), .A2(n94), .Y(n63));
  AND2X1 U80 (.A1(n7), .A2(n31), .Y(n65));
  NAND2X1 U81 (.A1(n135), .A2(n100), .Y(n51));
  OR2X1 U82 (.A1(n167), .A2(n96), .Y(n52));
  NOR2X1 U83 (.A1(n55), .A2(inp[1]), .Y(n54));
  NAND2X1 U84 (.A1(n11), .A2(n74), .Y(n66));
  OR2X1 U85 (.A1(n11), .A2(n74), .Y(n67));
  XOR2X1 U86 (.A1(n114), .A2(n27), .Y(n69));
  AND2X1 U87 (.A1(n5), .A2(n156), .Y(n85));
  INVX1 U88 (.A(n85), .Y(n70));
  INVX1 U89 (.A(n152), .Y(n73));
  AND2X1 U90 (.A1(n78), .A2(n15), .Y(n110));
  INVX1 U91 (.A(n110), .Y(n74));
  AND2X1 U92 (.A1(n122), .A2(n143), .Y(n123));
  NOR2X1 U93 (.A1(n149), .A2(inp[6]), .Y(n122));
  INVX1 U94 (.A(inp[6]), .Y(n136));
  NAND2X1 U95 (.A1(n124), .A2(inp[4]), .Y(n78));
  INVX1 U96 (.A(inp[4]), .Y(n80));
  NAND2X1 U97 (.A1(n62), .A2(n80), .Y(n81));
  NOR2X1 U98 (.A1(n83), .A2(n139), .Y(n82));
  NOR2X1 U99 (.A1(n7), .A2(n31), .Y(n83));
  NAND2X1 U100 (.A1(n71), .A2(inp[6]), .Y(n138));
  NAND2X1 U101 (.A1(n53), .A2(inp[4]), .Y(n141));
  XOR2X1 U102 (.A1(n140), .A2(n53), .Y(out[11]));
  NAND2X1 U103 (.A1(n167), .A2(n96), .Y(n135));
  AND2X1 U104 (.A1(n87), .A2(n66), .Y(n167));
  INVX1 U105 (.A(n88), .Y(n127));
  NAND2X1 U106 (.A1(n67), .A2(n162), .Y(n88));
  OR2X1 U107 (.A1(n69), .A2(n108), .Y(n162));
  AND2X1 U108 (.A1(inp[3]), .A2(inp[2]), .Y(n89));
  XOR2X1 U109 (.A1(inp[5]), .A2(inp[3]), .Y(n114));
  AND2X1 U110 (.A1(n30), .A2(n106), .Y(n164));
  INVX1 U111 (.A(n164), .Y(n91));
  INVX1 U112 (.A(n123), .Y(n92));
  AND2X1 U113 (.A1(n143), .A2(n136), .Y(n128));
  INVX1 U114 (.A(n128), .Y(n93));
  AND2X1 U115 (.A1(n69), .A2(n108), .Y(n121));
  INVX1 U116 (.A(n121), .Y(n94));
  AND2X1 U117 (.A1(n89), .A2(n12), .Y(n155));
  INVX1 U118 (.A(n155), .Y(n95));
  AND2X1 U119 (.A1(n130), .A2(n14), .Y(n168));
  INVX1 U120 (.A(n168), .Y(n96));
  AND2X1 U121 (.A1(n10), .A2(n77), .Y(n157));
  INVX1 U122 (.A(n157), .Y(n97));
  AND2X1 U123 (.A1(n145), .A2(inp[1]), .Y(n148));
  INVX1 U124 (.A(n148), .Y(n98));
  AND2X1 U125 (.A1(n24), .A2(n75), .Y(n160));
  INVX1 U126 (.A(n160), .Y(n99));
  XNOR2X1 U127 (.A1(n102), .A2(n134), .Y(n166));
  INVX1 U128 (.A(n166), .Y(n100));
  AND2X1 U129 (.A1(n149), .A2(inp[1]), .Y());
  INVX1 U130 (.A(n146), .Y(n101));
  AND2X1 U131 (.A1(inp[6]), .A2(inp[1]), .Y(n133));
  INVX1 U132 (.A(n133), .Y(n102));
  AND2X1 U133 (.A1(n113), .A2(n112), .Y(n139));
  INVX1 U134 (.A(n139), .Y(n103));
  AND2X1 U135 (.A1(n23), .A2(n26), .Y(n119));
  INVX1 U136 (.A(n119), .Y(n104));
  AND2X1 U137 (.A1(n92), .A2(n21), .Y(n124));
  INVX1 U138 (.A(n124), .Y(n105));
  AND2X1 U139 (.A1(n63), .A2(n162), .Y(n163));
  INVX1 U140 (.A(n163), .Y(n106));
  INVX1 U141 (.A(n122), .Y(n107));
  AND2X1 U142 (.A1(n23), .A2(n22), .Y(n159));
  INVX1 U143 (.A(n159), .Y(n108));
  AND2X1 U144 (.A1(n117), .A2(n116), .Y(n156));
  INVX1 U145 (.A(n156), .Y(n109));
  INVX1 U146 (.A(inp[5]), .Y(n132));
  NAND2X1 U147 (.A1(n131), .A2(n132), .Y(n111));
  NAND2X1 U148 (.A1(n111), .A2(n102), .Y(n113));
  NAND2X1 U149 (.A1(inp[5]), .A2(inp[2]), .Y(n112));
  INVX1 U150 (.A(inp[0]), .Y(n149));
  INVX1 U151 (.A(inp[1]), .Y(n143));
  NAND2X1 U152 (.A1(n80), .A2(n143), .Y(n115));
  NAND2X1 U153 (.A1(n115), .A2(inp[3]), .Y(n117));
  NAND2X1 U154 (.A1(inp[4]), .A2(inp[1]), .Y(n116));
  NAND2X1 U155 (.A1(n48), .A2(inp[2]), .Y(n118));
  NAND2X1 U156 (.A1(n131), .A2(n104), .Y(n120));
  NAND2X1 U157 (.A1(inp[5]), .A2(inp[3]), .Y(n126));
  NAND2X1 U158 (.A1(n21), .A2(n93), .Y(n130));
  XOR2X1 U159 (.A1(n132), .A2(n131), .Y(n134));
  XOR2X1 U160 (.A1(n7), .A2(n103), .Y(n137));
  XOR2X1 U161 (.A1(n137), .A2(n31), .Y(out[10]));
  XOR2X1 U162 (.A1(n80), .A2(n29), .Y(n140));
  NOR2X1 U163 (.A1(n6), .A2(n26), .Y(n142));
  NOR2X1 U164 (.A1(inp[6]), .A2(n142), .Y(out[14]));
  NAND2X1 U165 (.A1(n143), .A2(inp[0]), .Y(n144));
  NAND2X1 U166 (.A1(n144), .A2(n101), .Y(out[2]));
  NOR2X1 U167 (.A1(inp[2]), .A2(inp[0]), .Y());
  NAND2X1 U168 (.A1(n101), .A2(inp[2]), .Y(n147));
  NAND2X1 U169 (.A1(n147), .A2(n98), .Y(out[3]));
  NAND2X1 U170 (.A1(n149), .A2(inp[2]), .Y());
  NAND2X1 U171 (.A1(n150), .A2(inp[1]), .Y(n151));
  XOR2X1 U172 (.A1(n19), .A2(n73), .Y());
  NAND2X1 U173 (.A1(n9), .A2(n95), .Y(out[5]));
  OR2X1 U174 (.A1(n10), .A2(n77), .Y(n158));
  NAND2X1 U175 (.A1(n158), .A2(n97), .Y(out[6]));
  OR2X1 U176 (.A1(n24), .A2(n75), .Y(n161));
  NAND2X1 U177 (.A1(n161), .A2(n99), .Y(out[7]));
  OR2X1 U178 (.A1(n30), .A2(n106), .Y(n165));
  NAND2X1 U179 (.A1(n165), .A2(n91), .Y(out[8]));
  XOR2X1 U180 (.A1(n167), .A2(n100), .Y(n169));
  XOR2X1 U181 (.A1(n169), .A2(n96), .Y(out[9]));

  assign n12 = 1'b1;
  assign n145 = 1'b1;
  assign n146 = 1'b0;
  assign n150 = 1'b0;
  assign out[4] = 1'b1;
endmodule


