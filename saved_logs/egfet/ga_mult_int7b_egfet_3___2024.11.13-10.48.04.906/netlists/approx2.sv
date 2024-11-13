/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:47:49 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [6:0] inp;
  output [14:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[14] = out[13];

  NOR2X1 U5 (.A1(inp[5]), .A2(n98), .Y(n132));
  NAND2X1 U6 (.A1(n106), .A2(n75), .Y(n68));
  NAND2X1 U7 (.A1(n11), .A2(n80), .Y(n115));
  INVX1 U8 (.A(n2), .Y(n112));
  INVX1 U9 (.A(n70), .Y(n3));
  NOR2X1 U10 (.A1(n3), .A2(n132), .Y(n2));
  NAND2X1 U11 (.A1(n65), .A2(n64), .Y(n6));
  NAND2X1 U12 (.A1(n112), .A2(n5), .Y(n4));
  AND2X1 U13 (.A1(n61), .A2(n88), .Y(n114));
  INVX1 U14 (.A(n114), .Y(n5));
  XNOR2X1 U15 (.A1(n10), .A2(n37), .Y(n7));
  AND2X1 U16 (.A1(n149), .A2(n164), .Y(n43));
  INVX1 U17 (.A(n43), .Y(n8));
  AND2X1 U18 (.A1(n142), .A2(n143), .Y(n59));
  INVX1 U19 (.A(n59), .Y(n9));
  AND2X1 U20 (.A1(n133), .A2(n100), .Y(n57));
  INVX1 U21 (.A(n57), .Y(n10));
  AND2X1 U22 (.A1(n160), .A2(n159), .Y(n79));
  INVX1 U23 (.A(n79), .Y(n11));
  AND2X1 U24 (.A1(n69), .A2(n7), .Y(n174));
  INVX1 U25 (.A(n174), .Y(n12));
  AND2X1 U26 (.A1(n159), .A2(n117), .Y(n103));
  INVX1 U27 (.A(n103), .Y(n13));
  AND2X1 U28 (.A1(n35), .A2(n40), .Y(n56));
  INVX1 U29 (.A(n56), .Y(n14));
  AND2X1 U30 (.A1(n155), .A2(n92), .Y(n147));
  INVX1 U31 (.A(n147), .Y(n15));
  AND2X1 U32 (.A1(n37), .A2(n10), .Y(n66));
  INVX1 U33 (.A(n66), .Y(n16));
  AND2X1 U34 (.A1(n145), .A2(n164), .Y(n46));
  INVX1 U35 (.A(n46), .Y(n17));
  AND2X1 U36 (.A1(n73), .A2(n155), .Y(n47));
  INVX1 U37 (.A(n47), .Y(n18));
  AND2X1 U38 (.A1(n73), .A2(n149), .Y(n44));
  INVX1 U39 (.A(n44), .Y(n19));
  AND2X1 U40 (.A1(n149), .A2(n72), .Y(n48));
  INVX1 U41 (.A(n48), .Y(n20));
  AND2X1 U42 (.A1(inp[6]), .A2(n163), .Y(n55));
  INVX1 U43 (.A(n55), .Y(n21));
  AND2X1 U44 (.A1(n152), .A2(n153), .Y(n52));
  INVX1 U45 (.A(n52), .Y(n22));
  AND2X1 U46 (.A1(n86), .A2(n81), .Y(n83));
  INVX1 U47 (.A(n83), .Y(n23));
  AND2X1 U48 (.A1(n112), .A2(n27), .Y(n62));
  INVX1 U49 (.A(n62), .Y(n24));
  AND2X1 U50 (.A1(n164), .A2(inp[3]), .Y(n53));
  INVX1 U51 (.A(n53), .Y(n25));
  AND2X1 U52 (.A1(n169), .A2(inp[5]), .Y(n99));
  INVX1 U53 (.A(n99), .Y(n26));
  XNOR2X1 U54 (.A1(n36), .A2(n5), .Y(n96));
  INVX1 U55 (.A(n96), .Y(n27));
  XNOR2X1 U56 (.A1(n108), .A2(n78), .Y(n95));
  INVX1 U57 (.A(n95), .Y(n28));
  XNOR2X1 U58 (.A1(inp[4]), .A2(inp[1]), .Y(n98));
  INVX1 U59 (.A(n98), .Y(n29));
  AND2X1 U60 (.A1(inp[6]), .A2(inp[1]), .Y(n54));
  INVX1 U61 (.A(n54), .Y(n30));
  AND2X1 U62 (.A1(n155), .A2(inp[0]), .Y(n49));
  INVX1 U63 (.A(n49), .Y(n31));
  XNOR2X1 U64 (.A1(n6), .A2(n35), .Y(n97));
  INVX1 U65 (.A(n97), .Y(n32));
  AND2X1 U66 (.A1(n26), .A2(n25), .Y(n58));
  INVX1 U67 (.A(n58), .Y(n33));
  AND2X1 U68 (.A1(n77), .A2(n109), .Y(n94));
  INVX1 U69 (.A(n94), .Y());
  AND2X1 U70 (.A1(n136), .A2(n124), .Y(n93));
  INVX1 U71 (.A(n93), .Y(n35));
  AND2X1 U72 (.A1(inp[3]), .A2(inp[4]), .Y(n60));
  INVX1 U73 (.A(n60), .Y(n36));
  XNOR2X1 U74 (.A1(n130), .A2(n113), .Y(n105));
  INVX1 U75 (.A(n105), .Y(n37));
  AND2X1 U76 (.A1(n86), .A2(n138), .Y(n82));
  INVX1 U77 (.A(n82), .Y(n38));
  XNOR2X1 U78 (.A1(inp[3]), .A2(inp[4]), .Y(n39));
  XNOR2X1 U79 (.A1(n31), .A2(n42), .Y(n90));
  INVX1 U80 (.A(n90), .Y(n40));
  OR2X1 U81 (.A1(n69), .A2(n7), .Y(n41));
  NAND2X1 U82 (.A1(n109), .A2(n111), .Y(n42));
  NAND2X1 U83 (.A1(n145), .A2(n131), .Y(n45));
  OR2X1 U84 (.A1(n159), .A2(n117), .Y(n50));
  NAND2X1 U85 (.A1(n68), .A2(n117), .Y(n51));
  OR2X1 U86 (.A1(n34), .A2(n39), .Y(n61));
  OR2X1 U87 (.A1(n112), .A2(n5), .Y(n63));
  OR2X1 U88 (.A1(n10), .A2(n37), .Y(n64));
  NAND2X1 U89 (.A1(n74), .A2(n16), .Y(n65));
  NAND2X1 U90 (.A1(n87), .A2(n63), .Y(n74));
  OR2X1 U91 (.A1(n9), .A2(n78), .Y(n106));
  NAND2X1 U92 (.A1(n67), .A2(n23), .Y(n78));
  NAND2X1 U93 (.A1(n85), .A2(n107), .Y(n67));
  NAND2X1 U94 (.A1(n6), .A2(n14), .Y(n86));
  NAND2X1 U95 (.A1(n71), .A2(inp[0]), .Y(n101));
  INVX1 U96 (.A(n68), .Y(n159));
  INVX1 U97 (.A(n74), .Y(n69));
  OR2X1 U98 (.A1(n29), .A2(n145), .Y(n70));
  INVX1 U99 (.A(n71), .Y(n111));
  INVX1 U100 (.A(inp[3]), .Y(n72));
  INVX1 U101 (.A(inp[1]), .Y(n73));
  NOR2X1 U102 (.A1(n73), .A2(n72), .Y(n71));
  NAND2X1 U103 (.A1(n146), .A2(n108), .Y(n75));
  INVX1 U104 (.A(n39), .Y(n92));
  NAND2X1 U105 (.A1(n76), .A2(inp[0]), .Y());
  NAND2X1 U106 (.A1(n39), .A2(n34), .Y(n76));
  INVX1 U107 (.A(n89), .Y(n77));
  NAND2X1 U108 (.A1(n78), .A2(n9), .Y(n146));
  XOR2X1 U109 (.A1(n115), .A2(n22), .Y(out[12]));
  NAND2X1 U110 (.A1(n51), .A2(n33), .Y(n80));
  AND2X1 U111 (.A1(n138), .A2(n178), .Y(n81));
  NAND2X1 U112 (.A1(n38), .A2(n84), .Y(n85));
  XOR2X1 U113 (.A1(n38), .A2(n107), .Y(n179));
  INVX1 U114 (.A(n178), .Y(n84));
  NAND2X1 U115 (.A1(n4), .A2(n36), .Y(n87));
  AND2X1 U116 (.A1(n101), .A2(n164), .Y(n89));
  NAND2X1 U117 (.A1(n140), .A2(inp[0]), .Y(n91));
  NAND2X1 U118 (.A1(inp[4]), .A2(inp[1]), .Y(n100));
  NAND2X1 U119 (.A1(n18), .A2(n111), .Y(n102));
  NAND2X1 U120 (.A1(n131), .A2(n128), .Y(n104));
  XNOR2X1 U121 (.A1(n30), .A2(n141), .Y(n177));
  INVX1 U122 (.A(n177), .Y(n107));
  AND2X1 U123 (.A1(n45), .A2(n26), .Y(n156));
  INVX1 U124 (.A(n156), .Y(n108));
  AND2X1 U125 (.A1(n72), .A2(n73), .Y(n134));
  INVX1 U126 (.A(n134), .Y(n109));
  XOR2X1 U127 (.A1(inp[2]), .A2(inp[5]), .Y(n113));
  AND2X1 U128 (.A1(n126), .A2(inp[2]), .Y(n166));
  INVX1 U129 (.A(n166), .Y(n116));
  AND2X1 U130 (.A1(n102), .A2(n91), .Y(n178));
  AND2X1 U131 (.A1(n148), .A2(n15), .Y(n160));
  INVX1 U132 (.A(n160), .Y(n117));
  AND2X1 U133 (.A1(n32), .A2(n40), .Y(n175));
  INVX1 U134 (.A(n175), .Y(n118));
  AND2X1 U135 (.A1(n72), .A2(inp[2]), .Y(n144));
  INVX1 U136 (.A(n144), .Y(n119));
  AND2X1 U137 (.A1(n170), .A2(n169), .Y(n171));
  INVX1 U138 (.A(n171), .Y(n121));
  AND2X1 U139 (.A1(n73), .A2(inp[0]), .Y(n162));
  INVX1 U140 (.A(n162), .Y(n122));
  AND2X1 U141 (.A1(n28), .A2(n9), .Y(n157));
  INVX1 U142 (.A(n157), .Y(n123));
  AND2X1 U143 (.A1(n17), .A2(n130), .Y(n137));
  INVX1 U144 (.A(n137), .Y(n124));
  OR2X1 U145 (.A1(inp[5]), .A2(n127), .Y(n153));
  INVX1 U146 (.A(n153), .Y(n125));
  AND2X1 U147 (.A1(inp[1]), .A2(n163), .Y(n165));
  INVX1 U148 (.A(n165), .Y());
  AND2X1 U149 (.A1(n150), .A2(n36), .Y(n151));
  INVX1 U150 (.A(n151), .Y(n127));
  AND2X1 U151 (.A1(n129), .A2(inp[1]), .Y(n170));
  INVX1 U152 (.A(n170), .Y(n128));
  AND2X1 U153 (.A1(n164), .A2(n163), .Y(n168));
  INVX1 U154 (.A(n168), .Y(n129));
  AND2X1 U155 (.A1(n21), .A2(n31), .Y(n135));
  INVX1 U156 (.A(n135), .Y(n130));
  AND2X1 U157 (.A1(n25), .A2(n119), .Y(n169));
  INVX1 U158 (.A(n169), .Y(n131));
  INVX1 U159 (.A(inp[2]), .Y(n164));
  INVX1 U160 (.A(inp[5]), .Y(n145));
  INVX1 U161 (.A(inp[4]), .Y(n149));
  NAND2X1 U162 (.A1(n19), .A2(inp[5]), .Y(n133));
  INVX1 U163 (.A(inp[6]), .Y(n155));
  INVX1 U164 (.A(inp[0]), .Y(n163));
  NAND2X1 U165 (.A1(inp[2]), .A2(inp[5]), .Y(n136));
  OR2X1 U166 (.A1(n40), .A2(n35), .Y(n138));
  NAND2X1 U167 (.A1(n155), .A2(inp[1]), .Y(n139));
  NAND2X1 U168 (.A1(n139), .A2(inp[3]), .Y(n140));
  XOR2X1 U169 (.A1(n164), .A2(n149), .Y(n141));
  NAND2X1 U170 (.A1(n8), .A2(n30), .Y(n143));
  NAND2X1 U171 (.A1(inp[2]), .A2(inp[4]), .Y(n142));
  NAND2X1 U172 (.A1(n39), .A2(inp[6]), .Y(n148));
  NAND2X1 U173 (.A1(n20), .A2(inp[6]), .Y(n150));
  NAND2X1 U174 (.A1(n127), .A2(inp[5]), .Y(n152));
  NAND2X1 U175 (.A1(n115), .A2(n125), .Y(n154));
  AND2X1 U176 (.A1(n155), .A2(n154), .Y(out[13]));
  OR2X1 U177 (.A1(n28), .A2(n9), .Y(n158));
  NAND2X1 U178 (.A1(n158), .A2(n123), .Y(out[10]));
  NAND2X1 U179 (.A1(n50), .A2(n13), .Y(n161));
  XOR2X1 U180 (.A1(n161), .A2(n33), .Y(out[11]));
  NAND2X1 U181 (.A1(n122), .A2(n126), .Y(out[2]));
  NAND2X1 U182 (.A1(n168), .A2(inp[1]), .Y(n167));
  NAND2X1 U183 (.A1(n167), .A2(n116), .Y(out[3]));
  NAND2X1 U184 (.A1(n104), .A2(n121), .Y(out[4]));
  XOR2X1 U185 (.A1(n39), .A2(inp[0]), .Y());
  XOR2X1 U186 (.A1(n172), .A2(n34), .Y(out[5]));
  OR2X1 U187 (.A1(n27), .A2(n112), .Y(n173));
  NAND2X1 U188 (.A1(n173), .A2(n24), .Y(out[6]));
  NAND2X1 U189 (.A1(n41), .A2(n12), .Y(out[7]));
  OR2X1 U190 (.A1(n32), .A2(n40), .Y(n176));
  NAND2X1 U191 (.A1(n176), .A2(n118), .Y(out[8]));
  XOR2X1 U192 (.A1(n179), .A2(n84), .Y(out[9]));

  assign n34 = 1'b0;
  assign n88 = 1'b0;
  assign n126 = 1'b0;
  assign n172 = 1'b0;
endmodule


