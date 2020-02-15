//Andrew Pitcock
//CpE 166
//Lab 2 part 2
//4 bit shift register
module MB(db,shb,ld,clr,clk,qb);
input [3:0] db;
input shb, ld, clr,clk;
output [3:0] qb;
reg [3:0] qb;

always@(posedge clk or posedge clr)
begin
	if(clr)
		qb <= 4'b0000;
	else if (ld)
		qb <= db;
	else if(shb)
		qb <= {1'b0, qb[3:1]};
end
endmodule
