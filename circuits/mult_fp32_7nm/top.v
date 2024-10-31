// Description:

	// Function : mac_out = in_a * in_b + in_c.  Works for FP32. WIP bfloat16 and FP16
	// Specifications: FP32		--> 1S	8E	23M
	//				   BFLOAT16	--> 1S	8E	7M
	//				   FP16		--> 1S	5E	10M

module top #(
parameter BIT_WIDTH = 32,
parameter EXP_WIDTH = 8,
parameter MANT_WIDTH = 23,
	// implicit parameters
	parameter SIGN_WIDTH = 1,
	parameter PROD_WIDTH = 2*(MANT_WIDTH+1),
	parameter EXP_START = MANT_WIDTH,
	parameter EXP_END = EXP_START + EXP_WIDTH
) (
	input	[BIT_WIDTH - 1:0]	a_operand,
	input	[BIT_WIDTH - 1:0]	b_operand,
	// output						Exception,Overflow,Underflow,
	output	[BIT_WIDTH - 1:0]	result
);

wire Exception, Overflow, Underflow;

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

