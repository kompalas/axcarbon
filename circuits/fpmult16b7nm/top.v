////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//File Name: Multiplication.v
//Created By: Sheetal Swaroop Burada
//Date: 30-04-2019
//Project Name: Design of 32 Bit Floating Point ALU Based on Standard IEEE-754 in Verilog and its implementation on FPGA.
//University: Dayalbagh Educational Institute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module top #(
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
	output	[BIT_WIDTH - 1:0]	result
	// output						Exception,Overflow,Underflow,
);

wire Exception, Overflow, Underflow;

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
