`timescale 1ns/1ps

// Arithmetic format: FP32 or BFLOAT16
// `define BFLOAT16

module top_tb();
parameter PERIOD=1.5;
parameter NUM_INPUTS=100000;

// `ifdef BFLOAT16
parameter BIT_WIDTH=16;

// DUT I/O ports
reg     [BIT_WIDTH - 1      :0]     in_a, in_b;
// wire                                overflow, underflow, exception;
wire    [BIT_WIDTH - 1      :0]     result;

// variables for input loading
reg  [(BIT_WIDTH*2) - 1:0] inputs [0:NUM_INPUTS-1];
integer i, f;

initial begin
    f = $fopen("./sim/output.txt");
    #(5*PERIOD);
    for(i=0; i<NUM_INPUTS; i=i+1) begin
        {in_a, in_b} = inputs[i];
        #PERIOD;
        $fwrite(f, "%b\n", result);
    end
    $finish;
end

initial begin 
    $readmemb("./sim/inputs.txt", inputs);
end

top
// #(
//     .BIT_WIDTH                  (BIT_WIDTH),
//     .SIGN_WIDTH                 (1),
//     .EXP_WIDTH                  (EXPONENT_WIDTH),
//     .MANT_WIDTH                 (MANTISSA_WIDTH),
//     .TRUNC_MANTISSA_MBM_BITS    (TRUNC_MBM_BITS)
// )
DUT
(   .a_operand  (in_a),
    .b_operand  (in_b),
    .result     (result)
    // .Exception  (exception),
    // .Overflow   (overflow),
    // .Underflow  (underflow),
);

endmodule