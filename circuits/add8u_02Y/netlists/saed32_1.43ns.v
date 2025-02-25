/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:59:29 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n2;
  assign O[6] = 1'b1;
  assign O[3] = 1'b0;
  assign O[5] = A[5];
  assign O[4] = A[7];
  assign O[1] = A[0];
  assign O[2] = A[0];
  assign O[0] = A[2];

  NAND2X0_RVT U8 ( .A1(B[7]), .A2(A[7]), .Y(n2) );
  INVX1_RVT U9 ( .A(n2), .Y(O[8]) );
  OA21X1_RVT U12 ( .A1(B[7]), .A2(A[7]), .A3(n2), .Y(O[7]) );
endmodule

