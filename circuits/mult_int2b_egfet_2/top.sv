/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Nov 13 08:30:28 2024
/////////////////////////////////////////////////////////////


module top ( inp, out );
  input [1:0] inp;
  output [9:0] out;
  wire   n3;
  assign out[0] = inp[0];
  assign out[6] = inp[1];
  assign out[3] = inp[1];
  assign out[7] = inp[1];
  assign out[8] = inp[1];
  assign out[9] = inp[1];
  assign out[1] = out[4];
  assign out[5] = out[2];

  AND2X1 U5 ( .A1(inp[1]), .A2(inp[0]), .Y(out[2]) );
  NOR2X1 U6 ( .A1(inp[1]), .A2(inp[0]), .Y(n3) );
  NOR2X1 U7 ( .A1(out[2]), .A2(n3), .Y(out[4]) );
endmodule

