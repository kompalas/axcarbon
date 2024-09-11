`timescale 1ns/1ps

// Arithmetic format: FP32 or BFLOAT16
// `define BFLOAT16

module top_tb();
parameter PERIOD=1.9;
parameter NUM_INPUTS=100000;

// `ifdef BFLOAT16
parameter BIT_WIDTH=16;
parameter EXPONENT_WIDTH=8;
parameter MANTISSA_WIDTH=7;

// to be used with the approximate MBM multiplier
parameter TRUNC_MBM_BITS=0;

// DUT I/O ports
reg     [BIT_WIDTH - 1:0]  in_a, in_b, in_c;
wire    [BIT_WIDTH - 1:0]  mac_out;
// wire    exception, overflow, underflow;

// variables for input loading
reg  [(BIT_WIDTH*3) - 1:0] inputs [0:NUM_INPUTS-1];
integer i, f;

initial begin
    f = $fopen("./sim/output.txt");
    #(5*PERIOD);
    for(i=0; i<NUM_INPUTS; i=i+1) begin
        {in_a, in_b, in_c} = inputs[i];
        #PERIOD;
        $fwrite(f, "%b\n", mac_out);
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
(   .in_a       (in_a),
    .in_b       (in_b),
    .in_c   	(in_c),
    .mac_out	(mac_out)
    // .exception  (exception),
    // .overflow   (overflow),
    // .underflow  (underflow)
);

endmodule