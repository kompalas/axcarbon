/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 07:00:14 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n3, n4;
  assign O[0] = 1'b0;
  assign O[1] = 1'b0;
  assign O[2] = 1'b0;
  assign O[3] = 1'b0;
  assign O[4] = 1'b0;
  assign O[5] = 1'b0;
  assign O[6] = 1'b0;
  assign O[8] = 1'b0;
  assign O[9] = 1'b0;
  assign O[10] = 1'b0;
  assign O[7] = O[12];
  assign O[11] = O[12];

  AND2X1_RVT U9 ( .A1(A[7]), .A2(B[7]), .Y(O[13]) );
  OA21X1_RVT U10 ( .A1(A[6]), .A2(B[6]), .A3(O[13]), .Y(O[15]) );
  AND2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(O[12]) );
  AO22X1_RVT U13 ( .A1(A[6]), .A2(B[7]), .A3(B[6]), .A4(A[7]), .Y(n4) );
  INVX1_RVT U14 ( .A(O[15]), .Y(n3) );
  OA21X1_RVT U15 ( .A1(O[13]), .A2(n4), .A3(n3), .Y(O[14]) );
endmodule

