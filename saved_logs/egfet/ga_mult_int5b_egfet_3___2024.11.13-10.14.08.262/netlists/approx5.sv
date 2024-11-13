/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:13:53 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [4:0] inp;
  output [12:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90;
  assign out[2] = inp[1];
  assign out[1] = inp[0];
  assign out[0] = 1'b0;
  assign out[12] = out[11];

  NOR2X1 U5 (.A1(n40), .A2(n71), .Y(n29));
  NAND2X1 U6 (.A1(n16), .A2(n9), .Y(n7));
  NAND2X1 U7 (.A1(n26), .A2(n29), .Y(n16));
  XOR2X1 U8 (.A1(n69), .A2(n6), .Y(out[10]));
  INVX1 U9 (.A(n2), .Y(n26));
  INVX1 U10 (.A(n35), .Y(n3));
  NOR2X1 U11 (.A1(n3), .A2(n85), .Y(n2));
  INVX1 U12 (.A(n4), .Y(n82));
  NAND2X1 U13 (.A1(n38), .A2(n45), .Y(n4));
  XOR2X1 U14 (.A1(n6), .A2(inp[4]), .Y(n5));
  INVX1 U15 (.A(n5), .Y(n34));
  XNOR2X1 U16 (.A1(inp[2]), .A2(inp[3]), .Y(n6));
  NAND2X1 U17 (.A1(n22), .A2(inp[3]), .Y(n8));
  AND2X1 U18 (.A1(n50), .A2(n79), .Y(n9));
  NAND2X1 U19 (.A1(n73), .A2(inp[0]), .Y(n10));
  NAND2X1 U20 (.A1(n26), .A2(n32), .Y(n11));
  NAND2X1 U21 (.A1(n59), .A2(n18), .Y(n12));
  AND2X1 U22 (.A1(n62), .A2(n63), .Y(n77));
  INVX1 U23 (.A(n77), .Y(n13));
  AND2X1 U24 (.A1(n79), .A2(inp[1]), .Y(n19));
  INVX1 U25 (.A(n19), .Y(n14));
  AND2X1 U26 (.A1(n34), .A2(n82), .Y(n23));
  INVX1 U27 (.A(n23), .Y(n15));
  AND2X1 U28 (.A1(n31), .A2(n7), .Y(n44));
  INVX1 U29 (.A(n44), .Y(n17));
  AND2X1 U30 (.A1(inp[2]), .A2(inp[4]), .Y(n28));
  INVX1 U31 (.A(n28), .Y(n18));
  NAND2X1 U32 (.A1(n31), .A2(n73), .Y(n48));
  NAND2X1 U33 (.A1(n20), .A2(n54), .Y(n31));
  NAND2X1 U34 (.A1(n11), .A2(n50), .Y(n20));
  NAND2X1 U35 (.A1(n7), .A2(n53), .Y(n69));
  INVX1 U36 (.A(inp[4]), .Y(n22));
  NOR2X1 U37 (.A1(n61), .A2(n62), .Y());
  OR2X1 U38 (.A1(n41), .A2(n64), .Y(n24));
  NAND2X1 U39 (.A1(n36), .A2(n15), .Y(n27));
  AND2X1 U40 (.A1(n48), .A2(n22), .Y(n72));
  INVX1 U41 (.A(n72), .Y(n30));
  AND2X1 U42 (.A1(n27), .A2(n12), .Y(n40));
  INVX1 U43 (.A(n40), .Y(n32));
  INVX1 U44 (.A(n82), .Y(n33));
  OR2X1 U45 (.A1(n12), .A2(n27), .Y(n35));
  NAND2X1 U46 (.A1(n37), .A2(n52), .Y(n36));
  NAND2X1 U47 (.A1(n5), .A2(n33), .Y(n37));
  NAND2X1 U48 (.A1(n39), .A2(n14), .Y(n38));
  NAND2X1 U49 (.A1(n76), .A2(n56), .Y(n39));
  AND2X1 U50 (.A1(n73), .A2(n75), .Y());
  AND2X1 U51 (.A1(n67), .A2(inp[1]), .Y());
  AND2X1 U52 (.A1(n67), .A2(inp[0]), .Y(n87));
  INVX1 U53 (.A(n87), .Y(n42));
  NAND2X1 U54 (.A1(n63), .A2(inp[3]), .Y(n43));
  AND2X1 U55 (.A1(n67), .A2(n63), .Y(n65));
  INVX1 U56 (.A(n65), .Y(n45));
  AND2X1 U57 (.A1(n78), .A2(n56), .Y(n80));
  INVX1 U58 (.A(n80), .Y(n46));
  AND2X1 U59 (.A1(n73), .A2(n22), .Y(n58));
  INVX1 U60 (.A(n58), .Y(n47));
  AND2X1 U61 (.A1(n88), .A2(inp[3]), .Y(n61));
  AND2X1 U62 (.A1(n63), .A2(inp[2]), .Y(n74));
  INVX1 U63 (.A(n74), .Y(n49));
  AND2X1 U64 (.A1(n87), .A2(inp[1]), .Y(n70));
  INVX1 U65 (.A(n70), .Y(n50));
  AND2X1 U66 (.A1(n79), .A2(n7), .Y(n90));
  INVX1 U67 (.A(n90), .Y(n51));
  AND2X1 U68 (.A1(n66), .A2(n18), .Y(n83));
  INVX1 U69 (.A(n83), .Y(n52));
  AND2X1 U70 (.A1(n22), .A2(inp[2]), .Y(n68));
  INVX1 U71 (.A(n68), .Y(n53));
  AND2X1 U72 (.A1(n42), .A2(n88), .Y(n71));
  INVX1 U73 (.A(n71), .Y(n54));
  AND2X1 U74 (.A1(n43), .A2(n42), .Y(n85));
  INVX1 U75 (.A(n85), .Y(n55));
  AND2X1 U76 (.A1(n60), .A2(n53), .Y(n79));
  INVX1 U77 (.A(n79), .Y(n56));
  AND2X1 U78 (.A1(n13), .A2(n24), .Y(n78));
  INVX1 U79 (.A(n78), .Y(n57));
  INVX1 U80 (.A(inp[2]), .Y(n73));
  NAND2X1 U81 (.A1(n47), .A2(inp[3]), .Y(n59));
  NAND2X1 U82 (.A1(n73), .A2(inp[4]), .Y(n60));
  INVX1 U83 (.A(inp[3]), .Y(n67));
  INVX1 U84 (.A(inp[1]), .Y(n88));
  INVX1 U85 (.A(inp[0]), .Y(n63));
  OR2X1 U86 (.A1(n63), .A2(n62), .Y(n64));
  NOR2X1 U87 (.A1(n41), .A2(n64), .Y(n76));
  NAND2X1 U88 (.A1(n56), .A2(inp[1]), .Y(n66));
  NAND2X1 U89 (.A1(n8), .A2(n30), .Y(out[11]));
  NAND2X1 U90 (.A1(n10), .A2(n49), .Y(out[3]));
  XOR2X1 U91 (.A1(n10), .A2(n75), .Y(out[4]));
  NAND2X1 U92 (.A1(n79), .A2(n57), .Y(n81));
  NAND2X1 U93 (.A1(n81), .A2(n46), .Y());
  XOR2X1 U94 (.A1(n5), .A2(n33), .Y(n84));
  XOR2X1 U95 (.A1(n84), .A2(n52), .Y(out[6]));
  XOR2X1 U96 (.A1(n27), .A2(n55), .Y(n86));
  XOR2X1 U97 (.A1(n86), .A2(n12), .Y(out[7]));
  XOR2X1 U98 (.A1(n88), .A2(n42), .Y(n89));
  XOR2X1 U99 (.A1(n89), .A2(n11), .Y(out[8]));
  NAND2X1 U100 (.A1(n51), .A2(n17), .Y(out[9]));

  assign n41 = 1'b1;
  assign n62 = 1'b0;
  assign n75 = 1'b1;
  assign out[5] = 1'b1;
endmodule


