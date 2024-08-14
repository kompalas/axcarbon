
`timescale 1ns/1ps




`celldefine
module AND2_X1_func( A2, A1, Z );
   input A1, A2;
   output Z;
   and MGM_BG_0( Z, A1, A2 );


endmodule
`endcelldefine



`celldefine
module AND2_X2_func( A2, A1, Z );
   input A1, A2;
   output Z;
   and MGM_BG_0( Z, A1, A2 );


endmodule
`endcelldefine



`celldefine
module AND3_X1_func( A3, A2, A1, Z );
   input A1, A2, A3;
   output Z;
   and MGM_BG_0( Z, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module AND3_X2_func( A1, A2, A3, Z );
   input A1, A2, A3;
   output Z;
   and MGM_BG_0( Z, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module AND4_X1_func( A4, A1, Z, A3, A2 );
   input A1, A2, A3, A4;
   output Z;
   and MGM_BG_0( Z, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module AND4_X2_func( A4, A3, A2, A1, Z );
   input A1, A2, A3, A4;
   output Z;
   and MGM_BG_0( Z, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module AOI21_X1_func( ZN, B, A2, A1 );
   input A1, A2, B;
   output ZN;
   wire A1_inv_for_AOI21_X1;
   not MGM_BG_0( A1_inv_for_AOI21_X1, A1 );
   wire B_inv_for_AOI21_X1;
   not MGM_BG_1( B_inv_for_AOI21_X1, B );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_AOI21_X1, B_inv_for_AOI21_X1 );
   wire A2_inv_for_AOI21_X1;
   not MGM_BG_3( A2_inv_for_AOI21_X1, A2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A2_inv_for_AOI21_X1, B_inv_for_AOI21_X1 );
   or MGM_BG_5( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI21_X2_func( A1, ZN, B, A2 );
   input A1, A2, B;
   output ZN;
   wire A1_inv_for_AOI21_X2;
   not MGM_BG_0( A1_inv_for_AOI21_X2, A1 );
   wire B_inv_for_AOI21_X2;
   not MGM_BG_1( B_inv_for_AOI21_X2, B );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_AOI21_X2, B_inv_for_AOI21_X2 );
   wire A2_inv_for_AOI21_X2;
   not MGM_BG_3( A2_inv_for_AOI21_X2, A2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A2_inv_for_AOI21_X2, B_inv_for_AOI21_X2 );
   or MGM_BG_5( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI22_X1_func( B2, A1, A2, B1, ZN );
   input A1, A2, B1, B2;
   output ZN;
   wire A1_inv_for_AOI22_X1;
   not MGM_BG_0( A1_inv_for_AOI22_X1, A1 );
   wire B1_inv_for_AOI22_X1;
   not MGM_BG_1( B1_inv_for_AOI22_X1, B1 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_AOI22_X1, B1_inv_for_AOI22_X1 );
   wire B2_inv_for_AOI22_X1;
   not MGM_BG_3( B2_inv_for_AOI22_X1, B2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A1_inv_for_AOI22_X1, B2_inv_for_AOI22_X1 );
   wire A2_inv_for_AOI22_X1;
   not MGM_BG_5( A2_inv_for_AOI22_X1, A2 );
   wire ZN_row3;
   and MGM_BG_6( ZN_row3, A2_inv_for_AOI22_X1, B1_inv_for_AOI22_X1 );
   wire ZN_row4;
   and MGM_BG_7( ZN_row4, A2_inv_for_AOI22_X1, B2_inv_for_AOI22_X1 );
   or MGM_BG_8( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4 );


endmodule
`endcelldefine



`celldefine
module AOI22_X2_func( ZN, B2, B1, A2, A1 );
   input A1, A2, B1, B2;
   output ZN;
   wire A1_inv_for_AOI22_X2;
   not MGM_BG_0( A1_inv_for_AOI22_X2, A1 );
   wire B1_inv_for_AOI22_X2;
   not MGM_BG_1( B1_inv_for_AOI22_X2, B1 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_AOI22_X2, B1_inv_for_AOI22_X2 );
   wire B2_inv_for_AOI22_X2;
   not MGM_BG_3( B2_inv_for_AOI22_X2, B2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A1_inv_for_AOI22_X2, B2_inv_for_AOI22_X2 );
   wire A2_inv_for_AOI22_X2;
   not MGM_BG_5( A2_inv_for_AOI22_X2, A2 );
   wire ZN_row3;
   and MGM_BG_6( ZN_row3, A2_inv_for_AOI22_X2, B1_inv_for_AOI22_X2 );
   wire ZN_row4;
   and MGM_BG_7( ZN_row4, A2_inv_for_AOI22_X2, B2_inv_for_AOI22_X2 );
   or MGM_BG_8( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4 );


endmodule
`endcelldefine



`celldefine
module BUF_X1_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module BUF_X12_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module BUF_X16_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module BUF_X2_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module BUF_X4_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module BUF_X8_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module CLKBUF_X1_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module CLKBUF_X12_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module CLKBUF_X16_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module CLKBUF_X2_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module CLKBUF_X4_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine



`celldefine
module CLKBUF_X8_func( I, Z );
   input I;
   output Z;
   buf MGM_BG_0( Z, I );


endmodule
`endcelldefine


primitive UDP_typical_MGM_IQ_LATCH_UDP( Q, C, P, CK, D );
   output Q;
   reg Q;
   input C, P, CK, D; 
   table 
   //C  P CK  D   :  Q  :  Q 
  0  0  0  *  :  ?  :  -;
  0  0  (?0)  ?  :  ?  :  -;
  0  (?0)  0  ?  :  ?  :  -;
  (?0)  0  0  ?  :  ?  :  -;
  ?  0  1  0  :  ?  :  0;
  ?  0  ?  (?0)  :  0  :  0;
  ?  (?0)  ?  0  :  0  :  0;
  1  0  ?  ?  :  ?  :  0;
  0  ?  1  1  :  ?  :  1;
  0  ?  ?  (?1)  :  1  :  1;
  (?0)  ?  ?  1  :  1  :  1;
  0  1  ?  ?  :  ?  :  1;

endtable
endprimitive



`celldefine
module CLKGATETST_X1_func( TE, CLK, Q, E );
   input CLK, E, TE;
   output Q;
   not MGM_BG_0( MGM_EN0, CLK );
   or MGM_BG_1( MGM_D0, E, TE );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ2, 1'b0, 1'b0, MGM_EN0, MGM_D0 );
   and MGM_BG_2( Q, CLK, IQ2 );


endmodule
`endcelldefine



`celldefine
module DFFRNQ_X1_func( RN, D, CLK, Q );
   input CLK, D, RN;
   output Q;
   not MGM_BG_0( MGM_P0, RN );
   not MGM_BG_1( MGM_D0, IQ6 );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ1, 1'b0, MGM_P0, CLK, MGM_D0 );
   not MGM_BG_2( MGM_EN1, CLK );
   not MGM_BG_3( MGM_C1, RN );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ6, MGM_C1, 1'b0, MGM_EN1, D );
   not MGM_BG_4( Q, IQ1 );


endmodule
`endcelldefine



`celldefine
module DFFSNQ_X1_func( SN, D, CLK, Q );
   input CLK, D, SN;
   output Q;
   not MGM_BG_0( MGM_C0, SN );
   not MGM_BG_1( MGM_D0, IQ6 );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ1, MGM_C0, 1'b0, CLK, MGM_D0 );
   not MGM_BG_2( MGM_EN1, CLK );
   not MGM_BG_3( MGM_P1, SN );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ6, 1'b0, MGM_P1, MGM_EN1, D );
   not MGM_BG_4( Q, IQ1 );


endmodule
`endcelldefine



`celldefine
module FA_X1_func( CI, A, B, S, CO );
   input A, B, CI;
   output CO, S;
   wire CO_row1;
   and MGM_BG_0( CO_row1, A, B );
   wire CO_row2;
   and MGM_BG_1( CO_row2, A, CI );
   wire CO_row3;
   and MGM_BG_2( CO_row3, B, CI );
   or MGM_BG_3( CO, CO_row1, CO_row2, CO_row3 );
   wire S_row1;
   and MGM_BG_4( S_row1, A, B, CI );
   wire B_inv_for_FA_X1;
   not MGM_BG_5( B_inv_for_FA_X1, B );
   wire CI_inv_for_FA_X1;
   not MGM_BG_6( CI_inv_for_FA_X1, CI );
   wire S_row2;
   and MGM_BG_7( S_row2, B_inv_for_FA_X1, CI_inv_for_FA_X1, A );
   wire A_inv_for_FA_X1;
   not MGM_BG_8( A_inv_for_FA_X1, A );
   wire S_row3;
   and MGM_BG_9( S_row3, A_inv_for_FA_X1, CI_inv_for_FA_X1, B );
   wire S_row4;
   and MGM_BG_10( S_row4, A_inv_for_FA_X1, B_inv_for_FA_X1, CI );
   or MGM_BG_11( S, S_row1, S_row2, S_row3, S_row4 );


endmodule
`endcelldefine



`celldefine
module HA_X1_func( A, S, CO, B );
   input A, B;
   output CO, S;
   and MGM_BG_0( CO, A, B );
   wire B_inv_for_HA_X1;
   not MGM_BG_1( B_inv_for_HA_X1, B );
   wire S_row1;
   and MGM_BG_2( S_row1, B_inv_for_HA_X1, A );
   wire A_inv_for_HA_X1;
   not MGM_BG_3( A_inv_for_HA_X1, A );
   wire S_row2;
   and MGM_BG_4( S_row2, A_inv_for_HA_X1, B );
   or MGM_BG_5( S, S_row1, S_row2 );


endmodule
`endcelldefine



`celldefine
module INV_X1_func( I, ZN );
   input I;
   output ZN;
   not MGM_BG_0( ZN, I );


endmodule
`endcelldefine



`celldefine
module INV_X12_func( I, ZN );
   input I;
   output ZN;
   not MGM_BG_0( ZN, I );


endmodule
`endcelldefine



`celldefine
module INV_X2_func( I, ZN );
   input I;
   output ZN;
   not MGM_BG_0( ZN, I );


endmodule
`endcelldefine



`celldefine
module INV_X4_func( I, ZN );
   input I;
   output ZN;
   not MGM_BG_0( ZN, I );


endmodule
`endcelldefine



`celldefine
module INV_X8_func( I, ZN );
   input I;
   output ZN;
   not MGM_BG_0( ZN, I );


endmodule
`endcelldefine



`celldefine
module LHQ_X1_func( E, D, Q );
   input D, E;
   output Q;
   not MGM_BG_0( MGM_D0, D );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ1, 1'b0, 1'b0, E, MGM_D0 );
   not MGM_BG_1( Q, IQ1 );


endmodule
`endcelldefine



`celldefine
module MUX2_X1_func( S, I1, I0, Z );
   input I0, I1, S;
   output Z;
   wire Z_row1;
   and MGM_BG_0( Z_row1, I0, I1 );
   wire S_inv_for_MUX2_X1;
   not MGM_BG_1( S_inv_for_MUX2_X1, S );
   wire Z_row2;
   and MGM_BG_2( Z_row2, S_inv_for_MUX2_X1, I0 );
   wire Z_row3;
   and MGM_BG_3( Z_row3, I1, S );
   or MGM_BG_4( Z, Z_row1, Z_row2, Z_row3 );


endmodule
`endcelldefine



`celldefine
module NAND2_X1_func( A2, A1, ZN );
   input A1, A2;
   output ZN;
   wire A1_inv_for_NAND2_X1;
   not MGM_BG_0( A1_inv_for_NAND2_X1, A1 );
   wire A2_inv_for_NAND2_X1;
   not MGM_BG_1( A2_inv_for_NAND2_X1, A2 );
   or MGM_BG_2( ZN, A1_inv_for_NAND2_X1, A2_inv_for_NAND2_X1 );


endmodule
`endcelldefine



`celldefine
module NAND2_X2_func( ZN, A1, A2 );
   input A1, A2;
   output ZN;
   wire A1_inv_for_NAND2_X2;
   not MGM_BG_0( A1_inv_for_NAND2_X2, A1 );
   wire A2_inv_for_NAND2_X2;
   not MGM_BG_1( A2_inv_for_NAND2_X2, A2 );
   or MGM_BG_2( ZN, A1_inv_for_NAND2_X2, A2_inv_for_NAND2_X2 );


endmodule
`endcelldefine



`celldefine
module NAND3_X1_func( A3, A2, A1, ZN );
   input A1, A2, A3;
   output ZN;
   wire A1_inv_for_NAND3_X1;
   not MGM_BG_0( A1_inv_for_NAND3_X1, A1 );
   wire A2_inv_for_NAND3_X1;
   not MGM_BG_1( A2_inv_for_NAND3_X1, A2 );
   wire A3_inv_for_NAND3_X1;
   not MGM_BG_2( A3_inv_for_NAND3_X1, A3 );
   or MGM_BG_3( ZN, A1_inv_for_NAND3_X1, A2_inv_for_NAND3_X1, A3_inv_for_NAND3_X1 );


endmodule
`endcelldefine



`celldefine
module NAND3_X2_func( ZN, A3, A2, A1 );
   input A1, A2, A3;
   output ZN;
   wire A1_inv_for_NAND3_X2;
   not MGM_BG_0( A1_inv_for_NAND3_X2, A1 );
   wire A2_inv_for_NAND3_X2;
   not MGM_BG_1( A2_inv_for_NAND3_X2, A2 );
   wire A3_inv_for_NAND3_X2;
   not MGM_BG_2( A3_inv_for_NAND3_X2, A3 );
   or MGM_BG_3( ZN, A1_inv_for_NAND3_X2, A2_inv_for_NAND3_X2, A3_inv_for_NAND3_X2 );


endmodule
`endcelldefine



`celldefine
module NAND4_X1_func( A4, A2, A1, A3, ZN );
   input A1, A2, A3, A4;
   output ZN;
   wire A1_inv_for_NAND4_X1;
   not MGM_BG_0( A1_inv_for_NAND4_X1, A1 );
   wire A2_inv_for_NAND4_X1;
   not MGM_BG_1( A2_inv_for_NAND4_X1, A2 );
   wire A3_inv_for_NAND4_X1;
   not MGM_BG_2( A3_inv_for_NAND4_X1, A3 );
   wire A4_inv_for_NAND4_X1;
   not MGM_BG_3( A4_inv_for_NAND4_X1, A4 );
   or MGM_BG_4( ZN, A1_inv_for_NAND4_X1, A2_inv_for_NAND4_X1, A3_inv_for_NAND4_X1, A4_inv_for_NAND4_X1 );


endmodule
`endcelldefine



`celldefine
module NAND4_X2_func( A4, ZN, A3, A2, A1 );
   input A1, A2, A3, A4;
   output ZN;
   wire A1_inv_for_NAND4_X2;
   not MGM_BG_0( A1_inv_for_NAND4_X2, A1 );
   wire A2_inv_for_NAND4_X2;
   not MGM_BG_1( A2_inv_for_NAND4_X2, A2 );
   wire A3_inv_for_NAND4_X2;
   not MGM_BG_2( A3_inv_for_NAND4_X2, A3 );
   wire A4_inv_for_NAND4_X2;
   not MGM_BG_3( A4_inv_for_NAND4_X2, A4 );
   or MGM_BG_4( ZN, A1_inv_for_NAND4_X2, A2_inv_for_NAND4_X2, A3_inv_for_NAND4_X2, A4_inv_for_NAND4_X2 );


endmodule
`endcelldefine



`celldefine
module NOR2_X1_func( A2, A1, ZN );
   input A1, A2;
   output ZN;
   wire A1_inv_for_NOR2_X1;
   not MGM_BG_0( A1_inv_for_NOR2_X1, A1 );
   wire A2_inv_for_NOR2_X1;
   not MGM_BG_1( A2_inv_for_NOR2_X1, A2 );
   and MGM_BG_2( ZN, A1_inv_for_NOR2_X1, A2_inv_for_NOR2_X1 );


endmodule
`endcelldefine



`celldefine
module NOR2_X2_func( ZN, A1, A2 );
   input A1, A2;
   output ZN;
   wire A1_inv_for_NOR2_X2;
   not MGM_BG_0( A1_inv_for_NOR2_X2, A1 );
   wire A2_inv_for_NOR2_X2;
   not MGM_BG_1( A2_inv_for_NOR2_X2, A2 );
   and MGM_BG_2( ZN, A1_inv_for_NOR2_X2, A2_inv_for_NOR2_X2 );


endmodule
`endcelldefine



`celldefine
module NOR3_X1_func( A3, A2, A1, ZN );
   input A1, A2, A3;
   output ZN;
   wire A1_inv_for_NOR3_X1;
   not MGM_BG_0( A1_inv_for_NOR3_X1, A1 );
   wire A2_inv_for_NOR3_X1;
   not MGM_BG_1( A2_inv_for_NOR3_X1, A2 );
   wire A3_inv_for_NOR3_X1;
   not MGM_BG_2( A3_inv_for_NOR3_X1, A3 );
   and MGM_BG_3( ZN, A1_inv_for_NOR3_X1, A2_inv_for_NOR3_X1, A3_inv_for_NOR3_X1 );


endmodule
`endcelldefine



`celldefine
module NOR3_X2_func( ZN, A3, A2, A1 );
   input A1, A2, A3;
   output ZN;
   wire A1_inv_for_NOR3_X2;
   not MGM_BG_0( A1_inv_for_NOR3_X2, A1 );
   wire A2_inv_for_NOR3_X2;
   not MGM_BG_1( A2_inv_for_NOR3_X2, A2 );
   wire A3_inv_for_NOR3_X2;
   not MGM_BG_2( A3_inv_for_NOR3_X2, A3 );
   and MGM_BG_3( ZN, A1_inv_for_NOR3_X2, A2_inv_for_NOR3_X2, A3_inv_for_NOR3_X2 );


endmodule
`endcelldefine



`celldefine
module NOR4_X1_func( A4, A2, A1, A3, ZN );
   input A1, A2, A3, A4;
   output ZN;
   wire A1_inv_for_NOR4_X1;
   not MGM_BG_0( A1_inv_for_NOR4_X1, A1 );
   wire A2_inv_for_NOR4_X1;
   not MGM_BG_1( A2_inv_for_NOR4_X1, A2 );
   wire A3_inv_for_NOR4_X1;
   not MGM_BG_2( A3_inv_for_NOR4_X1, A3 );
   wire A4_inv_for_NOR4_X1;
   not MGM_BG_3( A4_inv_for_NOR4_X1, A4 );
   and MGM_BG_4( ZN, A1_inv_for_NOR4_X1, A2_inv_for_NOR4_X1, A3_inv_for_NOR4_X1, A4_inv_for_NOR4_X1 );


endmodule
`endcelldefine



`celldefine
module NOR4_X2_func( A3, A2, A1, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   wire A1_inv_for_NOR4_X2;
   not MGM_BG_0( A1_inv_for_NOR4_X2, A1 );
   wire A2_inv_for_NOR4_X2;
   not MGM_BG_1( A2_inv_for_NOR4_X2, A2 );
   wire A3_inv_for_NOR4_X2;
   not MGM_BG_2( A3_inv_for_NOR4_X2, A3 );
   wire A4_inv_for_NOR4_X2;
   not MGM_BG_3( A4_inv_for_NOR4_X2, A4 );
   and MGM_BG_4( ZN, A1_inv_for_NOR4_X2, A2_inv_for_NOR4_X2, A3_inv_for_NOR4_X2, A4_inv_for_NOR4_X2 );


endmodule
`endcelldefine



`celldefine
module OAI21_X1_func( A2, A1, B, ZN );
   input A1, A2, B;
   output ZN;
   wire A1_inv_for_OAI21_X1;
   not MGM_BG_0( A1_inv_for_OAI21_X1, A1 );
   wire A2_inv_for_OAI21_X1;
   not MGM_BG_1( A2_inv_for_OAI21_X1, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI21_X1, A2_inv_for_OAI21_X1 );
   wire B_inv_for_OAI21_X1;
   not MGM_BG_3( B_inv_for_OAI21_X1, B );
   or MGM_BG_4( ZN, ZN_row1, B_inv_for_OAI21_X1 );


endmodule
`endcelldefine



`celldefine
module OAI21_X2_func( B, A1, A2, ZN );
   input A1, A2, B;
   output ZN;
   wire A1_inv_for_OAI21_X2;
   not MGM_BG_0( A1_inv_for_OAI21_X2, A1 );
   wire A2_inv_for_OAI21_X2;
   not MGM_BG_1( A2_inv_for_OAI21_X2, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI21_X2, A2_inv_for_OAI21_X2 );
   wire B_inv_for_OAI21_X2;
   not MGM_BG_3( B_inv_for_OAI21_X2, B );
   or MGM_BG_4( ZN, ZN_row1, B_inv_for_OAI21_X2 );


endmodule
`endcelldefine



`celldefine
module OAI22_X1_func( B1, ZN, B2, A1, A2 );
   input A1, A2, B1, B2;
   output ZN;
   wire A1_inv_for_OAI22_X1;
   not MGM_BG_0( A1_inv_for_OAI22_X1, A1 );
   wire A2_inv_for_OAI22_X1;
   not MGM_BG_1( A2_inv_for_OAI22_X1, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI22_X1, A2_inv_for_OAI22_X1 );
   wire B1_inv_for_OAI22_X1;
   not MGM_BG_3( B1_inv_for_OAI22_X1, B1 );
   wire B2_inv_for_OAI22_X1;
   not MGM_BG_4( B2_inv_for_OAI22_X1, B2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, B1_inv_for_OAI22_X1, B2_inv_for_OAI22_X1 );
   or MGM_BG_6( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module OAI22_X2_func( B2, ZN, B1, A2, A1 );
   input A1, A2, B1, B2;
   output ZN;
   wire A1_inv_for_OAI22_X2;
   not MGM_BG_0( A1_inv_for_OAI22_X2, A1 );
   wire A2_inv_for_OAI22_X2;
   not MGM_BG_1( A2_inv_for_OAI22_X2, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI22_X2, A2_inv_for_OAI22_X2 );
   wire B1_inv_for_OAI22_X2;
   not MGM_BG_3( B1_inv_for_OAI22_X2, B1 );
   wire B2_inv_for_OAI22_X2;
   not MGM_BG_4( B2_inv_for_OAI22_X2, B2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, B1_inv_for_OAI22_X2, B2_inv_for_OAI22_X2 );
   or MGM_BG_6( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module OR2_X1_func( A2, A1, Z );
   input A1, A2;
   output Z;
   or MGM_BG_0( Z, A1, A2 );


endmodule
`endcelldefine



`celldefine
module OR2_X2_func( A2, A1, Z );
   input A1, A2;
   output Z;
   or MGM_BG_0( Z, A1, A2 );


endmodule
`endcelldefine



`celldefine
module OR3_X1_func( A3, A1, Z, A2 );
   input A1, A2, A3;
   output Z;
   or MGM_BG_0( Z, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module OR3_X2_func( A2, A1, A3, Z );
   input A1, A2, A3;
   output Z;
   or MGM_BG_0( Z, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module OR4_X1_func( A4, A1, Z, A3, A2 );
   input A1, A2, A3, A4;
   output Z;
   or MGM_BG_0( Z, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module OR4_X2_func( A3, A2, A4, A1, Z );
   input A1, A2, A3, A4;
   output Z;
   or MGM_BG_0( Z, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module SDFFRNQ_X1_func( RN, CLK, SE, SI, D, Q );
   input CLK, D, RN, SE, SI;
   output Q;
   not MGM_BG_0( MGM_P0, RN );
   not MGM_BG_1( MGM_D0, IQ6 );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ1, 1'b0, MGM_P0, CLK, MGM_D0 );
   not MGM_BG_2( MGM_EN1, CLK );
   not MGM_BG_3( MGM_C1, RN );
   wire SE_inv_for_SDFFRNQ_X1;
   not MGM_BG_4( SE_inv_for_SDFFRNQ_X1, SE );
   wire MGM_D1_row1;
   and MGM_BG_5( MGM_D1_row1, SE_inv_for_SDFFRNQ_X1, D );
   wire MGM_D1_row2;
   and MGM_BG_6( MGM_D1_row2, D, SI );
   wire MGM_D1_row3;
   and MGM_BG_7( MGM_D1_row3, SE, SI );
   or MGM_BG_8( MGM_D1, MGM_D1_row1, MGM_D1_row2, MGM_D1_row3 );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ6, MGM_C1, 1'b0, MGM_EN1, MGM_D1 );
   not MGM_BG_9( Q, IQ1 );


endmodule
`endcelldefine



`celldefine
module SDFFSNQ_X1_func( SN, CLK, SE, SI, D, Q );
   input CLK, D, SE, SI, SN;
   output Q;
   not MGM_BG_0( MGM_C0, SN );
   not MGM_BG_1( MGM_D0, IQ6 );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ1, MGM_C0, 1'b0, CLK, MGM_D0 );
   not MGM_BG_2( MGM_EN1, CLK );
   not MGM_BG_3( MGM_P1, SN );
   wire SE_inv_for_SDFFSNQ_X1;
   not MGM_BG_4( SE_inv_for_SDFFSNQ_X1, SE );
   wire MGM_D1_row1;
   and MGM_BG_5( MGM_D1_row1, SE_inv_for_SDFFSNQ_X1, D );
   wire MGM_D1_row2;
   and MGM_BG_6( MGM_D1_row2, D, SI );
   wire MGM_D1_row3;
   and MGM_BG_7( MGM_D1_row3, SE, SI );
   or MGM_BG_8( MGM_D1, MGM_D1_row1, MGM_D1_row2, MGM_D1_row3 );
   UDP_typical_MGM_IQ_LATCH_UDP( IQ6, 1'b0, MGM_P1, MGM_EN1, MGM_D1 );
   not MGM_BG_9( Q, IQ1 );


endmodule
`endcelldefine



`celldefine
module TBUF_X1_func( EN, I, Z );
   input EN, I;
   output Z;
   wire MGM_WB_0;
   wire MGM_WB_1;
   and MGM_BG_0( MGM_WB_0, EN, I );
   not MGM_BG_1( MGM_WB_1, EN );
   bufif0 MGM_BG_2( Z, MGM_WB_0,MGM_WB_1 );


endmodule
`endcelldefine



`celldefine
module TBUF_X16_func( EN, I, Z );
   input EN, I;
   output Z;
   wire MGM_WB_0;
   wire MGM_WB_1;
   and MGM_BG_0( MGM_WB_0, EN, I );
   not MGM_BG_1( MGM_WB_1, EN );
   bufif0 MGM_BG_2( Z, MGM_WB_0,MGM_WB_1 );


endmodule
`endcelldefine



`celldefine
module TBUF_X2_func( EN, I, Z );
   input EN, I;
   output Z;
   wire MGM_WB_0;
   wire MGM_WB_1;
   and MGM_BG_0( MGM_WB_0, EN, I );
   not MGM_BG_1( MGM_WB_1, EN );
   bufif0 MGM_BG_2( Z, MGM_WB_0,MGM_WB_1 );


endmodule
`endcelldefine



`celldefine
module TBUF_X4_func( I, EN, Z );
   input EN, I;
   output Z;
   wire MGM_WB_0;
   wire MGM_WB_1;
   and MGM_BG_0( MGM_WB_0, EN, I );
   not MGM_BG_1( MGM_WB_1, EN );
   bufif0 MGM_BG_2( Z, MGM_WB_0,MGM_WB_1 );


endmodule
`endcelldefine



`celldefine
module TBUF_X8_func( EN, I, Z );
   input EN, I;
   output Z;
   wire MGM_WB_0;
   wire MGM_WB_1;
   and MGM_BG_0( MGM_WB_0, EN, I );
   not MGM_BG_1( MGM_WB_1, EN );
   bufif0 MGM_BG_2( Z, MGM_WB_0,MGM_WB_1 );


endmodule
`endcelldefine



`celldefine
module XNOR2_X1_func( ZN, A1, A2 );
   input A1, A2;
   output ZN;
   wire ZN_row1;
   and MGM_BG_0( ZN_row1, A1, A2 );
   wire A1_inv_for_XNOR2_X1;
   not MGM_BG_1( A1_inv_for_XNOR2_X1, A1 );
   wire A2_inv_for_XNOR2_X1;
   not MGM_BG_2( A2_inv_for_XNOR2_X1, A2 );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, A1_inv_for_XNOR2_X1, A2_inv_for_XNOR2_X1 );
   or MGM_BG_4( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module XOR2_X1_func( Z, A1, A2 );
   input A1, A2;
   output Z;
   wire A2_inv_for_XOR2_X1;
   not MGM_BG_0( A2_inv_for_XOR2_X1, A2 );
   wire Z_row1;
   and MGM_BG_1( Z_row1, A2_inv_for_XOR2_X1, A1 );
   wire A1_inv_for_XOR2_X1;
   not MGM_BG_2( A1_inv_for_XOR2_X1, A1 );
   wire Z_row2;
   and MGM_BG_3( Z_row2, A1_inv_for_XOR2_X1, A2 );
   or MGM_BG_4( Z, Z_row1, Z_row2 );


endmodule
`endcelldefine
