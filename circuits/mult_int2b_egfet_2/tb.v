`timescale 1ns/1ps

module top_tb();
parameter PERIOD=0.6;
parameter NUM_INPUTS=100000;

parameter BIT_WIDTH=2;
parameter OUT_WIDTH=BIT_WIDTH+8;

// DUT I/O ports
reg signed     [BIT_WIDTH -1  :0] inp;
wire signed    [OUT_WIDTH -1  :0] out;

// variables for input loading
reg  [BIT_WIDTH -1:0] inputs [0:NUM_INPUTS-1];
integer i, f;

initial begin
    f = $fopen("./sim/output.txt");
    #(5*PERIOD);
    for(i=0; i<NUM_INPUTS; i=i+1) begin
        inp = inputs[i];
        #PERIOD;
        $fwrite(f, "%b\n", out);
    end
    $finish;
    $fclose(f);
end

initial begin 
    $readmemb("./sim/inputs.txt", inputs);
end

top DUT
(   .inp(inp),
    .out(out)
);

endmodule

