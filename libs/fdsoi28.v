

`timescale 1ns/1ps



`celldefine
module AND2_X1( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND2_X1_func AND2_X1_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   AND2_X1_func AND2_X1_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module AND2_X2( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND2_X2_func AND2_X2_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   AND2_X2_func AND2_X2_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module AND2_X4( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND2_X4_func AND2_X4_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   AND2_X4_func AND2_X4_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module AND3_X1( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND3_X1_func AND3_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   AND3_X1_func AND3_X1_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module AND3_X2( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND3_X2_func AND3_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   AND3_X2_func AND3_X2_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module AND3_X4( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND3_X4_func AND3_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   AND3_X4_func AND3_X4_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module AND4_X1( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND4_X1_func AND4_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   AND4_X1_func AND4_X1_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module AND4_X2( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND4_X2_func AND4_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   AND4_X2_func AND4_X2_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module AND4_X4( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AND4_X4_func AND4_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   AND4_X4_func AND4_X4_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module AOI211_X1( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI211_X1_func AOI211_X1_behav_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI211_X1_func AOI211_X1_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI211_X2( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI211_X2_func AOI211_X2_behav_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI211_X2_func AOI211_X2_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI211_X4( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI211_X4_func AOI211_X4_behav_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI211_X4_func AOI211_X4_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI21_X1( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI21_X1_func AOI21_X1_behav_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   AOI21_X1_func AOI21_X1_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
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
module AOI21_X2( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI21_X2_func AOI21_X2_behav_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   AOI21_X2_func AOI21_X2_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
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
module AOI21_X4( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI21_X4_func AOI21_X4_behav_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   AOI21_X4_func AOI21_X4_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
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
module AOI221_X1( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI221_X1_func AOI221_X1_behav_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI221_X1_func AOI221_X1_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI221_X2( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI221_X2_func AOI221_X2_behav_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI221_X2_func AOI221_X2_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI221_X4( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI221_X4_func AOI221_X4_behav_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI221_X4_func AOI221_X4_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI222_X1( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI222_X1_func AOI222_X1_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI222_X1_func AOI222_X1_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
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
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI222_X2( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI222_X2_func AOI222_X2_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI222_X2_func AOI222_X2_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
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
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI222_X4( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI222_X4_func AOI222_X4_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   AOI222_X4_func AOI222_X4_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
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
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module AOI22_X1( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI22_X1_func AOI22_X1_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   AOI22_X1_func AOI22_X1_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
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
module AOI22_X2( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI22_X2_func AOI22_X2_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   AOI22_X2_func AOI22_X2_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
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
module AOI22_X4( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   AOI22_X4_func AOI22_X4_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   AOI22_X4_func AOI22_X4_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
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
module BUF_X1( A, Z );
   input A;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X1_func BUF_X1_behav_inst(.A(A),.Z(Z));
   
`else
   BUF_X1_func BUF_X1_inst(.A(A),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> Z
      (A => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X16( A, Z );
   input A;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X16_func BUF_X16_behav_inst(.A(A),.Z(Z));
   
`else
   BUF_X16_func BUF_X16_inst(.A(A),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> Z
      (A => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X2( A, Z );
   input A;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X2_func BUF_X2_behav_inst(.A(A),.Z(Z));
   
`else
   BUF_X2_func BUF_X2_inst(.A(A),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> Z
      (A => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X4( A, Z );
   input A;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X4_func BUF_X4_behav_inst(.A(A),.Z(Z));
   
`else
   BUF_X4_func BUF_X4_inst(.A(A),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> Z
      (A => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module BUF_X8( A, Z );
   input A;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   BUF_X8_func BUF_X8_behav_inst(.A(A),.Z(Z));
   
`else
   BUF_X8_func BUF_X8_inst(.A(A),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> Z
      (A => Z) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module DFF_X1( D, CK, Q, QN );
   input CK, D;
   output Q, QN;

`ifdef FUNCTIONAL  //  functional //
   DFF_X1_func DFF_X1_behav_inst(.D(D),.CK(CK),.Q(Q),.QN(QN));
   
`else
   DFF_X1_func DFF_X1_inst(.D(D),.CK(CK),.Q(Q),.QN(QN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // seq arc CK --> Q
      (posedge CK => (Q : D))  = (1.0,1.0);
      
      // seq arc CK --> QN
      (posedge CK => (QN : D))  = (1.0,1.0);
      
      // hold D-HL CK-LH
      $hold(posedge CK,negedge D,1.0);
      
      // hold D-LH CK-LH
      $hold(posedge CK,posedge D,1.0);
      
      // setup D-HL CK-LH
      $setup(negedge D,posedge CK,1.0);
      
      // setup D-LH CK-LH
      $setup(posedge D,posedge CK,1.0);
      
      // mpw CK_lh 
      $width(posedge CK,1.0,0);
      
      // mpw CK_hl 
      $width(negedge CK,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module DFF_X2( D, CK, Q, QN );
   input CK, D;
   output Q, QN;

`ifdef FUNCTIONAL  //  functional //
   DFF_X2_func DFF_X2_behav_inst(.D(D),.CK(CK),.Q(Q),.QN(QN));
   
`else
   DFF_X2_func DFF_X2_inst(.D(D),.CK(CK),.Q(Q),.QN(QN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // seq arc CK --> Q
      (posedge CK => (Q : D))  = (1.0,1.0);
      
      // seq arc CK --> QN
      (posedge CK => (QN : D))  = (1.0,1.0);
      
      // hold D-HL CK-LH
      $hold(posedge CK,negedge D,1.0);
      
      // hold D-LH CK-LH
      $hold(posedge CK,posedge D,1.0);
      
      // setup D-HL CK-LH
      $setup(negedge D,posedge CK,1.0);
      
      // setup D-LH CK-LH
      $setup(posedge D,posedge CK,1.0);
      
      // mpw CK_lh 
      $width(posedge CK,1.0,0);
      
      // mpw CK_hl 
      $width(negedge CK,1.0,0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module FA_X1( A, B, CI, CO, S );
   input A, B, CI;
   output CO, S;

`ifdef FUNCTIONAL  //  functional //
   FA_X1_func FA_X1_behav_inst(.A(A),.B(B),.CI(CI),.CO(CO),.S(S));
   
`else
   FA_X1_func FA_X1_inst(.A(A),.B(B),.CI(CI),.CO(CO),.S(S));
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
module HA_X1( A, B, CO, S );
   input A, B;
   output CO, S;

`ifdef FUNCTIONAL  //  functional //
   HA_X1_func HA_X1_behav_inst(.A(A),.B(B),.CO(CO),.S(S));
   
`else
   HA_X1_func HA_X1_inst(.A(A),.B(B),.CO(CO),.S(S));
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
module INV_X1( A, ZN );
   input A;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X1_func INV_X1_behav_inst(.A(A),.ZN(ZN));
   
`else
   INV_X1_func INV_X1_inst(.A(A),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X16( A, ZN );
   input A;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X16_func INV_X16_behav_inst(.A(A),.ZN(ZN));
   
`else
   INV_X16_func INV_X16_inst(.A(A),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X2( A, ZN );
   input A;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X2_func INV_X2_behav_inst(.A(A),.ZN(ZN));
   
`else
   INV_X2_func INV_X2_inst(.A(A),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X4( A, ZN );
   input A;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X4_func INV_X4_behav_inst(.A(A),.ZN(ZN));
   
`else
   INV_X4_func INV_X4_inst(.A(A),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module INV_X8( A, ZN );
   input A;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   INV_X8_func INV_X8_behav_inst(.A(A),.ZN(ZN));
   
`else
   INV_X8_func INV_X8_inst(.A(A),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module MUX2_X1( A, B, S, Z );
   input A, B, S;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   MUX2_X1_func MUX2_X1_behav_inst(.A(A),.B(B),.S(S),.Z(Z));
   
`else
   MUX2_X1_func MUX2_X1_inst(.A(A),.B(B),.S(S),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> Z
      (A => Z) = (1.0,1.0);
      
      // comb arc B --> Z
      (B => Z) = (1.0,1.0);
      
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
module MUX2_X2( A, B, S, Z );
   input A, B, S;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   MUX2_X2_func MUX2_X2_behav_inst(.A(A),.B(B),.S(S),.Z(Z));
   
`else
   MUX2_X2_func MUX2_X2_inst(.A(A),.B(B),.S(S),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> Z
      (A => Z) = (1.0,1.0);
      
      // comb arc B --> Z
      (B => Z) = (1.0,1.0);
      
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
module NAND2_X1( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND2_X1_func NAND2_X1_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   NAND2_X1_func NAND2_X1_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module NAND2_X2( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND2_X2_func NAND2_X2_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   NAND2_X2_func NAND2_X2_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module NAND2_X4( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND2_X4_func NAND2_X4_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   NAND2_X4_func NAND2_X4_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module NAND3_X1( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND3_X1_func NAND3_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   NAND3_X1_func NAND3_X1_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module NAND3_X2( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND3_X2_func NAND3_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   NAND3_X2_func NAND3_X2_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module NAND3_X4( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND3_X4_func NAND3_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   NAND3_X4_func NAND3_X4_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module NAND4_X1( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND4_X1_func NAND4_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   NAND4_X1_func NAND4_X1_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module NAND4_X2( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND4_X2_func NAND4_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   NAND4_X2_func NAND4_X2_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module NAND4_X4( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NAND4_X4_func NAND4_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   NAND4_X4_func NAND4_X4_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module NOR2_X1( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR2_X1_func NOR2_X1_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   NOR2_X1_func NOR2_X1_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module NOR2_X2( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR2_X2_func NOR2_X2_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   NOR2_X2_func NOR2_X2_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module NOR2_X4( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR2_X4_func NOR2_X4_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   NOR2_X4_func NOR2_X4_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module NOR3_X1( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR3_X1_func NOR3_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   NOR3_X1_func NOR3_X1_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module NOR3_X2( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR3_X2_func NOR3_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   NOR3_X2_func NOR3_X2_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module NOR3_X4( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR3_X4_func NOR3_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   NOR3_X4_func NOR3_X4_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module NOR4_X1( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR4_X1_func NOR4_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   NOR4_X1_func NOR4_X1_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module NOR4_X2( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR4_X2_func NOR4_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   NOR4_X2_func NOR4_X2_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module NOR4_X4( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   NOR4_X4_func NOR4_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   NOR4_X4_func NOR4_X4_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module OAI211_X1( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI211_X1_func OAI211_X1_behav_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI211_X1_func OAI211_X1_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI211_X2( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI211_X2_func OAI211_X2_behav_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI211_X2_func OAI211_X2_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI211_X4( A, B, C1, C2, ZN );
   input A, B, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI211_X4_func OAI211_X4_behav_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI211_X4_func OAI211_X4_inst(.A(A),.B(B),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B --> ZN
      (B => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI21_X1( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI21_X1_func OAI21_X1_behav_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   OAI21_X1_func OAI21_X1_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
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
module OAI21_X2( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI21_X2_func OAI21_X2_behav_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   OAI21_X2_func OAI21_X2_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
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
module OAI21_X4( A, B1, B2, ZN );
   input A, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI21_X4_func OAI21_X4_behav_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   OAI21_X4_func OAI21_X4_inst(.A(A),.B1(B1),.B2(B2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
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
module OAI221_X1( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI221_X1_func OAI221_X1_behav_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI221_X1_func OAI221_X1_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI221_X2( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI221_X2_func OAI221_X2_behav_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI221_X2_func OAI221_X2_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI221_X4( A, B1, B2, C1, C2, ZN );
   input A, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI221_X4_func OAI221_X4_behav_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI221_X4_func OAI221_X4_inst(.A(A),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc A --> ZN
      (A => ZN) = (1.0,1.0);
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI222_X1( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI222_X1_func OAI222_X1_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI222_X1_func OAI222_X1_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
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
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI222_X2( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI222_X2_func OAI222_X2_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI222_X2_func OAI222_X2_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
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
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI222_X4( A1, A2, B1, B2, C1, C2, ZN );
   input A1, A2, B1, B2, C1, C2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI222_X4_func OAI222_X4_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
   
`else
   OAI222_X4_func OAI222_X4_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.ZN(ZN));
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
      
      // comb arc C1 --> ZN
      (C1 => ZN) = (1.0,1.0);
      
      // comb arc C2 --> ZN
      (C2 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OAI22_X1( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI22_X1_func OAI22_X1_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   OAI22_X1_func OAI22_X1_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
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
module OAI22_X2( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI22_X2_func OAI22_X2_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   OAI22_X2_func OAI22_X2_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
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
module OAI22_X4( A1, A2, B1, B2, ZN );
   input A1, A2, B1, B2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI22_X4_func OAI22_X4_behav_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
   
`else
   OAI22_X4_func OAI22_X4_inst(.A1(A1),.A2(A2),.B1(B1),.B2(B2),.ZN(ZN));
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
module OAI33_X1( A1, A2, A3, B1, B2, B3, ZN );
   input A1, A2, A3, B1, B2, B3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OAI33_X1_func OAI33_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.ZN(ZN));
   
`else
   OAI33_X1_func OAI33_X1_inst(.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.ZN(ZN));
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
      
      // comb arc B1 --> ZN
      (B1 => ZN) = (1.0,1.0);
      
      // comb arc B2 --> ZN
      (B2 => ZN) = (1.0,1.0);
      
      // comb arc B3 --> ZN
      (B3 => ZN) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module OR2_X1( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR2_X1_func OR2_X1_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   OR2_X1_func OR2_X1_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module OR2_X2( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR2_X2_func OR2_X2_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   OR2_X2_func OR2_X2_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module OR2_X4( A1, A2, ZN );
   input A1, A2;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR2_X4_func OR2_X4_behav_inst(.A1(A1),.A2(A2),.ZN(ZN));
   
`else
   OR2_X4_func OR2_X4_inst(.A1(A1),.A2(A2),.ZN(ZN));
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
module OR3_X1( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR3_X1_func OR3_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   OR3_X1_func OR3_X1_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module OR3_X2( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR3_X2_func OR3_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   OR3_X2_func OR3_X2_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module OR3_X4( A1, A2, A3, ZN );
   input A1, A2, A3;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR3_X4_func OR3_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
   
`else
   OR3_X4_func OR3_X4_inst(.A1(A1),.A2(A2),.A3(A3),.ZN(ZN));
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
module OR4_X1( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR4_X1_func OR4_X1_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   OR4_X1_func OR4_X1_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module OR4_X2( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR4_X2_func OR4_X2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   OR4_X2_func OR4_X2_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module OR4_X4( A1, A2, A3, A4, ZN );
   input A1, A2, A3, A4;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   OR4_X4_func OR4_X4_behav_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
   
`else
   OR4_X4_func OR4_X4_inst(.A1(A1),.A2(A2),.A3(A3),.A4(A4),.ZN(ZN));
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
module XNOR2_X1( A, B, ZN );
   input A, B;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   XNOR2_X1_func XNOR2_X1_behav_inst(.A(A),.B(B),.ZN(ZN));
   
`else
   XNOR2_X1_func XNOR2_X1_inst(.A(A),.B(B),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      ifnone
      // comb arc posedge A --> (ZN:A)
      (posedge A => (ZN:A)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A --> (ZN:A)
      (negedge A => (ZN:A)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge B --> (ZN:B)
      (posedge B => (ZN:B)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge B --> (ZN:B)
      (negedge B => (ZN:B)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module XNOR2_X2( A, B, ZN );
   input A, B;
   output ZN;

`ifdef FUNCTIONAL  //  functional //
   XNOR2_X2_func XNOR2_X2_behav_inst(.A(A),.B(B),.ZN(ZN));
   
`else
   XNOR2_X2_func XNOR2_X2_inst(.A(A),.B(B),.ZN(ZN));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      ifnone
      // comb arc posedge A --> (ZN:A)
      (posedge A => (ZN:A)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A --> (ZN:A)
      (negedge A => (ZN:A)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge B --> (ZN:B)
      (posedge B => (ZN:B)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge B --> (ZN:B)
      (negedge B => (ZN:B)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module XOR2_X1( A, B, Z );
   input A, B;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   XOR2_X1_func XOR2_X1_behav_inst(.A(A),.B(B),.Z(Z));
   
`else
   XOR2_X1_func XOR2_X1_inst(.A(A),.B(B),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      ifnone
      // comb arc posedge A --> (Z:A)
      (posedge A => (Z:A)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A --> (Z:A)
      (negedge A => (Z:A)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge B --> (Z:B)
      (posedge B => (Z:B)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge B --> (Z:B)
      (negedge B => (Z:B)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine


`celldefine
module XOR2_X2( A, B, Z );
   input A, B;
   output Z;

`ifdef FUNCTIONAL  //  functional //
   XOR2_X2_func XOR2_X2_behav_inst(.A(A),.B(B),.Z(Z));
   
`else
   XOR2_X2_func XOR2_X2_inst(.A(A),.B(B),.Z(Z));
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      ifnone
      // comb arc posedge A --> (Z:A)
      (posedge A => (Z:A)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge A --> (Z:A)
      (negedge A => (Z:A)) = (1.0,1.0);
      
      ifnone
      // comb arc posedge B --> (Z:B)
      (posedge B => (Z:B)) = (1.0,1.0);
      
      ifnone
      // comb arc negedge B --> (Z:B)
      (negedge B => (Z:B)) = (1.0,1.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine
