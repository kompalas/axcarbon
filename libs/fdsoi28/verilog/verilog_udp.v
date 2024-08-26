

`timescale 1ns/1ps




`celldefine
module AND2_X1_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   and MGM_BG_0( ZN, A1, A2 );


endmodule
`endcelldefine



`celldefine
module AND2_X2_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   and MGM_BG_0( ZN, A1, A2 );


endmodule
`endcelldefine



`celldefine
module AND2_X4_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   and MGM_BG_0( ZN, A1, A2 );


endmodule
`endcelldefine



`celldefine
module AND3_X1_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   and MGM_BG_0( ZN, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module AND3_X2_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   and MGM_BG_0( ZN, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module AND3_X4_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   and MGM_BG_0( ZN, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module AND4_X1_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   and MGM_BG_0( ZN, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module AND4_X2_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   and MGM_BG_0( ZN, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module AND4_X4_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   and MGM_BG_0( ZN, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module AOI211_X1_func( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;
   wire A_inv_for_AOI211_X1;
   not MGM_BG_0( A_inv_for_AOI211_X1, A );
   wire B_inv_for_AOI211_X1;
   not MGM_BG_1( B_inv_for_AOI211_X1, B );
   wire C1_inv_for_AOI211_X1;
   not MGM_BG_2( C1_inv_for_AOI211_X1, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A_inv_for_AOI211_X1, B_inv_for_AOI211_X1, C1_inv_for_AOI211_X1 );
   wire C2_inv_for_AOI211_X1;
   not MGM_BG_4( C2_inv_for_AOI211_X1, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A_inv_for_AOI211_X1, B_inv_for_AOI211_X1, C2_inv_for_AOI211_X1 );
   or MGM_BG_6( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI211_X2_func( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;
   wire A_inv_for_AOI211_X2;
   not MGM_BG_0( A_inv_for_AOI211_X2, A );
   wire B_inv_for_AOI211_X2;
   not MGM_BG_1( B_inv_for_AOI211_X2, B );
   wire C1_inv_for_AOI211_X2;
   not MGM_BG_2( C1_inv_for_AOI211_X2, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A_inv_for_AOI211_X2, B_inv_for_AOI211_X2, C1_inv_for_AOI211_X2 );
   wire C2_inv_for_AOI211_X2;
   not MGM_BG_4( C2_inv_for_AOI211_X2, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A_inv_for_AOI211_X2, B_inv_for_AOI211_X2, C2_inv_for_AOI211_X2 );
   or MGM_BG_6( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI211_X4_func( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;
   wire A_inv_for_AOI211_X4;
   not MGM_BG_0( A_inv_for_AOI211_X4, A );
   wire B_inv_for_AOI211_X4;
   not MGM_BG_1( B_inv_for_AOI211_X4, B );
   wire C1_inv_for_AOI211_X4;
   not MGM_BG_2( C1_inv_for_AOI211_X4, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A_inv_for_AOI211_X4, B_inv_for_AOI211_X4, C1_inv_for_AOI211_X4 );
   wire C2_inv_for_AOI211_X4;
   not MGM_BG_4( C2_inv_for_AOI211_X4, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A_inv_for_AOI211_X4, B_inv_for_AOI211_X4, C2_inv_for_AOI211_X4 );
   or MGM_BG_6( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI21_X1_func( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;
   wire A_inv_for_AOI21_X1;
   not MGM_BG_0( A_inv_for_AOI21_X1, A );
   wire B1_inv_for_AOI21_X1;
   not MGM_BG_1( B1_inv_for_AOI21_X1, B1 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A_inv_for_AOI21_X1, B1_inv_for_AOI21_X1 );
   wire B2_inv_for_AOI21_X1;
   not MGM_BG_3( B2_inv_for_AOI21_X1, B2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A_inv_for_AOI21_X1, B2_inv_for_AOI21_X1 );
   or MGM_BG_5( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI21_X2_func( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;
   wire A_inv_for_AOI21_X2;
   not MGM_BG_0( A_inv_for_AOI21_X2, A );
   wire B1_inv_for_AOI21_X2;
   not MGM_BG_1( B1_inv_for_AOI21_X2, B1 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A_inv_for_AOI21_X2, B1_inv_for_AOI21_X2 );
   wire B2_inv_for_AOI21_X2;
   not MGM_BG_3( B2_inv_for_AOI21_X2, B2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A_inv_for_AOI21_X2, B2_inv_for_AOI21_X2 );
   or MGM_BG_5( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI21_X4_func( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;
   wire A_inv_for_AOI21_X4;
   not MGM_BG_0( A_inv_for_AOI21_X4, A );
   wire B1_inv_for_AOI21_X4;
   not MGM_BG_1( B1_inv_for_AOI21_X4, B1 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A_inv_for_AOI21_X4, B1_inv_for_AOI21_X4 );
   wire B2_inv_for_AOI21_X4;
   not MGM_BG_3( B2_inv_for_AOI21_X4, B2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A_inv_for_AOI21_X4, B2_inv_for_AOI21_X4 );
   or MGM_BG_5( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module AOI221_X1_func( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;
   wire A_inv_for_AOI221_X1;
   not MGM_BG_0( A_inv_for_AOI221_X1, A );
   wire B1_inv_for_AOI221_X1;
   not MGM_BG_1( B1_inv_for_AOI221_X1, B1 );
   wire C1_inv_for_AOI221_X1;
   not MGM_BG_2( C1_inv_for_AOI221_X1, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A_inv_for_AOI221_X1, B1_inv_for_AOI221_X1, C1_inv_for_AOI221_X1 );
   wire C2_inv_for_AOI221_X1;
   not MGM_BG_4( C2_inv_for_AOI221_X1, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A_inv_for_AOI221_X1, B1_inv_for_AOI221_X1, C2_inv_for_AOI221_X1 );
   wire B2_inv_for_AOI221_X1;
   not MGM_BG_6( B2_inv_for_AOI221_X1, B2 );
   wire ZN_row3;
   and MGM_BG_7( ZN_row3, A_inv_for_AOI221_X1, B2_inv_for_AOI221_X1, C1_inv_for_AOI221_X1 );
   wire ZN_row4;
   and MGM_BG_8( ZN_row4, A_inv_for_AOI221_X1, B2_inv_for_AOI221_X1, C2_inv_for_AOI221_X1 );
   or MGM_BG_9( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4 );


endmodule
`endcelldefine



`celldefine
module AOI221_X2_func( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;
   wire A_inv_for_AOI221_X2;
   not MGM_BG_0( A_inv_for_AOI221_X2, A );
   wire B1_inv_for_AOI221_X2;
   not MGM_BG_1( B1_inv_for_AOI221_X2, B1 );
   wire C1_inv_for_AOI221_X2;
   not MGM_BG_2( C1_inv_for_AOI221_X2, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A_inv_for_AOI221_X2, B1_inv_for_AOI221_X2, C1_inv_for_AOI221_X2 );
   wire C2_inv_for_AOI221_X2;
   not MGM_BG_4( C2_inv_for_AOI221_X2, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A_inv_for_AOI221_X2, B1_inv_for_AOI221_X2, C2_inv_for_AOI221_X2 );
   wire B2_inv_for_AOI221_X2;
   not MGM_BG_6( B2_inv_for_AOI221_X2, B2 );
   wire ZN_row3;
   and MGM_BG_7( ZN_row3, A_inv_for_AOI221_X2, B2_inv_for_AOI221_X2, C1_inv_for_AOI221_X2 );
   wire ZN_row4;
   and MGM_BG_8( ZN_row4, A_inv_for_AOI221_X2, B2_inv_for_AOI221_X2, C2_inv_for_AOI221_X2 );
   or MGM_BG_9( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4 );


endmodule
`endcelldefine



`celldefine
module AOI221_X4_func( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;
   wire A_inv_for_AOI221_X4;
   not MGM_BG_0( A_inv_for_AOI221_X4, A );
   wire B1_inv_for_AOI221_X4;
   not MGM_BG_1( B1_inv_for_AOI221_X4, B1 );
   wire C1_inv_for_AOI221_X4;
   not MGM_BG_2( C1_inv_for_AOI221_X4, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A_inv_for_AOI221_X4, B1_inv_for_AOI221_X4, C1_inv_for_AOI221_X4 );
   wire C2_inv_for_AOI221_X4;
   not MGM_BG_4( C2_inv_for_AOI221_X4, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A_inv_for_AOI221_X4, B1_inv_for_AOI221_X4, C2_inv_for_AOI221_X4 );
   wire B2_inv_for_AOI221_X4;
   not MGM_BG_6( B2_inv_for_AOI221_X4, B2 );
   wire ZN_row3;
   and MGM_BG_7( ZN_row3, A_inv_for_AOI221_X4, B2_inv_for_AOI221_X4, C1_inv_for_AOI221_X4 );
   wire ZN_row4;
   and MGM_BG_8( ZN_row4, A_inv_for_AOI221_X4, B2_inv_for_AOI221_X4, C2_inv_for_AOI221_X4 );
   or MGM_BG_9( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4 );


endmodule
`endcelldefine



`celldefine
module AOI222_X1_func( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;
   wire A1_inv_for_AOI222_X1;
   not MGM_BG_0( A1_inv_for_AOI222_X1, A1 );
   wire B1_inv_for_AOI222_X1;
   not MGM_BG_1( B1_inv_for_AOI222_X1, B1 );
   wire C1_inv_for_AOI222_X1;
   not MGM_BG_2( C1_inv_for_AOI222_X1, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A1_inv_for_AOI222_X1, B1_inv_for_AOI222_X1, C1_inv_for_AOI222_X1 );
   wire C2_inv_for_AOI222_X1;
   not MGM_BG_4( C2_inv_for_AOI222_X1, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A1_inv_for_AOI222_X1, B1_inv_for_AOI222_X1, C2_inv_for_AOI222_X1 );
   wire B2_inv_for_AOI222_X1;
   not MGM_BG_6( B2_inv_for_AOI222_X1, B2 );
   wire ZN_row3;
   and MGM_BG_7( ZN_row3, A1_inv_for_AOI222_X1, B2_inv_for_AOI222_X1, C1_inv_for_AOI222_X1 );
   wire ZN_row4;
   and MGM_BG_8( ZN_row4, A1_inv_for_AOI222_X1, B2_inv_for_AOI222_X1, C2_inv_for_AOI222_X1 );
   wire A2_inv_for_AOI222_X1;
   not MGM_BG_9( A2_inv_for_AOI222_X1, A2 );
   wire ZN_row5;
   and MGM_BG_10( ZN_row5, A2_inv_for_AOI222_X1, B1_inv_for_AOI222_X1, C1_inv_for_AOI222_X1 );
   wire ZN_row6;
   and MGM_BG_11( ZN_row6, A2_inv_for_AOI222_X1, B1_inv_for_AOI222_X1, C2_inv_for_AOI222_X1 );
   wire ZN_row7;
   and MGM_BG_12( ZN_row7, A2_inv_for_AOI222_X1, B2_inv_for_AOI222_X1, C1_inv_for_AOI222_X1 );
   wire ZN_row8;
   and MGM_BG_13( ZN_row8, A2_inv_for_AOI222_X1, B2_inv_for_AOI222_X1, C2_inv_for_AOI222_X1 );
   or MGM_BG_14( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4, ZN_row5, ZN_row6, ZN_row7, ZN_row8 );


endmodule
`endcelldefine



`celldefine
module AOI222_X2_func( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;
   wire A1_inv_for_AOI222_X2;
   not MGM_BG_0( A1_inv_for_AOI222_X2, A1 );
   wire B1_inv_for_AOI222_X2;
   not MGM_BG_1( B1_inv_for_AOI222_X2, B1 );
   wire C1_inv_for_AOI222_X2;
   not MGM_BG_2( C1_inv_for_AOI222_X2, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A1_inv_for_AOI222_X2, B1_inv_for_AOI222_X2, C1_inv_for_AOI222_X2 );
   wire C2_inv_for_AOI222_X2;
   not MGM_BG_4( C2_inv_for_AOI222_X2, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A1_inv_for_AOI222_X2, B1_inv_for_AOI222_X2, C2_inv_for_AOI222_X2 );
   wire B2_inv_for_AOI222_X2;
   not MGM_BG_6( B2_inv_for_AOI222_X2, B2 );
   wire ZN_row3;
   and MGM_BG_7( ZN_row3, A1_inv_for_AOI222_X2, B2_inv_for_AOI222_X2, C1_inv_for_AOI222_X2 );
   wire ZN_row4;
   and MGM_BG_8( ZN_row4, A1_inv_for_AOI222_X2, B2_inv_for_AOI222_X2, C2_inv_for_AOI222_X2 );
   wire A2_inv_for_AOI222_X2;
   not MGM_BG_9( A2_inv_for_AOI222_X2, A2 );
   wire ZN_row5;
   and MGM_BG_10( ZN_row5, A2_inv_for_AOI222_X2, B1_inv_for_AOI222_X2, C1_inv_for_AOI222_X2 );
   wire ZN_row6;
   and MGM_BG_11( ZN_row6, A2_inv_for_AOI222_X2, B1_inv_for_AOI222_X2, C2_inv_for_AOI222_X2 );
   wire ZN_row7;
   and MGM_BG_12( ZN_row7, A2_inv_for_AOI222_X2, B2_inv_for_AOI222_X2, C1_inv_for_AOI222_X2 );
   wire ZN_row8;
   and MGM_BG_13( ZN_row8, A2_inv_for_AOI222_X2, B2_inv_for_AOI222_X2, C2_inv_for_AOI222_X2 );
   or MGM_BG_14( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4, ZN_row5, ZN_row6, ZN_row7, ZN_row8 );


endmodule
`endcelldefine



`celldefine
module AOI222_X4_func( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;
   wire A1_inv_for_AOI222_X4;
   not MGM_BG_0( A1_inv_for_AOI222_X4, A1 );
   wire B1_inv_for_AOI222_X4;
   not MGM_BG_1( B1_inv_for_AOI222_X4, B1 );
   wire C1_inv_for_AOI222_X4;
   not MGM_BG_2( C1_inv_for_AOI222_X4, C1 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A1_inv_for_AOI222_X4, B1_inv_for_AOI222_X4, C1_inv_for_AOI222_X4 );
   wire C2_inv_for_AOI222_X4;
   not MGM_BG_4( C2_inv_for_AOI222_X4, C2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, A1_inv_for_AOI222_X4, B1_inv_for_AOI222_X4, C2_inv_for_AOI222_X4 );
   wire B2_inv_for_AOI222_X4;
   not MGM_BG_6( B2_inv_for_AOI222_X4, B2 );
   wire ZN_row3;
   and MGM_BG_7( ZN_row3, A1_inv_for_AOI222_X4, B2_inv_for_AOI222_X4, C1_inv_for_AOI222_X4 );
   wire ZN_row4;
   and MGM_BG_8( ZN_row4, A1_inv_for_AOI222_X4, B2_inv_for_AOI222_X4, C2_inv_for_AOI222_X4 );
   wire A2_inv_for_AOI222_X4;
   not MGM_BG_9( A2_inv_for_AOI222_X4, A2 );
   wire ZN_row5;
   and MGM_BG_10( ZN_row5, A2_inv_for_AOI222_X4, B1_inv_for_AOI222_X4, C1_inv_for_AOI222_X4 );
   wire ZN_row6;
   and MGM_BG_11( ZN_row6, A2_inv_for_AOI222_X4, B1_inv_for_AOI222_X4, C2_inv_for_AOI222_X4 );
   wire ZN_row7;
   and MGM_BG_12( ZN_row7, A2_inv_for_AOI222_X4, B2_inv_for_AOI222_X4, C1_inv_for_AOI222_X4 );
   wire ZN_row8;
   and MGM_BG_13( ZN_row8, A2_inv_for_AOI222_X4, B2_inv_for_AOI222_X4, C2_inv_for_AOI222_X4 );
   or MGM_BG_14( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4, ZN_row5, ZN_row6, ZN_row7, ZN_row8 );


endmodule
`endcelldefine



`celldefine
module AOI22_X1_func( A1, A2, B1, B2, ZN );
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
module AOI22_X2_func( A1, A2, B1, B2, ZN );
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
module AOI22_X4_func( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;
   wire A1_inv_for_AOI22_X4;
   not MGM_BG_0( A1_inv_for_AOI22_X4, A1 );
   wire B1_inv_for_AOI22_X4;
   not MGM_BG_1( B1_inv_for_AOI22_X4, B1 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_AOI22_X4, B1_inv_for_AOI22_X4 );
   wire B2_inv_for_AOI22_X4;
   not MGM_BG_3( B2_inv_for_AOI22_X4, B2 );
   wire ZN_row2;
   and MGM_BG_4( ZN_row2, A1_inv_for_AOI22_X4, B2_inv_for_AOI22_X4 );
   wire A2_inv_for_AOI22_X4;
   not MGM_BG_5( A2_inv_for_AOI22_X4, A2 );
   wire ZN_row3;
   and MGM_BG_6( ZN_row3, A2_inv_for_AOI22_X4, B1_inv_for_AOI22_X4 );
   wire ZN_row4;
   and MGM_BG_7( ZN_row4, A2_inv_for_AOI22_X4, B2_inv_for_AOI22_X4 );
   or MGM_BG_8( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4 );


endmodule
`endcelldefine



`celldefine
module BUF_X1_func( A, Z );
   input A;
   output Z;
   buf MGM_BG_0( Z, A );


endmodule
`endcelldefine



`celldefine
module BUF_X16_func( A, Z );
   input A;
   output Z;
   buf MGM_BG_0( Z, A );


endmodule
`endcelldefine



`celldefine
module BUF_X2_func( A, Z );
   input A;
   output Z;
   buf MGM_BG_0( Z, A );


endmodule
`endcelldefine



`celldefine
module BUF_X4_func( A, Z );
   input A;
   output Z;
   buf MGM_BG_0( Z, A );


endmodule
`endcelldefine



`celldefine
module BUF_X8_func( A, Z );
   input A;
   output Z;
   buf MGM_BG_0( Z, A );


endmodule
`endcelldefine


primitive UDP_typical_MGM_IQ_FF_UDP( Q, C, P, CK, D );
   output Q;
   reg Q;
   input C, P, CK, D; 
   table 
   //C  P CK  D   :  Q  :  Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  0;
  ?  0  p  0  :  0  :  0;
  1  0  ?  ?  :  ?  :  0;
  0  ?  r  1  :  ?  :  1;
  0  ?  p  1  :  1  :  1;
  0  1  ?  ?  :  ?  :  1;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;

endtable
endprimitive


primitive UDP_typical_MGM_IQN_FF_UDP( Q, C, P, CK, D );
   output Q;
   reg Q;
   input C, P, CK, D; 
   table 
   //C  P CK  D   :  Q  :  Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  1;
  ?  0  p  0  :  1  :  1;
  1  0  ?  ?  :  ?  :  1;
  0  ?  r  1  :  ?  :  0;
  0  ?  p  1  :  0  :  0;
  0  1  ?  ?  :  ?  :  0;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;

endtable
endprimitive



`celldefine
module DFF_X1_func( D, CK, Q, QN );
   input CK, D;
   output Q, QN;
   UDP_typical_MGM_IQ_FF_UDP( IQ, 1'b0, 1'b0, CK, D );
   UDP_typical_MGM_IQN_FF_UDP( IQN, 1'b0, 1'b0, CK, D );
   buf MGM_BG_0( Q, IQ );
   buf MGM_BG_1( QN, IQN );


endmodule
`endcelldefine



`celldefine
module DFF_X2_func( D, CK, Q, QN );
   input CK, D;
   output Q, QN;
   UDP_typical_MGM_IQ_FF_UDP( IQ, 1'b0, 1'b0, CK, D );
   UDP_typical_MGM_IQN_FF_UDP( IQN, 1'b0, 1'b0, CK, D );
   buf MGM_BG_0( Q, IQ );
   buf MGM_BG_1( QN, IQN );


endmodule
`endcelldefine



`celldefine
module FA_X1_func( A, B, CI, CO, S );
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
module HA_X1_func( A, B, CO, S );
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
module INV_X1_func( A, ZN );
   input A;
   output ZN;
   not MGM_BG_0( ZN, A );


endmodule
`endcelldefine



`celldefine
module INV_X16_func( A, ZN );
   input A;
   output ZN;
   not MGM_BG_0( ZN, A );


endmodule
`endcelldefine



`celldefine
module INV_X2_func( A, ZN );
   input A;
   output ZN;
   not MGM_BG_0( ZN, A );


endmodule
`endcelldefine



`celldefine
module INV_X4_func( A, ZN );
   input A;
   output ZN;
   not MGM_BG_0( ZN, A );


endmodule
`endcelldefine



`celldefine
module INV_X8_func( A, ZN );
   input A;
   output ZN;
   not MGM_BG_0( ZN, A );


endmodule
`endcelldefine



`celldefine
module MUX2_X1_func( A, B, S, Z );
   input A, B, S;
   output Z;
   wire Z_row1;
   and MGM_BG_0( Z_row1, A, B );
   wire S_inv_for_MUX2_X1;
   not MGM_BG_1( S_inv_for_MUX2_X1, S );
   wire Z_row2;
   and MGM_BG_2( Z_row2, S_inv_for_MUX2_X1, A );
   wire Z_row3;
   and MGM_BG_3( Z_row3, B, S );
   or MGM_BG_4( Z, Z_row1, Z_row2, Z_row3 );


endmodule
`endcelldefine



`celldefine
module MUX2_X2_func( A, B, S, Z );
   input A, B, S;
   output Z;
   wire Z_row1;
   and MGM_BG_0( Z_row1, A, B );
   wire S_inv_for_MUX2_X2;
   not MGM_BG_1( S_inv_for_MUX2_X2, S );
   wire Z_row2;
   and MGM_BG_2( Z_row2, S_inv_for_MUX2_X2, A );
   wire Z_row3;
   and MGM_BG_3( Z_row3, B, S );
   or MGM_BG_4( Z, Z_row1, Z_row2, Z_row3 );


endmodule
`endcelldefine



`celldefine
module NAND2_X1_func( A1, A2, ZN );
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
module NAND2_X2_func( A1, A2, ZN );
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
module NAND2_X4_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   wire A1_inv_for_NAND2_X4;
   not MGM_BG_0( A1_inv_for_NAND2_X4, A1 );
   wire A2_inv_for_NAND2_X4;
   not MGM_BG_1( A2_inv_for_NAND2_X4, A2 );
   or MGM_BG_2( ZN, A1_inv_for_NAND2_X4, A2_inv_for_NAND2_X4 );


endmodule
`endcelldefine



`celldefine
module NAND3_X1_func( A1, A2, A3, ZN );
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
module NAND3_X2_func( A1, A2, A3, ZN );
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
module NAND3_X4_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   wire A1_inv_for_NAND3_X4;
   not MGM_BG_0( A1_inv_for_NAND3_X4, A1 );
   wire A2_inv_for_NAND3_X4;
   not MGM_BG_1( A2_inv_for_NAND3_X4, A2 );
   wire A3_inv_for_NAND3_X4;
   not MGM_BG_2( A3_inv_for_NAND3_X4, A3 );
   or MGM_BG_3( ZN, A1_inv_for_NAND3_X4, A2_inv_for_NAND3_X4, A3_inv_for_NAND3_X4 );


endmodule
`endcelldefine



`celldefine
module NAND4_X1_func( A1, A2, A3, A4, ZN );
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
module NAND4_X2_func( A1, A2, A3, A4, ZN );
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
module NAND4_X4_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   wire A1_inv_for_NAND4_X4;
   not MGM_BG_0( A1_inv_for_NAND4_X4, A1 );
   wire A2_inv_for_NAND4_X4;
   not MGM_BG_1( A2_inv_for_NAND4_X4, A2 );
   wire A3_inv_for_NAND4_X4;
   not MGM_BG_2( A3_inv_for_NAND4_X4, A3 );
   wire A4_inv_for_NAND4_X4;
   not MGM_BG_3( A4_inv_for_NAND4_X4, A4 );
   or MGM_BG_4( ZN, A1_inv_for_NAND4_X4, A2_inv_for_NAND4_X4, A3_inv_for_NAND4_X4, A4_inv_for_NAND4_X4 );


endmodule
`endcelldefine



`celldefine
module NOR2_X1_func( A1, A2, ZN );
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
module NOR2_X2_func( A1, A2, ZN );
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
module NOR2_X4_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   wire A1_inv_for_NOR2_X4;
   not MGM_BG_0( A1_inv_for_NOR2_X4, A1 );
   wire A2_inv_for_NOR2_X4;
   not MGM_BG_1( A2_inv_for_NOR2_X4, A2 );
   and MGM_BG_2( ZN, A1_inv_for_NOR2_X4, A2_inv_for_NOR2_X4 );


endmodule
`endcelldefine



`celldefine
module NOR3_X1_func( A1, A2, A3, ZN );
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
module NOR3_X2_func( A1, A2, A3, ZN );
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
module NOR3_X4_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   wire A1_inv_for_NOR3_X4;
   not MGM_BG_0( A1_inv_for_NOR3_X4, A1 );
   wire A2_inv_for_NOR3_X4;
   not MGM_BG_1( A2_inv_for_NOR3_X4, A2 );
   wire A3_inv_for_NOR3_X4;
   not MGM_BG_2( A3_inv_for_NOR3_X4, A3 );
   and MGM_BG_3( ZN, A1_inv_for_NOR3_X4, A2_inv_for_NOR3_X4, A3_inv_for_NOR3_X4 );


endmodule
`endcelldefine



`celldefine
module NOR4_X1_func( A1, A2, A3, A4, ZN );
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
module NOR4_X2_func( A1, A2, A3, A4, ZN );
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
module NOR4_X4_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   wire A1_inv_for_NOR4_X4;
   not MGM_BG_0( A1_inv_for_NOR4_X4, A1 );
   wire A2_inv_for_NOR4_X4;
   not MGM_BG_1( A2_inv_for_NOR4_X4, A2 );
   wire A3_inv_for_NOR4_X4;
   not MGM_BG_2( A3_inv_for_NOR4_X4, A3 );
   wire A4_inv_for_NOR4_X4;
   not MGM_BG_3( A4_inv_for_NOR4_X4, A4 );
   and MGM_BG_4( ZN, A1_inv_for_NOR4_X4, A2_inv_for_NOR4_X4, A3_inv_for_NOR4_X4, A4_inv_for_NOR4_X4 );


endmodule
`endcelldefine



`celldefine
module OAI211_X1_func( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;
   wire A_inv_for_OAI211_X1;
   not MGM_BG_0( A_inv_for_OAI211_X1, A );
   wire B_inv_for_OAI211_X1;
   not MGM_BG_1( B_inv_for_OAI211_X1, B );
   wire C1_inv_for_OAI211_X1;
   not MGM_BG_2( C1_inv_for_OAI211_X1, C1 );
   wire C2_inv_for_OAI211_X1;
   not MGM_BG_3( C2_inv_for_OAI211_X1, C2 );
   wire ZN_row3;
   and MGM_BG_4( ZN_row3, C1_inv_for_OAI211_X1, C2_inv_for_OAI211_X1 );
   or MGM_BG_5( ZN, A_inv_for_OAI211_X1, B_inv_for_OAI211_X1, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI211_X2_func( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;
   wire A_inv_for_OAI211_X2;
   not MGM_BG_0( A_inv_for_OAI211_X2, A );
   wire B_inv_for_OAI211_X2;
   not MGM_BG_1( B_inv_for_OAI211_X2, B );
   wire C1_inv_for_OAI211_X2;
   not MGM_BG_2( C1_inv_for_OAI211_X2, C1 );
   wire C2_inv_for_OAI211_X2;
   not MGM_BG_3( C2_inv_for_OAI211_X2, C2 );
   wire ZN_row3;
   and MGM_BG_4( ZN_row3, C1_inv_for_OAI211_X2, C2_inv_for_OAI211_X2 );
   or MGM_BG_5( ZN, A_inv_for_OAI211_X2, B_inv_for_OAI211_X2, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI211_X4_func( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;
   wire A_inv_for_OAI211_X4;
   not MGM_BG_0( A_inv_for_OAI211_X4, A );
   wire B_inv_for_OAI211_X4;
   not MGM_BG_1( B_inv_for_OAI211_X4, B );
   wire C1_inv_for_OAI211_X4;
   not MGM_BG_2( C1_inv_for_OAI211_X4, C1 );
   wire C2_inv_for_OAI211_X4;
   not MGM_BG_3( C2_inv_for_OAI211_X4, C2 );
   wire ZN_row3;
   and MGM_BG_4( ZN_row3, C1_inv_for_OAI211_X4, C2_inv_for_OAI211_X4 );
   or MGM_BG_5( ZN, A_inv_for_OAI211_X4, B_inv_for_OAI211_X4, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI21_X1_func( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;
   wire A_inv_for_OAI21_X1;
   not MGM_BG_0( A_inv_for_OAI21_X1, A );
   wire B1_inv_for_OAI21_X1;
   not MGM_BG_1( B1_inv_for_OAI21_X1, B1 );
   wire B2_inv_for_OAI21_X1;
   not MGM_BG_2( B2_inv_for_OAI21_X1, B2 );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, B1_inv_for_OAI21_X1, B2_inv_for_OAI21_X1 );
   or MGM_BG_4( ZN, A_inv_for_OAI21_X1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module OAI21_X2_func( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;
   wire A_inv_for_OAI21_X2;
   not MGM_BG_0( A_inv_for_OAI21_X2, A );
   wire B1_inv_for_OAI21_X2;
   not MGM_BG_1( B1_inv_for_OAI21_X2, B1 );
   wire B2_inv_for_OAI21_X2;
   not MGM_BG_2( B2_inv_for_OAI21_X2, B2 );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, B1_inv_for_OAI21_X2, B2_inv_for_OAI21_X2 );
   or MGM_BG_4( ZN, A_inv_for_OAI21_X2, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module OAI21_X4_func( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;
   wire A_inv_for_OAI21_X4;
   not MGM_BG_0( A_inv_for_OAI21_X4, A );
   wire B1_inv_for_OAI21_X4;
   not MGM_BG_1( B1_inv_for_OAI21_X4, B1 );
   wire B2_inv_for_OAI21_X4;
   not MGM_BG_2( B2_inv_for_OAI21_X4, B2 );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, B1_inv_for_OAI21_X4, B2_inv_for_OAI21_X4 );
   or MGM_BG_4( ZN, A_inv_for_OAI21_X4, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module OAI221_X1_func( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;
   wire A_inv_for_OAI221_X1;
   not MGM_BG_0( A_inv_for_OAI221_X1, A );
   wire B1_inv_for_OAI221_X1;
   not MGM_BG_1( B1_inv_for_OAI221_X1, B1 );
   wire B2_inv_for_OAI221_X1;
   not MGM_BG_2( B2_inv_for_OAI221_X1, B2 );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, B1_inv_for_OAI221_X1, B2_inv_for_OAI221_X1 );
   wire C1_inv_for_OAI221_X1;
   not MGM_BG_4( C1_inv_for_OAI221_X1, C1 );
   wire C2_inv_for_OAI221_X1;
   not MGM_BG_5( C2_inv_for_OAI221_X1, C2 );
   wire ZN_row3;
   and MGM_BG_6( ZN_row3, C1_inv_for_OAI221_X1, C2_inv_for_OAI221_X1 );
   or MGM_BG_7( ZN, A_inv_for_OAI221_X1, ZN_row2, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI221_X2_func( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;
   wire A_inv_for_OAI221_X2;
   not MGM_BG_0( A_inv_for_OAI221_X2, A );
   wire B1_inv_for_OAI221_X2;
   not MGM_BG_1( B1_inv_for_OAI221_X2, B1 );
   wire B2_inv_for_OAI221_X2;
   not MGM_BG_2( B2_inv_for_OAI221_X2, B2 );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, B1_inv_for_OAI221_X2, B2_inv_for_OAI221_X2 );
   wire C1_inv_for_OAI221_X2;
   not MGM_BG_4( C1_inv_for_OAI221_X2, C1 );
   wire C2_inv_for_OAI221_X2;
   not MGM_BG_5( C2_inv_for_OAI221_X2, C2 );
   wire ZN_row3;
   and MGM_BG_6( ZN_row3, C1_inv_for_OAI221_X2, C2_inv_for_OAI221_X2 );
   or MGM_BG_7( ZN, A_inv_for_OAI221_X2, ZN_row2, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI221_X4_func( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;
   wire A_inv_for_OAI221_X4;
   not MGM_BG_0( A_inv_for_OAI221_X4, A );
   wire B1_inv_for_OAI221_X4;
   not MGM_BG_1( B1_inv_for_OAI221_X4, B1 );
   wire B2_inv_for_OAI221_X4;
   not MGM_BG_2( B2_inv_for_OAI221_X4, B2 );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, B1_inv_for_OAI221_X4, B2_inv_for_OAI221_X4 );
   wire C1_inv_for_OAI221_X4;
   not MGM_BG_4( C1_inv_for_OAI221_X4, C1 );
   wire C2_inv_for_OAI221_X4;
   not MGM_BG_5( C2_inv_for_OAI221_X4, C2 );
   wire ZN_row3;
   and MGM_BG_6( ZN_row3, C1_inv_for_OAI221_X4, C2_inv_for_OAI221_X4 );
   or MGM_BG_7( ZN, A_inv_for_OAI221_X4, ZN_row2, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI222_X1_func( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;
   wire A1_inv_for_OAI222_X1;
   not MGM_BG_0( A1_inv_for_OAI222_X1, A1 );
   wire A2_inv_for_OAI222_X1;
   not MGM_BG_1( A2_inv_for_OAI222_X1, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI222_X1, A2_inv_for_OAI222_X1 );
   wire B1_inv_for_OAI222_X1;
   not MGM_BG_3( B1_inv_for_OAI222_X1, B1 );
   wire B2_inv_for_OAI222_X1;
   not MGM_BG_4( B2_inv_for_OAI222_X1, B2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, B1_inv_for_OAI222_X1, B2_inv_for_OAI222_X1 );
   wire C1_inv_for_OAI222_X1;
   not MGM_BG_6( C1_inv_for_OAI222_X1, C1 );
   wire C2_inv_for_OAI222_X1;
   not MGM_BG_7( C2_inv_for_OAI222_X1, C2 );
   wire ZN_row3;
   and MGM_BG_8( ZN_row3, C1_inv_for_OAI222_X1, C2_inv_for_OAI222_X1 );
   or MGM_BG_9( ZN, ZN_row1, ZN_row2, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI222_X2_func( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;
   wire A1_inv_for_OAI222_X2;
   not MGM_BG_0( A1_inv_for_OAI222_X2, A1 );
   wire A2_inv_for_OAI222_X2;
   not MGM_BG_1( A2_inv_for_OAI222_X2, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI222_X2, A2_inv_for_OAI222_X2 );
   wire B1_inv_for_OAI222_X2;
   not MGM_BG_3( B1_inv_for_OAI222_X2, B1 );
   wire B2_inv_for_OAI222_X2;
   not MGM_BG_4( B2_inv_for_OAI222_X2, B2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, B1_inv_for_OAI222_X2, B2_inv_for_OAI222_X2 );
   wire C1_inv_for_OAI222_X2;
   not MGM_BG_6( C1_inv_for_OAI222_X2, C1 );
   wire C2_inv_for_OAI222_X2;
   not MGM_BG_7( C2_inv_for_OAI222_X2, C2 );
   wire ZN_row3;
   and MGM_BG_8( ZN_row3, C1_inv_for_OAI222_X2, C2_inv_for_OAI222_X2 );
   or MGM_BG_9( ZN, ZN_row1, ZN_row2, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI222_X4_func( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;
   wire A1_inv_for_OAI222_X4;
   not MGM_BG_0( A1_inv_for_OAI222_X4, A1 );
   wire A2_inv_for_OAI222_X4;
   not MGM_BG_1( A2_inv_for_OAI222_X4, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI222_X4, A2_inv_for_OAI222_X4 );
   wire B1_inv_for_OAI222_X4;
   not MGM_BG_3( B1_inv_for_OAI222_X4, B1 );
   wire B2_inv_for_OAI222_X4;
   not MGM_BG_4( B2_inv_for_OAI222_X4, B2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, B1_inv_for_OAI222_X4, B2_inv_for_OAI222_X4 );
   wire C1_inv_for_OAI222_X4;
   not MGM_BG_6( C1_inv_for_OAI222_X4, C1 );
   wire C2_inv_for_OAI222_X4;
   not MGM_BG_7( C2_inv_for_OAI222_X4, C2 );
   wire ZN_row3;
   and MGM_BG_8( ZN_row3, C1_inv_for_OAI222_X4, C2_inv_for_OAI222_X4 );
   or MGM_BG_9( ZN, ZN_row1, ZN_row2, ZN_row3 );


endmodule
`endcelldefine



`celldefine
module OAI22_X1_func( A1, A2, B1, B2, ZN );
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
module OAI22_X2_func( A1, A2, B1, B2, ZN );
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
module OAI22_X4_func( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;
   wire A1_inv_for_OAI22_X4;
   not MGM_BG_0( A1_inv_for_OAI22_X4, A1 );
   wire A2_inv_for_OAI22_X4;
   not MGM_BG_1( A2_inv_for_OAI22_X4, A2 );
   wire ZN_row1;
   and MGM_BG_2( ZN_row1, A1_inv_for_OAI22_X4, A2_inv_for_OAI22_X4 );
   wire B1_inv_for_OAI22_X4;
   not MGM_BG_3( B1_inv_for_OAI22_X4, B1 );
   wire B2_inv_for_OAI22_X4;
   not MGM_BG_4( B2_inv_for_OAI22_X4, B2 );
   wire ZN_row2;
   and MGM_BG_5( ZN_row2, B1_inv_for_OAI22_X4, B2_inv_for_OAI22_X4 );
   or MGM_BG_6( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module OAI33_X1_func( A1, A2, A3, B1, B2, B3, ZN );
   input A1, A2, A3, B1, B2, B3;
   output ZN;
   wire A1_inv_for_OAI33_X1;
   not MGM_BG_0( A1_inv_for_OAI33_X1, A1 );
   wire A2_inv_for_OAI33_X1;
   not MGM_BG_1( A2_inv_for_OAI33_X1, A2 );
   wire A3_inv_for_OAI33_X1;
   not MGM_BG_2( A3_inv_for_OAI33_X1, A3 );
   wire ZN_row1;
   and MGM_BG_3( ZN_row1, A1_inv_for_OAI33_X1, A2_inv_for_OAI33_X1, A3_inv_for_OAI33_X1 );
   wire B1_inv_for_OAI33_X1;
   not MGM_BG_4( B1_inv_for_OAI33_X1, B1 );
   wire B2_inv_for_OAI33_X1;
   not MGM_BG_5( B2_inv_for_OAI33_X1, B2 );
   wire B3_inv_for_OAI33_X1;
   not MGM_BG_6( B3_inv_for_OAI33_X1, B3 );
   wire ZN_row2;
   and MGM_BG_7( ZN_row2, B1_inv_for_OAI33_X1, B2_inv_for_OAI33_X1, B3_inv_for_OAI33_X1 );
   or MGM_BG_8( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module OR2_X1_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   or MGM_BG_0( ZN, A1, A2 );


endmodule
`endcelldefine



`celldefine
module OR2_X2_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   or MGM_BG_0( ZN, A1, A2 );


endmodule
`endcelldefine



`celldefine
module OR2_X4_func( A1, A2, ZN );
   input A1, A2;
   output ZN;
   or MGM_BG_0( ZN, A1, A2 );


endmodule
`endcelldefine



`celldefine
module OR3_X1_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   or MGM_BG_0( ZN, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module OR3_X2_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   or MGM_BG_0( ZN, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module OR3_X4_func( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;
   or MGM_BG_0( ZN, A1, A2, A3 );


endmodule
`endcelldefine



`celldefine
module OR4_X1_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   or MGM_BG_0( ZN, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module OR4_X2_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   or MGM_BG_0( ZN, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module OR4_X4_func( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;
   or MGM_BG_0( ZN, A1, A2, A3, A4 );


endmodule
`endcelldefine



`celldefine
module XNOR2_X1_func( A, B, ZN );
   input A, B;
   output ZN;
   wire ZN_row1;
   and MGM_BG_0( ZN_row1, A, B );
   wire A_inv_for_XNOR2_X1;
   not MGM_BG_1( A_inv_for_XNOR2_X1, A );
   wire B_inv_for_XNOR2_X1;
   not MGM_BG_2( B_inv_for_XNOR2_X1, B );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, A_inv_for_XNOR2_X1, B_inv_for_XNOR2_X1 );
   or MGM_BG_4( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module XNOR2_X2_func( A, B, ZN );
   input A, B;
   output ZN;
   wire ZN_row1;
   and MGM_BG_0( ZN_row1, A, B );
   wire A_inv_for_XNOR2_X2;
   not MGM_BG_1( A_inv_for_XNOR2_X2, A );
   wire B_inv_for_XNOR2_X2;
   not MGM_BG_2( B_inv_for_XNOR2_X2, B );
   wire ZN_row2;
   and MGM_BG_3( ZN_row2, A_inv_for_XNOR2_X2, B_inv_for_XNOR2_X2 );
   or MGM_BG_4( ZN, ZN_row1, ZN_row2 );


endmodule
`endcelldefine



`celldefine
module XOR2_X1_func( A, B, Z );
   input A, B;
   output Z;
   wire B_inv_for_XOR2_X1;
   not MGM_BG_0( B_inv_for_XOR2_X1, B );
   wire Z_row1;
   and MGM_BG_1( Z_row1, B_inv_for_XOR2_X1, A );
   wire A_inv_for_XOR2_X1;
   not MGM_BG_2( A_inv_for_XOR2_X1, A );
   wire Z_row2;
   and MGM_BG_3( Z_row2, A_inv_for_XOR2_X1, B );
   or MGM_BG_4( Z, Z_row1, Z_row2 );


endmodule
`endcelldefine



`celldefine
module XOR2_X2_func( A, B, Z );
   input A, B;
   output Z;
   wire B_inv_for_XOR2_X2;
   not MGM_BG_0( B_inv_for_XOR2_X2, B );
   wire Z_row1;
   and MGM_BG_1( Z_row1, B_inv_for_XOR2_X2, A );
   wire A_inv_for_XOR2_X2;
   not MGM_BG_2( A_inv_for_XOR2_X2, A );
   wire Z_row2;
   and MGM_BG_3( Z_row2, A_inv_for_XOR2_X2, B );
   or MGM_BG_4( Z, Z_row1, Z_row2 );


endmodule
`endcelldefine
