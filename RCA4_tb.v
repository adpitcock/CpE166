//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//4 Bit Ripple Carry Adder Testbench
`timescale 1ns / 1ns
module RCA4_tb;
reg[3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;
RCA4 uu (a, b, sum, cin, cout );
initial begin
    {a,b,cin} = {3'b001,3'b010,1'b0};
#10 {a,b,cin} = {3'b001,3'b010,1'b1};
#10 {a,b,cin} = {3'b001,3'b010,1'b1};
#10 {a,b,cin} = {3'b001,3'b111,1'b1};
#10 {a,b,cin} = {3'b010,3'b001,1'b1};
#10 {a,b,cin} = {3'b010,3'b111,1'b1};
#10 {a,b,cin} = {3'b111,3'b001,1'b1};
#10 {a,b,cin} = {3'b111,3'b010,1'b1};
#10 $stop;
end 
endmodule
