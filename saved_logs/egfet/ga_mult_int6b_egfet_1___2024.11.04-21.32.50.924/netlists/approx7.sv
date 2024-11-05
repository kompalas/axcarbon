/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:47:59 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [5:0] inp;
  output [11:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154;
  assign out[0] = inp[0];

  NAND2X1 U5 (.A1(n125), .A2(inp[1]), .Y());
  NAND2X1 U6 (.A1(n74), .A2(n58), .Y(n2));
  XOR2X1 U7 (.A1(n121), .A2(n131), .Y(n3));
  INVX1 U8 (.A(n16), .Y(n4));
  NAND2X1 U9 (.A1(n12), .A2(n61), .Y());
  NAND2X1 U10 (.A1(n128), .A2(n121), .Y(n6));
  XOR2X1 U11 (.A1(n2), .A2(n41), .Y(n7));
  AND2X1 U12 (.A1(n31), .A2(n34), .Y(n27));
  INVX1 U13 (.A(n27), .Y(n8));
  AND2X1 U14 (.A1(inp[4]), .A2(inp[2]), .Y(n26));
  INVX1 U15 (.A(n26), .Y(n9));
  AND2X1 U16 (.A1(inp[2]), .A2(inp[0]), .Y(n23));
  INVX1 U17 (.A(n23), .Y(n10));
  AND2X1 U18 (.A1(inp[5]), .A2(inp[3]), .Y(n24));
  INVX1 U19 (.A(n24), .Y(n11));
  AND2X1 U20 (.A1(inp[3]), .A2(inp[1]), .Y());
  INVX1 U21 (.A(n25), .Y(n12));
  XNOR2X1 U22 (.A1(n66), .A2(n70), .Y(n21));
  INVX1 U23 (.A(n21), .Y(n13));
  XNOR2X1 U24 (.A1(n64), .A2(n5), .Y());
  INVX1 U25 (.A(n22), .Y(n14));
  AND2X1 U26 (.A1(n81), .A2(n33), .Y(n20));
  INVX1 U27 (.A(n20), .Y(n15));
  OR2X1 U28 (.A1(inp[1]), .A2(n34), .Y(n16));
  NAND2X1 U29 (.A1(n10), .A2(n78), .Y(n17));
  NAND2X1 U30 (.A1(n47), .A2(n57), .Y(n18));
  NAND2X1 U31 (.A1(n83), .A2(n40), .Y());
  NAND2X1 U32 (.A1(n123), .A2(n52), .Y(n28));
  NAND2X1 U33 (.A1(n91), .A2(inp[3]), .Y(n29));
  NAND2X1 U34 (.A1(n34), .A2(inp[1]), .Y(n30));
  AND2X1 U35 (.A1(n80), .A2(n126), .Y(n79));
  INVX1 U36 (.A(n79), .Y(n31));
  AND2X1 U37 (.A1(n98), .A2(n80), .Y(n119));
  INVX1 U38 (.A(n119), .Y(n32));
  AND2X1 U39 (.A1(n4), .A2(n80), .Y(n134));
  INVX1 U40 (.A(n134), .Y());
  AND2X1 U41 (.A1(n6), .A2(n9), .Y(n107));
  INVX1 U42 (.A(n107), .Y());
  AND2X1 U43 (.A1(n88), .A2(n55), .Y(n144));
  INVX1 U44 (.A(n144), .Y(n35));
  AND2X1 U45 (.A1(n95), .A2(n94), .Y(n148));
  INVX1 U46 (.A(n148), .Y());
  AND2X1 U47 (.A1(n110), .A2(n109), .Y());
  INVX1 U48 (.A(n115), .Y(n37));
  AND2X1 U49 (.A1(n105), .A2(n104), .Y());
  INVX1 U50 (.A(n152), .Y(n38));
  AND2X1 U51 (.A1(n97), .A2(n61), .Y());
  INVX1 U52 (.A(n149), .Y(n39));
  AND2X1 U53 (.A1(n15), .A2(n53), .Y(n84));
  INVX1 U54 (.A(n84), .Y());
  AND2X1 U55 (.A1(n6), .A2(n73), .Y(n113));
  INVX1 U56 (.A(n113), .Y(n41));
  AND2X1 U57 (.A1(n131), .A2(n65), .Y(n133));
  INVX1 U58 (.A(n133), .Y());
  AND2X1 U59 (.A1(n14), .A2(n38), .Y(n153));
  INVX1 U60 (.A(n153), .Y(n43));
  AND2X1 U61 (.A1(n7), .A2(n37), .Y());
  INVX1 U62 (.A(n111), .Y(n44));
  AND2X1 U63 (.A1(n126), .A2(n121), .Y(n92));
  INVX1 U64 (.A(n92), .Y(n45));
  AND2X1 U65 (.A1(n128), .A2(n98), .Y(n100));
  INVX1 U66 (.A(n100), .Y(n46));
  AND2X1 U67 (.A1(n69), .A2(n125), .Y());
  INVX1 U68 (.A(n76), .Y(n47));
  AND2X1 U69 (.A1(n121), .A2(n125), .Y(n89));
  INVX1 U70 (.A(n89), .Y());
  AND2X1 U71 (.A1(n126), .A2(inp[0]), .Y());
  INVX1 U72 (.A(n127), .Y(n49));
  AND2X1 U73 (.A1(n13), .A2(n35), .Y(n145));
  INVX1 U74 (.A(n145), .Y(n50));
  AND2X1 U75 (.A1(n46), .A2(n63), .Y());
  INVX1 U76 (.A(n102), .Y());
  AND2X1 U77 (.A1(n120), .A2(n121), .Y(n122));
  INVX1 U78 (.A(n122), .Y(n52));
  AND2X1 U79 (.A1(n18), .A2(n6), .Y(n82));
  INVX1 U80 (.A(n82), .Y(n53));
  AND2X1 U81 (.A1(n2), .A2(n41), .Y(n117));
  INVX1 U82 (.A(n117), .Y());
  AND2X1 U83 (.A1(n19), .A2(n3), .Y());
  INVX1 U84 (.A(n87), .Y());
  AND2X1 U85 (.A1(n17), .A2(n136), .Y(n137));
  INVX1 U86 (.A(n137), .Y(n56));
  AND2X1 U87 (.A1(n75), .A2(inp[0]), .Y(n85));
  INVX1 U88 (.A(n85), .Y(n57));
  AND2X1 U89 (.A1(n75), .A2(n128), .Y(n118));
  INVX1 U90 (.A(n118), .Y());
  AND2X1 U91 (.A1(n77), .A2(n128), .Y());
  INVX1 U92 (.A(n129), .Y(n59));
  AND2X1 U93 (.A1(n101), .A2(n51), .Y(n147));
  INVX1 U94 (.A(n147), .Y(n60));
  AND2X1 U95 (.A1(n131), .A2(n72), .Y(n106));
  INVX1 U96 (.A(n106), .Y(n61));
  AND2X1 U97 (.A1(n11), .A2(n57), .Y(n140));
  INVX1 U98 (.A(n140), .Y(n62));
  AND2X1 U99 (.A1(n48), .A2(n72), .Y(n99));
  INVX1 U100 (.A(n99), .Y(n63));
  AND2X1 U101 (.A1(n30), .A2(n16), .Y(n151));
  INVX1 U102 (.A(n151), .Y(n64));
  AND2X1 U103 (.A1(n10), .A2(n59), .Y(n130));
  INVX1 U104 (.A(n130), .Y(n65));
  AND2X1 U105 (.A1(n29), .A2(n45), .Y(n143));
  INVX1 U106 (.A(n143), .Y(n66));
  AND2X1 U107 (.A1(n8), .A2(n33), .Y(n136));
  INVX1 U108 (.A(n136), .Y(n67));
  AND2X1 U109 (.A1(n32), .A2(n58), .Y(n120));
  INVX1 U110 (.A(n120), .Y(n68));
  AND2X1 U111 (.A1(n11), .A2(n32), .Y(n75));
  INVX1 U112 (.A(n75), .Y());
  XNOR2X1 U113 (.A1(n63), .A2(n90), .Y(n142));
  INVX1 U114 (.A(n142), .Y(n70));
  AND2X1 U115 (.A1(n31), .A2(n12), .Y());
  INVX1 U116 (.A(n131), .Y());
  AND2X1 U117 (.A1(inp[4]), .A2(inp[0]), .Y(n96));
  INVX1 U118 (.A(n96), .Y());
  INVX1 U119 (.A(inp[4]), .Y(n121));
  INVX1 U120 (.A(inp[2]), .Y());
  NAND2X1 U121 (.A1(n9), .A2(inp[1]), .Y());
  INVX1 U122 (.A(inp[5]), .Y(n98));
  INVX1 U123 (.A(inp[3]), .Y(n80));
  NAND2X1 U124 (.A1(n69), .A2(inp[2]), .Y(n74));
  INVX1 U125 (.A(inp[1]), .Y(n126));
  INVX1 U126 (.A(inp[0]), .Y());
  NOR2X1 U127 (.A1(inp[0]), .A2(inp[1]), .Y(n77));
  NAND2X1 U128 (.A1(n71), .A2(n59), .Y(n78));
  INVX1 U129 (.A(n17), .Y(n135));
  NAND2X1 U130 (.A1(n8), .A2(n135), .Y(n81));
  OR2X1 U131 (.A1(n6), .A2(n18), .Y());
  OR2X1 U132 (.A1(n3), .A2(n19), .Y(n86));
  NAND2X1 U133 (.A1(n86), .A2(n62), .Y(n88));
  XOR2X1 U134 (.A1(n128), .A2(n98), .Y(n90));
  NAND2X1 U135 (.A1(n35), .A2(n70), .Y(n93));
  NAND2X1 U136 (.A1(inp[4]), .A2(inp[1]), .Y());
  NAND2X1 U137 (.A1(n93), .A2(n66), .Y(n95));
  OR2X1 U138 (.A1(n35), .A2(n70), .Y(n94));
  NAND2X1 U139 (.A1(n96), .A2(n71), .Y(n97));
  NAND2X1 U140 (.A1(n36), .A2(n39), .Y(n103));
  NAND2X1 U141 (.A1(inp[2]), .A2(inp[5]), .Y(n101));
  NAND2X1 U142 (.A1(n103), .A2(n60), .Y(n105));
  OR2X1 U143 (.A1(n36), .A2(n39), .Y(n104));
  NAND2X1 U144 (.A1(n5), .A2(n38), .Y(n108));
  NAND2X1 U145 (.A1(n108), .A2(n64), .Y(n110));
  OR2X1 U146 (.A1(n38), .A2(n5), .Y(n109));
  OR2X1 U147 (.A1(n7), .A2(n37), .Y(n112));
  NAND2X1 U148 (.A1(n112), .A2(n44), .Y(out[10]));
  OR2X1 U149 (.A1(n2), .A2(n41), .Y(n114));
  NAND2X1 U150 (.A1(n114), .A2(n37), .Y());
  NAND2X1 U151 (.A1(n116), .A2(n54), .Y());
  NAND2X1 U152 (.A1(n68), .A2(inp[4]), .Y(n123));
  XOR2X1 U153 (.A1(n124), .A2(n28), .Y(out[11]));
  NAND2X1 U154 (.A1(n1), .A2(n49), .Y(out[1]));
  XOR2X1 U155 (.A1(n1), .A2(n128), .Y(out[2]));
  NAND2X1 U156 (.A1(n130), .A2(n71), .Y(n132));
  NAND2X1 U157 (.A1(n132), .A2(n42), .Y(out[3]));
  NAND2X1 U158 (.A1(n67), .A2(n135), .Y(n138));
  NAND2X1 U159 (.A1(n138), .A2(n56), .Y(out[4]));
  XOR2X1 U160 (.A1(n6), .A2(n18), .Y());
  XOR2X1 U161 (.A1(n139), .A2(n15), .Y());
  XOR2X1 U162 (.A1(n19), .A2(n62), .Y());
  XOR2X1 U163 (.A1(n3), .A2(n141), .Y());
  OR2X1 U164 (.A1(n13), .A2(n35), .Y(n146));
  NAND2X1 U165 (.A1(n146), .A2(n50), .Y());
  XOR2X1 U166 (.A1(n36), .A2(n60), .Y(n150));
  XOR2X1 U167 (.A1(n150), .A2(n39), .Y(out[8]));
  OR2X1 U168 (.A1(n14), .A2(n38), .Y(n154));
  NAND2X1 U169 (.A1(n154), .A2(n43), .Y(out[9]));

  assign n1 = 1'b1;
  assign n5 = 1'b1;
  assign n19 = 1'b1;
  assign n22 = 1'b1;
  assign n25 = 1'b1;
  assign n33 = 1'b0;
  assign n34 = 1'b0;
  assign n36 = 1'b1;
  assign n40 = 1'b1;
  assign n42 = 1'b0;
  assign n48 = 1'b1;
  assign n51 = 1'b1;
  assign n54 = 1'b0;
  assign n55 = 1'b0;
  assign n58 = 1'b0;
  assign n69 = 1'b1;
  assign n71 = 1'b0;
  assign n72 = 1'b0;
  assign n73 = 1'b1;
  assign n76 = 1'b1;
  assign n83 = 1'b0;
  assign n87 = 1'b1;
  assign n91 = 1'b1;
  assign n102 = 1'b0;
  assign n111 = 1'b0;
  assign n115 = 1'b1;
  assign n116 = 1'b0;
  assign n124 = 1'b1;
  assign n125 = 1'b0;
  assign n127 = 1'b0;
  assign n128 = 1'b0;
  assign n129 = 1'b1;
  assign n131 = 1'b0;
  assign n139 = 1'b1;
  assign n141 = 1'b1;
  assign n149 = 1'b1;
  assign n152 = 1'b1;
  assign out[5] = 1'b1;
  assign out[6] = 1'b1;
  assign out[7] = 1'b1;
endmodule


