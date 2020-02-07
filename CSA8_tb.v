//Andrew Pitcock
//CpE 166
//Lab 2 part 1
`timescale 1ns / 1ns
module CSA8_tb;
reg [7:0] a, b;
reg cin;
wire [7:0] sum;
wire cout;
CSA8 uut(a,b,cin,sum,cout);
initial begin
    {a,b,cin} = {8'b00000001,8'b11100010,1'b0};
#10 {a,b,cin} = {8'b00000001,8'b00000010,1'b1};
#10 {a,b,cin} = {8'b00010001,8'b11100010,1'b0};
#10 {a,b,cin} = {8'b10110001,8'b00111010,1'b1};
#10 {a,b,cin} = {8'b00000001,8'b01111010,1'b1};
#10 {a,b,cin} = {8'b00011101,8'b00000010,1'b1};
#10 {a,b,cin} = {8'b11000001,8'b00111010,1'b0};
#10 {a,b,cin} = {8'b11000001,8'b10110010,1'b1};
#10 $stop;
end 
endmodule
