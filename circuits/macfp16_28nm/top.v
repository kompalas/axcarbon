// Description:

	// Function : mac_out = in_a * in_b + in_c.  Works for FP32. WIP bfloat16 and FP16
	// Specifications: FP32		--> 1S	8E	23M
	//				   BFLOAT16	--> 1S	8E	7M
	//				   FP16		--> 1S	5E	10M

module top #(
parameter BIT_WIDTH = 16,
parameter SIGN_WIDTH = 1,
parameter EXP_WIDTH = 5,
parameter MANT_WIDTH = 10
) (
	input     [BIT_WIDTH - 1:0] in_a, // multiplier input1
	input     [BIT_WIDTH - 1:0] in_b, // multiplier input2
	input     [BIT_WIDTH - 1:0] in_c, // adder input2 ; adder input1 = in_a*in_b
	output    [BIT_WIDTH - 1:0] mac_out
	// output						exception, overflow, underflow
);

	wire [BIT_WIDTH - 1:0]	mul_out;
	wire add_exception, mul_exception, mul_overflow, mul_underflow;

	fp_adder #(
		.BIT_WIDTH		(BIT_WIDTH),
		.EXP_WIDTH		(EXP_WIDTH),
		.MANT_WIDTH		(MANT_WIDTH)
	) U1 (
		.a_operand		(mul_out),
		.b_operand		(in_c),
		.Exception		(add_exception),
		.result			(mac_out)
	);

	fp_multiplier #(
		.BIT_WIDTH					(BIT_WIDTH),
		.EXP_WIDTH					(EXP_WIDTH),
		.MANT_WIDTH					(MANT_WIDTH)
	) U2 (
		.a_operand					(in_a),
		.b_operand					(in_b),
		.Exception					(mul_exception),
		.Overflow					(mul_overflow),
		.Underflow					(mul_underflow),
		.result						(mul_out)
	);

	// assign exception	= add_exception | mul_exception;
	// assign overflow		= mul_overflow;
	// assign underflow	= mul_underflow;

endmodule


module fp_multiplier #(
parameter BIT_WIDTH = 16,
parameter EXP_WIDTH = 5,
parameter MANT_WIDTH = 10,
	// implicit parameters
	parameter SIGN_WIDTH = 1,
	parameter PROD_WIDTH = 2*(MANT_WIDTH+1),
	parameter EXP_START = MANT_WIDTH,
	parameter EXP_END = EXP_START + EXP_WIDTH
) (
	input	[BIT_WIDTH - 1:0]	a_operand,
	input	[BIT_WIDTH - 1:0]	b_operand,
	output						Exception,Overflow,Underflow,
	output	[BIT_WIDTH - 1:0]	result
);

wire sign, product_round, normalized,zero;
wire [EXP_WIDTH:0] exponent, sum_exponent;
wire [MANT_WIDTH-1:0] product_mantissa;
wire [MANT_WIDTH:0] operand_a, operand_b;  // operands with hidden bit
wire [PROD_WIDTH-1:0] product, product_normalized;

assign sign = a_operand[BIT_WIDTH-1] ^ b_operand[BIT_WIDTH-1];

//Exception flag sets 1 if either one of the exponent is 'hFF.
assign Exception = (&a_operand[EXP_END-1:EXP_START]) | (&b_operand[EXP_END-1:EXP_START]);

//Assigining significand values according to Hidden Bit.
//If exponent is equal to zero then hidden bit will be 0 for that respective significand else it will be 1
assign operand_a = (|a_operand[EXP_END-1:EXP_START]) ? {1'b1, a_operand[MANT_WIDTH-1:0]} : {1'b0, a_operand[MANT_WIDTH-1:0]};
assign operand_b = (|b_operand[EXP_END-1:EXP_START]) ? {1'b1, b_operand[MANT_WIDTH-1:0]} : {1'b0, b_operand[MANT_WIDTH-1:0]};

//Product of two operands
assign product = operand_a * operand_b;

