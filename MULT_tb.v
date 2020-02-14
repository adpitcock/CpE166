//Andrew Pitcock
//CpE166
//Lab 2 part 2
//MULT test bench
module MULT_tb();
reg[3:0] db,da;
reg shb, ld, clr, ldp, shp, clk;

wire[7:0] p;

MULT uut(shb,ld,clr,ldp,shp,clk,db,da,p);

initial clk = 0;
always #10 clk = ~clk;

initial begin
		 db = 4'b0111; da = 4'b1001; clr = 1; shb =0; ld = 0; ldp = 0; shp = 0;
	#20 clr = 0;
	
	#20 ld = 1;
	#20 ld = 0;

	#20 ldp = 1;
	#20 ldp = 0;
	
	#20 shb = 1;
	#20 shb = 0;	
	
	#20 shp = 1;
	#20 shp = 0;
	
	#20 ldp = 1;
	#20 ldp = 0;	
	
	#20 shb = 1;
	#20 shb = 0;	
	
	#20 shp = 1;
	#20 shp = 0;

	#20 ldp = 1;
	#20 ldp = 0;
	
	#20 shb = 1;
	#20 shb = 0;	
	
	#20 shp = 1;
	#20 shp = 0;

	#20 ldp = 1;
	#20 ldp = 0;	

	#45 $stop;
end
endmodule
