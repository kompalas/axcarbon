/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:59:59 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n2;
  assign O[6] = 1'b1;
  assign O[1] = 1'b0;
  assign O[12] = 1'b0;
  assign O[3] = A[7];
  assign O[2] = A[8];
  assign O[10] = A[8];
  assign O[14] = B[14];
  assign O[13] = B[10];
  assign O[9] = B[13];
  assign O[11] = B[13];
  assign O[4] = B[11];
  assign O[7] = B[11];
  assign O[8] = B[11];
  assign O[0] = B[2];

  OA21X1_RVT U9 ( .A1(B[15]), .A2(A[15]), .A3(A[14]), .Y(O[5]) );
  INVX1_RVT U12 ( .A(O[5]), .Y(n2) );
  AO222X1_RVT U13 ( .A1(n2), .A2(B[15]), .A3(n2), .A4(A[15]), .A5(n2), .A6(
        A[14]), .Y(O[15]) );
  AO21X1_RVT U14 ( .A1(A[15]), .A2(B[15]), .A3(O[5]), .Y(O[16]) );
endmodule

