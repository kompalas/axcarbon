/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 11:00:41 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [7:0] inp;
  output [15:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184;
  assign out[2] = inp[1];
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[14] = out[15];

  NAND2X1 U5 (.A1(n2), .A2(n79), .Y(n69));
  NAND2X1 U6 (.A1(n52), .A2(n51), .Y(n54));
  NAND2X1 U7 (.A1(n41), .A2(n4), .Y(n5));
  OR2X1 U8 (.A1(n76), .A2(n11), .Y(n2));
  OR2X1 U9 (.A1(n6), .A2(n28), .Y(n3));
  NOR2X1 U10 (.A1(n172), .A2(n125), .Y(n45));
  NAND2X1 U11 (.A1(n178), .A2(n43), .Y(n4));
  AND2X1 U12 (.A1(n46), .A2(n47), .Y(n70));
  INVX1 U13 (.A(n70), .Y(n6));
  NAND2X1 U14 (.A1(inp[3]), .A2(inp[1]), .Y(n7));
  NAND2X1 U15 (.A1(n112), .A2(n22), .Y(n8));
  XOR2X1 U16 (.A1(n106), .A2(n11), .Y());
  INVX1 U17 (.A(n45), .Y());
  AND2X1 U18 (.A1(n126), .A2(n10), .Y(n44));
  INVX1 U19 (.A(n44), .Y(n11));
  XNOR2X1 U20 (.A1(n24), .A2(n132), .Y(n181));
  INVX1 U21 (.A(n181), .Y(n12));
  AND2X1 U22 (.A1(n72), .A2(inp[3]), .Y(n116));
  INVX1 U23 (.A(n116), .Y(n13));
  AND2X1 U24 (.A1(n30), .A2(n104), .Y(n38));
  INVX1 U25 (.A(n38), .Y(n14));
  AND2X1 U26 (.A1(n150), .A2(n166), .Y(n113));
  INVX1 U27 (.A(n113), .Y(n15));
  AND2X1 U28 (.A1(n115), .A2(n139), .Y(n35));
  INVX1 U29 (.A(n35), .Y(n16));
  AND2X1 U30 (.A1(n139), .A2(n166), .Y(n140));
  INVX1 U31 (.A(n140), .Y(n17));
  AND2X1 U32 (.A1(n73), .A2(n183), .Y(n39));
  INVX1 U33 (.A(n39), .Y(n18));
  AND2X1 U34 (.A1(n139), .A2(n130), .Y(n94));
  INVX1 U35 (.A(n94), .Y(n19));
  AND2X1 U36 (.A1(n170), .A2(n97), .Y(n96));
  INVX1 U37 (.A(n96), .Y(n20));
  AND2X1 U38 (.A1(inp[7]), .A2(inp[5]), .Y(n57));
  INVX1 U39 (.A(n57), .Y(n21));
  AND2X1 U40 (.A1(n156), .A2(inp[7]), .Y(n58));
  INVX1 U41 (.A(n58), .Y(n22));
  XNOR2X1 U42 (.A1(n26), .A2(n99), .Y(n56));
  INVX1 U43 (.A(n56), .Y(n23));
  AND2X1 U44 (.A1(n20), .A2(n106), .Y(n131));
  INVX1 U45 (.A(n131), .Y(n24));
  AND2X1 U46 (.A1(n142), .A2(n141), .Y(n33));
  INVX1 U47 (.A(n33), .Y(n25));
  XNOR2X1 U48 (.A1(n67), .A2(n40), .Y(n101));
  INVX1 U49 (.A(n101), .Y(n26));
  AND2X1 U50 (.A1(n151), .A2(n90), .Y(n55));
  INVX1 U51 (.A(n55), .Y(n27));
  XNOR2X1 U52 (.A1(n25), .A2(n143), .Y(n31));
  INVX1 U53 (.A(n31), .Y(n28));
  AND2X1 U54 (.A1(n59), .A2(n161), .Y(n32));
  INVX1 U55 (.A(n32), .Y(n29));
  XNOR2X1 U56 (.A1(n123), .A2(n36), .Y(n73));
  INVX1 U57 (.A(n73), .Y(n30));
  NAND2X1 U58 (.A1(n34), .A2(n85), .Y(n63));
  NAND2X1 U59 (.A1(n6), .A2(n28), .Y(n34));
  NAND2X1 U60 (.A1(n16), .A2(n24), .Y(n117));
  AND2X1 U61 (.A1(n156), .A2(inp[0]), .Y(n115));
  INVX1 U62 (.A(n123), .Y(n71));
  XOR2X1 U63 (.A1(n92), .A2(n150), .Y(n36));
  OR2X1 U64 (.A1(n26), .A2(n74), .Y(n46));
  NAND2X1 U65 (.A1(n37), .A2(n18), .Y(n74));
  NAND2X1 U66 (.A1(n54), .A2(n14), .Y(n37));
  XOR2X1 U67 (.A1(n8), .A2(inp[5]), .Y(n40));
  NAND2X1 U68 (.A1(n42), .A2(n93), .Y(n41));
  NAND2X1 U69 (.A1(n69), .A2(n82), .Y(n42));
  INVX1 U70 (.A(n69), .Y(n43));
  XOR2X1 U71 (.A1(n169), .A2(inp[5]), .Y(n76));
  XOR2X1 U72 (.A1(inp[3]), .A2(inp[1]), .Y(n169));
  NAND2X1 U73 (.A1(n48), .A2(n99), .Y(n47));
  NAND2X1 U74 (.A1(n74), .A2(n26), .Y(n48));
  AND2X1 U75 (.A1(n49), .A2(n7), .Y(n172));
  NAND2X1 U76 (.A1(n168), .A2(n19), .Y(n49));
  NOR2X1 U77 (.A1(n50), .A2(n133), .Y(n53));
  NOR2X1 U78 (.A1(n103), .A2(n5), .Y(n50));
  NAND2X1 U79 (.A1(n5), .A2(n103), .Y(n51));
  INVX1 U80 (.A(n53), .Y(n52));
  NAND2X1 U81 (.A1(n80), .A2(n84), .Y(n59));
  NAND2X1 U82 (.A1(n76), .A2(n11), .Y(n60));
  NAND2X1 U83 (.A1(n71), .A2(inp[4]), .Y(n61));
  NAND2X1 U84 (.A1(n8), .A2(n67), .Y(n62));
  AND2X1 U85 (.A1(n123), .A2(n150), .Y(n119));
  INVX1 U86 (.A(n119), .Y(n64));
  AND2X1 U87 (.A1(n105), .A2(n90), .Y(n155));
  INVX1 U88 (.A(n155), .Y(n65));
  XNOR2X1 U89 (.A1(inp[2]), .A2(n139), .Y(n109));
  INVX1 U90 (.A(n109), .Y(n66));
  AND2X1 U91 (.A1(n111), .A2(n77), .Y(n108));
  INVX1 U92 (.A(n108), .Y(n67));
  AND2X1 U93 (.A1(n117), .A2(n13), .Y(n123));
  INVX1 U94 (.A(n115), .Y(n72));
  AND2X1 U95 (.A1(n15), .A2(n106), .Y(n170));
  INVX1 U96 (.A(n170), .Y());
  INVX1 U97 (.A(inp[2]), .Y(n166));
  INVX1 U98 (.A(inp[3]), .Y(n139));
  INVX1 U99 (.A(n110), .Y(n77));
  INVX1 U100 (.A(inp[5]), .Y(n78));
  XOR2X1 U101 (.A1(n6), .A2(n85), .Y(n144));
  NAND2X1 U102 (.A1(n60), .A2(n106), .Y(n79));
  XOR2X1 U103 (.A1(n160), .A2(n158), .Y(n152));
  AND2X1 U104 (.A1(n63), .A2(n3), .Y(n158));
  INVX1 U105 (.A(n158), .Y(n80));
  AND2X1 U106 (.A1(n75), .A2(n171), .Y(n125));
  AND2X1 U107 (.A1(n166), .A2(n171), .Y(n167));
  INVX1 U108 (.A(n167), .Y(n81));
  AND2X1 U109 (.A1(n109), .A2(n165), .Y(n110));
  AND2X1 U110 (.A1(n20), .A2(n87), .Y(n178));
  INVX1 U111 (.A(n178), .Y(n82));
  AND2X1 U112 (.A1(n156), .A2(n150), .Y(n147));
  INVX1 U113 (.A(n147), .Y(n83));
  AND2X1 U114 (.A1(n27), .A2(n107), .Y(n159));
  INVX1 U115 (.A(n159), .Y(n84));
  AND2X1 U116 (.A1(n137), .A2(n136), .Y(n145));
  INVX1 U117 (.A(n145), .Y(n85));
  AND2X1 U118 (.A1(n146), .A2(n25), .Y(n148));
  INVX1 U119 (.A(n148), .Y(n86));
  AND2X1 U120 (.A1(n127), .A2(n75), .Y(n128));
  INVX1 U121 (.A(n128), .Y(n87));
  AND2X1 U122 (.A1(n74), .A2(n23), .Y(n134));
  INVX1 U123 (.A(n134), .Y(n88));
  AND2X1 U124 (.A1(n9), .A2(n76), .Y(n175));
  INVX1 U125 (.A(n175), .Y(n89));
  AND2X1 U126 (.A1(n149), .A2(n150), .Y(n153));
  INVX1 U127 (.A(n153), .Y(n90));
  AND2X1 U128 (.A1(n165), .A2(inp[6]), .Y(n121));
  INVX1 U129 (.A(n121), .Y(n91));
  AND2X1 U130 (.A1(n118), .A2(n105), .Y(n124));
  INVX1 U131 (.A(n124), .Y(n92));
  AND2X1 U132 (.A1(n129), .A2(n7), .Y(n177));
  INVX1 U133 (.A(n177), .Y(n93));
  AND2X1 U134 (.A1(n21), .A2(n105), .Y(n149));
  INVX1 U135 (.A(n149), .Y(n95));
  AND2X1 U136 (.A1(n114), .A2(n72), .Y());
  INVX1 U137 (.A(n127), .Y(n97));
  AND2X1 U138 (.A1(n65), .A2(n156), .Y(n163));
  INVX1 U139 (.A(n163), .Y(n98));
  AND2X1 U140 (.A1(n120), .A2(n64), .Y(n138));
  INVX1 U141 (.A(n138), .Y(n99));
  INVX1 U142 (.A(n172), .Y(n100));
  AND2X1 U143 (.A1(inp[2]), .A2(inp[0]), .Y());
  INVX1 U144 (.A(n168), .Y(n102));
  XNOR2X1 U145 (.A1(n130), .A2(n149), .Y(n180));
  INVX1 U146 (.A(n180), .Y(n103));
  XNOR2X1 U147 (.A1(inp[2]), .A2(n122), .Y(n183));
  INVX1 U148 (.A(n183), .Y(n104));
  AND2X1 U149 (.A1(n165), .A2(n78), .Y(n154));
  INVX1 U150 (.A(n154), .Y(n105));
  AND2X1 U151 (.A1(inp[2]), .A2(inp[4]), .Y(n174));
  INVX1 U152 (.A(n174), .Y());
  AND2X1 U153 (.A1(n83), .A2(n86), .Y(n160));
  INVX1 U154 (.A(n160), .Y(n107));
  NAND2X1 U155 (.A1(n66), .A2(inp[7]), .Y(n111));
  INVX1 U156 (.A(inp[7]), .Y(n165));
  INVX1 U157 (.A(inp[6]), .Y(n156));
  NAND2X1 U158 (.A1(n166), .A2(n91), .Y(n112));
  INVX1 U159 (.A(inp[4]), .Y(n150));
  INVX1 U160 (.A(inp[0]), .Y(n171));
  NAND2X1 U161 (.A1(n171), .A2(inp[6]), .Y(n114));
  NAND2X1 U162 (.A1(n21), .A2(inp[1]), .Y(n118));
  NAND2X1 U163 (.A1(n61), .A2(n92), .Y(n120));
  NAND2X1 U164 (.A1(n22), .A2(n91), .Y(n122));
  INVX1 U165 (.A(inp[1]), .Y(n130));
  NAND2X1 U166 (.A1(n170), .A2(inp[0]), .Y(n126));
  NAND2X1 U167 (.A1(n19), .A2(inp[5]), .Y(n129));
  XOR2X1 U168 (.A1(n115), .A2(n139), .Y(n132));
  INVX1 U169 (.A(n12), .Y(n133));
  OR2X1 U170 (.A1(n23), .A2(n74), .Y(n135));
  NAND2X1 U171 (.A1(n135), .A2(n88), .Y(out[10]));
  NAND2X1 U172 (.A1(n62), .A2(inp[5]), .Y(n137));
  OR2X1 U173 (.A1(n67), .A2(n8), .Y(n136));
  XOR2X1 U174 (.A1(n156), .A2(n150), .Y(n143));
  NAND2X1 U175 (.A1(n17), .A2(inp[7]), .Y(n142));
  NAND2X1 U176 (.A1(inp[2]), .A2(inp[3]), .Y(n141));
  XOR2X1 U177 (.A1(n144), .A2(n28), .Y(out[11]));
  NAND2X1 U178 (.A1(inp[4]), .A2(inp[6]), .Y(n146));
  NAND2X1 U179 (.A1(n95), .A2(inp[4]), .Y(n151));
  XOR2X1 U180 (.A1(n152), .A2(n27), .Y(out[12]));
  NAND2X1 U181 (.A1(n155), .A2(inp[6]), .Y(n157));
  NAND2X1 U182 (.A1(n157), .A2(n98), .Y(n162));
  OR2X1 U183 (.A1(n107), .A2(n27), .Y(n161));
  XOR2X1 U184 (.A1(n162), .A2(n29), .Y(out[13]));
  NAND2X1 U185 (.A1(n163), .A2(n29), .Y(n164));
  AND2X1 U186 (.A1(n165), .A2(n164), .Y(out[15]));
  AND2X1 U187 (.A1(n102), .A2(n81), .Y(out[3]));
  XOR2X1 U188 (.A1(n169), .A2(n168), .Y(out[4]));
  XOR2X1 U189 (.A1(n171), .A2(n75), .Y(n173));
  XOR2X1 U190 (.A1(n173), .A2(n100), .Y(out[5]));
  OR2X1 U191 (.A1(n9), .A2(n76), .Y(n176));
  NAND2X1 U192 (.A1(n176), .A2(n89), .Y(out[6]));
  XOR2X1 U193 (.A1(n69), .A2(n93), .Y(n179));
  XOR2X1 U194 (.A1(n179), .A2(n82), .Y(out[7]));
  XOR2X1 U195 (.A1(n12), .A2(n103), .Y(n182));
  XOR2X1 U196 (.A1(n182), .A2(n5), .Y(out[8]));
  XOR2X1 U197 (.A1(n54), .A2(n104), .Y(n184));
  XOR2X1 U198 (.A1(n184), .A2(n30), .Y(out[9]));

  assign n9 = 1'b1;
  assign n10 = 1'b1;
  assign n75 = 1'b1;
  assign n106 = 1'b0;
  assign n127 = 1'b1;
  assign n168 = 1'b0;
endmodule


