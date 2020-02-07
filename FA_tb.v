//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//Full adder verilog testbench
`timescale 1ns / 1ns
module FA_tb;

reg a,b,cin;
wire cout,sum;

FA u1(a,b,cin,sum,cout);

initial begin
	{a,b,cin} = 0;
#10 {a,b,cin} = 1;
#10 {a,b,cin} = 2;
#10 {a,b,cin} = 3;
#10 {a,b,cin} = 4;
#10 {a,b,cin} = 5;
#10 {a,b,cin} = 6;
#10 {a,b,cin} = 7;
#10 $stop;
end

initial $monitor($time, "ns, a=%b, b=%b, cout=%b, sum=%b", a,b,cout,sum);

endmodule
