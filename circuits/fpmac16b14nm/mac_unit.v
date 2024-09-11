// Description:

	// Function : mac_out = in_a * in_b + in_c.  Works for FP32. WIP bfloat16 and FP16
	// Specifications: FP32		--> 1S	8E	23M
	//				   BFLOAT16	--> 1S	8E	7M
	//				   FP16		--> 1S	5E	10M

module mac_unit #(
parameter BIT_WIDTH = 16,
parameter SIGN_WIDTH = 1,
parameter EXP_WIDTH = 8,
parameter MANT_WIDTH = 7,
parameter TRUNC_MANTISSA_MBM_BITS = 0
) (
	input     [BIT_WIDTH - 1:0] in_a, // multiplier input1
	input     [BIT_WIDTH - 1:0] in_b, // multiplier input2
	input     [BIT_WIDTH - 1:0] in_c, // adder input2 ; adder input1 = in_a*in_b
	output    [BIT_WIDTH - 1:0] mac_out,
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
