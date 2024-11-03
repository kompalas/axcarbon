/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sun Oct  6 21:09:32 2024
/////////////////////////////////////////////////////////////


module top ( in_a, in_b, out );
  input [15:0] in_a;
  input [15:0] in_b;
  output [16:0] out;
  wire   n2, n3, n4, n5, n23, n24, n27, n28, n29, n30, n31, n32, n33, n34, n36,
         n37, n39, n40, n41, n42, n43, n44, n46, n47, n48, n49, n50, n51, n53,
         n54, n55, n56, n57, n58, n59, n60, n63, n64, n65, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n80, n81, n83, n84, n86, n87,
         n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142;

  INVX1 U2 (.A(n98), .Y(n2));
  NOR2X1 U3 (.A1(n4), .A2(n2), .Y(n31));
  INVX1 U4 (.A(n130), .Y(n3));
  NOR2X1 U5 (.A1(n131), .A2(n3), .Y(out[16]));
  INVX1 U6 (.A(n97), .Y(n5));
  NOR2X1 U7 (.A1(n84), .A2(n5), .Y(n4));
  NAND2X1 U8 (.A1(n67), .A2(n50), .Y(n72));
  AND2X1 U9 (.A1(n116), .A2(n68), .Y(n30));
  NAND2X1 U10 (.A1(n34), .A2(n106), .Y(n39));
  NAND2X1 U11 (.A1(n63), .A2(n114), .Y(n32));
  NOR2X1 U12 (.A1(n74), .A2(n78), .Y(n139));
  NAND2X1 U13 (.A1(n44), .A2(n94), .Y(n54));
  NAND2X1 U14 (.A1(n43), .A2(n109), .Y(n63));
  NAND2X1 U15 (.A1(n37), .A2(n41), .Y(n43));
  INVX1 U16 (.A(n24), .Y(n28));
  NOR2X1 U17 (.A1(n24), .A2(n23), .Y(n78));
  INVX1 U18 (.A(n101), .Y(n23));
  NOR2X1 U19 (.A1(n100), .A2(n69), .Y(n24));
  OR2X1 U20 (.A1(n58), .A2(n139), .Y(n55));
  NAND2X1 U21 (.A1(n51), .A2(n104), .Y(n71));
  INVX1 U22 (.A(n27), .Y(n73));
  NOR2X1 U23 (.A1(n125), .A2(n126), .Y(n27));
  NAND2X1 U24 (.A1(n118), .A2(in_b[1]), .Y(n50));
  AND2X1 U25 (.A1(n93), .A2(n30), .Y(n86));
  INVX1 U26 (.A(n86), .Y(n29));
  INVX1 U27 (.A(n30), .Y(n92));
  AND2X1 U28 (.A1(n72), .A2(n95), .Y(n84));
  INVX1 U29 (.A(n84), .Y(n33));
  AND2X1 U30 (.A1(n71), .A2(n105), .Y(n83));
  INVX1 U31 (.A(n83), .Y(n34));
  AND2X1 U32 (.A1(n59), .A2(n102), .Y(n64));
  INVX1 U33 (.A(n64), .Y(n36));
  AND2X1 U34 (.A1(n77), .A2(n108), .Y(n65));
  INVX1 U35 (.A(n65), .Y(n37));
  XNOR2X1 U36 (.A1(in_a[6]), .A2(in_b[6]), .Y(n40));
  NAND2X1 U37 (.A1(in_b[11]), .A2(in_a[11]), .Y(n41));
  NAND2X1 U38 (.A1(n34), .A2(n91), .Y(n42));
  NAND2X1 U39 (.A1(in_b[0]), .A2(in_a[0]), .Y(n44));
  AND2X1 U40 (.A1(in_a[5]), .A2(in_b[5]), .Y(n74));
  AND2X1 U41 (.A1(in_a[6]), .A2(in_b[6]), .Y(n75));
  INVX1 U42 (.A(n75), .Y(n46));
  AND2X1 U43 (.A1(in_a[7]), .A2(in_b[7]), .Y(n76));
  INVX1 U44 (.A(n76), .Y(n47));
  AND2X1 U45 (.A1(in_b[10]), .A2(in_a[10]), .Y(n60));
  INVX1 U46 (.A(n60), .Y(n48));
  AND2X1 U47 (.A1(n44), .A2(in_a[0]), .Y(n56));
  INVX1 U48 (.A(n56), .Y(n49));
  AND2X1 U49 (.A1(n81), .A2(n103), .Y(n70));
  INVX1 U50 (.A(n70), .Y(n51));
  AND2X1 U51 (.A1(n31), .A2(n99), .Y(n69));
  AND2X1 U52 (.A1(n92), .A2(n129), .Y(n131));
  AND2X1 U53 (.A1(n92), .A2(n117), .Y(n57));
  INVX1 U54 (.A(n57), .Y(n53));
  NOR2X1 U55 (.A1(in_b[6]), .A2(in_a[6]), .Y(n58));
  NAND2X1 U56 (.A1(n55), .A2(n46), .Y(n59));
  AND2X1 U57 (.A1(n39), .A2(n107), .Y(n77));
  NAND2X1 U58 (.A1(n29), .A2(n53), .Y(out[15]));
  INVX1 U59 (.A(n44), .Y(n118));
  NAND2X1 U60 (.A1(n54), .A2(in_a[1]), .Y());
  NAND2X1 U61 (.A1(n32), .A2(n115), .Y(n68));
  NAND2X1 U62 (.A1(n36), .A2(n47), .Y(n81));
  XOR2X1 U63 (.A1(n40), .A2(n139), .Y(out[6]));
  AND2X1 U64 (.A1(in_b[12]), .A2(in_a[12]), .Y(n125));
  INVX1 U65 (.A(n125), .Y(n80));
  AND2X1 U66 (.A1(in_b[13]), .A2(in_a[13]), .Y(n111));
  INVX1 U67 (.A(n111), .Y(n87));
  AND2X1 U68 (.A1(in_a[3]), .A2(in_b[3]), .Y(n96));
  INVX1 U69 (.A(n96), .Y(n88));
  AND2X1 U70 (.A1(in_a[4]), .A2(in_b[4]), .Y(n100));
  AND2X1 U71 (.A1(n43), .A2(n124), .Y(n126));
  AND2X1 U72 (.A1(in_a[2]), .A2(in_b[2]), .Y(n134));
  INVX1 U73 (.A(n134), .Y(n90));
  AND2X1 U74 (.A1(in_b[9]), .A2(in_a[9]), .Y(n120));
  INVX1 U75 (.A(n120), .Y(n91));
  XNOR2X1 U76 (.A1(in_b[15]), .A2(in_a[15]), .Y(n117));
  INVX1 U77 (.A(n117), .Y(n93));
  OR2X1 U78 (.A1(in_a[14]), .A2(in_b[14]), .Y(n115));
  OR2X1 U79 (.A1(in_a[11]), .A2(in_b[11]), .Y(n108));
  OR2X1 U80 (.A1(in_a[9]), .A2(in_b[9]), .Y(n105));
  OR2X1 U81 (.A1(in_b[7]), .A2(in_a[7]), .Y(n102));
  OR2X1 U82 (.A1(in_b[4]), .A2(in_a[4]), .Y(n99));
  OR2X1 U83 (.A1(in_b[2]), .A2(in_a[2]), .Y(n95));
  INVX1 U84 (.A(in_b[1]), .Y(n94));
  AND2X1 U85 (.A1(n90), .A2(n88), .Y(n97));
  OR2X1 U86 (.A1(in_b[3]), .A2(in_a[3]), .Y(n98));
  OR2X1 U87 (.A1(in_b[5]), .A2(in_a[5]), .Y(n101));
  OR2X1 U88 (.A1(in_b[8]), .A2(in_a[8]), .Y(n103));
  NAND2X1 U89 (.A1(in_a[8]), .A2(in_b[8]), .Y(n104));
  AND2X1 U90 (.A1(n91), .A2(n48), .Y(n106));
  OR2X1 U91 (.A1(in_a[10]), .A2(in_b[10]), .Y(n107));
  OR2X1 U92 (.A1(in_a[12]), .A2(in_b[12]), .Y(n124));
  OR2X1 U93 (.A1(in_a[13]), .A2(in_b[13]), .Y(n110));
  AND2X1 U94 (.A1(n124), .A2(n110), .Y(n109));
  INVX1 U95 (.A(n110), .Y(n113));
  AND2X1 U96 (.A1(n87), .A2(n80), .Y(n112));
  OR2X1 U97 (.A1(n113), .A2(n112), .Y(n114));
  NAND2X1 U98 (.A1(in_b[14]), .A2(in_a[14]), .Y(n116));
  NAND2X1 U99 (.A1(n44), .A2(in_b[0]), .Y(n119));
  NAND2X1 U100 (.A1(n119), .A2(n49), .Y(out[0]));
  XOR2X1 U101 (.A1(in_b[10]), .A2(in_a[10]), .Y(n121));
  XOR2X1 U102 (.A1(n121), .A2(n42), .Y(out[10]));
  XOR2X1 U103 (.A1(in_b[11]), .A2(in_a[11]), .Y(n122));
  XOR2X1 U104 (.A1(n122), .A2(n77), .Y(out[11]));
  XOR2X1 U105 (.A1(in_b[12]), .A2(in_a[12]), .Y(n123));
  XOR2X1 U106 (.A1(n123), .A2(n43), .Y(out[12]));
  XOR2X1 U107 (.A1(in_b[13]), .A2(in_a[13]), .Y(n127));
  XOR2X1 U108 (.A1(n127), .A2(n73), .Y(out[13]));
  XOR2X1 U109 (.A1(in_b[14]), .A2(in_a[14]), .Y(n128));
  XOR2X1 U110 (.A1(n128), .A2(n32), .Y(out[14]));
  NAND2X1 U111 (.A1(in_a[15]), .A2(in_b[15]), .Y(n129));
  OR2X1 U112 (.A1(in_b[15]), .A2(in_a[15]), .Y(n130));
  XOR2X1 U113 (.A1(in_b[1]), .A2(in_a[1]), .Y(n132));
  XOR2X1 U114 (.A1(n132), .A2(n118), .Y(out[1]));
  XOR2X1 U115 (.A1(in_a[2]), .A2(in_b[2]), .Y(n133));
  XOR2X1 U116 (.A1(n133), .A2(n72), .Y(out[2]));
  XOR2X1 U117 (.A1(in_a[3]), .A2(in_b[3]), .Y(n136));
  NAND2X1 U118 (.A1(n33), .A2(n90), .Y(n135));
  XOR2X1 U119 (.A1(n136), .A2(n135), .Y(out[3]));
  XOR2X1 U120 (.A1(in_a[4]), .A2(in_b[4]), .Y(n137));
  XOR2X1 U121 (.A1(n137), .A2(n31), .Y(out[4]));
  XOR2X1 U122 (.A1(in_a[5]), .A2(in_b[5]), .Y(n138));
  XOR2X1 U123 (.A1(n138), .A2(n28), .Y(out[5]));
  XOR2X1 U124 (.A1(in_a[7]), .A2(in_b[7]), .Y(n140));
  XOR2X1 U125 (.A1(n140), .A2(n59), .Y(out[7]));
  XOR2X1 U126 (.A1(in_a[8]), .A2(in_b[8]), .Y(n141));
  XOR2X1 U127 (.A1(n141), .A2(n81), .Y(out[8]));
  XOR2X1 U128 (.A1(in_b[9]), .A2(in_a[9]), .Y(n142));
  XOR2X1 U129 (.A1(n142), .A2(n71), .Y(out[9]));

  assign n67 = 1'b1;
endmodule


