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