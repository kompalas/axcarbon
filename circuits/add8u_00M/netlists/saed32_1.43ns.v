/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:58:13 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire   n4;
  assign O[3] = 1'b0;
  assign O[0] = O[8];
  assign O[2] = A[7];
  assign O[1] = A[3];
  assign O[4] = B[7];

  OR2X1_RVT U7 ( .A1(B[6]), .A2(A[6]), .Y(n4) );
  INVX1_RVT U8 ( .A(n4), .Y(O[6]) );
  AND2X1_RVT U10 ( .A1(B[6]), .A2(A[6]), .Y(O[5]) );
  FADDX1_RVT U11 ( .A(B[7]), .B(A[7]), .CI(n4), .CO(O[8]), .S(O[7]) );
endmodule

