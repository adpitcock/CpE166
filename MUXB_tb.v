//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//4 bit Multiplexer test bench
`timescale 1ns / 1ns
module MUXB_tb;
reg[3:0] d0, d1;
reg s;
wire [3:0] y;
MUXB uut (d0, d1, s, y);
initial begin
    {d0,d1,s} = {4'b0001,4'b0010,1'b0};
#10 {d0,d1,s} = {4'b0001,4'b0010,1'b1};
#10 {d0,d1,s} = {4'b0001,4'b0010,1'b1};
#10 {d0,d1,s} = {4'b1001,4'b0111,1'b0};
#10 {d0,d1,s} = {4'b1010,4'b1001,1'b1};
#10 {d0,d1,s} = {4'b1010,4'b0111,1'b0};
#10 {d0,d1,s} = {4'b1111,4'b1001,1'b0};
#10 {d0,d1,s} = {4'b1111,4'b1010,1'b1};
#10 $stop;
end 
endmodule
