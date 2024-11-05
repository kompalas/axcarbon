/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:52:50 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [6:0] inp;
  output [13:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170;
  assign out[0] = inp[0];

  NAND2X1 U5 (.A1(n55), .A2(n45), .Y(n49));
  INVX1 U6 (.A(n1), .Y(n2));
  AND2X1 U7 (.A1(n57), .A2(n53), .Y(n1));
  NAND2X1 U8 (.A1(n8), .A2(n28), .Y());
  XOR2X1 U9 (.A1(n155), .A2(n33), .Y());
  XOR2X1 U10 (.A1(inp[6]), .A2(inp[3]), .Y());
  INVX1 U11 (.A(n47), .Y());
  NOR2X1 U12 (.A1(n58), .A2(n123), .Y(n47));
  NAND2X1 U13 (.A1(n35), .A2(n36), .Y(n3));
  NAND2X1 U14 (.A1(n100), .A2(n69), .Y(n4));
  AND2X1 U15 (.A1(n146), .A2(inp[5]), .Y(n147));
  INVX1 U16 (.A(n147), .Y(n5));
  AND2X1 U17 (.A1(n157), .A2(n20), .Y(n26));
  INVX1 U18 (.A(n26), .Y(n6));
  AND2X1 U19 (.A1(n4), .A2(n15), .Y(n25));
  INVX1 U20 (.A(n25), .Y(n7));
  AND2X1 U21 (.A1(n10), .A2(n18), .Y());
  INVX1 U22 (.A(n80), .Y());
  AND2X1 U23 (.A1(n104), .A2(n119), .Y(n23));
  INVX1 U24 (.A(n23), .Y(n9));
  XNOR2X1 U25 (.A1(inp[4]), .A2(n33), .Y(n10));
  XNOR2X1 U26 (.A1(n49), .A2(n17), .Y());
  INVX1 U27 (.A(n43), .Y());
  XNOR2X1 U28 (.A1(n93), .A2(n54), .Y());
  INVX1 U29 (.A(n44), .Y(n12));
  AND2X1 U30 (.A1(n144), .A2(n143), .Y(n48));
  INVX1 U31 (.A(n48), .Y());
  XNOR2X1 U32 (.A1(n15), .A2(n4), .Y(n42));
  INVX1 U33 (.A(n42), .Y(n14));
  XNOR2X1 U34 (.A1(n97), .A2(n102), .Y(n39));
  INVX1 U35 (.A(n39), .Y());
  AND2X1 U36 (.A1(n117), .A2(n97), .Y(n21));
  INVX1 U37 (.A(n21), .Y(n16));
  AND2X1 U38 (.A1(n140), .A2(inp[2]), .Y(n91));
  INVX1 U39 (.A(n91), .Y(n17));
  AND2X1 U40 (.A1(n29), .A2(n130), .Y(n52));
  INVX1 U41 (.A(n52), .Y());
  AND2X1 U42 (.A1(n66), .A2(n97), .Y());
  INVX1 U43 (.A(n38), .Y(n19));
  AND2X1 U44 (.A1(n17), .A2(n31), .Y(n92));
  INVX1 U45 (.A(n92), .Y(n20));
  NAND2X1 U46 (.A1(n146), .A2(inp[3]), .Y());
  NAND2X1 U47 (.A1(n19), .A2(n81), .Y());
  OR2X1 U48 (.A1(n2), .A2(n14), .Y(n129));
  AND2X1 U49 (.A1(n2), .A2(n14), .Y(n128));
  XOR2X1 U50 (.A1(n27), .A2(n86), .Y(out[11]));
  NAND2X1 U51 (.A1(n52), .A2(n94), .Y(n28));
  NAND2X1 U52 (.A1(n2), .A2(n7), .Y(n29));
  NAND2X1 U53 (.A1(n106), .A2(inp[5]), .Y(n31));
  NAND2X1 U54 (.A1(n18), .A2(n94), .Y(n142));
  NAND2X1 U55 (.A1(n40), .A2(n83), .Y(n32));
  NAND2X1 U56 (.A1(n13), .A2(n83), .Y(n40));
  NAND2X1 U57 (.A1(n46), .A2(n32), .Y(out[12]));
  INVX1 U58 (.A(n34), .Y(n123));
  NAND2X1 U59 (.A1(n16), .A2(n3), .Y());
  OR2X1 U60 (.A1(n67), .A2(n50), .Y(n35));
  NAND2X1 U61 (.A1(n116), .A2(n85), .Y(n36));
  NAND2X1 U62 (.A1(n68), .A2(n76), .Y());
  NAND2X1 U63 (.A1(n92), .A2(inp[0]), .Y(n45));
  NAND2X1 U64 (.A1(n40), .A2(n13), .Y(n46));
  AND2X1 U65 (.A1(n59), .A2(n111), .Y(n62));
  INVX1 U66 (.A(n62), .Y(n50));
  NAND2X1 U67 (.A1(n167), .A2(n47), .Y(n53));
  NAND2X1 U68 (.A1(n37), .A2(n49), .Y(n61));
  NAND2X1 U69 (.A1(n41), .A2(n6), .Y(n55));
  NAND2X1 U70 (.A1(n56), .A2(n70), .Y());
  NAND2X1 U71 (.A1(n54), .A2(n93), .Y());
  NAND2X1 U72 (.A1(n65), .A2(n5), .Y(out[13]));
  NOR2X1 U73 (.A1(n165), .A2(n60), .Y(n58));
  NAND2X1 U74 (.A1(n50), .A2(n67), .Y(n116));
  NAND2X1 U75 (.A1(n61), .A2(n17), .Y(n59));
  NOR2X1 U76 (.A1(n3), .A2(n16), .Y(n60));
  AND2X1 U77 (.A1(n107), .A2(n157), .Y(n152));
  INVX1 U78 (.A(n152), .Y(n63));
  AND2X1 U79 (.A1(n88), .A2(n135), .Y(n126));
  INVX1 U80 (.A(n126), .Y(n64));
  AND2X1 U81 (.A1(n40), .A2(n146), .Y(n148));
  INVX1 U82 (.A(n148), .Y(n65));
  AND2X1 U83 (.A1(n146), .A2(n106), .Y(n98));
  INVX1 U84 (.A(n98), .Y(n66));
  AND2X1 U85 (.A1(n24), .A2(n117), .Y(n163));
  INVX1 U86 (.A(n163), .Y());
  AND2X1 U87 (.A1(n108), .A2(n154), .Y(n110));
  INVX1 U88 (.A(n110), .Y(n68));
  AND2X1 U89 (.A1(n19), .A2(n77), .Y(n101));
  INVX1 U90 (.A(n101), .Y());
  AND2X1 U91 (.A1(n127), .A2(n64), .Y(n168));
  INVX1 U92 (.A(n168), .Y(n70));
  AND2X1 U93 (.A1(n12), .A2(n70), .Y());
  INVX1 U94 (.A(n169), .Y(n71));
  AND2X1 U95 (.A1(n151), .A2(n135), .Y(n136));
  INVX1 U96 (.A(n136), .Y(n72));
  AND2X1 U97 (.A1(n135), .A2(inp[0]), .Y(n112));
  INVX1 U98 (.A(n112), .Y(n73));
  AND2X1 U99 (.A1(n151), .A2(n87), .Y());
  INVX1 U100 (.A(n121), .Y(n74));
  AND2X1 U101 (.A1(n151), .A2(n140), .Y());
  INVX1 U102 (.A(n132), .Y(n75));
  AND2X1 U103 (.A1(n135), .A2(inp[1]), .Y(n109));
  INVX1 U104 (.A(n109), .Y(n76));
  AND2X1 U105 (.A1(n96), .A2(n135), .Y());
  INVX1 U106 (.A(n99), .Y(n77));
  INVX1 U107 (.A(n128), .Y(n78));
  AND2X1 U108 (.A1(n138), .A2(n137), .Y());
  INVX1 U109 (.A(n139), .Y(n79));
  AND2X1 U110 (.A1(n73), .A2(n95), .Y());
  INVX1 U111 (.A(n113), .Y());
  AND2X1 U112 (.A1(n37), .A2(n11), .Y(n160));
  INVX1 U113 (.A(n160), .Y(n82));
  XNOR2X1 U114 (.A1(n79), .A2(n140), .Y(n145));
  INVX1 U115 (.A(n145), .Y(n83));
  AND2X1 U116 (.A1(n155), .A2(n157), .Y(n150));
  INVX1 U117 (.A(n150), .Y(n84));
  AND2X1 U118 (.A1(n115), .A2(n22), .Y());
  INVX1 U119 (.A(n162), .Y());
  AND2X1 U120 (.A1(n134), .A2(n133), .Y(n141));
  INVX1 U121 (.A(n141), .Y(n86));
  XNOR2X1 U122 (.A1(n89), .A2(n95), .Y());
  INVX1 U123 (.A(n120), .Y(n87));
  XNOR2X1 U124 (.A1(n96), .A2(n19), .Y(n125));
  INVX1 U125 (.A(n125), .Y(n88));
  AND2X1 U126 (.A1(n103), .A2(n96), .Y());
  INVX1 U127 (.A(n119), .Y(n89));
  AND2X1 U128 (.A1(n122), .A2(n74), .Y(n165));
  INVX1 U129 (.A(n165), .Y(n90));
  AND2X1 U130 (.A1(n105), .A2(n9), .Y(n167));
  INVX1 U131 (.A(n167), .Y(n93));
  INVX1 U132 (.A(n10), .Y());
  AND2X1 U133 (.A1(n157), .A2(inp[4]), .Y(n118));
  INVX1 U134 (.A(n118), .Y(n95));
  AND2X1 U135 (.A1(n155), .A2(inp[5]), .Y());
  INVX1 U136 (.A(n124), .Y(n96));
  AND2X1 U137 (.A1(inp[6]), .A2(inp[2]), .Y(n131));
  INVX1 U138 (.A(n131), .Y(n97));
  INVX1 U139 (.A(inp[1]), .Y(n155));
  INVX1 U140 (.A(inp[4]), .Y());
  INVX1 U141 (.A(inp[6]), .Y(n146));
  INVX1 U142 (.A(inp[2]), .Y(n106));
  NAND2X1 U143 (.A1(n124), .A2(inp[4]), .Y(n100));
  INVX1 U144 (.A(inp[5]), .Y(n140));
  INVX1 U145 (.A(inp[3]), .Y());
  XOR2X1 U146 (.A1(n140), .A2(n151), .Y(n102));
  INVX1 U147 (.A(inp[0]), .Y());
  NAND2X1 U148 (.A1(n151), .A2(n95), .Y(n104));
  NAND2X1 U149 (.A1(n140), .A2(inp[1]), .Y());
  NAND2X1 U150 (.A1(n118), .A2(inp[3]), .Y(n105));
  NAND2X1 U151 (.A1(n155), .A2(inp[4]), .Y(n108));
  NAND2X1 U152 (.A1(n155), .A2(n106), .Y(n107));
  AND2X1 U153 (.A1(n63), .A2(n151), .Y(n154));
  OR2X1 U154 (.A1(n37), .A2(n49), .Y());
  OR2X1 U155 (.A1(n19), .A2(n81), .Y(n117));
  NAND2X1 U156 (.A1(n151), .A2(inp[6]), .Y(n114));
  NAND2X1 U157 (.A1(n114), .A2(inp[1]), .Y(n115));
  NAND2X1 U158 (.A1(n120), .A2(inp[3]), .Y(n122));
  NAND2X1 U159 (.A1(n125), .A2(inp[4]), .Y(n127));
  NAND2X1 U160 (.A1(n129), .A2(n78), .Y(out[10]));
  OR2X1 U161 (.A1(n4), .A2(n15), .Y(n130));
  NAND2X1 U162 (.A1(n97), .A2(n75), .Y(n134));
  NAND2X1 U163 (.A1(inp[5]), .A2(inp[3]), .Y(n133));
  NAND2X1 U164 (.A1(n72), .A2(inp[6]), .Y(n138));
  NAND2X1 U165 (.A1(inp[4]), .A2(inp[3]), .Y(n137));
  NAND2X1 U166 (.A1(n142), .A2(n86), .Y(n144));
  OR2X1 U167 (.A1(n18), .A2(n94), .Y(n143));
  NAND2X1 U168 (.A1(inp[1]), .A2(inp[0]), .Y());
  AND2X1 U169 (.A1(n84), .A2(n149), .Y());
  XOR2X1 U170 (.A1(n84), .A2(inp[2]), .Y(out[2]));
  NOR2X1 U171 (.A1(n63), .A2(n151), .Y());
  NOR2X1 U172 (.A1(n154), .A2(n153), .Y(out[3]));
  XOR2X1 U173 (.A1(n154), .A2(inp[4]), .Y(n156));
  XOR2X1 U174 (.A1(n156), .A2(n155), .Y(out[4]));
  XOR2X1 U175 (.A1(n20), .A2(n157), .Y());
  XOR2X1 U176 (.A1(n158), .A2(n41), .Y(out[5]));
  OR2X1 U177 (.A1(n11), .A2(n37), .Y(n161));
  NAND2X1 U178 (.A1(n161), .A2(n82), .Y(out[6]));
  XOR2X1 U179 (.A1(n50), .A2(n85), .Y(n164));
  XOR2X1 U180 (.A1(n164), .A2(n67), .Y(out[7]));
  XOR2X1 U181 (.A1(n16), .A2(n90), .Y(n166));
  XOR2X1 U182 (.A1(n166), .A2(n3), .Y(out[8]));
  OR2X1 U183 (.A1(n12), .A2(n70), .Y(n170));
  NAND2X1 U184 (.A1(n170), .A2(n71), .Y(out[9]));

  assign n8 = 1'b0;
  assign n11 = 1'b0;
  assign n13 = 1'b0;
  assign n15 = 1'b1;
  assign n18 = 1'b0;
  assign n22 = 1'b0;
  assign n24 = 1'b0;
  assign n27 = 1'b0;
  assign n33 = 1'b1;
  assign n34 = 1'b1;
  assign n37 = 1'b0;
  assign n38 = 1'b0;
  assign n41 = 1'b0;
  assign n43 = 1'b1;
  assign n44 = 1'b1;
  assign n54 = 1'b1;
  assign n56 = 1'b1;
  assign n57 = 1'b0;
  assign n67 = 1'b1;
  assign n69 = 1'b0;
  assign n80 = 1'b0;
  assign n81 = 1'b0;
  assign n85 = 1'b1;
  assign n94 = 1'b0;
  assign n99 = 1'b1;
  assign n103 = 1'b1;
  assign n111 = 1'b0;
  assign n113 = 1'b1;
  assign n119 = 1'b0;
  assign n120 = 1'b0;
  assign n121 = 1'b0;
  assign n124 = 1'b0;
  assign n132 = 1'b0;
  assign n135 = 1'b0;
  assign n139 = 1'b1;
  assign n149 = 1'b1;
  assign n151 = 1'b0;
  assign n153 = 1'b1;
  assign n157 = 1'b1;
  assign n158 = 1'b0;
  assign n162 = 1'b0;
  assign n169 = 1'b0;
  assign out[1] = 1'b1;
endmodule


