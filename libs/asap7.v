// BSD 3-Clause License
// 
// Copyright 2021 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
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
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// Verilog for library /home/anolas19/Liberate/Verilog/asap7sc6t_AO_RVT_TT_210905 created by Liberate 18.1.0.293 on Thu Sep 23 13:00:28 MST 2021 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module A2O1A1Ixp33_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B__bar);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, B__bar);
	or (Y, int_fwire_1, int_fwire_0, C__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & B))
			(C => Y) = 0;
		if ((A1 & A2 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & B))
			(C => Y) = 0;
		if ((~A1 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module A2O1A1Ixp5_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B__bar);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, B__bar);
	or (Y, int_fwire_1, int_fwire_0, C__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & B))
			(C => Y) = 0;
		if ((A1 & A2 & ~B))
			(C => Y) = 0;
		if ((~A2 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module A2O1A1O1Ixp33_ASAP7_6t_R (Y, A1, A2, B, C, D);
	output Y;
	input A1, A2, B, C, D;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, D__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2;

	not (D__bar, D);
	not (C__bar, C);
	and (int_fwire_0, C__bar, D__bar);
	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_1, A2__bar, B__bar, D__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B__bar, D__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2 & C & ~D))
			(B => Y) = 0;
		if ((~A1 & A2 & C & ~D))
			(B => Y) = 0;
		if ((~A1 & ~A2 & C & ~D))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & B & ~D))
			(C => Y) = 0;
		if ((A1 & A2 & ~B & ~D))
			(C => Y) = 0;
		if ((A1 & ~A2 & B & ~D))
			(C => Y) = 0;
		if ((~A1 & B & ~D))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
		if ((B & ~C))
			(D => Y) = 0;
		if ((A1 & A2 & ~B & ~C))
			(D => Y) = 0;
		if ((A1 & ~A2 & ~B & C))
			(D => Y) = 0;
		if ((A1 & ~A2 & ~B & ~C) | (~A1 & A2 & ~B & ~C))
			(D => Y) = 0;
		if ((~A1 & A2 & ~B & C))
			(D => Y) = 0;
		if ((~A1 & ~A2 & ~B & C))
			(D => Y) = 0;
		if ((~A1 & ~A2 & ~B & ~C))
			(D => Y) = 0;
		ifnone (D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO211x1_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2);
	or (Y, int_fwire_0, B, C);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & ~A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO211x2_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2);
	or (Y, int_fwire_0, B, C);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & ~A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO21x1_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2);
	or (Y, int_fwire_0, B);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		if ((~A1 & ~A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO21x2_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2);
	or (Y, int_fwire_0, B);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		if ((~A1 & ~A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO221x1_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2);
	or (Y, int_fwire_1, int_fwire_0, C);

	// Timing
	specify
		if ((A2 & B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO221x2_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2);
	or (Y, int_fwire_1, int_fwire_0, C);

	// Timing
	specify
		if ((A2 & B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO222x1_ASAP7_6t_R (Y, A1, A2, B1, B2, C1, C2);
	output Y;
	input A1, A2, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2);
	and (int_fwire_1, B1, B2);
	and (int_fwire_2, A1, A2);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C1 & ~C2) | (A2 & ~B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C1 & ~C2) | (A1 & ~B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO222x2_ASAP7_6t_R (Y, A1, A2, B1, B2, C1, C2);
	output Y;
	input A1, A2, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2);
	and (int_fwire_1, B1, B2);
	and (int_fwire_2, A1, A2);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C1 & ~C2) | (A2 & ~B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C1 & ~C2) | (A1 & ~B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO22x1_ASAP7_6t_R (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO22x2_ASAP7_6t_R (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO311x1_ASAP7_6t_R (Y, A1, A2, A3, B, C);
	output Y;
	input A1, A2, A3, B, C;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2, A3);
	or (Y, int_fwire_0, B, C);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & A3 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~C) | (~A1 & ~A2 & A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B) | (~A1 & ~A2 & A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO311x2_ASAP7_6t_R (Y, A1, A2, A3, B, C);
	output Y;
	input A1, A2, A3, B, C;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2, A3);
	or (Y, int_fwire_0, B, C);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & A3 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~C) | (~A1 & ~A2 & A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B) | (~A1 & ~A2 & A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO31x1_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2, A3);
	or (Y, int_fwire_0, B);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3) | (~A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO31x2_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A1, A2, A3);
	or (Y, int_fwire_0, B);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3) | (~A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO321x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C);
	output Y;
	input A1, A2, A3, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0, C);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & ~C) | (~A1 & ~A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~C) | (~A1 & ~A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2) | (~A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2) | (~A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2) | (~A1 & ~A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO321x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C);
	output Y;
	input A1, A2, A3, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0, C);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & ~C) | (~A1 & ~A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~C) | (~A1 & ~A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2) | (~A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2) | (~A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2) | (~A1 & ~A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO322x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2);
	and (int_fwire_1, B1, B2);
	and (int_fwire_2, A1, A2, A3);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & C1 & ~C2) | (~A1 & A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C1 & C2) | (~A1 & A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C1 & ~C2) | (~A1 & A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & C1 & ~C2) | (~A1 & A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C1 & C2) | (~A1 & A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C1 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO322x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2);
	and (int_fwire_1, B1, B2);
	and (int_fwire_2, A1, A2, A3);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & C1 & ~C2) | (~A1 & A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C1 & C2) | (~A1 & A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C1 & ~C2) | (~A1 & A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & C1 & ~C2) | (~A1 & A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C1 & C2) | (~A1 & A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C1 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO32x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2);
	output Y;
	input A1, A2, A3, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2) | (~A1 & ~A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1) | (~A1 & ~A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO32x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2);
	output Y;
	input A1, A2, A3, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2) | (~A1 & ~A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1) | (~A1 & ~A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO331x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C);
	output Y;
	input A1, A2, A3, B1, B2, B3, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2, B3);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0, C);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C) | (~A1 & ~A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C) | (~A1 & ~A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C) | (~A1 & ~A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO331x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C);
	output Y;
	input A1, A2, A3, B1, B2, B3, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2, B3);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0, C);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C) | (~A1 & ~A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C) | (~A1 & ~A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C) | (~A1 & ~A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO332x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2);
	and (int_fwire_1, B1, B2, B3);
	and (int_fwire_2, A1, A2, A3);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO332x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2);
	and (int_fwire_1, B1, B2, B3);
	and (int_fwire_2, A1, A2, A3);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO333x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2, C3);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2, C3;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2, C3);
	and (int_fwire_1, B1, B2, B3);
	and (int_fwire_2, A1, A2, A3);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		ifnone (C3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO333x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2, C3);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2, C3;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, C1, C2, C3);
	and (int_fwire_1, B1, B2, B3);
	and (int_fwire_2, A1, A2, A3);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		ifnone (C3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO33x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3);
	output Y;
	input A1, A2, A3, B1, B2, B3;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2, B3);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3) | (A2 & A3 & ~B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3) | (A1 & A3 & ~B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3) | (A1 & A2 & ~B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3) | (~A1 & ~A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3) | (~A1 & ~A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2) | (~A1 & ~A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AO33x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3);
	output Y;
	input A1, A2, A3, B1, B2, B3;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B1, B2, B3);
	and (int_fwire_1, A1, A2, A3);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3) | (A2 & A3 & ~B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3) | (A1 & A3 & ~B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3) | (A1 & A2 & ~B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3) | (~A1 & ~A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3) | (~A1 & ~A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2) | (~A1 & ~A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI211xp25_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B__bar, C__bar);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, B__bar, C__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & ~A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI211xp5_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B__bar, C__bar);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, B__bar, C__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & ~A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI21x1_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire int_fwire_0, int_fwire_1;

	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B__bar);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		if ((~A1 & ~A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI21xp25_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire int_fwire_0, int_fwire_1;

	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B__bar);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		if ((~A1 & ~A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI21xp5_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire int_fwire_0, int_fwire_1;

	not (B__bar, B);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B__bar);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		if ((~A1 & ~A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI221xp25_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, C__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;

	not (C__bar, C);
	not (B2__bar, B2);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B2__bar, C__bar);
	not (B1__bar, B1);
	and (int_fwire_1, A2__bar, B1__bar, C__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B2__bar, C__bar);
	and (int_fwire_3, A1__bar, B1__bar, C__bar);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI221xp5_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, C__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;

	not (C__bar, C);
	not (B2__bar, B2);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B2__bar, C__bar);
	not (B1__bar, B1);
	and (int_fwire_1, A2__bar, B1__bar, C__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B2__bar, C__bar);
	and (int_fwire_3, A1__bar, B1__bar, C__bar);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI222xp25_ASAP7_6t_R (Y, A1, A2, B1, B2, C1, C2);
	output Y;
	input A1, A2, B1, B2, C1, C2;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, C1__bar, C2__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7;

	not (C2__bar, C2);
	not (B2__bar, B2);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B2__bar, C2__bar);
	not (C1__bar, C1);
	and (int_fwire_1, A2__bar, B2__bar, C1__bar);
	not (B1__bar, B1);
	and (int_fwire_2, A2__bar, B1__bar, C2__bar);
	and (int_fwire_3, A2__bar, B1__bar, C1__bar);
	not (A1__bar, A1);
	and (int_fwire_4, A1__bar, B2__bar, C2__bar);
	and (int_fwire_5, A1__bar, B2__bar, C1__bar);
	and (int_fwire_6, A1__bar, B1__bar, C2__bar);
	and (int_fwire_7, A1__bar, B1__bar, C1__bar);
	or (Y, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2 & ~C1 & ~C2) | (A2 & ~B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2 & ~C1 & ~C2) | (A1 & ~B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI22xp25_ASAP7_6t_R (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3;

	not (B2__bar, B2);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B2__bar);
	not (B1__bar, B1);
	and (int_fwire_1, A2__bar, B1__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B2__bar);
	and (int_fwire_3, A1__bar, B1__bar);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI22xp5_ASAP7_6t_R (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3;

	not (B2__bar, B2);
	not (A2__bar, A2);
	and (int_fwire_0, A2__bar, B2__bar);
	not (B1__bar, B1);
	and (int_fwire_1, A2__bar, B1__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B2__bar);
	and (int_fwire_3, A1__bar, B1__bar);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & B2))
			(A1 => Y) = 0;
		if ((A2 & ~B1 & ~B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & B2))
			(A2 => Y) = 0;
		if ((A1 & ~B1 & ~B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & ~A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & ~A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI311xp33_ASAP7_6t_R (Y, A1, A2, A3, B, C);
	output Y;
	input A1, A2, A3, B, C;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B__bar, C__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2;

	not (C__bar, C);
	not (B__bar, B);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B__bar, C__bar);
	not (A2__bar, A2);
	and (int_fwire_1, A2__bar, B__bar, C__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B__bar, C__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & A3 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~C) | (~A1 & ~A2 & A3 & ~C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B) | (~A1 & ~A2 & A3 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI31xp33_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (B__bar, B);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B__bar);
	not (A2__bar, A2);
	and (int_fwire_1, A2__bar, B__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3) | (~A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI31xp67_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (B__bar, B);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B__bar);
	not (A2__bar, A2);
	and (int_fwire_1, A2__bar, B__bar);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, B__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3) | (~A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & ~A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI321xp17_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C);
	output Y;
	input A1, A2, A3, B1, B2, C;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, C__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	not (C__bar, C);
	not (B2__bar, B2);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B2__bar, C__bar);
	not (B1__bar, B1);
	and (int_fwire_1, A3__bar, B1__bar, C__bar);
	not (A2__bar, A2);
	and (int_fwire_2, A2__bar, B2__bar, C__bar);
	and (int_fwire_3, A2__bar, B1__bar, C__bar);
	not (A1__bar, A1);
	and (int_fwire_4, A1__bar, B2__bar, C__bar);
	and (int_fwire_5, A1__bar, B1__bar, C__bar);
	or (Y, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & ~C) | (~A1 & ~A2 & A3 & B2 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~C) | (~A1 & ~A2 & A3 & B1 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2) | (~A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2) | (~A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2) | (~A1 & ~A2 & A3 & ~B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI322xp17_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, C1, C2;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, C1__bar;
	wire C2__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3, int_fwire_4;
	wire int_fwire_5, int_fwire_6, int_fwire_7;
	wire int_fwire_8, int_fwire_9, int_fwire_10;
	wire int_fwire_11;

	not (C2__bar, C2);
	not (B2__bar, B2);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B2__bar, C2__bar);
	not (C1__bar, C1);
	and (int_fwire_1, A3__bar, B2__bar, C1__bar);
	not (B1__bar, B1);
	and (int_fwire_2, A3__bar, B1__bar, C2__bar);
	and (int_fwire_3, A3__bar, B1__bar, C1__bar);
	not (A2__bar, A2);
	and (int_fwire_4, A2__bar, B2__bar, C2__bar);
	and (int_fwire_5, A2__bar, B2__bar, C1__bar);
	and (int_fwire_6, A2__bar, B1__bar, C2__bar);
	and (int_fwire_7, A2__bar, B1__bar, C1__bar);
	not (A1__bar, A1);
	and (int_fwire_8, A1__bar, B2__bar, C2__bar);
	and (int_fwire_9, A1__bar, B2__bar, C1__bar);
	and (int_fwire_10, A1__bar, B1__bar, C2__bar);
	and (int_fwire_11, A1__bar, B1__bar, C1__bar);
	or (Y, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~C1 & ~C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & ~C1 & C2) | (~A1 & ~A2 & A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~C1 & C2) | (~A1 & ~A2 & A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & C2) | (A1 & ~A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & C1) | (A1 & ~A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & C1) | (~A1 & ~A2 & A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI32xp33_ASAP7_6t_R (Y, A1, A2, A3, B1, B2);
	output Y;
	input A1, A2, A3, B1, B2;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;
	wire int_fwire_4, int_fwire_5;

	not (B2__bar, B2);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B2__bar);
	not (B1__bar, B1);
	and (int_fwire_1, A3__bar, B1__bar);
	not (A2__bar, A2);
	and (int_fwire_2, A2__bar, B2__bar);
	and (int_fwire_3, A2__bar, B1__bar);
	not (A1__bar, A1);
	and (int_fwire_4, A1__bar, B2__bar);
	and (int_fwire_5, A1__bar, B1__bar);
	or (Y, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2) | (~A1 & ~A2 & A3 & B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1) | (~A1 & ~A2 & A3 & B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI331xp17_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C);
	output Y;
	input A1, A2, A3, B1, B2, B3, C;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire C__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3, int_fwire_4;
	wire int_fwire_5, int_fwire_6, int_fwire_7;
	wire int_fwire_8;

	not (C__bar, C);
	not (B3__bar, B3);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B3__bar, C__bar);
	not (B2__bar, B2);
	and (int_fwire_1, A3__bar, B2__bar, C__bar);
	not (B1__bar, B1);
	and (int_fwire_2, A3__bar, B1__bar, C__bar);
	not (A2__bar, A2);
	and (int_fwire_3, A2__bar, B3__bar, C__bar);
	and (int_fwire_4, A2__bar, B2__bar, C__bar);
	and (int_fwire_5, A2__bar, B1__bar, C__bar);
	not (A1__bar, A1);
	and (int_fwire_6, A1__bar, B3__bar, C__bar);
	and (int_fwire_7, A1__bar, B2__bar, C__bar);
	and (int_fwire_8, A1__bar, B1__bar, C__bar);
	or (Y, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C) | (~A1 & ~A2 & A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C) | (~A1 & ~A2 & A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C) | (~A1 & ~A2 & A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI332xp17_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire C1__bar, C2__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;
	wire int_fwire_4, int_fwire_5, int_fwire_6;
	wire int_fwire_7, int_fwire_8, int_fwire_9;
	wire int_fwire_10, int_fwire_11, int_fwire_12;
	wire int_fwire_13, int_fwire_14, int_fwire_15;
	wire int_fwire_16, int_fwire_17;

	not (C2__bar, C2);
	not (B3__bar, B3);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B3__bar, C2__bar);
	not (C1__bar, C1);
	and (int_fwire_1, A3__bar, B3__bar, C1__bar);
	not (B2__bar, B2);
	and (int_fwire_2, A3__bar, B2__bar, C2__bar);
	and (int_fwire_3, A3__bar, B2__bar, C1__bar);
	not (B1__bar, B1);
	and (int_fwire_4, A3__bar, B1__bar, C2__bar);
	and (int_fwire_5, A3__bar, B1__bar, C1__bar);
	not (A2__bar, A2);
	and (int_fwire_6, A2__bar, B3__bar, C2__bar);
	and (int_fwire_7, A2__bar, B3__bar, C1__bar);
	and (int_fwire_8, A2__bar, B2__bar, C2__bar);
	and (int_fwire_9, A2__bar, B2__bar, C1__bar);
	and (int_fwire_10, A2__bar, B1__bar, C2__bar);
	and (int_fwire_11, A2__bar, B1__bar, C1__bar);
	not (A1__bar, A1);
	and (int_fwire_12, A1__bar, B3__bar, C2__bar);
	and (int_fwire_13, A1__bar, B3__bar, C1__bar);
	and (int_fwire_14, A1__bar, B2__bar, C2__bar);
	and (int_fwire_15, A1__bar, B2__bar, C1__bar);
	and (int_fwire_16, A1__bar, B1__bar, C2__bar);
	and (int_fwire_17, A1__bar, B1__bar, C1__bar);
	or (Y, int_fwire_17, int_fwire_16, int_fwire_15, int_fwire_14, int_fwire_13, int_fwire_12, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI333xp17_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2, C3);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2, C3;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire C1__bar, C2__bar, C3__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;
	wire int_fwire_9, int_fwire_10, int_fwire_11;
	wire int_fwire_12, int_fwire_13, int_fwire_14;
	wire int_fwire_15, int_fwire_16, int_fwire_17;
	wire int_fwire_18, int_fwire_19, int_fwire_20;
	wire int_fwire_21, int_fwire_22, int_fwire_23;
	wire int_fwire_24, int_fwire_25, int_fwire_26;

	not (C3__bar, C3);
	not (B3__bar, B3);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B3__bar, C3__bar);
	not (C2__bar, C2);
	and (int_fwire_1, A3__bar, B3__bar, C2__bar);
	not (C1__bar, C1);
	and (int_fwire_2, A3__bar, B3__bar, C1__bar);
	not (B2__bar, B2);
	and (int_fwire_3, A3__bar, B2__bar, C3__bar);
	and (int_fwire_4, A3__bar, B2__bar, C2__bar);
	and (int_fwire_5, A3__bar, B2__bar, C1__bar);
	not (B1__bar, B1);
	and (int_fwire_6, A3__bar, B1__bar, C3__bar);
	and (int_fwire_7, A3__bar, B1__bar, C2__bar);
	and (int_fwire_8, A3__bar, B1__bar, C1__bar);
	not (A2__bar, A2);
	and (int_fwire_9, A2__bar, B3__bar, C3__bar);
	and (int_fwire_10, A2__bar, B3__bar, C2__bar);
	and (int_fwire_11, A2__bar, B3__bar, C1__bar);
	and (int_fwire_12, A2__bar, B2__bar, C3__bar);
	and (int_fwire_13, A2__bar, B2__bar, C2__bar);
	and (int_fwire_14, A2__bar, B2__bar, C1__bar);
	and (int_fwire_15, A2__bar, B1__bar, C3__bar);
	and (int_fwire_16, A2__bar, B1__bar, C2__bar);
	and (int_fwire_17, A2__bar, B1__bar, C1__bar);
	not (A1__bar, A1);
	and (int_fwire_18, A1__bar, B3__bar, C3__bar);
	and (int_fwire_19, A1__bar, B3__bar, C2__bar);
	and (int_fwire_20, A1__bar, B3__bar, C1__bar);
	and (int_fwire_21, A1__bar, B2__bar, C3__bar);
	and (int_fwire_22, A1__bar, B2__bar, C2__bar);
	and (int_fwire_23, A1__bar, B2__bar, C1__bar);
	and (int_fwire_24, A1__bar, B1__bar, C3__bar);
	and (int_fwire_25, A1__bar, B1__bar, C2__bar);
	and (int_fwire_26, A1__bar, B1__bar, C1__bar);
	or (Y, int_fwire_26, int_fwire_25, int_fwire_24, int_fwire_23, int_fwire_22, int_fwire_21, int_fwire_20, int_fwire_19, int_fwire_18, int_fwire_17, int_fwire_16, int_fwire_15, int_fwire_14, int_fwire_13, int_fwire_12, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3) | (A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3 & ~C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3 & ~C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3 & ~C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C2 & C3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C2 & C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C2 & C3))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C3) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C3))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~B3 & C1 & C2))
			(C3 => Y) = 0;
		ifnone (C3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AOI33xp33_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3);
	output Y;
	input A1, A2, A3, B1, B2, B3;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	not (B3__bar, B3);
	not (A3__bar, A3);
	and (int_fwire_0, A3__bar, B3__bar);
	not (B2__bar, B2);
	and (int_fwire_1, A3__bar, B2__bar);
	not (B1__bar, B1);
	and (int_fwire_2, A3__bar, B1__bar);
	not (A2__bar, A2);
	and (int_fwire_3, A2__bar, B3__bar);
	and (int_fwire_4, A2__bar, B2__bar);
	and (int_fwire_5, A2__bar, B1__bar);
	not (A1__bar, A1);
	and (int_fwire_6, A1__bar, B3__bar);
	and (int_fwire_7, A1__bar, B2__bar);
	and (int_fwire_8, A1__bar, B1__bar);
	or (Y, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((A2 & A3 & B1 & B2 & ~B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & B2 & ~B3) | (A2 & A3 & ~B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((A2 & A3 & ~B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A1 & A3 & B1 & B2 & ~B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & B2 & ~B3) | (A1 & A3 & ~B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((A1 & A3 & ~B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~B3) | (A1 & A2 & ~B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B2 & B3) | (~A1 & A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B2 & B3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B2 & B3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B3) | (~A1 & A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2) | (~A1 & A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & ~A3 & B1 & B2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
	endspecify
endmodule
`endcelldefine


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

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
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

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

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

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

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
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

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
// BSD 3-Clause License
// 
// Copyright 2021 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
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
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// Verilog for library /home/anolas19/Liberate/Verilog/asap7sc6T_CKINVDC_RVT_TT_210905 created by Liberate 18.1.0.293 on Sun Sep  5 19:09:39 MST 2021 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx10_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx11_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx12_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx14_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx16_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx20_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx5p5_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx6p5_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx8_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module CKINVDCx9p5_ASAP7_6t_R (Y, A);
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


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

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
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

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

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

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

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
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

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
// BSD 3-Clause License
// 
// Copyright 2021 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
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
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// Verilog for library /home/anolas19/Liberate/Verilog/asap7sc6T_INVBUF_RVT_TT_210905 created by Liberate 18.1.0.293 on Sun Sep  5 19:09:59 MST 2021 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx10_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx12_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx12q_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx16q_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx24_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx2_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx3_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx4_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx4q_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx5_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx6q_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module BUFx8_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module HB1x1_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module HB2x1_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module HB3x1_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module HB4x1_ASAP7_6t_R (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module INVx11_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx13_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx1_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx2_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx3_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx4_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx5_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx6_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVx8_ASAP7_6t_R (Y, A);
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

// type:  
`timescale 1ns/10ps
`celldefine
module INVxp5_ASAP7_6t_R (Y, A);
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


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

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
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

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

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

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

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
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

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
// BSD 3-Clause License
// 
// Copyright 2021 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
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
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// Verilog for library /home/anolas19/Liberate/Verilog/asap7sc6t_OA_RVT_TT_210905 created by Liberate 18.1.0.293 on Thu Sep 23 17:00:43 MST 2021 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module O2A1O1A1Ixp33_ASAP7_6t_R (Y, A1, A2, B, C, D);
	output Y;
	input A1, A2, B, C, D;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, D__bar, int_fwire_0;
	wire int_fwire_1;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	and (int_fwire_0, B__bar, C__bar);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar, C__bar);
	or (Y, int_fwire_1, int_fwire_0, D__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2 & ~C & D))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~C & D))
			(B => Y) = 0;
		if ((~A1 & A2 & ~C & D))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & ~B & D))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B & D))
			(C => Y) = 0;
		if ((~A1 & ~A2 & B & D))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B & D))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
		if ((A1 & A2 & B & C))
			(D => Y) = 0;
		if ((A1 & A2 & B & ~C))
			(D => Y) = 0;
		if ((A1 & ~A2 & B & C) | (~A1 & A2 & B & C))
			(D => Y) = 0;
		if ((A1 & ~A2 & B & ~C))
			(D => Y) = 0;
		if ((~B & C))
			(D => Y) = 0;
		if ((~A1 & A2 & B & ~C))
			(D => Y) = 0;
		if ((~A1 & ~A2 & B & C))
			(D => Y) = 0;
		ifnone (D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module O2A1O1Ixp33_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B__bar, B);
	and (int_fwire_0, B__bar, C__bar);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar, C__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & ~B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module O2A1O1Ixp5_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B__bar, B);
	and (int_fwire_0, B__bar, C__bar);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar, C__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2 & ~C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A2 & ~B))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA211x1_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, A2, B, C);
	and (int_fwire_1, A1, B, C);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2 & C))
			(B => Y) = 0;
		if ((A1 & ~A2 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & B))
			(C => Y) = 0;
		if ((A1 & ~A2 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA211x2_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, A2, B, C);
	and (int_fwire_1, A1, B, C);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2 & C))
			(B => Y) = 0;
		if ((A1 & ~A2 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & B))
			(C => Y) = 0;
		if ((A1 & ~A2 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA21x1_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, A2, B);
	and (int_fwire_1, A1, B);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2))
			(B => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA21x2_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, A2, B);
	and (int_fwire_1, A1, B);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2))
			(B => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA221x1_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, A2, B2, C);
	and (int_fwire_1, A2, B1, C);
	and (int_fwire_2, A1, B2, C);
	and (int_fwire_3, A1, B1, C);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA221x2_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, A2, B2, C);
	and (int_fwire_1, A2, B1, C);
	and (int_fwire_2, A1, B2, C);
	and (int_fwire_3, A1, B1, C);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA222x1_ASAP7_6t_R (Y, A1, A2, B1, B2, C1, C2);
	output Y;
	input A1, A2, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7;

	and (int_fwire_0, A2, B2, C2);
	and (int_fwire_1, A2, B2, C1);
	and (int_fwire_2, A2, B1, C2);
	and (int_fwire_3, A2, B1, C1);
	and (int_fwire_4, A1, B2, C2);
	and (int_fwire_5, A1, B2, C1);
	and (int_fwire_6, A1, B1, C2);
	and (int_fwire_7, A1, B1, C1);
	or (Y, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & B2 & C1 & ~C2) | (~A2 & B1 & ~B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & B2 & C1 & ~C2) | (~A1 & B1 & ~B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA222x2_ASAP7_6t_R (Y, A1, A2, B1, B2, C1, C2);
	output Y;
	input A1, A2, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7;

	and (int_fwire_0, A2, B2, C2);
	and (int_fwire_1, A2, B2, C1);
	and (int_fwire_2, A2, B1, C2);
	and (int_fwire_3, A2, B1, C1);
	and (int_fwire_4, A1, B2, C2);
	and (int_fwire_5, A1, B2, C1);
	and (int_fwire_6, A1, B1, C2);
	and (int_fwire_7, A1, B1, C1);
	or (Y, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & B2 & C1 & ~C2) | (~A2 & B1 & ~B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & B2 & C1 & ~C2) | (~A1 & B1 & ~B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA22x1_ASAP7_6t_R (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, A2, B2);
	and (int_fwire_1, A2, B1);
	and (int_fwire_2, A1, B2);
	and (int_fwire_3, A1, B1);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA22x2_ASAP7_6t_R (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, A2, B2);
	and (int_fwire_1, A2, B1);
	and (int_fwire_2, A1, B2);
	and (int_fwire_3, A1, B1);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA311x1_ASAP7_6t_R (Y, A1, A2, A3, B, C);
	output Y;
	input A1, A2, A3, B, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, A3, B, C);
	and (int_fwire_1, A2, B, C);
	and (int_fwire_2, A1, B, C);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & A3 & C))
			(B => Y) = 0;
		if ((A1 & A2 & ~A3 & C) | (A1 & ~A2 & A3 & C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & A3 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3 & C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & A3 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & A3 & B))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B) | (A1 & ~A2 & A3 & B))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA311x2_ASAP7_6t_R (Y, A1, A2, A3, B, C);
	output Y;
	input A1, A2, A3, B, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, A3, B, C);
	and (int_fwire_1, A2, B, C);
	and (int_fwire_2, A1, B, C);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & A3 & C))
			(B => Y) = 0;
		if ((A1 & A2 & ~A3 & C) | (A1 & ~A2 & A3 & C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & A3 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3 & C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & A3 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & A3 & B))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B) | (A1 & ~A2 & A3 & B))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA31x1_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, A3, B);
	and (int_fwire_1, A2, B);
	and (int_fwire_2, A1, B);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & A3))
			(B => Y) = 0;
		if ((A1 & A2 & ~A3) | (A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA31x2_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, A3, B);
	and (int_fwire_1, A2, B);
	and (int_fwire_2, A1, B);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & A3))
			(B => Y) = 0;
		if ((A1 & A2 & ~A3) | (A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA321x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C);
	output Y;
	input A1, A2, A3, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, A3, B2, C);
	and (int_fwire_1, A3, B1, C);
	and (int_fwire_2, A2, B2, C);
	and (int_fwire_3, A2, B1, C);
	and (int_fwire_4, A1, B2, C);
	and (int_fwire_5, A1, B1, C);
	or (Y, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C) | (A1 & ~A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C) | (A1 & ~A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2) | (A1 & ~A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2) | (A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2) | (A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA321x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C);
	output Y;
	input A1, A2, A3, B1, B2, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, A3, B2, C);
	and (int_fwire_1, A3, B1, C);
	and (int_fwire_2, A2, B2, C);
	and (int_fwire_3, A2, B1, C);
	and (int_fwire_4, A1, B2, C);
	and (int_fwire_5, A1, B1, C);
	or (Y, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C) | (A1 & ~A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C) | (A1 & ~A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2) | (A1 & ~A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2) | (A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2) | (A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA322x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;
	wire int_fwire_9, int_fwire_10, int_fwire_11;

	and (int_fwire_0, A3, B2, C2);
	and (int_fwire_1, A3, B2, C1);
	and (int_fwire_2, A3, B1, C2);
	and (int_fwire_3, A3, B1, C1);
	and (int_fwire_4, A2, B2, C2);
	and (int_fwire_5, A2, B2, C1);
	and (int_fwire_6, A2, B1, C2);
	and (int_fwire_7, A2, B1, C1);
	and (int_fwire_8, A1, B2, C2);
	and (int_fwire_9, A1, B2, C1);
	and (int_fwire_10, A1, B1, C2);
	and (int_fwire_11, A1, B1, C1);
	or (Y, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & C1 & C2) | (~A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & C1 & ~C2) | (~A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & ~C1 & C2) | (~A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & C1 & C2) | (~A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & C1 & ~C2) | (~A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~C1 & C2) | (~A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C2) | (~A1 & A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C2) | (~A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~C2) | (~A1 & A2 & A3 & ~B1 & B2 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C1) | (~A1 & A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1) | (~A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~C1) | (~A1 & A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~C1) | (~A1 & A2 & A3 & ~B1 & B2 & ~C1) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA322x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;
	wire int_fwire_9, int_fwire_10, int_fwire_11;

	and (int_fwire_0, A3, B2, C2);
	and (int_fwire_1, A3, B2, C1);
	and (int_fwire_2, A3, B1, C2);
	and (int_fwire_3, A3, B1, C1);
	and (int_fwire_4, A2, B2, C2);
	and (int_fwire_5, A2, B2, C1);
	and (int_fwire_6, A2, B1, C2);
	and (int_fwire_7, A2, B1, C1);
	and (int_fwire_8, A1, B2, C2);
	and (int_fwire_9, A1, B2, C1);
	and (int_fwire_10, A1, B1, C2);
	and (int_fwire_11, A1, B1, C1);
	or (Y, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & C1 & C2) | (~A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & C1 & ~C2) | (~A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & ~C1 & C2) | (~A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & C1 & C2) | (~A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & C1 & ~C2) | (~A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~C1 & C2) | (~A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C2) | (~A1 & A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C2) | (~A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~C2) | (~A1 & A2 & A3 & ~B1 & B2 & ~C2) | (~A1 & ~A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C1) | (~A1 & A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & B2 & ~C1) | (~A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & B1 & ~B2 & ~C1) | (~A1 & A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & B2 & ~C1) | (~A1 & A2 & A3 & ~B1 & B2 & ~C1) | (~A1 & ~A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA32x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2);
	output Y;
	input A1, A2, A3, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, A3, B2);
	and (int_fwire_1, A3, B1);
	and (int_fwire_2, A2, B2);
	and (int_fwire_3, A2, B1);
	and (int_fwire_4, A1, B2);
	and (int_fwire_5, A1, B1);
	or (Y, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2) | (A1 & ~A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1) | (A1 & ~A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA32x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2);
	output Y;
	input A1, A2, A3, B1, B2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, A3, B2);
	and (int_fwire_1, A3, B1);
	and (int_fwire_2, A2, B2);
	and (int_fwire_3, A2, B1);
	and (int_fwire_4, A1, B2);
	and (int_fwire_5, A1, B1);
	or (Y, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2) | (A1 & ~A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1) | (A1 & ~A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA331x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C);
	output Y;
	input A1, A2, A3, B1, B2, B3, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, A3, B3, C);
	and (int_fwire_1, A3, B2, C);
	and (int_fwire_2, A3, B1, C);
	and (int_fwire_3, A2, B3, C);
	and (int_fwire_4, A2, B2, C);
	and (int_fwire_5, A2, B1, C);
	and (int_fwire_6, A1, B3, C);
	and (int_fwire_7, A1, B2, C);
	and (int_fwire_8, A1, B1, C);
	or (Y, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C) | (~A2 & ~A3 & B1 & ~B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C) | (~A1 & ~A3 & B1 & ~B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C) | (~A1 & ~A2 & B1 & ~B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3) | (A1 & A2 & A3 & B1 & ~B2 & B3) | (A1 & A2 & ~A3 & B1 & B2 & B3) | (A1 & ~A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3) | (~A1 & A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA331x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C);
	output Y;
	input A1, A2, A3, B1, B2, B3, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, A3, B3, C);
	and (int_fwire_1, A3, B2, C);
	and (int_fwire_2, A3, B1, C);
	and (int_fwire_3, A2, B3, C);
	and (int_fwire_4, A2, B2, C);
	and (int_fwire_5, A2, B1, C);
	and (int_fwire_6, A1, B3, C);
	and (int_fwire_7, A1, B2, C);
	and (int_fwire_8, A1, B1, C);
	or (Y, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C) | (~A2 & ~A3 & B1 & ~B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C) | (~A1 & ~A3 & B1 & ~B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C) | (~A1 & ~A2 & B1 & ~B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3) | (A1 & A2 & A3 & B1 & ~B2 & B3) | (A1 & A2 & ~A3 & B1 & B2 & B3) | (A1 & ~A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3) | (~A1 & A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA332x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;
	wire int_fwire_9, int_fwire_10, int_fwire_11;
	wire int_fwire_12, int_fwire_13, int_fwire_14;
	wire int_fwire_15, int_fwire_16, int_fwire_17;

	and (int_fwire_0, A3, B3, C2);
	and (int_fwire_1, A3, B3, C1);
	and (int_fwire_2, A3, B2, C2);
	and (int_fwire_3, A3, B2, C1);
	and (int_fwire_4, A3, B1, C2);
	and (int_fwire_5, A3, B1, C1);
	and (int_fwire_6, A2, B3, C2);
	and (int_fwire_7, A2, B3, C1);
	and (int_fwire_8, A2, B2, C2);
	and (int_fwire_9, A2, B2, C1);
	and (int_fwire_10, A2, B1, C2);
	and (int_fwire_11, A2, B1, C1);
	and (int_fwire_12, A1, B3, C2);
	and (int_fwire_13, A1, B3, C1);
	and (int_fwire_14, A1, B2, C2);
	and (int_fwire_15, A1, B2, C1);
	and (int_fwire_16, A1, B1, C2);
	and (int_fwire_17, A1, B1, C1);
	or (Y, int_fwire_17, int_fwire_16, int_fwire_15, int_fwire_14, int_fwire_13, int_fwire_12, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2) | (A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1) | (A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA332x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;
	wire int_fwire_9, int_fwire_10, int_fwire_11;
	wire int_fwire_12, int_fwire_13, int_fwire_14;
	wire int_fwire_15, int_fwire_16, int_fwire_17;

	and (int_fwire_0, A3, B3, C2);
	and (int_fwire_1, A3, B3, C1);
	and (int_fwire_2, A3, B2, C2);
	and (int_fwire_3, A3, B2, C1);
	and (int_fwire_4, A3, B1, C2);
	and (int_fwire_5, A3, B1, C1);
	and (int_fwire_6, A2, B3, C2);
	and (int_fwire_7, A2, B3, C1);
	and (int_fwire_8, A2, B2, C2);
	and (int_fwire_9, A2, B2, C1);
	and (int_fwire_10, A2, B1, C2);
	and (int_fwire_11, A2, B1, C1);
	and (int_fwire_12, A1, B3, C2);
	and (int_fwire_13, A1, B3, C1);
	and (int_fwire_14, A1, B2, C2);
	and (int_fwire_15, A1, B2, C1);
	and (int_fwire_16, A1, B1, C2);
	and (int_fwire_17, A1, B1, C1);
	or (Y, int_fwire_17, int_fwire_16, int_fwire_15, int_fwire_14, int_fwire_13, int_fwire_12, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2) | (A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1) | (A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA333x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2, C3);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2, C3;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;
	wire int_fwire_9, int_fwire_10, int_fwire_11;
	wire int_fwire_12, int_fwire_13, int_fwire_14;
	wire int_fwire_15, int_fwire_16, int_fwire_17;
	wire int_fwire_18, int_fwire_19, int_fwire_20;
	wire int_fwire_21, int_fwire_22, int_fwire_23;
	wire int_fwire_24, int_fwire_25, int_fwire_26;

	and (int_fwire_0, A3, B3, C3);
	and (int_fwire_1, A3, B3, C2);
	and (int_fwire_2, A3, B3, C1);
	and (int_fwire_3, A3, B2, C3);
	and (int_fwire_4, A3, B2, C2);
	and (int_fwire_5, A3, B2, C1);
	and (int_fwire_6, A3, B1, C3);
	and (int_fwire_7, A3, B1, C2);
	and (int_fwire_8, A3, B1, C1);
	and (int_fwire_9, A2, B3, C3);
	and (int_fwire_10, A2, B3, C2);
	and (int_fwire_11, A2, B3, C1);
	and (int_fwire_12, A2, B2, C3);
	and (int_fwire_13, A2, B2, C2);
	and (int_fwire_14, A2, B2, C1);
	and (int_fwire_15, A2, B1, C3);
	and (int_fwire_16, A2, B1, C2);
	and (int_fwire_17, A2, B1, C1);
	and (int_fwire_18, A1, B3, C3);
	and (int_fwire_19, A1, B3, C2);
	and (int_fwire_20, A1, B3, C1);
	and (int_fwire_21, A1, B2, C3);
	and (int_fwire_22, A1, B2, C2);
	and (int_fwire_23, A1, B2, C1);
	and (int_fwire_24, A1, B1, C3);
	and (int_fwire_25, A1, B1, C2);
	and (int_fwire_26, A1, B1, C1);
	or (Y, int_fwire_26, int_fwire_25, int_fwire_24, int_fwire_23, int_fwire_22, int_fwire_21, int_fwire_20, int_fwire_19, int_fwire_18, int_fwire_17, int_fwire_16, int_fwire_15, int_fwire_14, int_fwire_13, int_fwire_12, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		ifnone (C3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA333x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2, C3);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2, C3;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;
	wire int_fwire_9, int_fwire_10, int_fwire_11;
	wire int_fwire_12, int_fwire_13, int_fwire_14;
	wire int_fwire_15, int_fwire_16, int_fwire_17;
	wire int_fwire_18, int_fwire_19, int_fwire_20;
	wire int_fwire_21, int_fwire_22, int_fwire_23;
	wire int_fwire_24, int_fwire_25, int_fwire_26;

	and (int_fwire_0, A3, B3, C3);
	and (int_fwire_1, A3, B3, C2);
	and (int_fwire_2, A3, B3, C1);
	and (int_fwire_3, A3, B2, C3);
	and (int_fwire_4, A3, B2, C2);
	and (int_fwire_5, A3, B2, C1);
	and (int_fwire_6, A3, B1, C3);
	and (int_fwire_7, A3, B1, C2);
	and (int_fwire_8, A3, B1, C1);
	and (int_fwire_9, A2, B3, C3);
	and (int_fwire_10, A2, B3, C2);
	and (int_fwire_11, A2, B3, C1);
	and (int_fwire_12, A2, B2, C3);
	and (int_fwire_13, A2, B2, C2);
	and (int_fwire_14, A2, B2, C1);
	and (int_fwire_15, A2, B1, C3);
	and (int_fwire_16, A2, B1, C2);
	and (int_fwire_17, A2, B1, C1);
	and (int_fwire_18, A1, B3, C3);
	and (int_fwire_19, A1, B3, C2);
	and (int_fwire_20, A1, B3, C1);
	and (int_fwire_21, A1, B2, C3);
	and (int_fwire_22, A1, B2, C2);
	and (int_fwire_23, A1, B2, C1);
	and (int_fwire_24, A1, B1, C3);
	and (int_fwire_25, A1, B1, C2);
	and (int_fwire_26, A1, B1, C1);
	or (Y, int_fwire_26, int_fwire_25, int_fwire_24, int_fwire_23, int_fwire_22, int_fwire_21, int_fwire_20, int_fwire_19, int_fwire_18, int_fwire_17, int_fwire_16, int_fwire_15, int_fwire_14, int_fwire_13, int_fwire_12, int_fwire_11, int_fwire_10, int_fwire_9, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		ifnone (C3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA33x1_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3);
	output Y;
	input A1, A2, A3, B1, B2, B3;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, A3, B3);
	and (int_fwire_1, A3, B2);
	and (int_fwire_2, A3, B1);
	and (int_fwire_3, A2, B3);
	and (int_fwire_4, A2, B2);
	and (int_fwire_5, A2, B1);
	and (int_fwire_6, A1, B3);
	and (int_fwire_7, A1, B2);
	and (int_fwire_8, A1, B1);
	or (Y, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3) | (~A2 & ~A3 & B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3) | (~A1 & ~A3 & B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3) | (~A1 & ~A2 & B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3) | (~A1 & A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3) | (~A1 & A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2) | (~A1 & A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OA33x2_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3);
	output Y;
	input A1, A2, A3, B1, B2, B3;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, A3, B3);
	and (int_fwire_1, A3, B2);
	and (int_fwire_2, A3, B1);
	and (int_fwire_3, A2, B3);
	and (int_fwire_4, A2, B2);
	and (int_fwire_5, A2, B1);
	and (int_fwire_6, A1, B3);
	and (int_fwire_7, A1, B2);
	and (int_fwire_8, A1, B1);
	or (Y, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3) | (~A2 & ~A3 & B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3) | (~A1 & ~A3 & B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3) | (~A1 & ~A2 & B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3) | (~A1 & A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3) | (~A1 & A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2) | (~A1 & A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI211xp33_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0;

	not (C__bar, C);
	not (B__bar, B);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar);
	or (Y, int_fwire_0, B__bar, C__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2 & C))
			(B => Y) = 0;
		if ((A1 & ~A2 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & B))
			(C => Y) = 0;
		if ((A1 & ~A2 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI211xp67b_ASAP7_6t_R (Y, A1, A2, B, C);
	output Y;
	input A1, A2, B, C;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire C__bar, int_fwire_0;

	not (C__bar, C);
	not (B__bar, B);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar);
	or (Y, int_fwire_0, B__bar, C__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2 & C))
			(B => Y) = 0;
		if ((A1 & ~A2 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & B))
			(C => Y) = 0;
		if ((A1 & ~A2 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI21xp25_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire int_fwire_0;

	not (B__bar, B);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar);
	or (Y, int_fwire_0, B__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2))
			(B => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI21xp5_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire int_fwire_0;

	not (B__bar, B);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar);
	or (Y, int_fwire_0, B__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2))
			(B => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI21xp5b_ASAP7_6t_R (Y, A1, A2, B);
	output Y;
	input A1, A2, B;

	// Function
	wire A1__bar, A2__bar, B__bar;
	wire int_fwire_0;

	not (B__bar, B);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar);
	or (Y, int_fwire_0, B__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A1 & A2))
			(B => Y) = 0;
		if ((A1 & ~A2))
			(B => Y) = 0;
		if ((~A1 & A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI221xp33_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, C__bar, int_fwire_0;
	wire int_fwire_1;

	not (C__bar, C);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_0, B1__bar, B2__bar);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar);
	or (Y, int_fwire_1, int_fwire_0, C__bar);

	// Timing
	specify
		if ((~A2 & B1 & B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI221xp33f_ASAP7_6t_R (Y, A1, A2, B1, B2, C);
	output Y;
	input A1, A2, B1, B2, C;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, C__bar, int_fwire_0;
	wire int_fwire_1;

	not (C__bar, C);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_0, B1__bar, B2__bar);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar);
	or (Y, int_fwire_1, int_fwire_0, C__bar);

	// Timing
	specify
		if ((~A2 & B1 & B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI222xp33_ASAP7_6t_R (Y, A1, A2, B1, B2, C1, C2);
	output Y;
	input A1, A2, B1, B2, C1, C2;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, C1__bar, C2__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	not (C2__bar, C2);
	not (C1__bar, C1);
	and (int_fwire_0, C1__bar, C2__bar);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_1, B1__bar, B2__bar);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, A2__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & B2 & C1 & ~C2) | (~A2 & B1 & ~B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & B2 & C1 & ~C2) | (~A1 & B1 & ~B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI22xp5_ASAP7_6t_R (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	// Function
	wire A1__bar, A2__bar, B1__bar;
	wire B2__bar, int_fwire_0, int_fwire_1;

	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_0, B1__bar, B2__bar);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & B1 & B2))
			(A1 => Y) = 0;
		if ((~A2 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((~A2 & ~B1 & B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & B1 & B2))
			(A2 => Y) = 0;
		if ((~A1 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((~A1 & ~B1 & B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((A1 & A2 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI311xp33_ASAP7_6t_R (Y, A1, A2, A3, B, C);
	output Y;
	input A1, A2, A3, B, C;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B__bar, C__bar, int_fwire_0;

	not (C__bar, C);
	not (B__bar, B);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_0, B__bar, C__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & A3 & C))
			(B => Y) = 0;
		if ((A1 & A2 & ~A3 & C) | (A1 & ~A2 & A3 & C))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & A3 & C))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3 & C))
			(B => Y) = 0;
		if ((~A1 & ~A2 & A3 & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A1 & A2 & A3 & B))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B) | (A1 & ~A2 & A3 & B))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI31x1f_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B__bar, int_fwire_0;

	not (B__bar, B);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_0, B__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & A3))
			(B => Y) = 0;
		if ((A1 & A2 & ~A3) | (A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI31xp5f_ASAP7_6t_R (Y, A1, A2, A3, B);
	output Y;
	input A1, A2, A3, B;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B__bar, int_fwire_0;

	not (B__bar, B);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_0, B__bar);

	// Timing
	specify
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		(A3 => Y) = 0;
		if ((A1 & A2 & A3))
			(B => Y) = 0;
		if ((A1 & A2 & ~A3) | (A1 & ~A2 & A3))
			(B => Y) = 0;
		if ((A1 & ~A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & A2 & A3))
			(B => Y) = 0;
		if ((~A1 & A2 & ~A3))
			(B => Y) = 0;
		if ((~A1 & ~A2 & A3))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI321xp33_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C);
	output Y;
	input A1, A2, A3, B1, B2, C;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, C__bar;
	wire int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_0, B1__bar, B2__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_1, int_fwire_0, C__bar);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C) | (A1 & ~A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C) | (A1 & ~A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2) | (A1 & ~A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2) | (A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2) | (A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI322xp33_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, C1, C2;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, C1__bar;
	wire C2__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (C2__bar, C2);
	not (C1__bar, C1);
	and (int_fwire_0, C1__bar, C2__bar);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_1, B1__bar, B2__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & C2) | (A1 & ~A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~C2) | (~A1 & A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~C1) | (~A1 & A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI322xp33b_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, C1, C2;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, C1__bar;
	wire C2__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (C2__bar, C2);
	not (C1__bar, C1);
	and (int_fwire_0, C1__bar, C2__bar);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_1, B1__bar, B2__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~C1 & C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & C2) | (A1 & ~A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~C2) | (~A1 & A2 & ~A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~C1) | (~A1 & A2 & ~A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI32xp5f_ASAP7_6t_R (Y, A1, A2, A3, B1, B2);
	output Y;
	input A1, A2, A3, B1, B2;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, int_fwire_0;
	wire int_fwire_1;

	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_0, B1__bar, B2__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2) | (A1 & ~A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1) | (A1 & ~A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI331xp33_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C);
	output Y;
	input A1, A2, A3, B1, B2, B3, C;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire C__bar, int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B3__bar, B3);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_0, B1__bar, B2__bar, B3__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_1, int_fwire_0, C__bar);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C) | (~A2 & ~A3 & B1 & ~B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C) | (~A1 & ~A3 & B1 & ~B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C) | (~A1 & ~A2 & B1 & ~B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3) | (A1 & A2 & A3 & B1 & ~B2 & B3) | (A1 & A2 & ~A3 & B1 & B2 & B3) | (A1 & ~A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3) | (~A1 & A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3))
			(C => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI332xp33_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire C1__bar, C2__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2;

	not (C2__bar, C2);
	not (C1__bar, C1);
	and (int_fwire_0, C1__bar, C2__bar);
	not (B3__bar, B3);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_1, B1__bar, B2__bar, B3__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2) | (A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1) | (A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1) | (A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1) | (~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI333xp33_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3, C1, C2, C3);
	output Y;
	input A1, A2, A3, B1, B2, B3, C1, C2, C3;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire C1__bar, C2__bar, C3__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	not (C3__bar, C3);
	not (C2__bar, C2);
	not (C1__bar, C1);
	and (int_fwire_0, C1__bar, C2__bar, C3__bar);
	not (B3__bar, B3);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_1, B1__bar, B2__bar, B3__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_2, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A1 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3 & ~C1 & ~C2 & C3) | (~A1 & ~A2 & B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & C1 & ~C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & C1 & ~C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & C2 & ~C3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3 & ~C1 & ~C2 & C3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & C1 & ~C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & C2 & ~C3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3 & ~C1 & ~C2 & C3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & C1 & ~C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & C2 & ~C3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3 & ~C1 & ~C2 & C3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & C2 & ~C3) | (~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & C1 & ~C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & C2 & ~C3))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & ~C1 & ~C2 & C3))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C2 & ~C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C2 & ~C3))
			(C1 => Y) = 0;
		ifnone (C1 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C3) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C3))
			(C2 => Y) = 0;
		ifnone (C2 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2) | (A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (A1 & ~A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & A2 & ~A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & B2 & ~B3 & ~C1 & ~C2) | (~A1 & ~A2 & A3 & B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & B1 & ~B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & B2 & ~B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2 & B3 & ~C1 & ~C2))
			(C3 => Y) = 0;
		ifnone (C3 => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OAI33xp5f_ASAP7_6t_R (Y, A1, A2, A3, B1, B2, B3);
	output Y;
	input A1, A2, A3, B1, B2, B3;

	// Function
	wire A1__bar, A2__bar, A3__bar;
	wire B1__bar, B2__bar, B3__bar;
	wire int_fwire_0, int_fwire_1;

	not (B3__bar, B3);
	not (B2__bar, B2);
	not (B1__bar, B1);
	and (int_fwire_0, B1__bar, B2__bar, B3__bar);
	not (A3__bar, A3);
	not (A2__bar, A2);
	not (A1__bar, A1);
	and (int_fwire_1, A1__bar, A2__bar, A3__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A2 & ~A3 & B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & B2 & ~B3) | (~A2 & ~A3 & B1 & ~B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & B1 & ~B2 & ~B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & B2 & ~B3))
			(A1 => Y) = 0;
		if ((~A2 & ~A3 & ~B1 & ~B2 & B3))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & B2 & ~B3) | (~A1 & ~A3 & B1 & ~B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & B1 & ~B2 & ~B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & B2 & ~B3))
			(A2 => Y) = 0;
		if ((~A1 & ~A3 & ~B1 & ~B2 & B3))
			(A2 => Y) = 0;
		ifnone (A2 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & B2 & ~B3) | (~A1 & ~A2 & B1 & ~B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & B1 & ~B2 & ~B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & B2 & ~B3))
			(A3 => Y) = 0;
		if ((~A1 & ~A2 & ~B1 & ~B2 & B3))
			(A3 => Y) = 0;
		ifnone (A3 => Y) = 0;
		if ((A1 & A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B2 & ~B3) | (~A1 & A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B2 & ~B3))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B3) | (~A1 & A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B3))
			(B2 => Y) = 0;
		ifnone (B2 => Y) = 0;
		if ((A1 & A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & A2 & ~A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & A3 & ~B1 & ~B2) | (~A1 & A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((A1 & ~A2 & ~A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((~A1 & A2 & ~A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		if ((~A1 & ~A2 & A3 & ~B1 & ~B2))
			(B3 => Y) = 0;
		ifnone (B3 => Y) = 0;
	endspecify
endmodule
`endcelldefine


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

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
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

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

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

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

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
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

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
// BSD 3-Clause License
// 
// Copyright 2021 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
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
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// Verilog for library /home/anolas19/Liberate/Verilog/asap7sc6t_SEQ_RVT_TT_210905 created by Liberate 18.1.0.293 on Fri Sep 24 08:13:30 MST 2021 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module DFFARHQNx1_ASAP7_6t_R (QN, D, RESETN, CLK);
	output QN;
	input D, RESETN, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_d, int_fwire_IQN, int_fwire_s;
	wire xcr_0;

	not (int_fwire_d, delayed_D);
	not (int_fwire_s, RESETN);
	altos_dff_s_err (xcr_0, delayed_CLK, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, int_fwire_s, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, D__bar;


	// Additional timing gates
	and (adacond0, D, RESETN);
	not (D__bar, D);
	and (adacond1, D__bar, RESETN);

	specify
		if (CLK)
			(negedge RESETN => (QN+:1'b1)) = 0;
		if (~CLK)
			(negedge RESETN => (QN+:1'b1)) = 0;
		ifnone (negedge RESETN => (QN+:1'b1)) = 0;
		(posedge CLK => (QN+:!D)) = 0;
		$setuphold (posedge CLK &&& RESETN, posedge D &&& RESETN, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& RESETN, negedge D &&& RESETN, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$recovery (posedge RESETN &&& D, posedge CLK &&& D, 0, notifier);
		$recovery (posedge RESETN, posedge CLK, 0, notifier);
		$hold (posedge CLK &&& D, posedge RESETN &&& D, 0, notifier);
		$hold (posedge CLK, posedge RESETN, 0, notifier);
		$width (negedge RESETN &&& CLK, 0, 0, notifier);
		$width (negedge RESETN &&& ~CLK, 0, 0, notifier);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (posedge CLK &&& adacond1, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFASHQNx1_ASAP7_6t_R (QN, D, SETN, CLK);
	output QN;
	input D, SETN, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_d, int_fwire_IQN, int_fwire_r;
	wire xcr_0;

	not (int_fwire_d, delayed_D);
	not (int_fwire_r, SETN);
	altos_dff_r_err (xcr_0, delayed_CLK, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, int_fwire_r, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, D__bar;


	// Additional timing gates
	and (adacond0, D, SETN);
	not (D__bar, D);
	and (adacond1, D__bar, SETN);

	specify
		if (CLK)
			(negedge SETN => (QN+:1'b0)) = 0;
		if ((~CLK & D))
			(negedge SETN => (QN+:1'b0)) = 0;
		if ((~CLK & ~D))
			(negedge SETN => (QN+:1'b0)) = 0;
		ifnone (negedge SETN => (QN+:1'b0)) = 0;
		(posedge CLK => (QN+:!D)) = 0;
		$setuphold (posedge CLK &&& SETN, posedge D &&& SETN, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& SETN, negedge D &&& SETN, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$recovery (posedge SETN &&& ~D, posedge CLK &&& ~D, 0, notifier);
		$recovery (posedge SETN, posedge CLK, 0, notifier);
		$hold (posedge CLK &&& ~D, posedge SETN &&& ~D, 0, notifier);
		$hold (posedge CLK, posedge SETN, 0, notifier);
		$width (negedge SETN &&& CLK, 0, 0, notifier);
		$width (negedge SETN &&& ~CLK, 0, 0, notifier);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (posedge CLK &&& adacond1, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFASRHQNx1_ASAP7_6t_R (QN, D, RESETN, SETN, CLK);
	output QN;
	input D, RESETN, SETN, CLK;
	reg notifier;
	wire delayed_D, delayed_RESETN, delayed_SETN, delayed_CLK;

	// Function
	wire int_fwire_d, int_fwire_IQN, int_fwire_r;
	wire int_fwire_s, xcr_0;

	not (int_fwire_d, delayed_D);
	not (int_fwire_s, delayed_RESETN);
	not (int_fwire_r, delayed_SETN);
	altos_dff_sr_err (xcr_0, delayed_CLK, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, adacond8;
	wire CLK__bar, D__bar;


	// Additional timing gates
	and (adacond0, RESETN, SETN);
	and (adacond1, D, SETN);
	and (adacond2, CLK, SETN);
	not (CLK__bar, CLK);
	and (adacond3, CLK__bar, SETN);
	not (D__bar, D);
	and (adacond4, D__bar, RESETN);
	and (adacond5, CLK, RESETN);
	and (adacond6, CLK__bar, RESETN);
	and (adacond7, D, RESETN, SETN);
	and (adacond8, D__bar, RESETN, SETN);

	specify
		if ((CLK & SETN))
			(negedge RESETN => (QN+:1'b1)) = 0;
		if ((~CLK & SETN))
			(negedge RESETN => (QN+:1'b1)) = 0;
		ifnone (negedge RESETN => (QN+:1'b1)) = 0;
		if ((CLK & RESETN))
			(negedge SETN => (QN+:1'b0)) = 0;
		if ((CLK & ~RESETN))
			(negedge SETN => (QN+:1'b0)) = 0;
		if ((~CLK & D & RESETN))
			(negedge SETN => (QN+:1'b0)) = 0;
		if ((~CLK & D & ~RESETN))
			(negedge SETN => (QN+:1'b0)) = 0;
		if ((~CLK & ~D & RESETN))
			(negedge SETN => (QN+:1'b0)) = 0;
		if ((~CLK & ~D & ~RESETN))
			(negedge SETN => (QN+:1'b0)) = 0;
		ifnone (negedge SETN => (QN+:1'b0)) = 0;
		if ((CLK & ~RESETN))
			(posedge SETN => (QN+:1'b1)) = 0;
		if ((~CLK & D & ~RESETN))
			(posedge SETN => (QN+:1'b1)) = 0;
		if ((~CLK & ~D & ~RESETN))
			(posedge SETN => (QN+:1'b1)) = 0;
		ifnone (posedge SETN => (QN+:1'b1)) = 0;
		(posedge CLK => (QN+:!D)) = 0;
		$setuphold (posedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge SETN &&& CLK, posedge RESETN &&& CLK, 0, 0, notifier,,, delayed_SETN, delayed_RESETN);
		$setuphold (posedge SETN &&& ~CLK, posedge RESETN &&& ~CLK, 0, 0, notifier,,, delayed_SETN, delayed_RESETN);
		$setuphold (posedge SETN, posedge RESETN, 0, 0, notifier,,, delayed_SETN, delayed_RESETN);
		$setuphold (posedge RESETN &&& CLK, posedge SETN &&& CLK, 0, 0, notifier,,, delayed_RESETN, delayed_SETN);
		$setuphold (posedge RESETN &&& ~CLK, posedge SETN &&& ~CLK, 0, 0, notifier,,, delayed_RESETN, delayed_SETN);
		$setuphold (posedge RESETN, posedge SETN, 0, 0, notifier,,, delayed_RESETN, delayed_SETN);
		$recovery (posedge RESETN &&& adacond1, posedge CLK &&& adacond1, 0, notifier);
		$recovery (posedge RESETN, posedge CLK, 0, notifier);
		$hold (posedge CLK &&& adacond1, posedge RESETN &&& adacond1, 0, notifier);
		$hold (posedge CLK, posedge RESETN, 0, notifier);
		$recovery (posedge SETN &&& adacond4, posedge CLK &&& adacond4, 0, notifier);
		$recovery (posedge SETN, posedge CLK, 0, notifier);
		$hold (posedge CLK &&& adacond4, posedge SETN &&& adacond4, 0, notifier);
		$hold (posedge CLK, posedge SETN, 0, notifier);
		$width (negedge RESETN &&& adacond2, 0, 0, notifier);
		$width (negedge RESETN &&& adacond3, 0, 0, notifier);
		$width (negedge SETN &&& adacond5, 0, 0, notifier);
		$width (negedge SETN &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
		$width (posedge CLK &&& adacond8, 0, 0, notifier);
		$width (negedge CLK &&& adacond8, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFHQNx1_ASAP7_6t_R (QN, D, CLK);
	output QN;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_d, int_fwire_IQN, xcr_0;

	not (int_fwire_d, delayed_D);
	altos_dff_err (xcr_0, delayed_CLK, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing
	specify
		(posedge CLK => (QN+:!D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFHQNx2_ASAP7_6t_R (QN, D, CLK);
	output QN;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_d, int_fwire_IQN, xcr_0;

	not (int_fwire_d, delayed_D);
	altos_dff_err (xcr_0, delayed_CLK, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing
	specify
		(posedge CLK => (QN+:!D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFHQNx3_ASAP7_6t_R (QN, D, CLK);
	output QN;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_d, int_fwire_IQN, xcr_0;

	not (int_fwire_d, delayed_D);
	altos_dff_err (xcr_0, delayed_CLK, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing
	specify
		(posedge CLK => (QN+:!D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFHQx4_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_IQ, xcr_0;

	altos_dff_err (xcr_0, delayed_CLK, delayed_D);
	altos_dff (int_fwire_IQ, notifier, delayed_CLK, delayed_D, xcr_0);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(posedge CLK => (Q+:D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFLQNx1_ASAP7_6t_R (QN, D, CLK);
	output QN;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_d, int_fwire_IQN;
	wire xcr_0;

	not (int_fwire_d, delayed_D);
	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing
	specify
		(negedge CLK => (QN+:!D)) = 0;
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFLQNx2_ASAP7_6t_R (QN, D, CLK);
	output QN;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_d, int_fwire_IQN;
	wire xcr_0;

	not (int_fwire_d, delayed_D);
	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing
	specify
		(negedge CLK => (QN+:!D)) = 0;
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFLQNx3_ASAP7_6t_R (QN, D, CLK);
	output QN;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_d, int_fwire_IQN;
	wire xcr_0;

	not (int_fwire_d, delayed_D);
	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing
	specify
		(negedge CLK => (QN+:!D)) = 0;
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DFFLQx4_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, xcr_0;

	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, delayed_D);
	altos_dff (int_fwire_IQ, notifier, int_fwire_clk, delayed_D, xcr_0);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(negedge CLK => (Q+:D)) = 0;
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DHLx1_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_IQ;

	altos_latch (int_fwire_IQ, notifier, delayed_CLK, delayed_D);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(D => Q) = 0;
		(posedge CLK => (Q+:D)) = 0;
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DHLx2_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_IQ;

	altos_latch (int_fwire_IQ, notifier, delayed_CLK, delayed_D);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(D => Q) = 0;
		(posedge CLK => (Q+:D)) = 0;
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DHLx3_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_IQ;

	altos_latch (int_fwire_IQ, notifier, delayed_CLK, delayed_D);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(D => Q) = 0;
		(posedge CLK => (Q+:D)) = 0;
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DLLx1_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ;

	not (int_fwire_clk, delayed_CLK);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, delayed_D);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(D => Q) = 0;
		(negedge CLK => (Q+:D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DLLx2_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ;

	not (int_fwire_clk, delayed_CLK);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, delayed_D);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(D => Q) = 0;
		(negedge CLK => (Q+:D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module DLLx3_ASAP7_6t_R (Q, D, CLK);
	output Q;
	input D, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ;

	not (int_fwire_clk, delayed_CLK);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, delayed_D);
	buf (Q, int_fwire_IQ);

	// Timing
	specify
		(D => Q) = 0;
		(negedge CLK => (Q+:D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx10_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx12_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx1_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx2_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx3_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx4_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx5_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ICGx8_ASAP7_6t_R (GCLK, ENA, SE, CLK);
	output GCLK;
	input ENA, SE, CLK;
	reg notifier;
	wire delayed_ENA, delayed_SE, delayed_CLK;

	// Function
	wire int_fwire_clk, int_fwire_IQ, int_fwire_test;

	not (int_fwire_clk, delayed_CLK);
	or (int_fwire_test, delayed_ENA, delayed_SE);
	altos_latch (int_fwire_IQ, notifier, int_fwire_clk, int_fwire_test);
	and (GCLK, delayed_CLK, int_fwire_IQ);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, ENA__bar;
	wire int_twire_0, SE__bar;


	// Additional timing gates
	not (ENA__bar, ENA);
	and (int_twire_0, ENA__bar, SE);
	or (adacond0, ENA, int_twire_0);
	not (SE__bar, SE);
	and (adacond1, ENA__bar, SE__bar);

	specify
		if ((ENA) | (~ENA & SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		if ((~ENA & ~SE))
			(negedge CLK => (GCLK+:1'b0)) = 0;
		ifnone (CLK => GCLK) = 0;
		$setuphold (posedge CLK &&& ~SE, posedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~SE, negedge ENA &&& ~SE, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, posedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK, negedge ENA, 0, 0, notifier,,, delayed_CLK, delayed_ENA);
		$setuphold (posedge CLK &&& ~ENA, posedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& ~ENA, negedge SE &&& ~ENA, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFHx1_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_d, int_fwire_IQN, xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_CLK, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(posedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (posedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFHx2_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_d, int_fwire_IQN, xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_CLK, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(posedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (posedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFHx3_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_d, int_fwire_IQN, xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_CLK, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(posedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (posedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFHx4_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_d, int_fwire_IQN, xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_CLK, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, delayed_CLK, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(posedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (posedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (posedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (posedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFLx1_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_clk, int_fwire_d, int_fwire_IQN;
	wire xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(negedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (negedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFLx2_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_clk, int_fwire_d, int_fwire_IQN;
	wire xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(negedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (negedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFLx3_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_clk, int_fwire_d, int_fwire_IQN;
	wire xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(negedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (negedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module SDFLx4_ASAP7_6t_R (QN, D, SE, SI, CLK);
	output QN;
	input D, SE, SI, CLK;
	reg notifier;
	wire delayed_D, delayed_SE, delayed_SI, delayed_CLK;

	// Function
	wire delayed_D__bar, delayed_SE__bar, delayed_SI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_clk, int_fwire_d, int_fwire_IQN;
	wire xcr_0;

	not (delayed_SI__bar, delayed_SI);
	and (int_fwire_0, delayed_SE, delayed_SI__bar);
	not (delayed_D__bar, delayed_D);
	and (int_fwire_1, delayed_D__bar, delayed_SI__bar);
	not (delayed_SE__bar, delayed_SE);
	and (int_fwire_2, delayed_D__bar, delayed_SE__bar);
	or (int_fwire_d, int_fwire_2, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_CLK);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_IQN, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, D__bar;
	wire int_twire_0, int_twire_1, int_twire_2;
	wire int_twire_3, int_twire_4, int_twire_5;
	wire SE__bar, SI__bar;


	// Additional timing gates
	not (SE__bar, SE);
	and (adacond0, SE__bar, SI);
	not (SI__bar, SI);
	and (adacond1, SE__bar, SI__bar);
	and (adacond2, D, SI__bar);
	not (D__bar, D);
	and (adacond3, D__bar, SI);
	and (adacond4, D, SE);
	and (adacond5, D__bar, SE);
	and (int_twire_0, D__bar, SE, SI);
	and (int_twire_1, D, SE__bar);
	and (int_twire_2, D, SE, SI);
	or (adacond6, int_twire_2, int_twire_1, int_twire_0);
	and (int_twire_3, D__bar, SE__bar);
	and (int_twire_4, D__bar, SE, SI__bar);
	and (int_twire_5, D, SE, SI__bar);
	or (adacond7, int_twire_5, int_twire_4, int_twire_3);

	specify
		(negedge CLK => (QN+:((SE && !SI) || (!SE && !D)))) = 0;
		$setuphold (negedge CLK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, posedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond1, negedge D &&& adacond1, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (negedge CLK &&& adacond2, posedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond2, negedge SE &&& adacond2, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, posedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond3, negedge SE &&& adacond3, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, posedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK, negedge SE, 0, 0, notifier,,, delayed_CLK, delayed_SE);
		$setuphold (negedge CLK &&& adacond4, posedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond4, negedge SI &&& adacond4, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, posedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK &&& adacond5, negedge SI &&& adacond5, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, posedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$setuphold (negedge CLK, negedge SI, 0, 0, notifier,,, delayed_CLK, delayed_SI);
		$width (posedge CLK &&& adacond6, 0, 0, notifier);
		$width (negedge CLK &&& adacond6, 0, 0, notifier);
		$width (posedge CLK &&& adacond7, 0, 0, notifier);
		$width (negedge CLK &&& adacond7, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

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
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

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

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

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

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
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

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
// BSD 3-Clause License
// 
// Copyright 2021 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
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
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// Verilog for library /home/anolas19/Liberate/Verilog/asap7sc6t_NAND5xp2R_RVT_TT_211010 created by Liberate 18.1.0.293 on Sun Oct 10 14:14:10 MST 2021 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module NAND5xp2R_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar, E__bar;

	not (E__bar, E);
	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar, D__bar, E__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
		(E => Y) = 0;
	endspecify
endmodule
`endcelldefine


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

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
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

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

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

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

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
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

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
// Verilog for library /home/anolas19/Liberate/Verilog/asap7sc6t_SIMPLE_RVT_TT_210905 created by Liberate 18.1.0.293 on Mon Sep  6 15:24:42 MST 2021 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module AND2x2_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	and (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND2x4_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	and (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND2x6_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	and (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND3x1_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	and (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND3x2_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	and (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND3x4_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	and (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND4x1_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	and (Y, A, B, C, D);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND4x2_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	and (Y, A, B, C, D);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND5x1_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	and (Y, A, B, C, D, E);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
		(E => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module AND5x2_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	and (Y, A, B, C, D, E);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
		(E => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module FAxp33_ASAP7_6t_R (CON, SN, A, B, CI);
	output CON, SN;
	input A, B, CI;

	// Function
	wire A__bar, B__bar, CI__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6;

	not (CI__bar, CI);
	not (B__bar, B);
	and (int_fwire_0, B__bar, CI__bar);
	not (A__bar, A);
	and (int_fwire_1, A__bar, CI__bar);
	and (int_fwire_2, A__bar, B__bar);
	or (CON, int_fwire_2, int_fwire_1, int_fwire_0);
	and (int_fwire_3, A__bar, B__bar, CI__bar);
	and (int_fwire_4, A__bar, B, CI);
	and (int_fwire_5, A, B__bar, CI);
	and (int_fwire_6, A, B, CI__bar);
	or (SN, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3);

	// Timing
	specify
		if ((B & ~CI))
			(A => CON) = 0;
		if ((~B & CI))
			(A => CON) = 0;
		ifnone (A => CON) = 0;
		if ((A & ~CI))
			(B => CON) = 0;
		if ((~A & CI))
			(B => CON) = 0;
		ifnone (B => CON) = 0;
		if ((A & ~B))
			(CI => CON) = 0;
		if ((~A & B))
			(CI => CON) = 0;
		ifnone (CI => CON) = 0;
		if ((B & ~CI))
			(A => SN) = 0;
		if ((~B & CI))
			(A => SN) = 0;
		ifnone (A => SN) = 0;
		if ((B & CI))
			(A => SN) = 0;
		if ((~B & ~CI))
			(A => SN) = 0;
		if ((A & ~CI))
			(B => SN) = 0;
		if ((~A & CI))
			(B => SN) = 0;
		ifnone (B => SN) = 0;
		if ((A & CI))
			(B => SN) = 0;
		if ((~A & ~CI))
			(B => SN) = 0;
		if ((A & ~B))
			(CI => SN) = 0;
		if ((~A & B))
			(CI => SN) = 0;
		ifnone (CI => SN) = 0;
		if ((A & B))
			(CI => SN) = 0;
		if ((~A & ~B))
			(CI => SN) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module HAxp5_ASAP7_6t_R (CON, SN, A, B);
	output CON, SN;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (B__bar, B);
	not (A__bar, A);
	or (CON, A__bar, B__bar);
	and (int_fwire_0, A__bar, B__bar);
	and (int_fwire_1, A, B);
	or (SN, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A => CON) = 0;
		(B => CON) = 0;
		if (B)
			(A => SN) = 0;
		if (~B)
			(A => SN) = 0;
		if (A)
			(B => SN) = 0;
		if (~A)
			(B => SN) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module MAJIxp5_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	not (C__bar, C);
	not (B__bar, B);
	and (int_fwire_0, B__bar, C__bar);
	not (A__bar, A);
	and (int_fwire_1, A__bar, C__bar);
	and (int_fwire_2, A__bar, B__bar);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((B & ~C))
			(A => Y) = 0;
		if ((~B & C))
			(A => Y) = 0;
		ifnone (A => Y) = 0;
		if ((A & ~C))
			(B => Y) = 0;
		if ((~A & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module MAJx1_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, B, C);
	and (int_fwire_1, A, C);
	and (int_fwire_2, A, B);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((B & ~C))
			(A => Y) = 0;
		if ((~B & C))
			(A => Y) = 0;
		ifnone (A => Y) = 0;
		if ((A & ~C))
			(B => Y) = 0;
		if ((~A & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module MAJx2_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, B, C);
	and (int_fwire_1, A, C);
	and (int_fwire_2, A, B);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((B & ~C))
			(A => Y) = 0;
		if ((~B & C))
			(A => Y) = 0;
		ifnone (A => Y) = 0;
		if ((A & ~C))
			(B => Y) = 0;
		if ((~A & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module MAJx3_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, B, C);
	and (int_fwire_1, A, C);
	and (int_fwire_2, A, B);
	or (Y, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((B & ~C))
			(A => Y) = 0;
		if ((~B & C))
			(A => Y) = 0;
		ifnone (A => Y) = 0;
		if ((A & ~C))
			(B => Y) = 0;
		if ((~A & C))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND2x1_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND2x1p5_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND2x2_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND2xp5R_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND2xp5_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND3x1_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND3x2_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND3xp33R_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND3xp33_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND4xp25R_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar, D__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND4xp25_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar, D__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND4xp75_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar, D__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NAND5xp2_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar, E__bar;

	not (E__bar, E);
	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar, D__bar, E__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
		(E => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR2x1_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR2x2R_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR2x2_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR2xp5_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR3x1_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR3x1f_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR3x2_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR3xp33_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR4x3f_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar, D__bar);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR4xp25_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar, D__bar);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR5x1f_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar, E__bar;

	not (E__bar, E);
	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar, D__bar, E__bar);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
		(E => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module NOR5xp2_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar, E__bar;

	not (E__bar, E);
	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar, D__bar, E__bar);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR2x2_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	or (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR2x3R_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	or (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR2x4_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	or (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR3x1_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	or (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR3x2_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	or (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR3x4_ASAP7_6t_R (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	or (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR4x1_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	or (Y, A, B, C, D);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR4x2_ASAP7_6t_R (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	or (Y, A, B, C, D);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR5x1_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	or (Y, A, B, C, D, E);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
		(E => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module OR5x2_ASAP7_6t_R (Y, A, B, C, D, E);
	output Y;
	input A, B, C, D, E;

	// Function
	or (Y, A, B, C, D, E);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
		(E => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module TIEHIxp5_ASAP7_6t_R (H);
	output H;

	// Function
	buf (H, 1'b1);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module TIELOxp5_ASAP7_6t_R (L);
	output L;

	// Function
	buf (L, 1'b0);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module XNOR2x2_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (B__bar, B);
	not (A__bar, A);
	and (int_fwire_0, A__bar, B__bar);
	and (int_fwire_1, A, B);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (B)
			(A => Y) = 0;
		if (~B)
			(A => Y) = 0;
		if (A)
			(B => Y) = 0;
		if (~A)
			(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module XNOR2xp5_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (B__bar, B);
	not (A__bar, A);
	and (int_fwire_0, A__bar, B__bar);
	and (int_fwire_1, A, B);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (B)
			(A => Y) = 0;
		if (~B)
			(A => Y) = 0;
		if (A)
			(B => Y) = 0;
		if (~A)
			(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module XNOR2xp5f_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (B__bar, B);
	not (A__bar, A);
	and (int_fwire_0, A__bar, B__bar);
	and (int_fwire_1, A, B);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (B)
			(A => Y) = 0;
		if (~B)
			(A => Y) = 0;
		if (A)
			(B => Y) = 0;
		if (~A)
			(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module XOR2x2_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (A__bar, A);
	and (int_fwire_0, A__bar, B);
	not (B__bar, B);
	and (int_fwire_1, A, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~B)
			(A => Y) = 0;
		if (B)
			(A => Y) = 0;
		if (~A)
			(B => Y) = 0;
		if (A)
			(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module XOR2xp5_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (A__bar, A);
	and (int_fwire_0, A__bar, B);
	not (B__bar, B);
	and (int_fwire_1, A, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~B)
			(A => Y) = 0;
		if (B)
			(A => Y) = 0;
		if (~A)
			(B => Y) = 0;
		if (A)
			(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module XOR2xp5r_ASAP7_6t_R (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (A__bar, A);
	and (int_fwire_0, A__bar, B);
	not (B__bar, B);
	and (int_fwire_1, A, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~B)
			(A => Y) = 0;
		if (B)
			(A => Y) = 0;
		if (~A)
			(B => Y) = 0;
		if (A)
			(B => Y) = 0;
	endspecify
endmodule
`endcelldefine


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

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
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

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

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

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

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
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

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
