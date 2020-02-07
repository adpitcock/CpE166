//Andrew Pitcock
//CpE 166
//Lab 2 part 2
//4 Bit Adder Verilog Code
module adder(a,b,cout,sum);
input [3:0] a,b;
output cout;
output [3:0] sum;
assign {cout,sum} = a+b;
endmodule
