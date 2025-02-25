/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Mon Feb 24 21:24:50 2025
/////////////////////////////////////////////////////////////


module top ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [16:0] O;
  wire   \O[3] , intadd_0_n3, intadd_0_n2, intadd_0_n1;
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

  SAEDRVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(B[12]), .B(A[12]), .CI(B[11]), .CO(
        intadd_0_n3), .S(O[12]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(B[13]), .CI(A[13]), 
        .CO(intadd_0_n2), .S(O[13]) );
  SAEDRVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(B[14]), .CI(A[14]), 
        .CO(intadd_0_n1), .S(O[14]) );
  SAEDRVT14_AN2_MM_0P5 U8 ( .A1(O[6]), .A2(intadd_0_n1), .X(\O[3] ) );
  SAEDRVT14_EO2_V1_0P75 U9 ( .A1(B[15]), .A2(A[15]), .X(O[6]) );
  SAEDRVT14_AO21_U_0P5 U10 ( .A1(A[15]), .A2(B[15]), .B(\O[3] ), .X(O[16]) );
  SAEDRVT14_OA21B_1 U11 ( .A1(O[6]), .A2(intadd_0_n1), .B(\O[3] ), .X(O[15])
         );
endmodule

