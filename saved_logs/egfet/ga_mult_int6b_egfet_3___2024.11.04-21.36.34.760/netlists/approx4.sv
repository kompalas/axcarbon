/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:51:19 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [5:0] inp;
  output [11:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144;
  assign out[0] = inp[0];

  NAND2X1 U5 (.A1(n43), .A2(n44), .Y());
  NAND2X1 U6 (.A1(n33), .A2(n47), .Y(n4));
  INVX1 U7 (.A(n2), .Y(n110));
  NAND2X1 U8 (.A1(n3), .A2(n58), .Y(n2));
  NAND2X1 U9 (.A1(n31), .A2(n55), .Y());
  NAND2X1 U10 (.A1(n9), .A2(n77), .Y());
  XOR2X1 U11 (.A1(n82), .A2(n52), .Y());
  NAND2X1 U12 (.A1(inp[1]), .A2(n76), .Y(n7));
  XOR2X1 U13 (.A1(n32), .A2(n7), .Y(n8));
  AND2X1 U14 (.A1(n83), .A2(inp[1]), .Y(n15));
  INVX1 U15 (.A(n15), .Y(n9));
  AND2X1 U16 (.A1(n57), .A2(n52), .Y(n14));
  INVX1 U17 (.A(n14), .Y(n10));
  XNOR2X1 U18 (.A1(n75), .A2(n28), .Y(n23));
  INVX1 U19 (.A(n23), .Y());
  XNOR2X1 U20 (.A1(n71), .A2(n51), .Y(n24));
  INVX1 U21 (.A(n24), .Y());
  XNOR2X1 U22 (.A1(n34), .A2(n38), .Y());
  INVX1 U23 (.A(n25), .Y());
  OR2X1 U24 (.A1(n100), .A2(n17), .Y(n16));
  AND2X1 U25 (.A1(n4), .A2(n6), .Y(n17));
  XOR2X1 U26 (.A1(n19), .A2(n111), .Y(out[11]));
  NOR2X1 U27 (.A1(n20), .A2(n110), .Y(n19));
  AND2X1 U28 (.A1(n74), .A2(inp[3]), .Y(n20));
  NAND2X1 U29 (.A1(n121), .A2(inp[4]), .Y(n21));
  NAND2X1 U30 (.A1(n83), .A2(inp[2]), .Y(n26));
  NAND2X1 U31 (.A1(n119), .A2(n120), .Y(n27));
  XOR2X1 U32 (.A1(n84), .A2(n5), .Y(n28));
  OR2X1 U33 (.A1(n35), .A2(inp[0]), .Y(n29));
  AND2X1 U34 (.A1(n130), .A2(n92), .Y());
  INVX1 U35 (.A(n39), .Y(n30));
  AND2X1 U36 (.A1(n36), .A2(n103), .Y(n41));
  INVX1 U37 (.A(n41), .Y(n31));
  XNOR2X1 U38 (.A1(n105), .A2(n35), .Y(n32));
  AND2X1 U39 (.A1(n134), .A2(n133), .Y(n48));
  INVX1 U40 (.A(n48), .Y(n33));
  AND2X1 U41 (.A1(n85), .A2(n29), .Y(n53));
  INVX1 U42 (.A(n53), .Y(n34));
  AND2X1 U43 (.A1(n21), .A2(n26), .Y(n70));
  INVX1 U44 (.A(n70), .Y(n35));
  AND2X1 U45 (.A1(n40), .A2(n30), .Y(n134));
  INVX1 U46 (.A(n134), .Y());
  AND2X1 U47 (.A1(n107), .A2(n114), .Y());
  INVX1 U48 (.A(n125), .Y(n38));
  NAND2X1 U49 (.A1(n37), .A2(n73), .Y(n98));
  OR2X1 U50 (.A1(n28), .A2(n75), .Y(n40));
  XOR2X1 U51 (.A1(n42), .A2(n3), .Y());
  XOR2X1 U52 (.A1(n107), .A2(n74), .Y(n42));
  OR2X1 U53 (.A1(n51), .A2(n16), .Y(n43));
  NAND2X1 U54 (.A1(n45), .A2(n71), .Y(n44));
  NAND2X1 U55 (.A1(n16), .A2(n51), .Y(n45));
  NOR2X1 U56 (.A1(n46), .A2(n126), .Y(n91));
  NOR2X1 U57 (.A1(n38), .A2(n34), .Y());
  NOR2X1 U58 (.A1(n6), .A2(n4), .Y(n99));
  NAND2X1 U59 (.A1(n98), .A2(n68), .Y(n47));
  OR2X1 U60 (.A1(n91), .A2(n90), .Y());
  AND2X1 U61 (.A1(n26), .A2(n105), .Y(n106));
  INVX1 U62 (.A(n106), .Y(n50));
  AND2X1 U63 (.A1(n81), .A2(n10), .Y(n140));
  INVX1 U64 (.A(n140), .Y(n51));
  AND2X1 U65 (.A1(n79), .A2(n76), .Y(n111));
  INVX1 U66 (.A(n111), .Y(n52));
  AND2X1 U67 (.A1(n89), .A2(n88), .Y(n126));
  INVX1 U68 (.A(n126), .Y(n54));
  AND2X1 U69 (.A1(n7), .A2(n32), .Y(n104));
  INVX1 U70 (.A(n104), .Y(n55));
  AND2X1 U71 (.A1(n13), .A2(n54), .Y(n127));
  INVX1 U72 (.A(n127), .Y(n56));
  AND2X1 U73 (.A1(n119), .A2(n105), .Y(n80));
  INVX1 U74 (.A(n80), .Y(n57));
  AND2X1 U75 (.A1(n109), .A2(n107), .Y(n108));
  INVX1 U76 (.A(n108), .Y());
  AND2X1 U77 (.A1(n101), .A2(n114), .Y());
  INVX1 U78 (.A(n102), .Y(n59));
  AND2X1 U79 (.A1(n96), .A2(n121), .Y(n97));
  INVX1 U80 (.A(n97), .Y(n60));
  AND2X1 U81 (.A1(n34), .A2(n38), .Y(n90));
  AND2X1 U82 (.A1(n115), .A2(n119), .Y(n116));
  INVX1 U83 (.A(n116), .Y(n61));
  AND2X1 U84 (.A1(n122), .A2(n27), .Y(n123));
  INVX1 U85 (.A(n123), .Y());
  AND2X1 U86 (.A1(n93), .A2(n5), .Y(n95));
  INVX1 U87 (.A(n95), .Y());
  AND2X1 U88 (.A1(n11), .A2(n130), .Y());
  INVX1 U89 (.A(n131), .Y(n64));
  AND2X1 U90 (.A1(n8), .A2(n36), .Y());
  INVX1 U91 (.A(n143), .Y());
  AND2X1 U92 (.A1(n12), .A2(n16), .Y(n141));
  INVX1 U93 (.A(n141), .Y(n66));
  AND2X1 U94 (.A1(n119), .A2(inp[1]), .Y(n113));
  INVX1 U95 (.A(n113), .Y(n67));
  AND2X1 U96 (.A1(n60), .A2(n72), .Y(n135));
  INVX1 U97 (.A(n135), .Y(n68));
  AND2X1 U98 (.A1(n86), .A2(n38), .Y());
  INVX1 U99 (.A(n124), .Y(n69));
  AND2X1 U100 (.A1(n7), .A2(n59), .Y(n139));
  INVX1 U101 (.A(n139), .Y());
  AND2X1 U102 (.A1(n77), .A2(inp[2]), .Y(n137));
  INVX1 U103 (.A(n137), .Y(n72));
  AND2X1 U104 (.A1(n94), .A2(n63), .Y(n133));
  INVX1 U105 (.A(n133), .Y());
  AND2X1 U106 (.A1(n21), .A2(n50), .Y(n109));
  INVX1 U107 (.A(n109), .Y());
  AND2X1 U108 (.A1(n21), .A2(n29), .Y(n129));
  INVX1 U109 (.A(n129), .Y(n75));
  AND2X1 U110 (.A1(n83), .A2(inp[3]), .Y(n101));
  INVX1 U111 (.A(n101), .Y(n76));
  AND2X1 U112 (.A1(n114), .A2(inp[4]), .Y());
  INVX1 U113 (.A(n96), .Y());
  XNOR2X1 U114 (.A1(n62), .A2(n69), .Y(out[3]));
  INVX1 U115 (.A(inp[0]), .Y());
  INVX1 U116 (.A(inp[5]), .Y());
  INVX1 U117 (.A(inp[4]), .Y(n83));
  INVX1 U118 (.A(inp[3]), .Y(n107));
  NAND2X1 U119 (.A1(n107), .A2(inp[4]), .Y(n79));
  NAND2X1 U120 (.A1(inp[5]), .A2(inp[0]), .Y(n81));
  XOR2X1 U121 (.A1(n105), .A2(n119), .Y(n82));
  INVX1 U122 (.A(inp[2]), .Y());
  INVX1 U123 (.A(inp[1]), .Y());
  XOR2X1 U124 (.A1(inp[3]), .A2(inp[5]), .Y(n84));
  NAND2X1 U125 (.A1(n28), .A2(n75), .Y(n92));
  NAND2X1 U126 (.A1(n35), .A2(inp[0]), .Y(n85));
  NOR2X1 U127 (.A1(inp[2]), .A2(inp[1]), .Y(n118));
  NAND2X1 U128 (.A1(n118), .A2(n119), .Y(n87));
  NAND2X1 U129 (.A1(inp[3]), .A2(inp[1]), .Y(n86));
  NAND2X1 U130 (.A1(n87), .A2(n69), .Y(n89));
  NAND2X1 U131 (.A1(inp[0]), .A2(inp[2]), .Y(n88));
  NAND2X1 U132 (.A1(n107), .A2(inp[5]), .Y(n93));
  NAND2X1 U133 (.A1(n105), .A2(inp[3]), .Y(n94));
  NOR2X1 U134 (.A1(n99), .A2(n137), .Y());
  OR2X1 U135 (.A1(n32), .A2(n7), .Y(n103));
  NAND2X1 U136 (.A1(n114), .A2(inp[0]), .Y(n112));
  NAND2X1 U137 (.A1(n112), .A2(n67), .Y(out[1]));
  NAND2X1 U138 (.A1(n67), .A2(inp[2]), .Y(n117));
  NOR2X1 U139 (.A1(inp[2]), .A2(n114), .Y());
  NAND2X1 U140 (.A1(n117), .A2(n61), .Y(out[2]));
  INVX1 U141 (.A(n118), .Y(n120));
  NAND2X1 U142 (.A1(n121), .A2(inp[0]), .Y(n122));
  OR2X1 U143 (.A1(n13), .A2(n54), .Y());
  NAND2X1 U144 (.A1(n128), .A2(n56), .Y(out[4]));
  OR2X1 U145 (.A1(n11), .A2(n130), .Y(n132));
  NAND2X1 U146 (.A1(n132), .A2(n64), .Y());
  XOR2X1 U147 (.A1(n37), .A2(n73), .Y(n136));
  XOR2X1 U148 (.A1(n136), .A2(n68), .Y(out[6]));
  XOR2X1 U149 (.A1(n4), .A2(n72), .Y(n138));
  XOR2X1 U150 (.A1(n138), .A2(n6), .Y(out[7]));
  OR2X1 U151 (.A1(n12), .A2(n16), .Y(n142));
  NAND2X1 U152 (.A1(n142), .A2(n66), .Y());
  OR2X1 U153 (.A1(n8), .A2(n36), .Y(n144));
  NAND2X1 U154 (.A1(n144), .A2(n65), .Y(out[9]));

  assign n3 = 1'b0;
  assign n5 = 1'b0;
  assign n6 = 1'b1;
  assign n11 = 1'b0;
  assign n12 = 1'b0;
  assign n13 = 1'b1;
  assign n25 = 1'b0;
  assign n36 = 1'b1;
  assign n37 = 1'b0;
  assign n39 = 1'b0;
  assign n46 = 1'b0;
  assign n58 = 1'b0;
  assign n62 = 1'b1;
  assign n63 = 1'b0;
  assign n65 = 1'b0;
  assign n71 = 1'b1;
  assign n73 = 1'b0;
  assign n74 = 1'b1;
  assign n77 = 1'b1;
  assign n96 = 1'b1;
  assign n100 = 1'b1;
  assign n102 = 1'b0;
  assign n105 = 1'b1;
  assign n114 = 1'b0;
  assign n115 = 1'b0;
  assign n119 = 1'b1;
  assign n121 = 1'b1;
  assign n124 = 1'b0;
  assign n125 = 1'b1;
  assign n128 = 1'b0;
  assign n130 = 1'b0;
  assign n131 = 1'b0;
  assign n143 = 1'b1;
  assign out[5] = 1'b1;
  assign out[8] = 1'b0;
  assign out[10] = 1'b0;
endmodule


