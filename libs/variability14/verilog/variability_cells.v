
`timescale 1ns/1ps



`celldefine
module AND2_X1( A2, A1, Z );
   input A1, A2;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   AND2_X1_func AND2_X1_behav_inst(.A2(A2),.A1(A1),.Z(Z));
   
`else
   AND2_X1_func AND2_X1_inst(.A2(A2),.A1(A1),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AND2_X2( A2, A1, Z );
   input A1, A2;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   AND2_X2_func AND2_X2_behav_inst(.A2(A2),.A1(A1),.Z(Z));
   
`else
   AND2_X2_func AND2_X2_inst(.A2(A2),.A1(A1),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AND3_X1( A3, A2, A1, Z );
   input A1, A2, A3;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   AND3_X1_func AND3_X1_behav_inst(.A3(A3),.A2(A2),.A1(A1),.Z(Z));
   
`else
   AND3_X1_func AND3_X1_inst(.A3(A3),.A2(A2),.A1(A1),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AND3_X2( A1, A2, A3, Z );
   input A1, A2, A3;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   AND3_X2_func AND3_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.Z(Z));
   
`else
   AND3_X2_func AND3_X2_inst(.A1(A1),.A2(A2),.A3(A3),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AND4_X1( A4, A1, Z, A3, A2 );
   input A1, A2, A3, A4;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   AND4_X1_func AND4_X1_behav_inst(.A4(A4),.A1(A1),.Z(Z),.A3(A3),.A2(A2));
   
`else
   AND4_X1_func AND4_X1_inst(.A4(A4),.A1(A1),.Z(Z),.A3(A3),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      // comb arc A4 --> Z
      (A4 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AND4_X2( A4, A3, A2, A1, Z );
   input A1, A2, A3, A4;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   AND4_X2_func AND4_X2_behav_inst(.A4(A4),.A3(A3),.A2(A2),.A1(A1),.Z(Z));
   
`else
   AND4_X2_func AND4_X2_inst(.A4(A4),.A3(A3),.A2(A2),.A1(A1),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      // comb arc A4 --> Z
      (A4 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI21_X1( ZN, B, A2, A1 );
   input A1, A2, B;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI21_X1_func AOI21_X1_behav_inst(.ZN(ZN),.B(B),.A2(A2),.A1(A1));
   
`else
   AOI21_X1_func AOI21_X1_inst(.ZN(ZN),.B(B),.A2(A2),.A1(A1));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI21_X2( A1, ZN, B, A2 );
   input A1, A2, B;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI21_X2_func AOI21_X2_behav_inst(.A1(A1),.ZN(ZN),.B(B),.A2(A2));
   
`else
   AOI21_X2_func AOI21_X2_inst(.A1(A1),.ZN(ZN),.B(B),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI22_X1( B2, A1, A2, B1, ZN );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI22_X1_func AOI22_X1_behav_inst(.B2(B2),.A1(A1),.A2(A2),.B1(B1),.ZN(ZN));
   
`else
   AOI22_X1_func AOI22_X1_inst(.B2(B2),.A1(A1),.A2(A2),.B1(B1),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI22_X2( ZN, B2, B1, A2, A1 );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI22_X2_func AOI22_X2_behav_inst(.ZN(ZN),.B2(B2),.B1(B1),.A2(A2),.A1(A1));
   
`else
   AOI22_X2_func AOI22_X2_inst(.ZN(ZN),.B2(B2),.B1(B1),.A2(A2),.A1(A1));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X1( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X1_func BUF_X1_behav_inst(.I(I),.Z(Z));
   
`else
   BUF_X1_func BUF_X1_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X12( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X12_func BUF_X12_behav_inst(.I(I),.Z(Z));
   
`else
   BUF_X12_func BUF_X12_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X16( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X16_func BUF_X16_behav_inst(.I(I),.Z(Z));
   
`else
   BUF_X16_func BUF_X16_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X2( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X2_func BUF_X2_behav_inst(.I(I),.Z(Z));
   
`else
   BUF_X2_func BUF_X2_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X4( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X4_func BUF_X4_behav_inst(.I(I),.Z(Z));
   
`else
   BUF_X4_func BUF_X4_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X8( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X8_func BUF_X8_behav_inst(.I(I),.Z(Z));
   
`else
   BUF_X8_func BUF_X8_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module CLKBUF_X1( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   CLKBUF_X1_func CLKBUF_X1_behav_inst(.I(I),.Z(Z));
   
`else
   CLKBUF_X1_func CLKBUF_X1_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module CLKBUF_X12( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   CLKBUF_X12_func CLKBUF_X12_behav_inst(.I(I),.Z(Z));
   
`else
   CLKBUF_X12_func CLKBUF_X12_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module CLKBUF_X16( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   CLKBUF_X16_func CLKBUF_X16_behav_inst(.I(I),.Z(Z));
   
`else
   CLKBUF_X16_func CLKBUF_X16_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module CLKBUF_X2( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   CLKBUF_X2_func CLKBUF_X2_behav_inst(.I(I),.Z(Z));
   
`else
   CLKBUF_X2_func CLKBUF_X2_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module CLKBUF_X4( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   CLKBUF_X4_func CLKBUF_X4_behav_inst(.I(I),.Z(Z));
   
`else
   CLKBUF_X4_func CLKBUF_X4_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module CLKBUF_X8( I, Z );
   input I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   CLKBUF_X8_func CLKBUF_X8_behav_inst(.I(I),.Z(Z));
   
`else
   CLKBUF_X8_func CLKBUF_X8_inst(.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module CLKGATETST_X1( TE, CLK, Q, E );
   input CLK, E, TE;
   output Q;

`ifdef FUNCTIONAL  //  functional //
   CLKGATETST_X1_func CLKGATETST_X1_behav_inst(.TE(TE),.CLK(CLK),.Q(Q),.E(E));
   
`else
   CLKGATETST_X1_func CLKGATETST_X1_inst(.TE(TE),.CLK(CLK),.Q(Q),.E(E));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc CLK --> Q
      (CLK => Q) = (1.0,1.0);
      
      // hold E-HL CLK-LH
      $hold(posedge CLK,negedge E,1.0);
      
      // hold E-LH CLK-LH
      $hold(posedge CLK,posedge E,1.0);
      
      // setup E-HL CLK-LH
      $setup(negedge E,posedge CLK,1.0);
      
      // setup E-LH CLK-LH
      $setup(posedge E,posedge CLK,1.0);
      
      // hold TE-HL CLK-LH
      $hold(posedge CLK,negedge TE,1.0);
      
      // hold TE-LH CLK-LH
      $hold(posedge CLK,posedge TE,1.0);
      
      // setup TE-HL CLK-LH
      $setup(negedge TE,posedge CLK,1.0);
      
      // setup TE-LH CLK-LH
      $setup(posedge TE,posedge CLK,1.0);
      
      // mpw CLK_hl 
      $width(negedge CLK,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module DFFRNQ_X1( RN, D, CLK, Q );
   input CLK, D, RN;
   output Q;

`ifdef FUNCTIONAL  //  functional //
   DFFRNQ_X1_func DFFRNQ_X1_behav_inst(.RN(RN),.D(D),.CLK(CLK),.Q(Q));
   
`else
   DFFRNQ_X1_func DFFRNQ_X1_inst(.RN(RN),.D(D),.CLK(CLK),.Q(Q));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // seq arc CLK --> Q
      (posedge CLK => (Q : D))  = (1.0,1.0);
      
      // seq arc RN --> Q
      (RN => Q)  = (1.0,1.0);
      
      // hold D-HL CLK-LH
      $hold(posedge CLK,negedge D,1.0);
      
      // hold D-LH CLK-LH
      $hold(posedge CLK,posedge D,1.0);
      
      // setup D-HL CLK-LH
      $setup(negedge D,posedge CLK,1.0);
      
      // setup D-LH CLK-LH
      $setup(posedge D,posedge CLK,1.0);
      
      // recovery RN-LH CLK-LH
      $recovery(posedge RN,posedge CLK,1.0);
      
      // removal RN-LH CLK-LH
      $removal(posedge RN,posedge CLK,1.0);
      
      // mpw CLK_lh 
      $width(posedge CLK,1.0,0);
      
      // mpw CLK_hl 
      $width(negedge CLK,1.0,0);
      
      // mpw RN_hl 
      $width(negedge RN,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module DFFSNQ_X1( SN, D, CLK, Q );
   input CLK, D, SN;
   output Q;

`ifdef FUNCTIONAL  //  functional //
   DFFSNQ_X1_func DFFSNQ_X1_behav_inst(.SN(SN),.D(D),.CLK(CLK),.Q(Q));
   
`else
   DFFSNQ_X1_func DFFSNQ_X1_inst(.SN(SN),.D(D),.CLK(CLK),.Q(Q));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // seq arc CLK --> Q
      (posedge CLK => (Q : D))  = (1.0,1.0);
      
      // seq arc SN --> Q
      (SN => Q)  = (1.0,1.0);
      
      // hold D-HL CLK-LH
      $hold(posedge CLK,negedge D,1.0);
      
      // hold D-LH CLK-LH
      $hold(posedge CLK,posedge D,1.0);
      
      // setup D-HL CLK-LH
      $setup(negedge D,posedge CLK,1.0);
      
      // setup D-LH CLK-LH
      $setup(posedge D,posedge CLK,1.0);
      
      // recovery SN-LH CLK-LH
      $recovery(posedge SN,posedge CLK,1.0);
      
      // removal SN-LH CLK-LH
      $removal(posedge SN,posedge CLK,1.0);
      
      // mpw CLK_lh 
      $width(posedge CLK,1.0,0);
      
      // mpw CLK_hl 
      $width(negedge CLK,1.0,0);
      
      // mpw SN_hl 
      $width(negedge SN,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module FA_X1( CI, A, B, CO, S );
   input A, B, CI;
   output CO, S;

`ifdef FUNCTIONAL  //  functional //
   FA_X1_func FA_X1_behav_inst(.CI(CI),.A(A),.B(B),.CO(CO),.S(S));
   
`else
   FA_X1_func FA_X1_inst(.CI(CI),.A(A),.B(B),.CO(CO),.S(S));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> CO
      (A => CO) = (1.0,1.0);
      
      // comb arc B --> CO
      (B => CO) = (1.0,1.0);
      
      // comb arc CI --> CO
      (CI => CO) = (1.0,1.0);
      
      ifnone
      // comb arc posedge A --> (S:A)
      (posedge A => (S:A)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A --> (S:A)
      (negedge A => (S:A)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge B --> (S:B)
      (posedge B => (S:B)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge B --> (S:B)
      (negedge B => (S:B)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge CI --> (S:CI)
      (posedge CI => (S:CI)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge CI --> (S:CI)
      (negedge CI => (S:CI)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module HA_X1( A, S, CO, B );
   input A, B;
   output CO, S;

`ifdef FUNCTIONAL  //  functional //
   HA_X1_func HA_X1_behav_inst(.A(A),.S(S),.CO(CO),.B(B));
   
`else
   HA_X1_func HA_X1_inst(.A(A),.S(S),.CO(CO),.B(B));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> CO
      (A => CO) = (1.0,1.0);
      
      // comb arc B --> CO
      (B => CO) = (1.0,1.0);
      
      ifnone
      // comb arc posedge A --> (S:A)
      (posedge A => (S:A)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A --> (S:A)
      (negedge A => (S:A)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge B --> (S:B)
      (posedge B => (S:B)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge B --> (S:B)
      (negedge B => (S:B)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X1( I, ZN );
   input I;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X1_func INV_X1_behav_inst(.I(I),.ZN(ZN));
   
`else
   INV_X1_func INV_X1_inst(.I(I),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> ZN
      (I => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X12( I, ZN );
   input I;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X12_func INV_X12_behav_inst(.I(I),.ZN(ZN));
   
`else
   INV_X12_func INV_X12_inst(.I(I),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> ZN
      (I => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X2( I, ZN );
   input I;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X2_func INV_X2_behav_inst(.I(I),.ZN(ZN));
   
`else
   INV_X2_func INV_X2_inst(.I(I),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> ZN
      (I => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X4( I, ZN );
   input I;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X4_func INV_X4_behav_inst(.I(I),.ZN(ZN));
   
`else
   INV_X4_func INV_X4_inst(.I(I),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> ZN
      (I => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X8( I, ZN );
   input I;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X8_func INV_X8_behav_inst(.I(I),.ZN(ZN));
   
`else
   INV_X8_func INV_X8_inst(.I(I),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I --> ZN
      (I => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module LHQ_X1( E, D, Q );
   input D, E;
   output Q;

`ifdef FUNCTIONAL  //  functional //
   LHQ_X1_func LHQ_X1_behav_inst(.E(E),.D(D),.Q(Q));
   
`else
   LHQ_X1_func LHQ_X1_inst(.E(E),.D(D),.Q(Q));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc D --> Q
      (D => Q) = (1.0,1.0);
      
      // seq arc E --> Q
      (posedge E => (Q : D))  = (1.0,1.0);
      
      // hold D-HL E-HL
      $hold(negedge E,negedge D,1.0);
      
      // hold D-LH E-HL
      $hold(negedge E,posedge D,1.0);
      
      // setup D-HL E-HL
      $setup(negedge D,negedge E,1.0);
      
      // setup D-LH E-HL
      $setup(posedge D,negedge E,1.0);
      
      // mpw E_lh 
      $width(posedge E,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module MUX2_X1( S, I1, I0, Z );
   input I0, I1, S;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   MUX2_X1_func MUX2_X1_behav_inst(.S(S),.I1(I1),.I0(I0),.Z(Z));
   
`else
   MUX2_X1_func MUX2_X1_inst(.S(S),.I1(I1),.I0(I0),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc I0 --> Z
      (I0 => Z) = (1.0,1.0);
      
      // comb arc I1 --> Z
      (I1 => Z) = (1.0,1.0);
      
      ifnone
      // comb arc posedge S --> (Z:S)
      (posedge S => (Z:S)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge S --> (Z:S)
      (negedge S => (Z:S)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NAND2_X1( A2, A1, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND2_X1_func NAND2_X1_behav_inst(.A2(A2),.A1(A1),.ZN(ZN));
   
`else
   NAND2_X1_func NAND2_X1_inst(.A2(A2),.A1(A1),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NAND2_X2( ZN, A1, A2 );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND2_X2_func NAND2_X2_behav_inst(.ZN(ZN),.A1(A1),.A2(A2));
   
`else
   NAND2_X2_func NAND2_X2_inst(.ZN(ZN),.A1(A1),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NAND3_X1( A3, A2, A1, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND3_X1_func NAND3_X1_behav_inst(.A3(A3),.A2(A2),.A1(A1),.ZN(ZN));
   
`else
   NAND3_X1_func NAND3_X1_inst(.A3(A3),.A2(A2),.A1(A1),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NAND3_X2( ZN, A3, A2, A1 );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND3_X2_func NAND3_X2_behav_inst(.ZN(ZN),.A3(A3),.A2(A2),.A1(A1));
   
`else
   NAND3_X2_func NAND3_X2_inst(.ZN(ZN),.A3(A3),.A2(A2),.A1(A1));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NAND4_X1( A4, A2, A1, A3, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND4_X1_func NAND4_X1_behav_inst(.A4(A4),.A2(A2),.A1(A1),.A3(A3),.ZN(ZN));
   
`else
   NAND4_X1_func NAND4_X1_inst(.A4(A4),.A2(A2),.A1(A1),.A3(A3),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      // comb arc A4 --> ZN
      (A4 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NAND4_X2( A4, ZN, A3, A2, A1 );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND4_X2_func NAND4_X2_behav_inst(.A4(A4),.ZN(ZN),.A3(A3),.A2(A2),.A1(A1));
   
`else
   NAND4_X2_func NAND4_X2_inst(.A4(A4),.ZN(ZN),.A3(A3),.A2(A2),.A1(A1));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      // comb arc A4 --> ZN
      (A4 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NOR2_X1( A2, A1, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR2_X1_func NOR2_X1_behav_inst(.A2(A2),.A1(A1),.ZN(ZN));
   
`else
   NOR2_X1_func NOR2_X1_inst(.A2(A2),.A1(A1),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NOR2_X2( ZN, A1, A2 );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR2_X2_func NOR2_X2_behav_inst(.ZN(ZN),.A1(A1),.A2(A2));
   
`else
   NOR2_X2_func NOR2_X2_inst(.ZN(ZN),.A1(A1),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NOR3_X1( A3, A2, A1, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR3_X1_func NOR3_X1_behav_inst(.A3(A3),.A2(A2),.A1(A1),.ZN(ZN));
   
`else
   NOR3_X1_func NOR3_X1_inst(.A3(A3),.A2(A2),.A1(A1),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NOR3_X2( ZN, A3, A2, A1 );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR3_X2_func NOR3_X2_behav_inst(.ZN(ZN),.A3(A3),.A2(A2),.A1(A1));
   
`else
   NOR3_X2_func NOR3_X2_inst(.ZN(ZN),.A3(A3),.A2(A2),.A1(A1));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NOR4_X1( A4, A2, A1, A3, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR4_X1_func NOR4_X1_behav_inst(.A4(A4),.A2(A2),.A1(A1),.A3(A3),.ZN(ZN));
   
`else
   NOR4_X1_func NOR4_X1_inst(.A4(A4),.A2(A2),.A1(A1),.A3(A3),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      // comb arc A4 --> ZN
      (A4 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module NOR4_X2( A3, A2, A1, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR4_X2_func NOR4_X2_behav_inst(.A3(A3),.A2(A2),.A1(A1),.A4(A4),.ZN(ZN));
   
`else
   NOR4_X2_func NOR4_X2_inst(.A3(A3),.A2(A2),.A1(A1),.A4(A4),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc A3 --> ZN
      (A3 => ZN) = (1.0,1.0);
      
      // comb arc A4 --> ZN
      (A4 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI21_X1( A2, A1, B, ZN );
   input A1, A2, B;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI21_X1_func OAI21_X1_behav_inst(.A2(A2),.A1(A1),.B(B),.ZN(ZN));
   
`else
   OAI21_X1_func OAI21_X1_inst(.A2(A2),.A1(A1),.B(B),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI21_X2( B, A1, A2, ZN );
   input A1, A2, B;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI21_X2_func OAI21_X2_behav_inst(.B(B),.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   OAI21_X2_func OAI21_X2_inst(.B(B),.A1(A1),.A2(A2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI22_X1( B1, ZN, B2, A1, A2 );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI22_X1_func OAI22_X1_behav_inst(.B1(B1),.ZN(ZN),.B2(B2),.A1(A1),.A2(A2));
   
`else
   OAI22_X1_func OAI22_X1_inst(.B1(B1),.ZN(ZN),.B2(B2),.A1(A1),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI22_X2( B2, ZN, B1, A2, A1 );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI22_X2_func OAI22_X2_behav_inst(.B2(B2),.ZN(ZN),.B1(B1),.A2(A2),.A1(A1));
   
`else
   OAI22_X2_func OAI22_X2_inst(.B2(B2),.ZN(ZN),.B1(B1),.A2(A2),.A1(A1));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> ZN
      (A1 => ZN) = (1.0,1.0);
      
      // comb arc A2 --> ZN
      (A2 => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OR2_X1( A2, A1, Z );
   input A1, A2;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   OR2_X1_func OR2_X1_behav_inst(.A2(A2),.A1(A1),.Z(Z));
   
`else
   OR2_X1_func OR2_X1_inst(.A2(A2),.A1(A1),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OR2_X2( A2, A1, Z );
   input A1, A2;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   OR2_X2_func OR2_X2_behav_inst(.A2(A2),.A1(A1),.Z(Z));
   
`else
   OR2_X2_func OR2_X2_inst(.A2(A2),.A1(A1),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OR3_X1( A3, A1, Z, A2 );
   input A1, A2, A3;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   OR3_X1_func OR3_X1_behav_inst(.A3(A3),.A1(A1),.Z(Z),.A2(A2));
   
`else
   OR3_X1_func OR3_X1_inst(.A3(A3),.A1(A1),.Z(Z),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OR3_X2( A2, A1, A3, Z );
   input A1, A2, A3;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   OR3_X2_func OR3_X2_behav_inst(.A2(A2),.A1(A1),.A3(A3),.Z(Z));
   
`else
   OR3_X2_func OR3_X2_inst(.A2(A2),.A1(A1),.A3(A3),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OR4_X1( A4, A1, Z, A3, A2 );
   input A1, A2, A3, A4;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   OR4_X1_func OR4_X1_behav_inst(.A4(A4),.A1(A1),.Z(Z),.A3(A3),.A2(A2));
   
`else
   OR4_X1_func OR4_X1_inst(.A4(A4),.A1(A1),.Z(Z),.A3(A3),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      // comb arc A4 --> Z
      (A4 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OR4_X2( A3, A2, A4, A1, Z );
   input A1, A2, A3, A4;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   OR4_X2_func OR4_X2_behav_inst(.A3(A3),.A2(A2),.A4(A4),.A1(A1),.Z(Z));
   
`else
   OR4_X2_func OR4_X2_inst(.A3(A3),.A2(A2),.A4(A4),.A1(A1),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A1 --> Z
      (A1 => Z) = (1.0,1.0);
      
      // comb arc A2 --> Z
      (A2 => Z) = (1.0,1.0);
      
      // comb arc A3 --> Z
      (A3 => Z) = (1.0,1.0);
      
      // comb arc A4 --> Z
      (A4 => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module SDFFRNQ_X1( RN, CLK, SE, SI, D, Q );
   input CLK, D, RN, SE, SI;
   output Q;

`ifdef FUNCTIONAL  //  functional //
   SDFFRNQ_X1_func SDFFRNQ_X1_behav_inst(.RN(RN),.CLK(CLK),.SE(SE),.SI(SI),.D(D),.Q(Q));
   
`else
   SDFFRNQ_X1_func SDFFRNQ_X1_inst(.RN(RN),.CLK(CLK),.SE(SE),.SI(SI),.D(D),.Q(Q));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // seq arc CLK --> Q
      (posedge CLK => (Q : D))  = (1.0,1.0);
      
      // seq arc RN --> Q
      (RN => Q)  = (1.0,1.0);
      
      // hold D-HL CLK-LH
      $hold(posedge CLK,negedge D,1.0);
      
      // hold D-LH CLK-LH
      $hold(posedge CLK,posedge D,1.0);
      
      // setup D-HL CLK-LH
      $setup(negedge D,posedge CLK,1.0);
      
      // setup D-LH CLK-LH
      $setup(posedge D,posedge CLK,1.0);
      
      // recovery RN-LH CLK-LH
      $recovery(posedge RN,posedge CLK,1.0);
      
      // removal RN-LH CLK-LH
      $removal(posedge RN,posedge CLK,1.0);
      
      // hold SE-HL CLK-LH
      $hold(posedge CLK,negedge SE,1.0);
      
      // hold SE-LH CLK-LH
      $hold(posedge CLK,posedge SE,1.0);
      
      // setup SE-HL CLK-LH
      $setup(negedge SE,posedge CLK,1.0);
      
      // setup SE-LH CLK-LH
      $setup(posedge SE,posedge CLK,1.0);
      
      // hold SI-HL CLK-LH
      $hold(posedge CLK,negedge SI,1.0);
      
      // hold SI-LH CLK-LH
      $hold(posedge CLK,posedge SI,1.0);
      
      // setup SI-HL CLK-LH
      $setup(negedge SI,posedge CLK,1.0);
      
      // setup SI-LH CLK-LH
      $setup(posedge SI,posedge CLK,1.0);
      
      // mpw CLK_lh 
      $width(posedge CLK,1.0,0);
      
      // mpw CLK_hl 
      $width(negedge CLK,1.0,0);
      
      // mpw RN_hl 
      $width(negedge RN,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module SDFFSNQ_X1( SN, CLK, SE, SI, D, Q );
   input CLK, D, SE, SI, SN;
   output Q;

`ifdef FUNCTIONAL  //  functional //
   SDFFSNQ_X1_func SDFFSNQ_X1_behav_inst(.SN(SN),.CLK(CLK),.SE(SE),.SI(SI),.D(D),.Q(Q));
   
`else
   SDFFSNQ_X1_func SDFFSNQ_X1_inst(.SN(SN),.CLK(CLK),.SE(SE),.SI(SI),.D(D),.Q(Q));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // seq arc CLK --> Q
      (posedge CLK => (Q : D))  = (1.0,1.0);
      
      // seq arc SN --> Q
      (SN => Q)  = (1.0,1.0);
      
      // hold D-HL CLK-LH
      $hold(posedge CLK,negedge D,1.0);
      
      // hold D-LH CLK-LH
      $hold(posedge CLK,posedge D,1.0);
      
      // setup D-HL CLK-LH
      $setup(negedge D,posedge CLK,1.0);
      
      // setup D-LH CLK-LH
      $setup(posedge D,posedge CLK,1.0);
      
      // hold SE-HL CLK-LH
      $hold(posedge CLK,negedge SE,1.0);
      
      // hold SE-LH CLK-LH
      $hold(posedge CLK,posedge SE,1.0);
      
      // setup SE-HL CLK-LH
      $setup(negedge SE,posedge CLK,1.0);
      
      // setup SE-LH CLK-LH
      $setup(posedge SE,posedge CLK,1.0);
      
      // hold SI-HL CLK-LH
      $hold(posedge CLK,negedge SI,1.0);
      
      // hold SI-LH CLK-LH
      $hold(posedge CLK,posedge SI,1.0);
      
      // setup SI-HL CLK-LH
      $setup(negedge SI,posedge CLK,1.0);
      
      // setup SI-LH CLK-LH
      $setup(posedge SI,posedge CLK,1.0);
      
      // recovery SN-LH CLK-LH
      $recovery(posedge SN,posedge CLK,1.0);
      
      // removal SN-LH CLK-LH
      $removal(posedge SN,posedge CLK,1.0);
      
      // mpw CLK_lh 
      $width(posedge CLK,1.0,0);
      
      // mpw CLK_hl 
      $width(negedge CLK,1.0,0);
      
      // mpw SN_hl 
      $width(negedge SN,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module TBUF_X1( EN, I, Z );
   input EN, I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   TBUF_X1_func TBUF_X1_behav_inst(.EN(EN),.I(I),.Z(Z));
   
`else
   TBUF_X1_func TBUF_X1_inst(.EN(EN),.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc EN --> Z
      (EN => Z) = (1.0,1.0);
      
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module TBUF_X16( EN, I, Z );
   input EN, I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   TBUF_X16_func TBUF_X16_behav_inst(.EN(EN),.I(I),.Z(Z));
   
`else
   TBUF_X16_func TBUF_X16_inst(.EN(EN),.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc EN --> Z
      (EN => Z) = (1.0,1.0);
      
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module TBUF_X2( EN, I, Z );
   input EN, I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   TBUF_X2_func TBUF_X2_behav_inst(.EN(EN),.I(I),.Z(Z));
   
`else
   TBUF_X2_func TBUF_X2_inst(.EN(EN),.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc EN --> Z
      (EN => Z) = (1.0,1.0);
      
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module TBUF_X4( I, EN, Z );
   input EN, I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   TBUF_X4_func TBUF_X4_behav_inst(.I(I),.EN(EN),.Z(Z));
   
`else
   TBUF_X4_func TBUF_X4_inst(.I(I),.EN(EN),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc EN --> Z
      (EN => Z) = (1.0,1.0);
      
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module TBUF_X8( EN, I, Z );
   input EN, I;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   TBUF_X8_func TBUF_X8_behav_inst(.EN(EN),.I(I),.Z(Z));
   
`else
   TBUF_X8_func TBUF_X8_inst(.EN(EN),.I(I),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc EN --> Z
      (EN => Z) = (1.0,1.0);
      
      // comb arc I --> Z
      (I => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module XNOR2_X1( ZN, A1, A2 );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   XNOR2_X1_func XNOR2_X1_behav_inst(.ZN(ZN),.A1(A1),.A2(A2));
   
`else
   XNOR2_X1_func XNOR2_X1_inst(.ZN(ZN),.A1(A1),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      ifnone
      // comb arc posedge A1 --> (ZN:A1)
      (posedge A1 => (ZN:A1)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A1 --> (ZN:A1)
      (negedge A1 => (ZN:A1)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge A2 --> (ZN:A2)
      (posedge A2 => (ZN:A2)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A2 --> (ZN:A2)
      (negedge A2 => (ZN:A2)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module XOR2_X1( Z, A1, A2 );
   input A1, A2;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   XOR2_X1_func XOR2_X1_behav_inst(.Z(Z),.A1(A1),.A2(A2));
   
`else
   XOR2_X1_func XOR2_X1_inst(.Z(Z),.A1(A1),.A2(A2));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      ifnone
      // comb arc posedge A1 --> (Z:A1)
      (posedge A1 => (Z:A1)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A1 --> (Z:A1)
      (negedge A1 => (Z:A1)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge A2 --> (Z:A2)
      (posedge A2 => (Z:A2)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A2 --> (Z:A2)
      (negedge A2 => (Z:A2)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine
