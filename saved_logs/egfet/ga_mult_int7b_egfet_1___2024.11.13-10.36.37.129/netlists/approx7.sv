/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:36:21 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [6:0] inp;
  output [14:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170;
  assign out[2] = inp[1];
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[14] = out[13];

  INVX1 U5 (.A(n10), .Y(n2));
  NAND2X1 U6 (.A1(n2), .A2(n168), .Y(n41));
  NAND2X1 U7 (.A1(n135), .A2(n23), .Y(n11));
  INVX1 U8 (.A(n3), .Y(n149));
  NAND2X1 U9 (.A1(inp[2]), .A2(inp[0]), .Y(n3));
  NAND2X1 U10 (.A1(n113), .A2(n114), .Y(n12));
  OR2X1 U11 (.A1(n8), .A2(n6), .Y(n4));
  NAND2X1 U12 (.A1(inp[3]), .A2(inp[5]), .Y(n5));
  AND2X1 U13 (.A1(inp[0]), .A2(n24), .Y(n6));
  NOR2X1 U14 (.A1(inp[3]), .A2(n98), .Y(n7));
  INVX1 U15 (.A(n7), .Y(n43));
  NOR2X1 U16 (.A1(n9), .A2(n157), .Y(n8));
  AND2X1 U17 (.A1(n156), .A2(n155), .Y(n9));
  NAND2X1 U18 (.A1(n117), .A2(n30), .Y(n10));
  NAND2X1 U19 (.A1(n49), .A2(inp[1]), .Y(n13));
  AND2X1 U20 (.A1(n119), .A2(n118), .Y(n122));
  INVX1 U21 (.A(n122), .Y(n14));
  XNOR2X1 U22 (.A1(n75), .A2(n33), .Y(n27));
  INVX1 U23 (.A(n27), .Y(n15));
  AND2X1 U24 (.A1(n93), .A2(n92), .Y(n19));
  INVX1 U25 (.A(n19), .Y(n16));
  XNOR2X1 U26 (.A1(n73), .A2(n85), .Y(n25));
  INVX1 U27 (.A(n25), .Y(n17));
  XNOR2X1 U28 (.A1(n81), .A2(n37), .Y(n26));
  INVX1 U29 (.A(n26), .Y(n18));
  NAND2X1 U30 (.A1(n127), .A2(n36), .Y(n20));
  INVX1 U31 (.A(inp[5]), .Y(n21));
  NOR2X1 U32 (.A1(inp[1]), .A2(n21), .Y());
  NAND2X1 U33 (.A1(n47), .A2(n29), .Y(n22));
  NAND2X1 U34 (.A1(n28), .A2(n76), .Y(n23));
  NAND2X1 U35 (.A1(n101), .A2(n100), .Y(n24));
  NAND2X1 U36 (.A1(n34), .A2(n83), .Y(n28));
  AND2X1 U37 (.A1(n54), .A2(n159), .Y(n108));
  INVX1 U38 (.A(n108), .Y(n29));
  AND2X1 U39 (.A1(n50), .A2(n165), .Y(n116));
  INVX1 U40 (.A(n116), .Y(n30));
  AND2X1 U41 (.A1(n39), .A2(n38), .Y(n118));
  INVX1 U42 (.A(n118), .Y(n31));
  AND2X1 U43 (.A1(n40), .A2(n41), .Y(n52));
  INVX1 U44 (.A(n52), .Y(n33));
  AND2X1 U45 (.A1(n129), .A2(n128), .Y(n53));
  INVX1 U46 (.A(n53), .Y(n34));
  AND2X1 U47 (.A1(n13), .A2(n103), .Y());
  INVX1 U48 (.A(n54), .Y(n35));
  AND2X1 U49 (.A1(n102), .A2(n5), .Y(n49));
  INVX1 U50 (.A(n49), .Y(n36));
  AND2X1 U51 (.A1(n42), .A2(n43), .Y(n50));
  INVX1 U52 (.A(n50), .Y());
  INVX1 U53 (.A(n88), .Y(n38));
  NAND2X1 U54 (.A1(n11), .A2(n71), .Y(n136));
  XOR2X1 U55 (.A1(n11), .A2(n66), .Y(out[12]));
  NAND2X1 U56 (.A1(n21), .A2(inp[1]), .Y(n39));
  NAND2X1 U57 (.A1(n33), .A2(n61), .Y(n48));
  NAND2X1 U58 (.A1(n44), .A2(n72), .Y(n40));
  NAND2X1 U59 (.A1(n98), .A2(inp[3]), .Y(n42));
  NAND2X1 U60 (.A1(n10), .A2(n84), .Y(n44));
  XOR2X1 U61 (.A1(n45), .A2(n34), .Y(out[11]));
  XOR2X1 U62 (.A1(n76), .A2(n83), .Y(n45));
  AND2X1 U63 (.A1(n35), .A2(n87), .Y(n46));
  INVX1 U64 (.A(n46), .Y(n107));
  NAND2X1 U65 (.A1(n4), .A2(n107), .Y(n47));
  AND2X1 U66 (.A1(n152), .A2(inp[3]), .Y(n154));
  INVX1 U67 (.A(n154), .Y(n55));
  AND2X1 U68 (.A1(n22), .A2(n17), .Y(n163));
  INVX1 U69 (.A(n163), .Y(n56));
  AND2X1 U70 (.A1(n15), .A2(n61), .Y(n140));
  INVX1 U71 (.A(n140), .Y(n57));
  AND2X1 U72 (.A1(n151), .A2(n150), .Y(n104));
  INVX1 U73 (.A(n104), .Y(n58));
  AND2X1 U74 (.A1(n147), .A2(n156), .Y(n148));
  INVX1 U75 (.A(n148), .Y(n59));
  AND2X1 U76 (.A1(n37), .A2(n81), .Y(n115));
  INVX1 U77 (.A(n115), .Y(n60));
  AND2X1 U78 (.A1(n126), .A2(n125), .Y(n139));
  INVX1 U79 (.A(n139), .Y(n61));
  AND2X1 U80 (.A1(n151), .A2(n137), .Y(n91));
  INVX1 U81 (.A(n91), .Y(n62));
  AND2X1 U82 (.A1(n82), .A2(n130), .Y(n96));
  INVX1 U83 (.A(n96), .Y(n63));
  AND2X1 U84 (.A1(n38), .A2(n130), .Y(n124));
  INVX1 U85 (.A(n124), .Y(n64));
  AND2X1 U86 (.A1(n137), .A2(n147), .Y(n94));
  INVX1 U87 (.A(n94), .Y(n65));
  AND2X1 U88 (.A1(n145), .A2(n144), .Y(n146));
  INVX1 U89 (.A(n146), .Y(n66));
  AND2X1 U90 (.A1(n149), .A2(n58), .Y(n106));
  INVX1 U91 (.A(n106), .Y(n67));
  AND2X1 U92 (.A1(n12), .A2(n18), .Y(n166));
  INVX1 U93 (.A(n166), .Y(n68));
  AND2X1 U94 (.A1(n49), .A2(n86), .Y(n134));
  INVX1 U95 (.A(n134), .Y(n69));
  AND2X1 U96 (.A1(n24), .A2(n109), .Y(n111));
  INVX1 U97 (.A(n111), .Y());
  OR2X1 U98 (.A1(inp[5]), .A2(n16), .Y(n144));
  INVX1 U99 (.A(n144), .Y(n71));
  AND2X1 U100 (.A1(n121), .A2(n14), .Y(n169));
  INVX1 U101 (.A(n169), .Y(n72));
  AND2X1 U102 (.A1(n110), .A2(n70), .Y(n162));
  INVX1 U103 (.A(n162), .Y(n73));
  AND2X1 U104 (.A1(n65), .A2(n86), .Y(n123));
  INVX1 U105 (.A(n123), .Y(n74));
  AND2X1 U106 (.A1(n20), .A2(n69), .Y(n138));
  INVX1 U107 (.A(n138), .Y(n75));
  AND2X1 U108 (.A1(n5), .A2(n69), .Y(n143));
  INVX1 U109 (.A(n143), .Y(n76));
  AND2X1 U110 (.A1(n105), .A2(n67), .Y(n157));
  INVX1 U111 (.A(n157), .Y());
  XNOR2X1 U112 (.A1(n130), .A2(n151), .Y(n131));
  INVX1 U113 (.A(n131), .Y(n78));
  XNOR2X1 U114 (.A1(n90), .A2(n150), .Y(n152));
  INVX1 U115 (.A(n152), .Y(n79));
  AND2X1 U116 (.A1(n99), .A2(n89), .Y(n109));
  INVX1 U117 (.A(n109), .Y(n80));
  AND2X1 U118 (.A1(n70), .A2(n87), .Y(n165));
  INVX1 U119 (.A(n165), .Y(n81));
  XNOR2X1 U120 (.A1(n74), .A2(n38), .Y(n95));
  INVX1 U121 (.A(n95), .Y(n82));
  XNOR2X1 U122 (.A1(n31), .A2(n89), .Y(n98));
  AND2X1 U123 (.A1(n133), .A2(n132), .Y(n142));
  INVX1 U124 (.A(n142), .Y(n83));
  AND2X1 U125 (.A1(n97), .A2(n63), .Y(n168));
  INVX1 U126 (.A(n168), .Y(n84));
  AND2X1 U127 (.A1(n13), .A2(n5), .Y(n161));
  INVX1 U128 (.A(n161), .Y(n85));
  AND2X1 U129 (.A1(inp[6]), .A2(inp[2]), .Y(n127));
  INVX1 U130 (.A(n127), .Y(n86));
  AND2X1 U131 (.A1(inp[2]), .A2(inp[4]), .Y());
  INVX1 U132 (.A(n159), .Y(n87));
  AND2X1 U133 (.A1(n137), .A2(n156), .Y(n120));
  INVX1 U134 (.A(n120), .Y(n89));
  INVX1 U135 (.A(n149), .Y(n90));
  INVX1 U136 (.A(inp[6]), .Y(n137));
  INVX1 U137 (.A(inp[3]), .Y(n151));
  NAND2X1 U138 (.A1(n62), .A2(inp[4]), .Y(n93));
  NAND2X1 U139 (.A1(inp[6]), .A2(inp[3]), .Y(n92));
  INVX1 U140 (.A(inp[2]), .Y(n147));
  INVX1 U141 (.A(inp[1]), .Y(n150));
  NAND2X1 U142 (.A1(n95), .A2(inp[4]), .Y(n97));
  INVX1 U143 (.A(inp[4]), .Y(n130));
  INVX1 U144 (.A(inp[0]), .Y(n156));
  NAND2X1 U145 (.A1(inp[6]), .A2(inp[0]), .Y(n99));
  NAND2X1 U146 (.A1(n87), .A2(inp[4]), .Y(n101));
  NAND2X1 U147 (.A1(n87), .A2(inp[2]), .Y(n100));
  NAND2X1 U148 (.A1(n151), .A2(n21), .Y(n102));
  NAND2X1 U149 (.A1(n150), .A2(n36), .Y(n103));
  INVX1 U150 (.A(n24), .Y(n155));
  NAND2X1 U151 (.A1(inp[3]), .A2(inp[1]), .Y(n105));
  NAND2X1 U152 (.A1(n22), .A2(n85), .Y(n112));
  NAND2X1 U153 (.A1(n80), .A2(n155), .Y(n110));
  NAND2X1 U154 (.A1(n112), .A2(n73), .Y(n114));
  OR2X1 U155 (.A1(n22), .A2(n85), .Y(n113));
  NAND2X1 U156 (.A1(n12), .A2(n60), .Y(n117));
  NAND2X1 U157 (.A1(n151), .A2(n89), .Y(n119));
  NAND2X1 U158 (.A1(n120), .A2(inp[3]), .Y(n121));
  NAND2X1 U159 (.A1(n64), .A2(n74), .Y(n126));
  NAND2X1 U160 (.A1(n88), .A2(inp[4]), .Y(n125));
  NAND2X1 U161 (.A1(n48), .A2(n75), .Y(n129));
  OR2X1 U162 (.A1(n33), .A2(n61), .Y(n128));
  NAND2X1 U163 (.A1(n131), .A2(inp[6]), .Y(n133));
  NAND2X1 U164 (.A1(n137), .A2(n78), .Y(n132));
  OR2X1 U165 (.A1(n34), .A2(n83), .Y(n135));
  AND2X1 U166 (.A1(n137), .A2(n136), .Y(out[13]));
  OR2X1 U167 (.A1(n15), .A2(n61), .Y(n141));
  NAND2X1 U168 (.A1(n141), .A2(n57), .Y(out[10]));
  NAND2X1 U169 (.A1(n16), .A2(inp[5]), .Y(n145));
  AND2X1 U170 (.A1(n90), .A2(n59), .Y(out[3]));
  NAND2X1 U171 (.A1(n151), .A2(n79), .Y(n153));
  NAND2X1 U172 (.A1(n153), .A2(n55), .Y());
  XOR2X1 U173 (.A1(n156), .A2(n155), .Y(n158));
  XOR2X1 U174 (.A1(n158), .A2(n77), .Y(out[5]));
  XOR2X1 U175 (.A1(n4), .A2(n87), .Y(n160));
  XOR2X1 U176 (.A1(n160), .A2(n35), .Y(out[6]));
  OR2X1 U177 (.A1(n17), .A2(n22), .Y(n164));
  NAND2X1 U178 (.A1(n164), .A2(n56), .Y());
  OR2X1 U179 (.A1(n18), .A2(n12), .Y(n167));
  NAND2X1 U180 (.A1(n167), .A2(n68), .Y(out[8]));
  XOR2X1 U181 (.A1(n10), .A2(n84), .Y(n170));
  XOR2X1 U182 (.A1(n170), .A2(n72), .Y(out[9]));

  assign n37 = 1'b1;
  assign n54 = 1'b0;
  assign n70 = 1'b0;
  assign n77 = 1'b1;
  assign n88 = 1'b0;
  assign n159 = 1'b0;
  assign out[4] = 1'b0;
  assign out[7] = 1'b0;
endmodule


