//Andrew Pitcock
//CpE 166 
//Lab 2 Part 2
//4 Bit Adder Testbench
module adder_tb();
reg [3:0] a,b;
wire cout;
wire [3:0] sum;

adder uut(.a(a), .b(b), .cout(cout), .sum(sum));
initial begin
		a = 4'b0001; 
		b = 4'b0001;
	#10 
		a = 4'b0100; 
		b = 4'b1000; 
	#10 
		a = 4'b0010; 
		b = 4'b0010; 
	#10 
		a = 4'b1000; 
		b = 4'b1000;
    #20
	$stop;
end
endmodule
