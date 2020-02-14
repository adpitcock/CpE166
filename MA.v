//Andrew Pitcock
//CpE 166
//Lab 2 part 2
//4 bit load register
module MA (clr, ld, clk, d1, da);
input [3:0] da;
input clr, ld, clk;
output [3:0] d1;
reg [3:0] d1;

always@(posedge clk or posedge clr)
begin
	if(clr)
		d1 <= 0;
	else if(ld)
		d1 <= da;
end
endmodule
