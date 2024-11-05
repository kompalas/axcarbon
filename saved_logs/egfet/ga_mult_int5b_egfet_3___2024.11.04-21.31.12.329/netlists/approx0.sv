/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:46:12 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [4:0] inp;
  output [9:0] out;
  wire   n2, n4, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n49,
         n50, n52, n53, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94;
  assign out[1] = inp[1];
  assign out[0] = inp[0];

  INVX1 U5 (.A(n2), .Y());
  NAND2X1 U6 (.A1(n73), .A2(n25), .Y(n2));
  NAND2X1 U7 (.A1(n78), .A2(inp[2]), .Y(n59));
  NOR2X1 U8 (.A1(inp[3]), .A2(n8), .Y(n78));
  OR2X1 U9 (.A1(inp[3]), .A2(n35), .Y());
  NAND2X1 U10 (.A1(n49), .A2(n4), .Y(out[8]));
  NAND2X1 U11 (.A1(n81), .A2(inp[3]), .Y());
  NAND2X1 U12 (.A1(n67), .A2(n45), .Y(n11));
  NAND2X1 U13 (.A1(n66), .A2(n35), .Y(n15));
  NAND2X1 U14 (.A1(n42), .A2(n14), .Y(n10));
  XOR2X1 U15 (.A1(n8), .A2(n82), .Y());
  NAND2X1 U16 (.A1(n39), .A2(n19), .Y());
  OR2X1 U17 (.A1(n9), .A2(n60), .Y(out[9]));
  NOR2X1 U18 (.A1(n57), .A2(n87), .Y(n9));
  AND2X1 U19 (.A1(n57), .A2(n87), .Y(n60));
  NOR2X1 U20 (.A1(n80), .A2(n69), .Y());
  AND2X1 U21 (.A1(n84), .A2(inp[3]), .Y(n27));
  INVX1 U22 (.A(n27), .Y(n13));
  AND2X1 U23 (.A1(inp[4]), .A2(inp[2]), .Y(n47));
  INVX1 U24 (.A(n47), .Y(n14));
  AND2X1 U25 (.A1(n70), .A2(n69), .Y(n71));
  INVX1 U26 (.A(n71), .Y(n16));
  AND2X1 U27 (.A1(inp[1]), .A2(inp[3]), .Y(n17));
  AND2X1 U28 (.A1(n46), .A2(n90), .Y(n91));
  INVX1 U29 (.A(n91), .Y());
  AND2X1 U30 (.A1(n92), .A2(n93), .Y(n38));
  INVX1 U31 (.A(n38), .Y(n19));
  AND2X1 U32 (.A1(n77), .A2(n76), .Y(n28));
  INVX1 U33 (.A(n28), .Y());
  AND2X1 U34 (.A1(n16), .A2(n72), .Y(n52));
  INVX1 U35 (.A(n52), .Y());
  INVX1 U36 (.A(n34), .Y(n22));
  XNOR2X1 U37 (.A1(n22), .A2(n89), .Y(n46));
  INVX1 U38 (.A(n46), .Y(n23));
  INVX1 U39 (.A(n17), .Y(n24));
  OR2X1 U40 (.A1(n21), .A2(inp[4]), .Y());
  OR2X1 U41 (.A1(n12), .A2(n34), .Y(n26));
  NOR2X1 U42 (.A1(n55), .A2(n26), .Y());
  NAND2X1 U43 (.A1(n56), .A2(n33), .Y());
  NOR2X1 U44 (.A1(n55), .A2(n12), .Y(n89));
  NOR2X1 U45 (.A1(n30), .A2(n29), .Y());
  NOR2X1 U46 (.A1(n31), .A2(n90), .Y(n30));
  NOR2X1 U47 (.A1(n89), .A2(n22), .Y(n31));
  NOR2X1 U48 (.A1(inp[4]), .A2(n33), .Y(n32));
  INVX1 U49 (.A(inp[3]), .Y(n33));
  INVX1 U50 (.A(inp[4]), .Y());
  NOR2X1 U51 (.A1(n22), .A2(n32), .Y(n80));
  NAND2X1 U52 (.A1(n37), .A2(n23), .Y());
  INVX1 U53 (.A(n90), .Y(n37));
  NAND2X1 U54 (.A1(n40), .A2(n20), .Y(n39));
  NAND2X1 U55 (.A1(n53), .A2(n64), .Y(n40));
  NAND2X1 U56 (.A1(n80), .A2(n69), .Y(n65));
  NOR2X1 U57 (.A1(n41), .A2(n50), .Y(n57));
  NOR2X1 U58 (.A1(n79), .A2(n58), .Y(n41));
  AND2X1 U59 (.A1(n78), .A2(n70), .Y(n43));
  XOR2X1 U60 (.A1(n8), .A2(n63), .Y(n56));
  NAND2X1 U61 (.A1(n44), .A2(n15), .Y(n42));
  NOR2X1 U62 (.A1(inp[2]), .A2(n43), .Y(n79));
  NAND2X1 U63 (.A1(n11), .A2(n24), .Y());
  NOR2X1 U64 (.A1(n69), .A2(n66), .Y(n45));
  AND2X1 U65 (.A1(n17), .A2(n8), .Y(n50));
  AND2X1 U66 (.A1(n10), .A2(n65), .Y(n55));
  INVX1 U67 (.A(n92), .Y(n53));
  XOR2X1 U68 (.A1(n88), .A2(n10), .Y());
  INVX1 U69 (.A(n59), .Y(n58));
  AND2X1 U70 (.A1(n66), .A2(n69), .Y(n61));
  XNOR2X1 U71 (.A1(inp[1]), .A2(n45), .Y(n84));
  INVX1 U72 (.A(n84), .Y(n62));
  AND2X1 U73 (.A1(n66), .A2(inp[1]), .Y(n82));
  INVX1 U74 (.A(n82), .Y());
  AND2X1 U75 (.A1(n74), .A2(n63), .Y());
  INVX1 U76 (.A(n93), .Y(n64));
  NAND2X1 U77 (.A1(n70), .A2(n33), .Y(n67));
  NOR2X1 U78 (.A1(n45), .A2(n61), .Y());
  INVX1 U79 (.A(inp[2]), .Y(n66));
  INVX1 U80 (.A(inp[0]), .Y(n69));
  NAND2X1 U81 (.A1(inp[1]), .A2(inp[0]), .Y(n72));
  INVX1 U82 (.A(inp[1]), .Y(n70));
  NAND2X1 U83 (.A1(n21), .A2(inp[4]), .Y(n73));
  NAND2X1 U84 (.A1(n70), .A2(inp[2]), .Y(n74));
  NAND2X1 U85 (.A1(n70), .A2(inp[4]), .Y(n75));
  NAND2X1 U86 (.A1(n75), .A2(inp[0]), .Y(n77));
  NAND2X1 U87 (.A1(n35), .A2(inp[1]), .Y(n76));
  INVX1 U88 (.A(n80), .Y(n87));
  NAND2X1 U89 (.A1(n33), .A2(n62), .Y(n85));
  NAND2X1 U90 (.A1(n85), .A2(n13), .Y());
  XOR2X1 U91 (.A1(n35), .A2(n66), .Y(n86));
  XOR2X1 U92 (.A1(n86), .A2(n44), .Y(out[4]));
  XOR2X1 U93 (.A1(inp[0]), .A2(n87), .Y(n88));
  NAND2X1 U94 (.A1(n36), .A2(n18), .Y());
  XOR2X1 U95 (.A1(n20), .A2(n53), .Y(n94));
  XOR2X1 U96 (.A1(n94), .A2(n64), .Y(out[7]));

  assign n4 = 1'b0;
  assign n8 = 1'b1;
  assign n12 = 1'b1;
  assign n18 = 1'b1;
  assign n20 = 1'b0;
  assign n21 = 1'b0;
  assign n25 = 1'b1;
  assign n29 = 1'b1;
  assign n34 = 1'b1;
  assign n35 = 1'b1;
  assign n36 = 1'b0;
  assign n44 = 1'b1;
  assign n49 = 1'b0;
  assign n63 = 1'b1;
  assign n81 = 1'b0;
  assign n90 = 1'b1;
  assign n92 = 1'b0;
  assign n93 = 1'b0;
  assign out[2] = 1'b1;
  assign out[3] = 1'b0;
  assign out[5] = 1'b0;
  assign out[6] = 1'b1;
endmodule


