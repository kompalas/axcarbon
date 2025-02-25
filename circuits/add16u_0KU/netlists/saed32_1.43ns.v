/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Feb 25 06:57:25 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , intadd_0_n3, intadd_0_n2, intadd_0_n1, n10;
  assign O[5] = A[10];
  assign O[1] = A[6];
  assign O[10] = A[6];
  assign O[11] = A[11];
  assign O[8] = B[6];
  assign O[7] = B[9];
  assign O[4] = B[12];
  assign O[2] = B[7];
  assign O[0] = B[13];
  assign O[3] = \O[3] ;
  assign O[9] = \O[3] ;

  FADDX1_RVT intadd_0_U4 ( .A(B[11]), .B(A[12]), .CI(B[12]), .CO(intadd_0_n3), 
        .S(O[12]) );
  FADDX1_RVT intadd_0_U3 ( .A(A[13]), .B(B[13]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(O[13]) );
  FADDX1_RVT intadd_0_U2 ( .A(A[14]), .B(B[14]), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(O[14]) );
  HADDX1_RVT U10 ( .A0(A[15]), .B0(B[15]), .SO(O[6]) );
  NAND2X0_RVT U11 ( .A1(O[6]), .A2(intadd_0_n1), .Y(n10) );
  INVX1_RVT U12 ( .A(n10), .Y(\O[3] ) );
  AO21X1_RVT U13 ( .A1(B[15]), .A2(A[15]), .A3(\O[3] ), .Y(O[16]) );
  OA21X1_RVT U14 ( .A1(O[6]), .A2(intadd_0_n1), .A3(n10), .Y(O[15]) );
endmodule

