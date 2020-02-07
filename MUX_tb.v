//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//1 Bit Multiplexer Testbench
`timescale 1ns / 1ns
module MUX_tb;
reg d0, d1;
reg s;
wire y;
MUX uut (d0, d1, s, y);
initial begin
    {d0,d1,s} = {1'b0,1'b0,1'b0};
	# 10 {d0,d1,s} = {1'b0,1'b0,1'b1};
	# 10 {d0,d1,s} = {1'b0,1'b1,1'b0};
	# 10 {d0,d1,s} = {1'b0,1'b1,1'b1};
	# 10 {d0,d1,s} = {1'b1,1'b0,1'b0};
	# 10 {d0,d1,s} = {1'b1,1'b0,1'b1};
	# 10 {d0,d1,s} = {1'b1,1'b1,1'b0};
	# 10 {d0,d1,s} = {1'b1,1'b1,1'b1};
#10 $stop;
end 
endmodule
