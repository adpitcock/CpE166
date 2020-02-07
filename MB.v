module MB(db,shb,ld,clr,clk,qb);
input [3:0] db;
input shb, ld, clr,clk;
output [3:0] qb;
reg [3:0] qb;

always@(posedge clk or posedge reset)
begin
	if(reset)
		qb <= 4'b0000;
	else if (load)
		qb <= db;
	else
		qb <= {1'b0, qb[3:1]);
end
endmodule
