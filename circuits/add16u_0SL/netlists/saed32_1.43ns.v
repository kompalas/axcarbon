/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:58:42 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   n6, n7, n8;
  assign O[13] = 1'b0;
  assign O[8] = O[5];
  assign O[1] = O[15];
  assign O[9] = A[15];
  assign O[6] = A[3];
  assign O[3] = A[6];
  assign O[2] = A[7];
  assign O[0] = A[9];
  assign O[12] = A[9];
  assign O[11] = B[11];
  assign O[10] = B[10];
  assign O[4] = B[12];

  OR2X1_RVT U10 ( .A1(A[13]), .A2(B[13]), .Y(O[5]) );
  HADDX1_RVT U11 ( .A0(B[14]), .B0(A[14]), .SO(n8) );
  NAND2X0_RVT U12 ( .A1(n8), .A2(O[5]), .Y(n7) );
  INVX1_RVT U13 ( .A(n7), .Y(O[7]) );
  AO21X1_RVT U15 ( .A1(A[14]), .A2(B[14]), .A3(O[7]), .Y(n6) );
  FADDX1_RVT U16 ( .A(B[15]), .B(A[15]), .CI(n6), .CO(O[16]), .S(O[15]) );
  OA21X1_RVT U17 ( .A1(n8), .A2(O[5]), .A3(n7), .Y(O[14]) );
endmodule