assign normalized = product[PROD_WIDTH-1] ? 1'b1 : 1'b0;	
assign product_normalized = normalized ? product : product << 1;	//Assigning normalized value based on 48th bit
//Final Mantissa
// CHANGE: assign product_mantissa = product_normalized[PROD_WIDTH-2:MANT_WIDTH+1] + {{MANT_WIDTH-2{1'b0}}, (product_normalized[MANT_WIDTH] & product_round)};
// assign product_round = |product_normalized[MANT_WIDTH-1:0];  //Ending mantissa bits are OR'ed for rounding operation.
assign product_mantissa = product_normalized[PROD_WIDTH-2:MANT_WIDTH+1] + {{MANT_WIDTH-2{1'b0}}, product_normalized[MANT_WIDTH]};

assign sum_exponent = a_operand[EXP_END-1:EXP_START] + b_operand[EXP_END-1:EXP_START];
assign exponent = sum_exponent - {(EXP_WIDTH-1){1'b1}} + normalized;

assign zero = Exception ? 1'b0 : ((product_mantissa == 'd0) ? 1'b1 : 1'b0);
assign Overflow = ((exponent[EXP_WIDTH] & !exponent[EXP_WIDTH-1]) & !zero) ; //If overall exponent is greater than 'hFF then Overflow condition.
//Exception Case when exponent reaches its maximu value that is 384.
//If sum of both exponents is less than 127 then Underflow condition.
assign Underflow = ((exponent[EXP_WIDTH] & exponent[EXP_WIDTH-1]) & !zero) ? 1'b1 : 1'b0; 

assign result = Exception ?
					// {BIT_WIDTH{1'b0}} : zero ?
						{sign, {(BIT_WIDTH-1){1'b0}}} : Overflow ? 
							{sign, {EXP_WIDTH{1'b1}}, {MANT_WIDTH{1'b0}}} : Underflow ? 
								{sign, {(BIT_WIDTH-1){1'b0}}} : {sign, exponent[EXP_WIDTH-1:0], product_mantissa};

endmodule


module fp_adder #(
    parameter BIT_WIDTH = 16,
	parameter EXP_WIDTH = 5,
	parameter MANT_WIDTH = 10
) (
    input   [BIT_WIDTH - 1:0]   a_operand, b_operand,
    output  [BIT_WIDTH - 1:0]   result,
    output  Exception
);

wire operation_sub_addBar;
wire AddBar_Sub;
assign AddBar_Sub = (a_operand[BIT_WIDTH-1] == b_operand[BIT_WIDTH-1]) ? 1'b0 : 1'b1;

wire Comp_enable;
wire output_sign;

wire [BIT_WIDTH-1:0] operand_a,operand_b;
wire [MANT_WIDTH:0] significand_a,significand_b;
wire [EXP_WIDTH-1:0] exponent_diff;


wire [MANT_WIDTH:0] significand_b_add_sub;
wire [EXP_WIDTH-1:0] exponent_b_add_sub;

wire [MANT_WIDTH+1:0] significand_add;
wire [BIT_WIDTH-2:0] add_sum;

wire [MANT_WIDTH:0] significand_sub_complement;
wire [MANT_WIDTH+1:0] significand_sub;
wire [BIT_WIDTH-2:0] sub_diff;
wire [MANT_WIDTH+1:0] subtraction_diff; 
wire [EXP_WIDTH-1:0] exponent_sub;

//for operations always operand_a must not be less than b_operand
assign {Comp_enable, operand_a, operand_b} = (a_operand[BIT_WIDTH-2:0] > b_operand[BIT_WIDTH-2:0]) ? {1'b0, a_operand, b_operand} : {1'b1, b_operand, a_operand};

assign exp_a = operand_a[BIT_WIDTH-2 -: EXP_WIDTH];
assign exp_b = operand_b[BIT_WIDTH-2 -: EXP_WIDTH];

//Exception flag sets 1 if either one of the exponent is 255.
assign Exception = (&operand_a[BIT_WIDTH-2 -: EXP_WIDTH]) | (&operand_b[BIT_WIDTH-2 -: EXP_WIDTH]);

// CHANGE: assign output_sign = AddBar_Sub ? (Comp_enable ? !operand_a[BIT_WIDTH-1] : operand_a[BIT_WIDTH-1]) : operand_a[BIT_WIDTH-1] ;
assign output_sign = operand_a[BIT_WIDTH-1];

// CHANGE: assign operation_sub_addBar = AddBar_Sub ? operand_a[BIT_WIDTH-1] ^ operand_b[BIT_WIDTH-1] : ~(operand_a[BIT_WIDTH-1] ^ operand_b[BIT_WIDTH-1]);
assign operation_sub_addBar = !AddBar_Sub;

//Assigining significand values according to Hidden Bit.
//If exponent is equal to zero then hidden bit will be 0 for that respective significand else it will be 1
assign significand_a = (|operand_a[BIT_WIDTH-2 -: EXP_WIDTH]) ? {1'b1, operand_a[MANT_WIDTH-1:0]} : {1'b0, operand_a[MANT_WIDTH-1:0]};
assign significand_b = (|operand_b[BIT_WIDTH-2 -: EXP_WIDTH]) ? {1'b1, operand_b[MANT_WIDTH-1:0]} : {1'b0, operand_b[MANT_WIDTH-1:0]};

//Evaluating Exponent Difference
assign exponent_diff = operand_a[BIT_WIDTH-2 -: EXP_WIDTH] - operand_b[BIT_WIDTH-2 -: EXP_WIDTH];

//Shifting significand_b according to exponent_diff
assign significand_b_add_sub = significand_b >> exponent_diff;

assign exponent_b_add_sub = operand_b[BIT_WIDTH-2 -: EXP_WIDTH] + exponent_diff; 

//Checking exponents are same or not
assign perform = (operand_a[BIT_WIDTH-2 -: EXP_WIDTH] == exponent_b_add_sub) ? 1'b1 : 1'b0;

///////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------ADD BLOCK------------------------------------------//

assign significand_add = (perform & operation_sub_addBar) ? (significand_a + significand_b_add_sub) : {MANT_WIDTH+1+1{1'b0}}; 

//Result will be equal to most MANT_WIDTH bits if carry generates else it will be least MANT_WIDTH-1 bits.
assign add_sum[MANT_WIDTH-1:0] = significand_add[MANT_WIDTH+1] ? significand_add[MANT_WIDTH+1-1:1] : significand_add[MANT_WIDTH+1-2:0];

//If carry generates in sum value then exponent must be added with 1 else feed as it is.
assign add_sum[BIT_WIDTH-2 -: EXP_WIDTH] = significand_add[MANT_WIDTH+1] ? (1'b1 + operand_a[BIT_WIDTH-2 -: EXP_WIDTH]) : operand_a[BIT_WIDTH-2 -: EXP_WIDTH];

///////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------SUB BLOCK------------------------------------------//

// CHANGES:
assign significand_sub_complement = (perform & !operation_sub_addBar) ? ~(significand_b_add_sub) + {{MANT_WIDTH+1-1{1'b0}}, 1'b1} : {MANT_WIDTH+1{1'b0}} ; 
assign significand_sub = perform ? (significand_a + significand_sub_complement) : {MANT_WIDTH+1+1{1'b0}};
// assign significand_sub = (perform & !operation_sub_addBar) ? (significand_a - significand_b_add_sub) : {MANT_WIDTH+1+1{1'b0}};

priority_encoder #(
    .SIGNIF_WIDTH   (MANT_WIDTH+1+1),
    .EXP_WIDTH      (EXP_WIDTH)
) U1(
    .significand    (significand_sub),
    .Exponent_a     (operand_a[BIT_WIDTH-2 -: EXP_WIDTH]),
    .Significand    (subtraction_diff),
    .Exponent_sub   (exponent_sub)
);

assign sub_diff[BIT_WIDTH-2 -: EXP_WIDTH] = exponent_sub;

assign sub_diff[MANT_WIDTH-1:0] = subtraction_diff[MANT_WIDTH-1:0];

///////////////////////////////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------OUTPUT--------------------------------------------//

//If there is no exception and operation will evaluate
assign result = Exception ? {BIT_WIDTH{1'b0}} : ((!operation_sub_addBar) ? {output_sign, sub_diff} : {output_sign, add_sum});
// assign result = Exception ? {BIT_WIDTH{1'b0}} : {output_sign, add_sum};

endmodule


module priority_encoder #(
	parameter SIGNIF_WIDTH 	= 25,
	parameter EXP_WIDTH 	= 8,
	parameter SHIFT_WIDTH	= 5
) (
	input		[SIGNIF_WIDTH-1	:0] significand,
	input		[EXP_WIDTH-1	:0] Exponent_a,
	output reg	[SIGNIF_WIDTH-1	:0] Significand,
	output		[EXP_WIDTH-1	:0] Exponent_sub
);

reg [SHIFT_WIDTH-1:0] shift;
// reg shifted;
// integer i;

always @(significand)
begin

	//////// WIP for generalizable priority encoder //////
	// shifted = 1'b0;
	// for (i=0; i<SIGNIF_WIDTH; i=i+1) begin

	// 	if (significand[(SIGNIF_WIDTH-1) -: (1+i)] == {1'b1, 1>>i}) begin
	// 		Significand = significand << i;
	// 		shift = i;
	// 		shifted = 1'b1;
	// 	end
	// end

	// if (~shifted) begin
	// 	Significand = (~significand) + 1'b1;
	// 	shift = 'd0;
	// end


	// This is a sub-optimal non-generic implementation, but it works
	if (SIGNIF_WIDTH == 25) begin
		casex (significand)
			25'b1_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx :	begin
														Significand = significand;
														shift = 5'd0;
													end
			25'b1_01xx_xxxx_xxxx_xxxx_xxxx_xxxx : 	begin						
														Significand = significand << 1;
														shift = 5'd1;
													end

			25'b1_001x_xxxx_xxxx_xxxx_xxxx_xxxx : 	begin						
														Significand = significand << 2;
														shift = 5'd2;
													end

			25'b1_0001_xxxx_xxxx_xxxx_xxxx_xxxx : 	begin 							
														Significand = significand << 3;
														shift = 5'd3;
													end

			25'b1_0000_1xxx_xxxx_xxxx_xxxx_xxxx : 	begin						
														Significand = significand << 4;
														shift = 5'd4;
													end

			25'b1_0000_01xx_xxxx_xxxx_xxxx_xxxx : 	begin						
														Significand = significand << 5;
														shift = 5'd5;
													end

			25'b1_0000_001x_xxxx_xxxx_xxxx_xxxx : 	begin						// 24'h020000
														Significand = significand << 6;
														shift = 5'd6;
													end

			25'b1_0000_0001_xxxx_xxxx_xxxx_xxxx : 	begin						// 24'h010000
														Significand = significand << 7;
														shift = 5'd7;
													end

			25'b1_0000_0000_1xxx_xxxx_xxxx_xxxx : 	begin						// 24'h008000
														Significand = significand << 8;
														shift = 5'd8;
													end

			25'b1_0000_0000_01xx_xxxx_xxxx_xxxx : 	begin						// 24'h004000
														Significand = significand << 9;
														shift = 5'd9;
													end

			25'b1_0000_0000_001x_xxxx_xxxx_xxxx : 	begin						// 24'h002000
														Significand = significand << 10;
														shift = 5'd10;
													end

			25'b1_0000_0000_0001_xxxx_xxxx_xxxx : 	begin						// 24'h001000
														Significand = significand << 11;
														shift = 5'd11;
													end

			25'b1_0000_0000_0000_1xxx_xxxx_xxxx : 	begin						// 24'h000800
														Significand = significand << 12;
														shift = 5'd12;
													end

			25'b1_0000_0000_0000_01xx_xxxx_xxxx : 	begin						// 24'h000400
														Significand = significand << 13;
														shift = 5'd13;
													end

			25'b1_0000_0000_0000_001x_xxxx_xxxx : 	begin						// 24'h000200
														Significand = significand << 14;
														shift = 5'd14;
													end

			25'b1_0000_0000_0000_0001_xxxx_xxxx  : 	begin						// 24'h000100
														Significand = significand << 15;
														shift = 5'd15;
													end

			25'b1_0000_0000_0000_0000_1xxx_xxxx : 	begin						// 24'h000080
														Significand = significand << 16;
														shift = 5'd16;
													end

			25'b1_0000_0000_0000_0000_01xx_xxxx : 	begin						// 24'h000040
														Significand = significand << 17;
														shift = 5'd17;
													end

			25'b1_0000_0000_0000_0000_001x_xxxx : 	begin						// 24'h000020
														Significand = significand << 18;
														shift = 5'd18;
													end

			25'b1_0000_0000_0000_0000_0001_xxxx : 	begin						// 24'h000010
														Significand = significand << 19;
														shift = 5'd19;
													end

			25'b1_0000_0000_0000_0000_0000_1xxx :	begin						// 24'h000008
														Significand = significand << 20;
														shift = 5'd20;
													end

			25'b1_0000_0000_0000_0000_0000_01xx : 	begin						// 24'h000004
														Significand = significand << 21;
														shift = 5'd21;
													end

			25'b1_0000_0000_0000_0000_0000_001x : 	begin						// 24'h000002
														Significand = significand << 22;
														shift = 5'd22;
													end

			25'b1_0000_0000_0000_0000_0000_0001 : 	begin						// 24'h000001
														Significand = significand << 23;
														shift = 5'd23;
													end

			25'b1_0000_0000_0000_0000_0000_0000 : 	begin						// 24'h000000
														Significand = significand << 24;
														shift = 5'd24;
													end

			default : 	begin
							Significand = (~significand) + 1'b1;
							shift = {SHIFT_WIDTH{1'b0}};
						end
		endcase
	end

	else if (SIGNIF_WIDTH == 12) begin
		casex (significand)
			12'b11xx_xxxx_xxxx :	begin
									Significand = significand;
									shift = 5'd0;
								end
			12'b101x_xxxx_xxxx :	begin
									Significand = significand << 1;
									shift = 5'd1;
								end
			12'b1001_xxxx_xxxx : begin
									Significand = significand << 2;
									shift = 5'd2;
								end
			12'b1000_1xxx_xxxx : begin
									Significand = significand << 3;
									shift = 5'd3;
								end
			12'b1000_01xx_xxxx : begin
									Significand = significand << 4;
									shift = 5'd4;
								end
			12'b1000_001x_xxxx : begin
									Significand = significand << 4;
									shift = 5'd5;
								end
			12'b1000_0001_xxxx : begin
									Significand = significand << 5;
									shift = 5'd6;
								end
			12'b1000_0000_1xxx : begin
									Significand = significand << 6;
									shift = 5'd7;
								end
			12'b1000_0000_01xx : begin
									Significand = significand << 7;
									shift = 5'd8;
								end
			12'b1000_0000_001x : begin
									Significand = significand << 8;
									shift = 5'd9;
								end
			12'b1000_0000_0001 : begin
									Significand = significand << 9;
									shift = 5'd10;
								end
			12'b1000_0000_0000 : begin
									Significand = significand << 10;
									shift = 5'd11;
								end
			default : 	begin
							Significand = (~significand) + 1'b1;
							shift = {SHIFT_WIDTH{1'b0}};
						end
		endcase
	end
								



	else if (SIGNIF_WIDTH == 9) begin
		casex (significand)
			9'b1_1xxx_xxxx :	begin
									Significand = significand;
									shift = 5'd0;
								end

			9'b1_01xx_xxxx :	begin
									Significand = significand << 1;
									shift = 5'd1;
								end

			9'b1_001x_xxxx :	begin
									Significand = significand << 2;
									shift = 5'd2;
								end

			9'b1_0001_xxxx :	begin
									Significand = significand << 3;
									shift = 5'd3;
								end

			9'b1_0000_1xxx :	begin
									Significand = significand << 4;
									shift = 5'd4;
								end

			9'b1_0000_01xx :	begin
									Significand = significand << 5;
									shift = 5'd5;
								end

			9'b1_0000_001x :	begin
									Significand = significand << 6;
									shift = 5'd6;
								end

			9'b1_0000_0001 :	begin
									Significand = significand << 7;
									shift = 5'd7;
								end
			9'b1_0000_0000 :	begin
									Significand = significand << 8;
									shift = 5'd8;
								end

			default : 	begin
							Significand = (~significand) + 1'b1;
							shift = {SHIFT_WIDTH{1'b0}};
						end
		endcase
	end

end

assign Exponent_sub = Exponent_a - shift;
endmodule
