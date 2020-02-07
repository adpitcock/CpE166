module MA (clr, ld, clk, d1, da);
input [3:0] da;
input clr, ld, clk;
output [3:0] d1;
reg [3:0] d1;

always@(posedge clk or posedge reset)
begin
	if(reset)
		d1 <= 0;
	else if (load)
		d1 <= da;
end
endmodule
