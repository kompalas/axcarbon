`timescale 1ns/1ps
module top_tb();
`define EOF 32'hFFFF_FFFF
`define NULL 0
`include "./sim/parameters.vh"

reg             [width1-1:0] IN1_reg;
reg             [width2-1:0] IN2_reg;
wire            [width1-1:0] IN1;
wire            [width2-1:0] IN2;
wire            [outwidth-1:0] P;

integer in, f, r;

top DUT (IN1,IN2,P);

//read inp
initial
begin
	$display($time, " << Starting the Simulation >>");
        in = $fopen("./sim/inputs.txt","r");
        if (in == `NULL) begin
                $display($time, " file not found");
                $finish;
        end
        f = $fopen("./sim/output.txt", "w");
	forever begin
                r = $fscanf(in,"%d\t%d\n",IN1_reg,IN2_reg);
		#period $fwrite(f,"%d\n", P);
		if ($feof(in)) begin
                	$display($time, " << Finishing the Simulation >>");
                	$fclose(in);
                	$fclose(f);
                	$finish;
        	end
	end
end

assign IN1 = IN1_reg;
assign IN2 = IN2_reg;

endmodule

