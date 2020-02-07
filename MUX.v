//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//1 Bit Multiplexer Verilog Code
module MUX(d0,d1,s,y);
input d0,d1,s;
output y;
reg y;

always@(d0 or d1 or s)
begin
	if(s==1)
		y = d1;
	else
		y = d0;
end
endmodule
