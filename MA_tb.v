//Andrew Pitcock
//CpE 166
//Lab 2 part 2
//4 Bit Flip Flop Testbench
module MA_tb();
reg clk,ld,clr;
reg [3:0] da;

wire[3:0] d1;

MA uut(clr, ld, clk, d1, da);

initial clk = 0;

always #10 clk = ~clk;

initial 
begin
	clr = 1;
	d1 = 4'b1001;
	#15 clr = 0;
		ld = 1;
	#15
		ld = 0;
	#45
		$stop;
end
endmodule
