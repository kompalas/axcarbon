/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:08:15 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [4:0] inp;
  output [12:0] out;
  wire   n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n46, n47, n48, n49,
         n50, n51, n52, n53, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n81, n82, n83, n84, n85, n86, n87, n88, n89, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103;
  assign out[11] = inp[4];
  assign out[12] = inp[4];
  assign out[1] = inp[0];
  assign out[0] = 1'b0;

  INVX1 U5 (.A(n34), .Y(n62));
  NAND2X1 U6 (.A1(n11), .A2(n74), .Y(n34));
  NAND2X1 U7 (.A1(n13), .A2(n28), .Y(out[9]));
  NAND2X1 U8 (.A1(n49), .A2(n55), .Y(n4));
  NAND2X1 U9 (.A1(n24), .A2(n102), .Y(n55));
  INVX1 U10 (.A(n69), .Y(n5));
  NAND2X1 U11 (.A1(n70), .A2(n5), .Y(n32));
  XOR2X1 U12 (.A1(n8), .A2(n7), .Y(out[8]));
  INVX1 U13 (.A(n22), .Y(n7));
  NAND2X1 U14 (.A1(n9), .A2(n38), .Y(n8));
  AND2X1 U15 (.A1(n18), .A2(n102), .Y(n39));
  INVX1 U16 (.A(n39), .Y(n9));
  NAND2X1 U17 (.A1(n102), .A2(inp[2]), .Y(n10));
  AND2X1 U18 (.A1(n33), .A2(n86), .Y(n27));
  INVX1 U19 (.A(n27), .Y(n11));
  AND2X1 U20 (.A1(n35), .A2(n95), .Y(n26));
  INVX1 U21 (.A(n26), .Y(n12));
  NAND2X1 U22 (.A1(n78), .A2(n34), .Y(n13));
  AND2X1 U23 (.A1(inp[3]), .A2(n29), .Y(n14));
  AND2X1 U24 (.A1(n55), .A2(inp[4]), .Y(n20));
  INVX1 U25 (.A(n20), .Y(n15));
  AND2X1 U26 (.A1(n64), .A2(n30), .Y(n25));
  INVX1 U27 (.A(n25), .Y(n16));
  INVX1 U28 (.A(n31), .Y(n17));
  AND2X1 U29 (.A1(n12), .A2(n29), .Y(n33));
  INVX1 U30 (.A(n33), .Y(n18));
  NAND2X1 U31 (.A1(n44), .A2(n17), .Y(n19));
  XOR2X1 U32 (.A1(inp[4]), .A2(out[2]), .Y(n40));
  NOR2X1 U33 (.A1(n41), .A2(n21), .Y(out[2]));
  INVX1 U34 (.A(n35), .Y(n97));
  NAND2X1 U35 (.A1(n14), .A2(n12), .Y(n38));
  NAND2X1 U36 (.A1(n36), .A2(n37), .Y(n35));
  INVX1 U37 (.A(inp[0]), .Y(n63));
  INVX1 U38 (.A(inp[1]), .Y(n103));
  INVX1 U39 (.A(n23), .Y(n21));
  NAND2X1 U40 (.A1(inp[0]), .A2(inp[1]), .Y(n23));
  NOR2X1 U41 (.A1(inp[0]), .A2(inp[1]), .Y(n41));
  NAND2X1 U42 (.A1(n65), .A2(n16), .Y(n29));
  INVX1 U43 (.A(n41), .Y(n30));
  NAND2X1 U44 (.A1(n40), .A2(n32), .Y(n37));
  OR2X1 U45 (.A1(inp[2]), .A2(n103), .Y(n22));
  NAND2X1 U46 (.A1(inp[1]), .A2(inp[2]), .Y(n24));
  AND2X1 U47 (.A1(n62), .A2(n58), .Y(n79));
  INVX1 U48 (.A(n79), .Y(n28));
  INVX1 U49 (.A(n40), .Y(n31));
  AND2X1 U50 (.A1(n102), .A2(inp[4]), .Y(n59));
  INVX1 U51 (.A(n59), .Y(n36));
  AND2X1 U52 (.A1(n68), .A2(n63), .Y(n69));
  AND2X1 U53 (.A1(n43), .A2(n36), .Y(n68));
  NAND2X1 U54 (.A1(n75), .A2(inp[3]), .Y(n43));
  XNOR2X1 U55 (.A1(n16), .A2(n60), .Y(n44));
  AND2X1 U56 (.A1(n10), .A2(n75), .Y(n76));
  INVX1 U57 (.A(n76), .Y(n46));
  AND2X1 U58 (.A1(n84), .A2(n63), .Y(n85));
  INVX1 U59 (.A(n85), .Y(n47));
  AND2X1 U60 (.A1(n23), .A2(n95), .Y(n83));
  INVX1 U61 (.A(n83), .Y(n48));
  AND2X1 U62 (.A1(n23), .A2(n84), .Y(n66));
  INVX1 U63 (.A(n66), .Y(n49));
  AND2X1 U64 (.A1(n92), .A2(n36), .Y(n93));
  INVX1 U65 (.A(n93), .Y(n50));
  AND2X1 U66 (.A1(n87), .A2(n86), .Y(n88));
  INVX1 U67 (.A(n88), .Y(n51));
  AND2X1 U68 (.A1(n103), .A2(n84), .Y(n72));
  INVX1 U69 (.A(n72), .Y(n52));
  INVX1 U70 (.A(n68), .Y(n53));
  XNOR2X1 U71 (.A1(n32), .A2(n40), .Y(n92));
  INVX1 U72 (.A(n92), .Y(n56));
  AND2X1 U73 (.A1(n47), .A2(inp[1]), .Y(n87));
  INVX1 U74 (.A(n87), .Y(n57));
  AND2X1 U75 (.A1(n77), .A2(n46), .Y(n78));
  INVX1 U76 (.A(n78), .Y(n58));
  AND2X1 U77 (.A1(n24), .A2(n52), .Y(n95));
  INVX1 U78 (.A(n95), .Y(n60));
  AND2X1 U79 (.A1(n71), .A2(n10), .Y(n86));
  INVX1 U80 (.A(n86), .Y(n61));
  NAND2X1 U81 (.A1(n81), .A2(n15), .Y(out[10]));
  INVX1 U82 (.A(inp[2]), .Y(n84));
  NAND2X1 U83 (.A1(n31), .A2(n60), .Y(n65));
  NAND2X1 U84 (.A1(n23), .A2(inp[4]), .Y(n64));
  INVX1 U85 (.A(inp[3]), .Y(n102));
  INVX1 U86 (.A(inp[4]), .Y(n75));
  NAND2X1 U87 (.A1(n53), .A2(inp[0]), .Y(n67));
  NAND2X1 U88 (.A1(n67), .A2(n4), .Y(n70));
  NAND2X1 U89 (.A1(n84), .A2(inp[3]), .Y(n71));
  NAND2X1 U90 (.A1(n18), .A2(n61), .Y(n73));
  NAND2X1 U91 (.A1(n73), .A2(n52), .Y(n74));
  NAND2X1 U92 (.A1(n59), .A2(inp[2]), .Y(n77));
  NAND2X1 U93 (.A1(n34), .A2(inp[3]), .Y(n81));
  OR2X1 U94 (.A1(n23), .A2(n24), .Y(n82));
  NAND2X1 U95 (.A1(n82), .A2(n48), .Y(out[3]));
  NAND2X1 U96 (.A1(n61), .A2(n57), .Y());
  NAND2X1 U97 (.A1(n89), .A2(n51), .Y(out[4]));
  XOR2X1 U98 (.A1(inp[0]), .A2(n4), .Y(n91));
  XOR2X1 U99 (.A1(n91), .A2(n68), .Y(out[5]));
  NAND2X1 U100 (.A1(n59), .A2(n56), .Y(n94));
  NAND2X1 U101 (.A1(n94), .A2(n50), .Y(out[6]));
  OR2X1 U102 (.A1(n97), .A2(n19), .Y(n101));
  OR2X1 U103 (.A1(n32), .A2(n44), .Y(n96));
  OR2X1 U104 (.A1(n40), .A2(n96), .Y());
  OR2X1 U105 (.A1(n44), .A2(n35), .Y(n98));
  AND2X1 U106 (.A1(n99), .A2(n98), .Y(n100));
  NAND2X1 U107 (.A1(n100), .A2(n101), .Y(out[7]));

  assign n89 = 1'b0;
  assign n99 = 1'b1;
endmodule


