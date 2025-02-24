
`timescale 1ns/1ps

module top_tb();

// PARAMETER DEFINITIONS
parameter PERIOD=10;
parameter NUM_INPUTS=10;

// DUT I/O PORTS
reg [7:0] A;
reg [7:0] B;
wire [9 - 1:0] O;

// VARIABLES FOR LOADING INPUTS/OUTPUTS
reg  [16 - 1:0] inputs [0:NUM_INPUTS-1];
integer i, f, ftmp;

initial begin
    f = $fopen("./sim/output.txt");
    #(5*PERIOD);
    for(i=0; i<NUM_INPUTS; i=i+1) begin
        {A, B} = inputs[i];
        #PERIOD;
        $fwrite(f, "%b\n", O);
    end
    $finish;
end

initial begin 
    $readmemb("./sim/inputs.txt", inputs);
end

top
// #(
//     .BIT_WIDTH                  (BIT_WIDTH),
// )
DUT
(.A(A), .B(B), .O(O));

endmodule
