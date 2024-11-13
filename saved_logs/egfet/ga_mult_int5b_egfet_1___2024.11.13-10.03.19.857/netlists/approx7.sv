/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 10:03:05 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [4:0] inp;
  output [12:0] out;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83;
  assign out[11] = inp[4];
  assign out[12] = inp[4];
  assign out[2] = inp[1];
  assign out[1] = inp[0];
  assign out[0] = 1'b0;

  AND2X1 U5 (.A1(n17), .A2(n16), .Y(n80));
  NAND2X1 U6 (.A1(n39), .A2(n32), .Y(n12));
  NAND2X1 U7 (.A1(n8), .A2(n45), .Y(n7));
  AND2X1 U8 (.A1(n10), .A2(n28), .Y(n75));
  NAND2X1 U9 (.A1(n11), .A2(n50), .Y());
  NAND2X1 U10 (.A1(n47), .A2(n46), .Y(n11));
  OR2X1 U11 (.A1(n49), .A2(n12), .Y(n8));
  NAND2X1 U12 (.A1(n49), .A2(n12), .Y(n9));
  XOR2X1 U13 (.A1(n79), .A2(n80), .Y(out[8]));
  AND2X1 U14 (.A1(n27), .A2(n33), .Y(n36));
  INVX1 U15 (.A(n36), .Y(n13));
  NAND2X1 U16 (.A1(n54), .A2(n15), .Y(n16));
  NAND2X1 U17 (.A1(n22), .A2(n14), .Y(n17));
  INVX1 U18 (.A(n54), .Y(n14));
  INVX1 U19 (.A(n22), .Y(n15));
  NAND2X1 U20 (.A1(n81), .A2(n29), .Y(n18));
  NAND2X1 U21 (.A1(inp[4]), .A2(inp[2]), .Y(n19));
  NAND2X1 U22 (.A1(n56), .A2(n53), .Y(n20));
  NAND2X1 U23 (.A1(n11), .A2(n29), .Y(n21));
  NAND2X1 U24 (.A1(n28), .A2(n21), .Y(n22));
  AND2X1 U25 (.A1(n50), .A2(n10), .Y(n73));
  INVX1 U26 (.A(n73), .Y(n23));
  AND2X1 U27 (.A1(n19), .A2(n31), .Y(n24));
  AND2X1 U28 (.A1(n10), .A2(n11), .Y(n34));
  INVX1 U29 (.A(n34), .Y(n25));
  AND2X1 U30 (.A1(n70), .A2(inp[4]), .Y(n30));
  INVX1 U31 (.A(n30), .Y(n26));
  AND2X1 U32 (.A1(n46), .A2(n59), .Y(n35));
  INVX1 U33 (.A(n35), .Y(n27));
  AND2X1 U34 (.A1(inp[3]), .A2(inp[1]), .Y(n48));
  INVX1 U35 (.A(n48), .Y(n28));
  INVX1 U36 (.A(n24), .Y(n29));
  OR2X1 U37 (.A1(inp[2]), .A2(inp[4]), .Y(n31));
  NAND2X1 U38 (.A1(n74), .A2(n28), .Y(n32));
  OR2X1 U39 (.A1(n42), .A2(n41), .Y(n33));
  OR2X1 U40 (.A1(n33), .A2(n27), .Y(n37));
  NAND2X1 U41 (.A1(n38), .A2(n37), .Y(n54));
  NAND2X1 U42 (.A1(n7), .A2(n13), .Y(n38));
  XOR2X1 U43 (.A1(n11), .A2(inp[0]), .Y(n49));
  NAND2X1 U44 (.A1(n52), .A2(inp[3]), .Y(n46));
  NAND2X1 U45 (.A1(n63), .A2(inp[1]), .Y(n47));
  NAND2X1 U46 (.A1(n40), .A2(n29), .Y(n39));
  NAND2X1 U47 (.A1(n43), .A2(inp[0]), .Y());
  INVX1 U48 (.A(inp[2]), .Y(n70));
  NOR2X1 U49 (.A1(n29), .A2(n11), .Y(n41));
  INVX1 U50 (.A(n21), .Y(n42));
  XOR2X1 U51 (.A1(n76), .A2(n43), .Y(out[5]));
  INVX1 U52 (.A(n75), .Y(n43));
  XOR2X1 U53 (.A1(n12), .A2(n26), .Y(n77));
  NAND2X1 U54 (.A1(n9), .A2(n26), .Y(n45));
  INVX1 U55 (.A(n50), .Y(n72));
  NOR2X1 U56 (.A1(n70), .A2(n74), .Y(n50));
  INVX1 U57 (.A(inp[3]), .Y(n63));
  INVX1 U58 (.A(inp[1]), .Y(n52));
  XOR2X1 U59 (.A1(n77), .A2(n49), .Y(out[6]));
  AND2X1 U60 (.A1(n54), .A2(n65), .Y(n66));
  INVX1 U61 (.A(n66), .Y(n53));
  NAND2X1 U62 (.A1(n22), .A2(n62), .Y(n56));
  AND2X1 U63 (.A1(n31), .A2(inp[3]), .Y(n68));
  INVX1 U64 (.A(n68), .Y(n57));
  AND2X1 U65 (.A1(n20), .A2(n18), .Y(n83));
  INVX1 U66 (.A(n83), .Y(n58));
  AND2X1 U67 (.A1(n47), .A2(n74), .Y(n64));
  INVX1 U68 (.A(n64), .Y(n59));
  AND2X1 U69 (.A1(n70), .A2(n74), .Y(n71));
  INVX1 U70 (.A(n71), .Y(n60));
  AND2X1 U71 (.A1(n19), .A2(n63), .Y(n67));
  INVX1 U72 (.A(n67), .Y(n61));
  XNOR2X1 U73 (.A1(inp[3]), .A2(n19), .Y(n79));
  INVX1 U74 (.A(n79), .Y(n62));
  INVX1 U75 (.A(inp[0]), .Y(n74));
  OR2X1 U76 (.A1(n62), .A2(n22), .Y(n65));
  NAND2X1 U77 (.A1(n20), .A2(n61), .Y(n69));
  NAND2X1 U78 (.A1(n69), .A2(n57), .Y(out[10]));
  AND2X1 U79 (.A1(n60), .A2(n72), .Y());
  NAND2X1 U80 (.A1(n23), .A2(n25), .Y(out[4]));
  XOR2X1 U81 (.A1(n74), .A2(n29), .Y(n76));
  XOR2X1 U82 (.A1(n33), .A2(n7), .Y(n78));
  XOR2X1 U83 (.A1(n78), .A2(n27), .Y(out[7]));
  NAND2X1 U84 (.A1(inp[4]), .A2(inp[3]), .Y(n81));
  OR2X1 U85 (.A1(n18), .A2(n20), .Y(n82));
  NAND2X1 U86 (.A1(n82), .A2(n58), .Y(out[9]));

  assign n10 = 1'b0;
  assign n40 = 1'b0;
  assign out[3] = 1'b1;
endmodule


