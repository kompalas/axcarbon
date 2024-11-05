/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Nov  4 19:44:47 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [4:0] inp;
  output [9:0] out;
  wire   n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107;
  assign out[0] = inp[0];

  OR2X1 U5 (.A1(inp[1]), .A2(inp[2]), .Y(n35));
  INVX1 U6 (.A(n20), .Y());
  NAND2X1 U7 (.A1(n51), .A2(n48), .Y(n20));
  INVX1 U8 (.A(n49), .Y());
  NAND2X1 U9 (.A1(n50), .A2(n66), .Y());
  NAND2X1 U10 (.A1(n17), .A2(inp[4]), .Y());
  INVX1 U11 (.A(n14), .Y());
  AND2X1 U12 (.A1(n37), .A2(n16), .Y());
  NAND2X1 U13 (.A1(n25), .A2(n28), .Y());
  INVX1 U14 (.A(n26), .Y(n19));
  NAND2X1 U15 (.A1(n36), .A2(n105), .Y(n26));
  NAND2X1 U16 (.A1(n21), .A2(n101), .Y(n16));
  XOR2X1 U17 (.A1(n59), .A2(inp[3]), .Y(n18));
  AND2X1 U18 (.A1(n41), .A2(n40), .Y(n62));
  INVX1 U19 (.A(n62), .Y(n21));
  AND2X1 U20 (.A1(n57), .A2(n54), .Y());
  INVX1 U21 (.A(n64), .Y(n22));
  AND2X1 U22 (.A1(n30), .A2(n86), .Y(n87));
  INVX1 U23 (.A(n87), .Y(n24));
  AND2X1 U24 (.A1(n26), .A2(n53), .Y(n29));
  INVX1 U25 (.A(n29), .Y(n25));
  NAND2X1 U26 (.A1(n19), .A2(n27), .Y(n28));
  INVX1 U27 (.A(n53), .Y(n27));
  NAND2X1 U28 (.A1(inp[1]), .A2(inp[0]), .Y());
  AND2X1 U29 (.A1(n100), .A2(n67), .Y(n55));
  INVX1 U30 (.A(n55), .Y(n33));
  OR2X1 U31 (.A1(n47), .A2(n38), .Y(n34));
  NAND2X1 U32 (.A1(n35), .A2(n82), .Y());
  NAND2X1 U33 (.A1(n23), .A2(n71), .Y(n36));
  OR2X1 U34 (.A1(n22), .A2(n79), .Y(n37));
  INVX1 U35 (.A(n60), .Y(n38));
  NAND2X1 U36 (.A1(n39), .A2(n65), .Y(n50));
  XOR2X1 U37 (.A1(n80), .A2(n39), .Y());
  INVX1 U38 (.A(n47), .Y(n39));
  AND2X1 U39 (.A1(n60), .A2(n97), .Y(n47));
  INVX1 U40 (.A(inp[0]), .Y());
  NAND2X1 U41 (.A1(n94), .A2(inp[3]), .Y(n40));
  NAND2X1 U42 (.A1(n42), .A2(n97), .Y(n41));
  INVX1 U43 (.A(n94), .Y(n42));
  AND2X1 U44 (.A1(n43), .A2(n59), .Y(n107));
  NAND2X1 U45 (.A1(inp[2]), .A2(inp[4]), .Y(n59));
  NAND2X1 U46 (.A1(n93), .A2(n92), .Y(n43));
  INVX1 U47 (.A(inp[4]), .Y(n93));
  INVX1 U48 (.A(inp[2]), .Y(n92));
  NAND2X1 U49 (.A1(n44), .A2(n52), .Y(n51));
  NAND2X1 U50 (.A1(n49), .A2(n93), .Y(n44));
  NAND2X1 U51 (.A1(n20), .A2(n77), .Y());
  INVX1 U52 (.A(n97), .Y());
  OR2X1 U53 (.A1(n47), .A2(n46), .Y(n45));
  INVX1 U54 (.A(n85), .Y(n52));
  AND2X1 U55 (.A1(n63), .A2(n106), .Y(n53));
  NAND2X1 U56 (.A1(n89), .A2(n75), .Y());
  XOR2X1 U57 (.A1(n18), .A2(n33), .Y(n56));
  XOR2X1 U58 (.A1(n22), .A2(n79), .Y());
  AND2X1 U59 (.A1(n98), .A2(n82), .Y());
  INVX1 U60 (.A(n76), .Y());
  XNOR2X1 U61 (.A1(n63), .A2(n98), .Y(n94));
  INVX1 U62 (.A(n107), .Y());
  AND2X1 U63 (.A1(n97), .A2(out[1]), .Y(n91));
  AND2X1 U64 (.A1(n32), .A2(n61), .Y());
  INVX1 U65 (.A(n81), .Y(n65));
  NAND2X1 U66 (.A1(n98), .A2(inp[4]), .Y(n66));
  AND2X1 U67 (.A1(n63), .A2(n72), .Y(n68));
  INVX1 U68 (.A(n68), .Y());
  AND2X1 U69 (.A1(n32), .A2(n75), .Y(n69));
  AND2X1 U70 (.A1(n58), .A2(n21), .Y());
  INVX1 U71 (.A(n95), .Y(n70));
  AND2X1 U72 (.A1(n18), .A2(n33), .Y(n104));
  INVX1 U73 (.A(n104), .Y(n71));
  AND2X1 U74 (.A1(n93), .A2(inp[1]), .Y(n81));
  AND2X1 U75 (.A1(n97), .A2(n98), .Y(n99));
  INVX1 U76 (.A(n99), .Y(n72));
  AND2X1 U77 (.A1(n57), .A2(n24), .Y(n90));
  INVX1 U78 (.A(n90), .Y());
  AND2X1 U79 (.A1(n56), .A2(n23), .Y(n102));
  INVX1 U80 (.A(n102), .Y());
  INVX1 U81 (.A(n91), .Y(n75));
  AND2X1 U82 (.A1(n83), .A2(n77), .Y());
  AND2X1 U83 (.A1(n92), .A2(n82), .Y(n86));
  INVX1 U84 (.A(n86), .Y(n77));
  INVX1 U85 (.A(out[1]), .Y());
  INVX1 U86 (.A(n69), .Y());
  INVX1 U87 (.A(inp[1]), .Y(n98));
  XOR2X1 U88 (.A1(inp[2]), .A2(n61), .Y(out[2]));
  INVX1 U89 (.A(inp[3]), .Y(n97));
  NAND2X1 U90 (.A1(n45), .A2(n34), .Y());
  XOR2X1 U91 (.A1(n93), .A2(n98), .Y(n80));
  XOR2X1 U92 (.A1(n17), .A2(inp[4]), .Y(n84));
  NAND2X1 U93 (.A1(inp[2]), .A2(inp[0]), .Y(n83));
  XOR2X1 U94 (.A1(n84), .A2(n52), .Y(out[5]));
  NAND2X1 U95 (.A1(n78), .A2(inp[3]), .Y(n89));
  XOR2X1 U96 (.A1(n54), .A2(n73), .Y(out[6]));
  OR2X1 U97 (.A1(n58), .A2(n21), .Y(n96));
  NAND2X1 U98 (.A1(n70), .A2(n96), .Y());
  NAND2X1 U99 (.A1(inp[3]), .A2(inp[1]), .Y(n100));
  NAND2X1 U100 (.A1(n22), .A2(n79), .Y());
  OR2X1 U101 (.A1(n56), .A2(n23), .Y(n103));
  NAND2X1 U102 (.A1(n103), .A2(n74), .Y());
  OR2X1 U103 (.A1(n33), .A2(n18), .Y(n105));
  NAND2X1 U104 (.A1(inp[4]), .A2(inp[3]), .Y(n106));

  assign n14 = 1'b1;
  assign n17 = 1'b1;
  assign n23 = 1'b1;
  assign n30 = 1'b0;
  assign n32 = 1'b0;
  assign n46 = 1'b1;
  assign n48 = 1'b0;
  assign n49 = 1'b0;
  assign n54 = 1'b0;
  assign n57 = 1'b0;
  assign n58 = 1'b0;
  assign n60 = 1'b1;
  assign n61 = 1'b0;
  assign n63 = 1'b0;
  assign n64 = 1'b0;
  assign n67 = 1'b1;
  assign n73 = 1'b1;
  assign n74 = 1'b0;
  assign n76 = 1'b1;
  assign n78 = 1'b1;
  assign n79 = 1'b1;
  assign n82 = 1'b1;
  assign n85 = 1'b0;
  assign n95 = 1'b1;
  assign n101 = 1'b1;
  assign out[1] = 1'b1;
  assign out[3] = 1'b0;
  assign out[4] = 1'b1;
  assign out[7] = 1'b1;
  assign out[8] = 1'b1;
  assign out[9] = 1'b0;
endmodule


