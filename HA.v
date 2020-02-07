//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//Half Adder Verilog Code
module HA(a,b,sum,cout);
input a,b;
output sum,cout;

assign sum = a^b;
assign cout = a&b;
endmodule
