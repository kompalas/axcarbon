// BSD 3-Clause License
// 
// Copyright 2020 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
// University
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
// 
// 1. Redistributions of source code must retain the above copyright notice,
// this list of conditions and the following disclaimer.
// 
// 2. Redistributions in binary form must reproduce the above copyright
// notice, this list of conditions and the following disclaimer in the
// documentation and/or other materials provided with the distribution.
// 
// 3. Neither the name of the copyright holder nor the names of its
// contributors may be used to endorse or promote products derived from this
// software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A1 PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// Verilog for library /home/ltclark/ASAP7/LIB2/Liberate_2/Verilog/asap7sc7p5t_AO_LVT_TT_201020 created by Liberate 18.1.0.293 on Tue Dec  1 18:30:44 MST 2020 for SDF version 2.1





// type:  
`timescale 1ns/10ps
`celldefine
module INVX1 (Y, A);
	output Y;
	input A;

	// Function
	not (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

primitive \seq_DFFR_X1  (IQ, RN, nextstate, CK, NOTIFIER);
  output IQ;
  input RN;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
       // RN   nextstate          CK    NOTIFIER     : @IQ :          IQ
           ?           0           r           ?       : ? :           0;
           1           1           r           ?       : ? :           1;
           ?           0           *           ?       : 0 :           0; // reduce pessimism
           1           1           *           ?       : 1 :           1; // reduce pessimism
           1           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           1           ?           n           ?       : ? :           -; // Ignore non-triggering clock edge
           0           ?           ?           ?       : ? :           0; // RN activated
           *           ?           ?           ?       : 0 :           0; // Cover all transitions on RN
           ?           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive

module DFFNRX1 (D, RST_N, CP, Q, Q_bar);
  input D;
  output Q;
  output Q_bar;
  input CP;
  input RST_N;

  reg NOTIFIER;

    \seq_DFFR_X1 (IQ, RST_N, nextstate, CP, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(Q_bar, IQN);
    buf(nextstate, D);

  specify
	(posedge CP => (Q +: D)) = (0.1, 0.1);
	if((CP == 1'b0) && (D == 1'b0)) (negedge RST_N => (Q +: 1'b0)) = (0.1, 0.1);
	if((CP == 1'b0) && (D == 1'b1)) (negedge RST_N => (Q +: 1'b0)) = (0.1, 0.1);
	if((CP == 1'b1) && (D == 1'b0)) (negedge RST_N => (Q +: 1'b0)) = (0.1, 0.1);
	if((CP == 1'b1) && (D == 1'b1)) (negedge RST_N => (Q +: 1'b0)) = (0.1, 0.1);
	(posedge CP => (Q_bar -: D)) = (0.1, 0.1);
	if((CP == 1'b0) && (D == 1'b0)) (negedge RST_N => (Q_bar +: 1'b1)) = (0.1, 0.1);
	if((CP == 1'b0) && (D == 1'b1)) (negedge RST_N => (Q_bar +: 1'b1)) = (0.1, 0.1);
	if((CP == 1'b1) && (D == 1'b0)) (negedge RST_N => (Q_bar +: 1'b1)) = (0.1, 0.1);
	if((CP == 1'b1) && (D == 1'b1)) (negedge RST_N => (Q_bar +: 1'b1)) = (0.1, 0.1);
/*
	I didn't find any setup/hold definition in the lib file
	$hold(posedge CP, posedge RST_N, 0.1, NOTIFIER);
	$recovery(posedge RST_N, posedge CP, 0.1, NOTIFIER);
	$setuphold(posedge CP &&& (RST_N === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
	$setuphold(posedge CP &&& (RST_N === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
*/
	$width(negedge CP &&& (RST_N === 1'b1), 0.1, 0, NOTIFIER);
	$width(negedge RST_N, 0.1, 0, NOTIFIER);
	$width(posedge CP &&& (RST_N === 1'b1), 0.1, 0, NOTIFIER);
  endspecify

endmodule


// type:  
`timescale 1ns/10ps
`celldefine
module NAND2X1 (Y, A1, A2);
	output Y;
	input A1, A2;

	// Function
	wire A__bar, B__bar;

	not (B__bar, A2);
	not (A__bar, A1);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR2X1 (Y, A1, A2);
	output Y;
	input A1, A2;

	// Function
	wire A__bar, B__bar;

	not (B__bar, A2);
	not (A__bar, A1);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
	endspecify
endmodule
`endcelldefine


//// type:  
//`timescale 1ns/10ps
//`celldefine
//module TSBUF (Y, A1);
//	output Y;
//	input A1;
//
//	// Function
//	buf (Y, A1);
//
//	// Timing
//	specify
//		(A1 => Y) = 0;
//	endspecify
//endmodule
//`endcelldefine

`celldefine
module TSBUF (I, OE, Y);
    input I, OE;
    output Y;
    bufif1 (Y, I, OE);

  specify
    (I => Y) = (0, 0);
    (OE => Y) = (0, 0);
  endspecify
endmodule
`endcelldefine



// type:  
`timescale 1ns/10ps
`celldefine
module AND2X1 (Y, A1, A2);
	output Y;
	input A1, A2;

	// Function
	and (Y, A1, A2);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
	endspecify
endmodule
`endcelldefine


// type:  
`timescale 1ns/10ps
`celldefine
module OR2X1 (Y, A1, A2);
	output Y;
	input A1, A2;

	// Function
	or (Y, A1, A2);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module XNOR2X1 (Y, A1, A2);
	output Y;
	input A1, A2;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (B__bar, A2);
	not (A__bar, A1);
	and (int_fwire_0, A__bar, B__bar);
	and (int_fwire_1, A1, A2);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (A2)
			(A1 => Y) = 0;
		if (~A2)
			(A1 => Y) = 0;
		if (A1)
			(A2 => Y) = 0;
		if (~A1)
			(A2 => Y) = 0;
	endspecify
endmodule
`endcelldefine


// type:  
`timescale 1ns/10ps
`celldefine
module XOR2X1 (Y, A1, A2);
	output Y;
	input A1, A2;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (A__bar, A1);
	and (int_fwire_0, A__bar, A2);
	not (B__bar, A2);
	and (int_fwire_1, A1, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~A2)
			(A1 => Y) = 0;
		if (A2)
			(A1 => Y) = 0;
		if (~A1)
			(A2 => Y) = 0;
		if (A1)
			(A2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

`ifdef TETRAMAX
`else
  primitive ng_xbuf (o, i, d);
	output o;
	input i, d;
	table
	// i   d   : o
	   0   1   : 0 ;
	   1   1   : 1 ;
	   x   1   : 1 ;
	endtable
  endprimitive
`endif


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, CP, R);
	output q;
	reg q;
	input v, CP, R;

	table
		* ? ? : ? : x;
		? 1 0 : ? : 0;
		? 1 1 : ? : 1;
		? x 0 : 0 : -;
		? x 1 : 1 : -;
		? 0 ? : ? : -;
	endtable
endprimitive
`endif


`ifdef _udp_def_altos_dff_err_
`else
`define _udp_def_altos_dff_err_
primitive altos_dff_err (q, CP, R);
	output q;
	reg q;
	input CP, R;

	table
		(0x) ? : ? : 0;
		(1x) ? : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_
`else
`define _udp_def_altos_dff_
primitive altos_dff (q, v, clk, d, xcr);
	output q;
	reg q;
	input v, clk, d, xcr;

	table
		*  ?   ? ? : ? : x;
		? (x1) 0 0 : ? : 0;
		? (x1) 1 0 : ? : 1;
		? (x1) 0 1 : 0 : 0;
		? (x1) 1 1 : 1 : 1;
		? (x1) ? x : ? : -;
		? (bx) 0 ? : 0 : -;
		? (bx) 1 ? : 1 : -;
		? (x0) b ? : ? : -;
		? (x0) ? x : ? : -;
		? (01) 0 ? : ? : 0;
		? (01) 1 ? : ? : 1;
		? (10) ? ? : ? : -;
		?  b   * ? : ? : -;
		?  ?   ? * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, CP, R, s, r);
	output q;
	reg q;
	input CP, R, s, r;

	table
		 ?   1 (0x)  ?   : ? : -;
		 ?   0  ?   (0x) : ? : -;
		 ?   0  ?   (x0) : ? : -;
		(0x) ?  0    0   : ? : 0;
		(0x) 1  x    0   : ? : 0;
		(0x) 0  0    x   : ? : 0;
		(1x) ?  0    0   : ? : 1;
		(1x) 1  x    0   : ? : 1;
		(1x) 0  0    x   : ? : 1;
	endtable
endprimitive
`endif


`ifdef _udp_def_altos_dff_sr_1
`else
`define _udp_def_altos_dff_sr_1
primitive altos_dff_sr_1 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   0   1   ? : ? : 0;
		?  ?   ?   1   ?   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive
`endif


/////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////

