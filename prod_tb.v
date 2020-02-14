//Andrew Pitcock
//CpE 166
//Lab 2 Part 2
//8 bit shift prpoduct register.
module prod_tb();
reg shp, ldp, clr, clk, cin;
reg[3:0] sum;
wire[7:0] p;

prod uut(shp, ldp, clr, clk, cin, sum, p);

initial clk = 0;
always #10 clk = ~clk;

initial begin
	clr = 1; sum = 4'b1101; cin = 1; shp = 0; ldp = 0; 
	#10 clr = 0;
	#10 shp = 1;
	#10 ldp = 1;
	#10 ldp = 0;
	#50 $stop;
end
endmodule
