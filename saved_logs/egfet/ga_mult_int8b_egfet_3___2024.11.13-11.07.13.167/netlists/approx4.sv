/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 11:06:56 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [7:0] inp;
  output [15:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n60,
         n61, n62, n63, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200;
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[14] = out[15];

  NAND2X1 U5 (.A1(n129), .A2(n52), .Y(n20));
  INVX1 U6 (.A(n2), .Y(n128));
  INVX1 U7 (.A(inp[1]), .Y(n3));
  INVX1 U8 (.A(n22), .Y(n4));
  NOR2X1 U9 (.A1(n4), .A2(n3), .Y(n2));
  NAND2X1 U10 (.A1(n46), .A2(n31), .Y(n7));
  NAND2X1 U11 (.A1(n17), .A2(n10), .Y(n13));
  NAND2X1 U12 (.A1(n9), .A2(n35), .Y(n6));
  NAND2X1 U13 (.A1(n122), .A2(n121), .Y(n63));
  AND2X1 U14 (.A1(n195), .A2(n37), .Y(n56));
  INVX1 U15 (.A(n56), .Y(n5));
  XOR2X1 U16 (.A1(n6), .A2(n87), .Y(n8));
  AND2X1 U17 (.A1(n34), .A2(n152), .Y(n33));
  INVX1 U18 (.A(n33), .Y(n9));
  AND2X1 U19 (.A1(inp[4]), .A2(inp[3]), .Y(n31));
  INVX1 U20 (.A(n31), .Y(n10));
  AND2X1 U21 (.A1(inp[5]), .A2(inp[2]), .Y(n51));
  INVX1 U22 (.A(n51), .Y(n11));
  AND2X1 U23 (.A1(n180), .A2(inp[6]), .Y(n114));
  INVX1 U24 (.A(n114), .Y(n12));
  AND2X1 U25 (.A1(n128), .A2(n98), .Y(n38));
  INVX1 U26 (.A(n38), .Y(n14));
  AND2X1 U27 (.A1(n18), .A2(inp[6]), .Y(n23));
  INVX1 U28 (.A(n23), .Y(n15));
  XNOR2X1 U29 (.A1(n104), .A2(n45), .Y(n47));
  INVX1 U30 (.A(n47), .Y(n16));
  AND2X1 U31 (.A1(n29), .A2(n28), .Y());
  INVX1 U32 (.A(n46), .Y());
  AND2X1 U33 (.A1(n32), .A2(n10), .Y(n39));
  INVX1 U34 (.A(n39), .Y(n18));
  AND2X1 U35 (.A1(n25), .A2(n24), .Y(n61));
  INVX1 U36 (.A(n61), .Y(n19));
  XNOR2X1 U37 (.A1(n42), .A2(n102), .Y(n48));
  INVX1 U38 (.A(n48), .Y(n21));
  NAND2X1 U39 (.A1(n127), .A2(n187), .Y(n22));
  NAND2X1 U40 (.A1(n174), .A2(n69), .Y(n24));
  NAND2X1 U41 (.A1(n26), .A2(n111), .Y(n25));
  NAND2X1 U42 (.A1(n175), .A2(n66), .Y(n26));
  AND2X1 U43 (.A1(n30), .A2(n7), .Y(n75));
  NAND2X1 U44 (.A1(n76), .A2(inp[5]), .Y(n28));
  INVX1 U45 (.A(n126), .Y(n29));
  NAND2X1 U46 (.A1(n20), .A2(n13), .Y(n30));
  NAND2X1 U47 (.A1(n183), .A2(n123), .Y(n32));
  NAND2X1 U48 (.A1(n186), .A2(n18), .Y(n86));
  NOR2X1 U49 (.A1(n87), .A2(n6), .Y(n160));
  INVX1 U50 (.A(n45), .Y(n34));
  NAND2X1 U51 (.A1(n151), .A2(n104), .Y(n35));
  INVX1 U52 (.A(n138), .Y(n58));
  INVX1 U53 (.A(n37), .Y(n42));
  XOR2X1 U54 (.A1(n138), .A2(n36), .Y(n195));
  XOR2X1 U55 (.A1(inp[3]), .A2(n67), .Y(n36));
  NOR2X1 U56 (.A1(n131), .A2(n132), .Y(n37));
  NAND2X1 U57 (.A1(inp[4]), .A2(inp[1]), .Y(n40));
  OR2X1 U58 (.A1(inp[4]), .A2(inp[1]), .Y(n41));
  NAND2X1 U59 (.A1(n42), .A2(n68), .Y(n43));
  NAND2X1 U60 (.A1(n67), .A2(inp[3]), .Y(n44));
  NAND2X1 U61 (.A1(n55), .A2(n142), .Y(n45));
  NAND2X1 U62 (.A1(n137), .A2(n91), .Y(n49));
  NAND2X1 U63 (.A1(n96), .A2(inp[1]), .Y(n50));
  NAND2X1 U64 (.A1(n39), .A2(inp[0]), .Y(n52));
  NAND2X1 U65 (.A1(n155), .A2(inp[7]), .Y(n53));
  NAND2X1 U66 (.A1(n58), .A2(n57), .Y(n54));
  AND2X1 U67 (.A1(n79), .A2(n198), .Y(n141));
  INVX1 U68 (.A(n141), .Y(n55));
  AND2X1 U69 (.A1(n140), .A2(n183), .Y(n139));
  INVX1 U70 (.A(n139), .Y(n57));
  AND2X1 U71 (.A1(n135), .A2(n11), .Y(n138));
  INVX1 U72 (.A(n75), .Y(n60));
  AND2X1 U73 (.A1(n100), .A2(n101), .Y(n170));
  INVX1 U74 (.A(n170), .Y(n62));
  AND2X1 U75 (.A1(n70), .A2(n5), .Y(n79));
  INVX1 U76 (.A(n79), .Y(n65));
  AND2X1 U77 (.A1(n166), .A2(n100), .Y(n174));
  INVX1 U78 (.A(n174), .Y(n66));
  AND2X1 U79 (.A1(n171), .A2(inp[0]), .Y(n140));
  INVX1 U80 (.A(n140), .Y(n67));
  INVX1 U81 (.A(n195), .Y(n68));
  XOR2X1 U82 (.A1(n176), .A2(n19), .Y(out[13]));
  INVX1 U83 (.A(n175), .Y(n69));
  NAND2X1 U84 (.A1(n43), .A2(n102), .Y(n70));
  NOR2X1 U85 (.A1(n75), .A2(n71), .Y());
  NOR2X1 U86 (.A1(n88), .A2(n63), .Y(n71));
  AND2X1 U87 (.A1(n175), .A2(n173), .Y(n72));
  INVX1 U88 (.A(n72), .Y(n164));
  OR2X1 U89 (.A1(n73), .A2(n74), .Y(n175));
  NOR2X1 U90 (.A1(n160), .A2(n159), .Y(n73));
  AND2X1 U91 (.A1(n6), .A2(n87), .Y(n74));
  NOR2X1 U92 (.A1(inp[7]), .A2(n178), .Y(out[15]));
  AND2X1 U93 (.A1(n41), .A2(n40), .Y(n76));
  INVX1 U94 (.A(n76), .Y(n125));
  NAND2X1 U95 (.A1(n65), .A2(n107), .Y(n77));
  AND2X1 U96 (.A1(n113), .A2(inp[7]), .Y(n115));
  INVX1 U97 (.A(n115), .Y(n80));
  AND2X1 U98 (.A1(n16), .A2(n89), .Y(n148));
  INVX1 U99 (.A(n148), .Y(n81));
  AND2X1 U100 (.A1(n8), .A2(n112), .Y(n157));
  INVX1 U101 (.A(n157), .Y(n82));
  AND2X1 U102 (.A1(n69), .A2(n111), .Y(n163));
  INVX1 U103 (.A(n163), .Y(n83));
  INVX1 U104 (.A(n120), .Y(n84));
  AND2X1 U105 (.A1(n39), .A2(n171), .Y(n153));
  INVX1 U106 (.A(n153), .Y(n85));
  AND2X1 U107 (.A1(n15), .A2(n85), .Y(n161));
  INVX1 U108 (.A(n161), .Y(n87));
  AND2X1 U109 (.A1(n19), .A2(n177), .Y(n178));
  AND2X1 U110 (.A1(n124), .A2(n40), .Y(n192));
  INVX1 U111 (.A(n192), .Y(n88));
  AND2X1 U112 (.A1(n63), .A2(n88), .Y(n131));
  XNOR2X1 U113 (.A1(inp[3]), .A2(n109), .Y(n152));
  INVX1 U114 (.A(n152), .Y(n89));
  AND2X1 U115 (.A1(n125), .A2(n154), .Y(n126));
  AND2X1 U116 (.A1(n187), .A2(n154), .Y(n134));
  INVX1 U117 (.A(n134), .Y());
  AND2X1 U118 (.A1(inp[6]), .A2(n179), .Y(n136));
  INVX1 U119 (.A(n136), .Y(n91));
  AND2X1 U120 (.A1(inp[0]), .A2(n180), .Y(n181));
  INVX1 U121 (.A(n181), .Y(n92));
  AND2X1 U122 (.A1(n116), .A2(n123), .Y(n117));
  INVX1 U123 (.A(n117), .Y(n93));
  AND2X1 U124 (.A1(n154), .A2(n183), .Y(n156));
  INVX1 U125 (.A(n156), .Y(n94));
  AND2X1 U126 (.A1(n187), .A2(n183), .Y(n185));
  INVX1 U127 (.A(n185), .Y(n95));
  AND2X1 U128 (.A1(n187), .A2(n186), .Y(n188));
  INVX1 U129 (.A(n188), .Y(n96));
  AND2X1 U130 (.A1(n144), .A2(n143), .Y(n146));
  INVX1 U131 (.A(n146), .Y(n97));
  AND2X1 U132 (.A1(inp[3]), .A2(inp[2]), .Y(n184));
  INVX1 U133 (.A(n184), .Y());
  AND2X1 U134 (.A1(n21), .A2(n68), .Y(n196));
  INVX1 U135 (.A(n196), .Y(n99));
  AND2X1 U136 (.A1(n165), .A2(n123), .Y(n168));
  INVX1 U137 (.A(n168), .Y(n100));
  AND2X1 U138 (.A1(n179), .A2(n154), .Y(n169));
  INVX1 U139 (.A(n169), .Y(n101));
  XNOR2X1 U140 (.A1(inp[1]), .A2(n49), .Y(n194));
  INVX1 U141 (.A(n194), .Y(n102));
  AND2X1 U142 (.A1(n186), .A2(inp[1]), .Y());
  INVX1 U143 (.A(n182), .Y(n103));
  AND2X1 U144 (.A1(n145), .A2(n97), .Y(n150));
  INVX1 U145 (.A(n150), .Y(n104));
  AND2X1 U146 (.A1(n54), .A2(n44), .Y(n199));
  INVX1 U147 (.A(n199), .Y(n105));
  AND2X1 U148 (.A1(n62), .A2(n171), .Y(n177));
  INVX1 U149 (.A(n177), .Y(n106));
  AND2X1 U150 (.A1(n118), .A2(n93), .Y(n198));
  INVX1 U151 (.A(n198), .Y(n107));
  XNOR2X1 U152 (.A1(inp[2]), .A2(n143), .Y(n116));
  INVX1 U153 (.A(n116), .Y(n108));
  AND2X1 U154 (.A1(n147), .A2(n101), .Y(n165));
  INVX1 U155 (.A(n165), .Y(n109));
  AND2X1 U156 (.A1(n119), .A2(n67), .Y(n133));
  INVX1 U157 (.A(n133), .Y(n110));
  AND2X1 U158 (.A1(n162), .A2(n15), .Y(n173));
  INVX1 U159 (.A(n173), .Y(n111));
  AND2X1 U160 (.A1(n53), .A2(n94), .Y(n159));
  INVX1 U161 (.A(n159), .Y(n112));
  INVX1 U162 (.A(inp[6]), .Y(n171));
  NAND2X1 U163 (.A1(n171), .A2(inp[1]), .Y(n113));
  INVX1 U164 (.A(inp[1]), .Y(n180));
  AND2X1 U165 (.A1(n80), .A2(n12), .Y(n143));
  NAND2X1 U166 (.A1(n108), .A2(inp[4]), .Y(n118));
  INVX1 U167 (.A(inp[0]), .Y());
  NAND2X1 U168 (.A1(n186), .A2(inp[6]), .Y(n119));
  NAND2X1 U169 (.A1(n133), .A2(n84), .Y(n122));
  XNOR2X1 U170 (.A1(inp[5]), .A2(inp[2]), .Y(n120));
  NAND2X1 U171 (.A1(n120), .A2(n110), .Y(n121));
  INVX1 U172 (.A(inp[4]), .Y(n123));
  NAND2X1 U173 (.A1(n41), .A2(inp[5]), .Y(n124));
  INVX1 U174 (.A(inp[5]), .Y(n154));
  INVX1 U175 (.A(inp[3]), .Y(n183));
  NAND2X1 U176 (.A1(inp[0]), .A2(inp[3]), .Y(n127));
  INVX1 U177 (.A(inp[2]), .Y(n187));
  NAND2X1 U178 (.A1(n86), .A2(n14), .Y(n129));
  NAND2X1 U179 (.A1(n90), .A2(n110), .Y(n135));
  NAND2X1 U180 (.A1(n171), .A2(inp[7]), .Y(n137));
  INVX1 U181 (.A(inp[7]), .Y(n179));
  NAND2X1 U182 (.A1(n77), .A2(n105), .Y(n142));
  NAND2X1 U183 (.A1(n187), .A2(inp[4]), .Y(n144));
  NAND2X1 U184 (.A1(n123), .A2(inp[2]), .Y(n145));
  NAND2X1 U185 (.A1(inp[7]), .A2(inp[5]), .Y(n147));
  OR2X1 U186 (.A1(n16), .A2(n89), .Y(n149));
  NAND2X1 U187 (.A1(n149), .A2(n81), .Y(out[10]));
  NAND2X1 U188 (.A1(n45), .A2(n89), .Y(n151));
  NAND2X1 U189 (.A1(inp[3]), .A2(inp[5]), .Y(n155));
  OR2X1 U190 (.A1(n8), .A2(n112), .Y(n158));
  NAND2X1 U191 (.A1(n158), .A2(n82), .Y(out[11]));
  NAND2X1 U192 (.A1(n183), .A2(inp[4]), .Y(n162));
  NAND2X1 U193 (.A1(n83), .A2(n164), .Y(n167));
  NAND2X1 U194 (.A1(n109), .A2(inp[4]), .Y(n166));
  XOR2X1 U195 (.A1(n167), .A2(n66), .Y(out[12]));
  NAND2X1 U196 (.A1(n170), .A2(inp[6]), .Y(n172));
  NAND2X1 U197 (.A1(n172), .A2(n106), .Y(n176));
  NAND2X1 U198 (.A1(n92), .A2(n103), .Y(out[2]));
  XOR2X1 U199 (.A1(n187), .A2(n103), .Y(out[3]));
  NAND2X1 U200 (.A1(n95), .A2(n98), .Y(n189));
  XOR2X1 U201 (.A1(n189), .A2(n50), .Y(out[4]));
  XOR2X1 U202 (.A1(n39), .A2(inp[0]), .Y(n190));
  XOR2X1 U203 (.A1(n190), .A2(n14), .Y(out[5]));
  XOR2X1 U204 (.A1(n10), .A2(n20), .Y(n191));
  XOR2X1 U205 (.A1(n191), .A2(n17), .Y(out[6]));
  XOR2X1 U206 (.A1(n60), .A2(n88), .Y(n193));
  XOR2X1 U207 (.A1(n193), .A2(n63), .Y());
  OR2X1 U208 (.A1(n21), .A2(n68), .Y(n197));
  NAND2X1 U209 (.A1(n197), .A2(n99), .Y(out[8]));
  XOR2X1 U210 (.A1(n65), .A2(n107), .Y(n200));
  XOR2X1 U211 (.A1(n200), .A2(n105), .Y(out[9]));

  assign n17 = 1'b1;
  assign n46 = 1'b0;
  assign n90 = 1'b0;
  assign n98 = 1'b0;
  assign n132 = 1'b1;
  assign n182 = 1'b1;
  assign n186 = 1'b0;
  assign out[7] = 1'b0;
endmodule


