//Andrew Pitcock
//CpE 166
//Lab 2 part 2 
//Product Shift Register Verilog Code
module prod(shp, ldp, clr, clk, cin, sum, p);
input shp, ldp, clr, clk, cin;
input [3:0] sum;
output [7:0] p;
reg [7:0] p;

always@(posedge clk or posedge clr)
begin
	if(clr) 
		p <= 0;
	else if(ldp)
		p[7:3] <= {cin,sum};
	else if(shp)
	begin
		p[7:3] <= {1'b0, p[7:4]};
		p[2:0] <= {p[3],p[2:1]};
	end
end
endmodule
