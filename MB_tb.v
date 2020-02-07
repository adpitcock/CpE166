//Andrew Pitcock
//CpE 166
//Lab 2 part 2
//4 Bit Shift Flip Flop Testbench
module MB_tb();
reg[3:0] db;
reg shb, ld, clr, clk;

wire[3:0] qb;

MB uut(db, shb, ld, clr, clk, qb);

initial clk = 0;
always #10 clk = ~clk;

initial begin

	clr = 1;
	ld = 0;
	shb = 0;
	db = 4'b1001;
	#15
		ld = 1;
	#15
		shb = 1;
	#45
		$stop;
end
endmodule
