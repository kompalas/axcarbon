/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:43:37 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [4:0] inp;
  output [9:0] out;
  wire   n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n20, n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107;
  assign out[0] = inp[0];

  NAND2X1 U5 (.A1(n31), .A2(n2), .Y(out[9]));
  NAND2X1 U6 (.A1(n13), .A2(n40), .Y(n2));
  NAND2X1 U7 (.A1(n14), .A2(n20), .Y(n9));
  NAND2X1 U8 (.A1(n68), .A2(n58), .Y(n6));
  NAND2X1 U9 (.A1(n87), .A2(n83), .Y(n8));
  NAND2X1 U10 (.A1(n94), .A2(n17), .Y(n16));
  NAND2X1 U11 (.A1(n24), .A2(n23), .Y());
  NAND2X1 U12 (.A1(n34), .A2(n6), .Y());
  NAND2X1 U13 (.A1(n16), .A2(n33), .Y(n5));
  AND2X1 U14 (.A1(n34), .A2(n73), .Y(n42));
  INVX1 U15 (.A(n42), .Y(n7));
  NOR2X1 U16 (.A1(inp[3]), .A2(inp[1]), .Y(n10));
  AND2X1 U17 (.A1(n63), .A2(n44), .Y());
  INVX1 U18 (.A(n59), .Y(n11));
  OR2X1 U19 (.A1(inp[0]), .A2(n102), .Y(n69));
  INVX1 U20 (.A(n69), .Y(n12));
  OR2X1 U21 (.A1(n84), .A2(n8), .Y(n29));
  INVX1 U22 (.A(n29), .Y());
  AND2X1 U23 (.A1(n22), .A2(n45), .Y(n21));
  INVX1 U24 (.A(n21), .Y(n14));
  AND2X1 U25 (.A1(n39), .A2(n82), .Y(n75));
  INVX1 U26 (.A(n75), .Y(n15));
  NAND2X1 U27 (.A1(inp[2]), .A2(inp[0]), .Y(n17));
  NAND2X1 U28 (.A1(n18), .A2(n36), .Y(n23));
  NAND2X1 U29 (.A1(n5), .A2(n11), .Y(n18));
  NOR2X1 U30 (.A1(n61), .A2(n9), .Y());
  NAND2X1 U31 (.A1(n67), .A2(n44), .Y(n20));
  NOR2X1 U32 (.A1(n10), .A2(n26), .Y());
  NOR2X1 U33 (.A1(n82), .A2(n64), .Y());
  INVX1 U34 (.A(inp[1]), .Y(n64));
  INVX1 U35 (.A(inp[3]), .Y());
  NAND2X1 U36 (.A1(n4), .A2(n56), .Y(n72));
  NAND2X1 U37 (.A1(n41), .A2(n12), .Y());
  INVX1 U38 (.A(n38), .Y(n22));
  OR2X1 U39 (.A1(n5), .A2(n11), .Y(n24));
  INVX1 U40 (.A(n39), .Y());
  NAND2X1 U41 (.A1(n39), .A2(inp[2]), .Y(n86));
  NAND2X1 U42 (.A1(n7), .A2(n74), .Y(n39));
  OR2X1 U43 (.A1(n10), .A2(n26), .Y(n25));
  NAND2X1 U44 (.A1(n77), .A2(n60), .Y(n27));
  XOR2X1 U45 (.A1(n5), .A2(n36), .Y());
  OR2X1 U46 (.A1(n13), .A2(n40), .Y(n31));
  AND2X1 U47 (.A1(n65), .A2(n81), .Y(n55));
  INVX1 U48 (.A(n55), .Y());
  AND2X1 U49 (.A1(n76), .A2(n15), .Y(n77));
  INVX1 U50 (.A(n77), .Y());
  INVX1 U51 (.A(n10), .Y(n36));
  INVX1 U52 (.A(inp[4]), .Y(n40));
  XOR2X1 U53 (.A1(n4), .A2(n54), .Y());
  NAND2X1 U54 (.A1(n82), .A2(n9), .Y(n41));
  AND2X1 U55 (.A1(n80), .A2(n39), .Y(n84));
  NAND2X1 U56 (.A1(n64), .A2(inp[2]), .Y(n43));
  AND2X1 U57 (.A1(n40), .A2(inp[2]), .Y());
  INVX1 U58 (.A(n98), .Y(n44));
  AND2X1 U59 (.A1(n66), .A2(n58), .Y(n45));
  AND2X1 U60 (.A1(n78), .A2(n91), .Y(n92));
  INVX1 U61 (.A(n92), .Y(n46));
  AND2X1 U62 (.A1(n64), .A2(n40), .Y(n62));
  INVX1 U63 (.A(n62), .Y(n47));
  AND2X1 U64 (.A1(n30), .A2(n11), .Y());
  INVX1 U65 (.A(n96), .Y(n48));
  AND2X1 U66 (.A1(n102), .A2(n53), .Y(n104));
  INVX1 U67 (.A(n104), .Y());
  AND2X1 U68 (.A1(n78), .A2(n35), .Y(n79));
  INVX1 U69 (.A(n79), .Y(n50));
  AND2X1 U70 (.A1(n91), .A2(inp[1]), .Y(n90));
  INVX1 U71 (.A(n90), .Y());
  AND2X1 U72 (.A1(inp[4]), .A2(inp[1]), .Y(n71));
  INVX1 U73 (.A(n71), .Y());
  XNOR2X1 U74 (.A1(n58), .A2(n9), .Y(n101));
  INVX1 U75 (.A(n101), .Y(n53));
  AND2X1 U76 (.A1(n70), .A2(n52), .Y(n105));
  INVX1 U77 (.A(n105), .Y());
  AND2X1 U78 (.A1(n43), .A2(n60), .Y(n107));
  INVX1 U79 (.A(n107), .Y());
  INVX1 U80 (.A(n45), .Y(n57));
  AND2X1 U81 (.A1(n91), .A2(n82), .Y(n100));
  INVX1 U82 (.A(n100), .Y());
  AND2X1 U83 (.A1(n81), .A2(inp[1]), .Y(n78));
  INVX1 U84 (.A(n78), .Y(n60));
  AND2X1 U85 (.A1(n47), .A2(n52), .Y(n102));
  INVX1 U86 (.A(n102), .Y(n61));
  INVX1 U87 (.A(inp[2]), .Y(n81));
  NAND2X1 U88 (.A1(n81), .A2(inp[4]), .Y(n63));
  NOR2X1 U89 (.A1(inp[1]), .A2(inp[0]), .Y(n65));
  INVX1 U90 (.A(inp[0]), .Y(n91));
  NAND2X1 U91 (.A1(inp[3]), .A2(inp[0]), .Y());
  NAND2X1 U92 (.A1(n38), .A2(n57), .Y(n67));
  NAND2X1 U93 (.A1(n102), .A2(inp[0]), .Y(n70));
  NAND2X1 U94 (.A1(n72), .A2(n54), .Y(n74));
  AND2X1 U95 (.A1(n6), .A2(n107), .Y(n73));
  NAND2X1 U96 (.A1(n85), .A2(inp[3]), .Y());
  NAND2X1 U97 (.A1(n27), .A2(n50), .Y());
  AND2X1 U98 (.A1(inp[1]), .A2(inp[3]), .Y(n80));
  OR2X1 U99 (.A1(n82), .A2(n81), .Y(n83));
  NAND2X1 U100 (.A1(n86), .A2(n82), .Y(n87));
  NAND2X1 U101 (.A1(n64), .A2(inp[0]), .Y(n89));
  NAND2X1 U102 (.A1(n89), .A2(n51), .Y());
  NAND2X1 U103 (.A1(n51), .A2(inp[2]), .Y());
  NAND2X1 U104 (.A1(n93), .A2(n46), .Y(out[2]));
  NAND2X1 U105 (.A1(n17), .A2(n33), .Y(n95));
  XOR2X1 U106 (.A1(n25), .A2(n95), .Y(out[3]));
  OR2X1 U107 (.A1(n30), .A2(n11), .Y(n97));
  NAND2X1 U108 (.A1(n97), .A2(n48), .Y(out[4]));
  XOR2X1 U109 (.A1(n38), .A2(n44), .Y(n99));
  XOR2X1 U110 (.A1(n99), .A2(n57), .Y());
  NAND2X1 U111 (.A1(n101), .A2(n61), .Y(n103));
  NAND2X1 U112 (.A1(n103), .A2(n49), .Y(out[6]));
  XOR2X1 U113 (.A1(n106), .A2(n56), .Y(out[7]));

  assign n4 = 1'b1;
  assign n13 = 1'b0;
  assign n26 = 1'b1;
  assign n30 = 1'b0;
  assign n33 = 1'b0;
  assign n34 = 1'b1;
  assign n35 = 1'b0;
  assign n38 = 1'b0;
  assign n49 = 1'b0;
  assign n51 = 1'b1;
  assign n52 = 1'b0;
  assign n54 = 1'b0;
  assign n56 = 1'b0;
  assign n58 = 1'b0;
  assign n59 = 1'b0;
  assign n66 = 1'b0;
  assign n68 = 1'b1;
  assign n76 = 1'b0;
  assign n82 = 1'b1;
  assign n85 = 1'b1;
  assign n93 = 1'b0;
  assign n94 = 1'b1;
  assign n96 = 1'b1;
  assign n98 = 1'b0;
  assign n106 = 1'b1;
  assign out[1] = 1'b1;
  assign out[5] = 1'b1;
  assign out[8] = 1'b0;
endmodule


