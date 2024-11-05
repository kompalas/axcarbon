`timescale 1ns/1ps

module top_tb();
parameter PERIOD=0.6;
parameter NUM_INPUTS=100000;

parameter BIT_WIDTH=11;
parameter OUT_WIDTH=22;

// DUT I/O ports
reg     [BIT_WIDTH -1  :0] in_a, in_b;
wire    [OUT_WIDTH -1  :0] out;

// variables for input loading
reg  [(BIT_WIDTH*2) -1:0] inputs [0:NUM_INPUTS-1];
integer i, f;

initial begin
    f = $fopen("./sim/output.txt");
    #(5*PERIOD);
    for(i=0; i<NUM_INPUTS; i=i+1) begin
        {in_a, in_b} = inputs[i];
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
(   .in_a(in_a),
    .in_b(in_b),
    .out(out)
);

endmodule

