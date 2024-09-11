// Description:

	// Function : mac_out = in_a * in_b + in_c.  Works for FP32. WIP bfloat16 and FP16
	// Specifications: FP32		--> 1S	8E	23M
	//				   BFLOAT16	--> 1S	8E	7M
	//				   FP16		--> 1S	5E	10M

module top #(
parameter BIT_WIDTH = 32,
parameter SIGN_WIDTH = 1,
parameter EXP_WIDTH = 8,
parameter MANT_WIDTH = 23,
parameter TRUNC_MANTISSA_MBM_BITS = 0
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
		.AddBar_Sub		(1'b0),
		.Exception		(add_exception),
		.result			(mac_out)
	);

	fp_multiplier #(
		.BIT_WIDTH					(BIT_WIDTH),
		.EXP_WIDTH					(EXP_WIDTH),
		.MANT_WIDTH					(MANT_WIDTH),
		.TRUNC_MANTISSA_MBM_BITS	(TRUNC_MANTISSA_MBM_BITS)
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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//File Name: Multiplication.v
//Created By: Sheetal Swaroop Burada
//Date: 30-04-2019
//Project Name: Design of 32 Bit Floating Point ALU Based on Standard IEEE-754 in Verilog and its implementation on FPGA.
//University: Dayalbagh Educational Institute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module fp_multiplier #(
parameter BIT_WIDTH = 16,
parameter EXP_WIDTH = 8,
parameter MANT_WIDTH = 7,
parameter TRUNC_MANTISSA_MBM_BITS = 0,
	// implicit parameters
	parameter SIGN_WIDTH = 1,
	parameter HB_OP_WIDTH = MANT_WIDTH + 1,
	parameter PROD_WIDTH = 2*HB_OP_WIDTH,
	parameter EXP_START = MANT_WIDTH,
	parameter EXP_END = EXP_START + EXP_WIDTH
) (
	input	[BIT_WIDTH - 1:0]	a_operand,
	input	[BIT_WIDTH - 1:0]	b_operand,
	output						Exception,Overflow,Underflow,
	output	[BIT_WIDTH - 1:0]	result
);

wire sign,product_round,normalised,zero;
wire [EXP_WIDTH:0] exponent,sum_exponent;
wire [MANT_WIDTH-1:0] product_mantissa;
wire [HB_OP_WIDTH-1:0] operand_a,operand_b;  // operands with hidden bit
wire [PROD_WIDTH-1:0] product,product_normalised; //48 Bits


assign sign = a_operand[BIT_WIDTH-1] ^ b_operand[BIT_WIDTH-1];

//Exception flag sets 1 if either one of the exponent is 'hFF.
assign Exception = (&a_operand[EXP_END-1:EXP_START]) | (&b_operand[EXP_END-1:EXP_START]);

//Assigining significand values according to Hidden Bit.
//If exponent is equal to zero then hidden bit will be 0 for that respective significand else it will be 1
assign operand_a = (|a_operand[EXP_END-1:EXP_START]) ? {1'b1,a_operand[MANT_WIDTH-1:0]} : {1'b0,a_operand[MANT_WIDTH-1:0]};
assign operand_b = (|b_operand[EXP_END-1:EXP_START]) ? {1'b1,b_operand[MANT_WIDTH-1:0]} : {1'b0,b_operand[MANT_WIDTH-1:0]};


// Substitute this with an MBM and a parameter t for truncation
assign product = operand_a * operand_b;			//Calculating Product

// MBM_multiplier_8_6
// #(
// 	.BIT_WIDTH	(MANT_WIDTH+1),
// 	.TRUNC_BITS	(TRUNC_MANTISSA_MBM_BITS)
// ) 
// mbm (
// 	.operand_a	(operand_a),
// 	.operand_b	(operand_b),
// 	.product	(product)
// );

assign normalised = product[PROD_WIDTH-1] ? 1'b1 : 1'b0;	
assign product_normalised = normalised ? product : product << 1;	//Assigning Normalised value based on 48th bit
assign product_round = |product_normalised[MANT_WIDTH-1:0];  //Ending mantissa bits are OR'ed for rounding operation.
//Final Mantissa
assign product_mantissa = product_normalised[PROD_WIDTH-2:MANT_WIDTH+1] + {{MANT_WIDTH-2{1'b0}}, (product_normalised[MANT_WIDTH] & product_round)};

assign sum_exponent = a_operand[EXP_END-1:EXP_START] + b_operand[EXP_END-1:EXP_START];
assign exponent = sum_exponent - {(EXP_WIDTH-1){1'b1}} + normalised;

assign zero = Exception ? 1'b0 : (product_mantissa == 'd0) ? 1'b1 : 1'b0;
assign Overflow = ((exponent[EXP_WIDTH] & !exponent[EXP_WIDTH-1]) & !zero) ; //If overall exponent is greater than 'hFF then Overflow condition.
//Exception Case when exponent reaches its maximu value that is 384.
//If sum of both exponents is less than 127 then Underflow condition.
assign Underflow = ((exponent[EXP_WIDTH] & exponent[EXP_WIDTH-1]) & !zero) ? 1'b1 : 1'b0; 

assign result = Exception ?
					{BIT_WIDTH{1'b0}} : zero ?
						{sign, {(BIT_WIDTH-1){1'b0}}} : Overflow ? 
							{sign, {EXP_WIDTH{1'b1}}, {MANT_WIDTH{1'b0}}} : Underflow ? 
								{sign, {(BIT_WIDTH-1){1'b0}}} : {sign, exponent[EXP_WIDTH-1:0], product_mantissa};

endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//File Name: Additon_Subtraction.v
//Created By: Sheetal Swaroop Burada
//Date: 30-04-2019
//Project Name: Design of 32 Bit Floating Point ALU Based on Standard IEEE-754 in Verilog and its implementation on FPGA.
//University: Dayalbagh Educational Institute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module fp_adder #(
    parameter BIT_WIDTH = 32,
	parameter EXP_WIDTH = 8,
	parameter MANT_WIDTH = 23,
    // implicit parameters
    parameter SIGNIF_START = BIT_WIDTH - 2,
    parameter SIGNIF_HID_WIDTH = MANT_WIDTH + 1
) (
    input   [BIT_WIDTH - 1:0]   a_operand, b_operand,
    input   AddBar_Sub,         //If Add_Sub is low then Addition else Subtraction.
    output  Exception,
    output  [BIT_WIDTH - 1:0]   result
);

wire operation_sub_addBar;
wire Comp_enable;
wire output_sign;

wire [BIT_WIDTH-1:0] operand_a,operand_b;
wire [SIGNIF_HID_WIDTH-1:0] significand_a,significand_b;
wire [EXP_WIDTH-1:0] exponent_diff;


wire [SIGNIF_HID_WIDTH-1:0] significand_b_add_sub;
wire [EXP_WIDTH-1:0] exponent_b_add_sub;

wire [SIGNIF_HID_WIDTH:0] significand_add;
wire [SIGNIF_START:0] add_sum;

wire [SIGNIF_HID_WIDTH-1:0] significand_sub_complement;
wire [SIGNIF_HID_WIDTH:0] significand_sub;
wire [SIGNIF_START:0] sub_diff;
wire [SIGNIF_HID_WIDTH:0] subtraction_diff; 
wire [EXP_WIDTH-1:0] exponent_sub;

//for operations always operand_a must not be less than b_operand
assign {Comp_enable, operand_a, operand_b} = (a_operand[SIGNIF_START:0] < b_operand[SIGNIF_START:0]) ? {1'b1, b_operand, a_operand} : {1'b0, a_operand, b_operand};

assign exp_a = operand_a[SIGNIF_START -: EXP_WIDTH];
assign exp_b = operand_b[SIGNIF_START -: EXP_WIDTH];

//Exception flag sets 1 if either one of the exponent is 255.
assign Exception = (&operand_a[SIGNIF_START -: EXP_WIDTH]) | (&operand_b[SIGNIF_START -: EXP_WIDTH]);

assign output_sign = AddBar_Sub ? Comp_enable ? !operand_a[BIT_WIDTH-1] : operand_a[BIT_WIDTH-1] : operand_a[BIT_WIDTH-1] ;

assign operation_sub_addBar = AddBar_Sub ? operand_a[BIT_WIDTH-1] ^ operand_b[BIT_WIDTH-1] : ~(operand_a[BIT_WIDTH-1] ^ operand_b[BIT_WIDTH-1]);

//Assigining significand values according to Hidden Bit.
//If exponent is equal to zero then hidden bit will be 0 for that respective significand else it will be 1
assign significand_a = (|operand_a[SIGNIF_START -: EXP_WIDTH]) ? {1'b1, operand_a[MANT_WIDTH-1:0]} : {1'b0, operand_a[MANT_WIDTH-1:0]};
assign significand_b = (|operand_b[SIGNIF_START -: EXP_WIDTH]) ? {1'b1, operand_b[MANT_WIDTH-1:0]} : {1'b0, operand_b[MANT_WIDTH-1:0]};

//Evaluating Exponent Difference
assign exponent_diff = operand_a[SIGNIF_START -: EXP_WIDTH] - operand_b[SIGNIF_START -: EXP_WIDTH];

//Shifting significand_b according to exponent_diff
assign significand_b_add_sub = significand_b >> exponent_diff;

assign exponent_b_add_sub = operand_b[SIGNIF_START -: EXP_WIDTH] + exponent_diff; 

//Checking exponents are same or not
assign perform = (operand_a[SIGNIF_START -: EXP_WIDTH] == exponent_b_add_sub);

///////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------ADD BLOCK------------------------------------------//

assign significand_add = (perform & operation_sub_addBar) ? (significand_a + significand_b_add_sub) : {SIGNIF_HID_WIDTH+1{1'b0}}; 

//Result will be equal to Most 23 bits if carry generates else it will be Least 22 bits.
assign add_sum[MANT_WIDTH-1:0] = significand_add[SIGNIF_HID_WIDTH] ? significand_add[SIGNIF_HID_WIDTH-1:1] : significand_add[SIGNIF_HID_WIDTH-2:0];

//If carry generates in sum value then exponent must be added with 1 else feed as it is.
assign add_sum[SIGNIF_START -: EXP_WIDTH] = significand_add[SIGNIF_HID_WIDTH] ? (1'b1 + operand_a[SIGNIF_START -: EXP_WIDTH]) : operand_a[SIGNIF_START -: EXP_WIDTH];

///////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------SUB BLOCK------------------------------------------//

// assign significand_sub_complement = (perform & !operation_sub_addBar) ? ~(significand_b_add_sub) + {{SIGNIF_HID_WIDTH-1{1'b0}}, 1'b1} : {SIGNIF_HID_WIDTH{1'b0}} ; 

// assign significand_sub = perform ? (significand_a + significand_sub_complement) : {SIGNIF_HID_WIDTH+1{1'b0}};

// priority_encoder #(
//     .SIGNIF_WIDTH   (SIGNIF_HID_WIDTH+1),
//     .EXP_WIDTH      (EXP_WIDTH)
// ) U1(
//     .significand    (significand_sub),
//     .Exponent_a     (operand_a[SIGNIF_START -: EXP_WIDTH]),
//     .Significand    (subtraction_diff),
//     .Exponent_sub   (exponent_sub)
// );

// assign sub_diff[SIGNIF_START -: EXP_WIDTH] = exponent_sub;

// assign sub_diff[MANT_WIDTH-1:0] = subtraction_diff[MANT_WIDTH-1:0];

///////////////////////////////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------OUTPUT--------------------------------------------//

//If there is no exception and operation will evaluate
// assign result = Exception ? {BIT_WIDTH{1'b0}} : ((!operation_sub_addBar) ? {output_sign, sub_diff} : {output_sign, add_sum});
assign result = Exception ? {BIT_WIDTH{1'b0}} : {output_sign, add_sum};

endmodule